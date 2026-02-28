# ECG Signal Processing – MATLAB

## Overview
This project processes real ECG (electrocardiogram) data using MATLAB to demonstrate digital noise reduction using FIR filtering.

## Implementation Summary
- Loaded ECG dataset from `ECGData.mat`
- Generated time axis using sampling frequency (fs = 360 Hz)
- Plotted raw ECG signal
- Added Gaussian noise using `randn()` to simulate measurement interference
- Designed a 50th-order FIR low-pass filter (cutoff = 40 Hz) using `fir1`
- Applied filtering via convolution (`conv`)
- Compared noisy and filtered signals through time-domain plots

## Concepts Demonstrated
- Digital Signal Processing (DSP)
- FIR low-pass filter design
- Frequency normalization using Nyquist frequency
- Convolution-based filtering
- Time-domain signal visualization

## Outcome
The FIR filter successfully reduced high-frequency noise while preserving the overall ECG waveform structure, demonstrating practical digital signal conditioning.
