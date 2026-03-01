clc;
clear;
close all;

%% Loading Ecg and Time Axis
ecg = load("ECGData.mat")
signal = ecg.ECGData.Data;
signal = signal(:);
fs = 360;
t= (0:length(signal)-1)/fs;

%% Plotting Raw Ecg
plot(t, signal);
xlabel('Time (s)');
ylabel('ECG Signal(Amp)');
title('Raw ECG Signal');
grid on;

%% Adding Noise
noise = 0.5 * randn(size(signal));
noisySignal = signal + noise;

%% Plotting Noisy Ecg
figure;
plot(t, noisySignal);
xlabel('Time (s)');
ylabel('Noisy ECG Signal(Amp)');
title('Noisy ECG Signal');
grid on;

%% Applying Low Pass Filter
fc = 40;              % cutoff frequency
N = 50;               % filter order (higher = smoother)
lpFilt = fir1(N, fc/(fs/2), 'low');   % low-pass FIR filter
filteredSignal = conv(noisySignal, lpFilt, 'same');

%% Plotting Filtered Ecg and Comparing signals
figure;
plot(t, noisySignal, 'r');
hold on
plot(t, filteredSignal, 'b');
xlabel('Time (s)');
ylabel('Amplitude');
title('ECG before and after Filtering');
grid on;

