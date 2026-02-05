import serial
import numpy as np
import time
import sounddevice as sd

# Configurations
SERIAL_PORT = "COM5"  # Update to your Teensy port
BAUD_RATE = 115200
NUM_CHANNELS = 10     # Number of microphones (channels)
SAMPLE_RATE = 15366.57   # Sampling rate (Hz)
DURATION = 10         # Duration to capture (seconds)

def capture_data():
    # Initialize serial connection to Teensy
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
    print(f"Connected to {SERIAL_PORT} at {BAUD_RATE} baud.")
    
    audio_buffer = []
    start_time = time.time()
    
    try:
        print(f"Capturing data for {DURATION} seconds...")
        while time.time() - start_time < DURATION:
            try:
                # Read the serial line from Teensy
                line = ser.readline().decode('utf-8').strip()
                if line:
                    print(f"Received data: {line}")  # Debugging: Print received data
                    
                    # Parse channel and value from the serial data
                    try:
                        channel, value = map(int, line.split(":"))
                        # Validate channel and convert to signed 16-bit value
                        if 0 <= channel < NUM_CHANNELS:
                            # Convert 12-bit value to 16-bit signed value
                            # Range for 12-bit data: 0-4095, range for 16-bit signed: -32768 to 32767
                            value_16bit = (value - 2048) << 4  # Shift 12-bit to 16-bit
                            audio_buffer.append((channel, value_16bit))
                        else:
                            print(f"Invalid channel index: {channel}")  # Debugging invalid channels
                    except ValueError:
                        print(f"Error parsing data: {line}")  # Invalid data format
            except Exception as e:
                print(f"Error reading serial data: {e}")
        
        # Process the captured data into audio frames
        if audio_buffer:
            print("Processing data into audio frames...")
            audio_frames = process_audio_frames(audio_buffer, NUM_CHANNELS)
            play_audio(audio_frames)
        else:
            print("No valid data captured.")

    finally:
        # Close the serial connection
        ser.close()

def process_audio_frames(buffer, num_channels):
    # Calculate number of samples based on buffer length
    num_samples = len(buffer) // num_channels
    interleaved_data = np.zeros(num_samples * num_channels, dtype=np.int16)
    sample_indices = [0] * num_channels

    # Fill the interleaved audio data with values from the buffer
    for channel, value in buffer:
        if 0 <= channel < num_channels:  # Ensure the channel index is valid
            sample_idx = sample_indices[channel]
            if sample_idx < num_samples:
                interleaved_data[sample_idx * num_channels + channel] = value
                sample_indices[channel] += 1
        else:
            print(f"Invalid channel index: {channel}")  # Debugging invalid channels

    # Return the interleaved data as raw byte data
    return interleaved_data.astype(np.float32)  # Convert to 32-bit float for playback

def play_audio(audio_data):
    # Play audio using sounddevice
    print("Playing audio in real-time...")
    sd.play(audio_data, SAMPLE_RATE)
    sd.wait()  # Wait until the audio is done playing

if __name__ == "__main__":
    capture_data()
