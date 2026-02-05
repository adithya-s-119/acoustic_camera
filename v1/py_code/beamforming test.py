import serial
import numpy as np
import threading
import multiprocessing
import time

# Serial port configuration
serial_port = 'COM5'  # Update this if your Teensy is on a different port
baud_rate = 115200

# Function to initialize the serial connection
def initialize_serial_connection(port, baud):
    try:
        ser = serial.Serial(port, baud, timeout=1)
        print(f"Successfully connected to {port} at {baud} baud.")
        return ser
    except serial.SerialException as e:
        print(f"Error opening serial port {port}: {e}")
        print("Please check if the port is available or if another application is using it.")
        exit(1)
    except PermissionError as e:
        print(f"Permission error accessing {port}: {e}")
        print("Try running the script as an administrator or check the port usage.")
        exit(1)

# Initialize the serial connection
ser = initialize_serial_connection(serial_port, baud_rate)

# Parameters
num_mics = 10
max_samples = 1000  # Number of samples to collect for processing
sampling_rate = 44100  # Example sampling rate in Hz
sound_speed = 343  # Speed of sound in air in m/s
radius = 0.1  # Radius of the circular microphone array in meters

# Data queue for thread-safe communication
data_queue = multiprocessing.Queue()

# Initialize data arrays for each microphone
data = np.zeros((num_mics, max_samples), dtype=int)

# Step 2: Delay Calculation for Circular Array
def calculate_delays(num_mics, radius, sound_speed, target_angle):
    delays = []
    angle_rad = np.radians(target_angle)
    for i in range(num_mics):
        mic_angle = 2 * np.pi * i / num_mics  # Angle of the microphone
        distance = radius * np.cos(mic_angle - angle_rad)  # Projection of radius in the direction of the target angle
        delay = distance / sound_speed  # Time delay based on distance
        delays.append(delay)
    return np.array(delays)

# Placeholder for calculated delays (updated dynamically)
delays = np.zeros(num_mics)

# Function to read data from the serial port
def read_serial_data():
    while True:
        line = ser.readline().decode('utf-8').strip()
        if line:
            data_queue.put(line)

# Step 3: Signal Alignment
def apply_delays(data, delays, sampling_rate):
    aligned_data = []
    for i in range(len(data)):
        # Calculate the number of samples to delay
        delay_samples = int(delays[i] * sampling_rate)
        # Apply delay by shifting the signal
        aligned_signal = np.roll(data[i], delay_samples)
        aligned_data.append(aligned_signal)
    return np.array(aligned_data)

# Function to localize the sound source
def localize_sound_source(delays, radius):
    # Compute the estimated angle of arrival
    estimated_angle = np.arctan2(np.sum(np.sin(delays)), np.sum(np.cos(delays)))
    x = radius * np.cos(estimated_angle)
    y = radius * np.sin(estimated_angle)
    return x, y

# Function to process data and perform beamforming
def process_data(data_queue, data, delays, sampling_rate, radius):
    while True:
        while not data_queue.empty():
            line = data_queue.get()
            try:
                channel, value = line.split(': ')
                channel = int(channel)
                value = int(value)

                if 0 <= channel < num_mics:  # Check channel range
                    # Shift data to the left and append the new value
                    data[channel] = np.roll(data[channel], -1)
                    data[channel][-1] = value

                data_queue.task_done()
            except ValueError as e:
                print(f"Error processing line: {line}. Error: {e}")
        
        # Step 4: Signal Combination
        aligned_data = apply_delays(data, delays, sampling_rate)
        beamformed_signal = np.sum(aligned_data, axis=0)
        
        # Localize the sound source
        x, y = localize_sound_source(delays, radius)
        
        # Print the localized coordinates
        print(f"Sound source localized at x: {x:.2f}, y: {y:.2f}")

# Start the serial reading thread
serial_thread = threading.Thread(target=read_serial_data, daemon=True)
serial_thread.start()

# Start the data processing in a separate process
process = multiprocessing.Process(target=process_data, args=(data_queue, data, delays, sampling_rate, radius))
process.start()

# Keep the main thread alive
try:
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    print("Exiting")
finally:
    ser.close()
    process.terminate()
    serial_thread.join()
