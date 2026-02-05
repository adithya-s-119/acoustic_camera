#this code is used to plot data from 10 mics(gpu accelerated)

import sys
import serial
import numpy as np
import pyqtgraph as pg
from pyqtgraph.Qt import QtGui, QtCore
import threading
import queue

# Serial port configuration
serial_port = 'COM5'  # Replace with your port
baud_rate = 115200

# Initialize the serial connection
try:
    ser = serial.Serial(serial_port, baud_rate, timeout=1)
except serial.SerialException as e:
    print(f"Error opening serial port: {e}")
    sys.exit(1)

data_queue = queue.Queue()
max_samples = 100  # Number of samples to display
data = [np.zeros(max_samples, dtype=int) for _ in range(10)]  # NumPy arrays for efficiency
curves = []

# Function to read data from the serial port
def read_serial_data():
    while True:
        try:
            line = ser.readline().decode('utf-8').strip()
            if line:
                data_queue.put(line)
        except Exception as e:
            print(f"Error reading serial data: {e}")

# Initialize PyQtGraph window
app = QtGui.QApplication(sys.argv)
win = pg.GraphicsLayoutWidget(show=True, title="Real-Time Microphone Data")
win.resize(1200, 400)

# Create plots for each channel
for i in range(10):
    plot = win.addPlot(title=f'Channel {i}', row=0, col=i)
    curve = plot.plot(pen='y')
    curves.append(curve)
    plot.setYRange(0, 4096)  # Assuming 12-bit ADC resolution
    plot.setXRange(0, max_samples)

# Function to update the plots
def update():
    while not data_queue.empty():
        line = data_queue.get()
        try:
            channel, value = line.split(': ')
            channel = int(channel)
            value = int(value)

            if 0 <= channel < 10:  # Check channel range
                # Shift data to the left and append the new value
                data[channel] = np.roll(data[channel], -1)
                data[channel][-1] = value

            data_queue.task_done()
        except ValueError as e:
            print(f"Error processing line: {line}. Error: {e}")

    for i in range(10):
        curves[i].setData(data[i])

# Timer to update plots less frequently
timer = QtCore.QTimer()
timer.timeout.connect(update)
timer.start(100)  # Update every 100 ms

# Start the serial reading thread
threading.Thread(target=read_serial_data, daemon=True).start()

# Start the PyQtGraph application
if __name__ == '__main__':
    QtGui.QApplication.instance().exec_()
    ser.close()
