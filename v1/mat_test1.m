% MATLAB Code: IAA Spatial Spectrum and DOA Estimation
clear; clc;

% Serial port settings
serialPort = "COM5"; % Replace with the correct Teensy port
baudRate = 115200;

% Microphone array parameters
numChannels = 10;      % Number of microphones in the array
fs = 48000;            % Sampling frequency (Hz)
c = 343;               % Speed of sound (m/s)
radius = 0.1;          % Radius of the circular array (meters)

% Define microphone positions for Uniform Circular Array (UCA)
theta = linspace(0, 2 * pi, numChannels + 1);
theta(end) = []; % Remove duplicate at 2*pi
micPos = radius * [cos(theta); sin(theta); zeros(1, numChannels)]; % Cartesian coordinates

% Create a Conformal Array object for custom microphone positions
array = phased.ConformalArray('ElementPosition', micPos);

% Define angular range for DOA estimation
azimuthAngles = -180:1:180; % Azimuth grid in degrees

% Open serial connection
s = serialport(serialPort, baudRate);
configureTerminator(s, "LF"); % Match Teensy's newline terminator
flush(s); % Clear serial buffer

% Initialize storage for real-time data
signalBuffer = zeros(numChannels, 1024); % Placeholder for time-domain signals (assume 1024 samples per channel)

% Real-time plotting setup
figure;
subplot(2, 1, 1); % Polar plot for DOA
polarPlotHandle = polarplot(0, 0, 'o-', 'LineWidth', 1.5);
title("Real-Time DOA Estimation");
rlim([0, 1]);

subplot(2, 1, 2); % Spectrum plot
spectrumPlotHandle = plot(azimuthAngles, zeros(size(azimuthAngles)), 'LineWidth', 1.5);
title("IAA Spatial Spectrum");
xlabel("Azimuth (degrees)");
ylabel("Spectrum (dB)");
xlim([-180, 180]);
grid on;

% Real-time processing loop
disp("Real-time IAA Spatial Spectrum plotting started...");
while true
    try
        % Simulate acquisition of data from Teensy
        for channel = 1:numChannels
            dataLine = readline(s); % Read data from Teensy
            parsedData = sscanf(dataLine, "%d: %d"); % Parse "channel: value"
            if numel(parsedData) == 2
                chanIndex = parsedData(1) + 1; % Channel index (1-based)
                value = parsedData(2); % ADC value
                signalBuffer(chanIndex, :) = circshift(signalBuffer(chanIndex, :), -1); % Shift buffer
                signalBuffer(chanIndex, end) = value; % Append new sample
            end
        end

        % Compute the covariance matrix of the input signals
        covMatrix = (1 / size(signalBuffer, 2)) * (signalBuffer * signalBuffer');

        % Perform IAA-based DOA estimation
        spectrum = iaadoa(covMatrix, array, azimuthAngles, c, fs);

        % Normalise and convert spectrum to dB
        spectrum_dB = 10 * log10(abs(spectrum) / max(abs(spectrum)));

        % Update the polar plot with the DOA
        [~, peakIndex] = max(spectrum); % Find azimuth of peak
        doaAzimuth = azimuthAngles(peakIndex); % DOA in degrees
        polarPlotHandle.ThetaData = deg2rad(doaAzimuth); % Convert to radians
        polarPlotHandle.RData = 1; % Set the marker's radius

        % Update the spectrum plot
        spectrumPlotHandle.YData = spectrum_dB; % Spectrum in dB
        drawnow;

    catch ME
        % Handle errors and cleanup
        warning("Error occurred: %s", ME.message);
        break;
    end
end

% Clean up
delete(s);
disp("Real-time processing ended.");
