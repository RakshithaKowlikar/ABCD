clc;
clear;
close all;
% Define the continuous-time signal
fs_cont = 1000; % High sampling rate to simulate a continuous signal
t_cont = 0:1/fs_cont:1; % Time vector
f_signal = 20; % Frequency of the original signal
x_cont = cos(2*pi*f_signal*t_cont); % Continuous signal
% Define different sampling rates
fs1 = 2*f_signal; % Nyquist rate
fs2 = 1.5*f_signal; % Below Nyquist rate (Aliasing occurs)
fs3 = 4*f_signal; % Above Nyquist rate (Good Sampling)
% Sample the signal at different rates
t1 = 0:1/fs1:1;
x1 = cos(2*pi*f_signal*t1);
t2 = 0:1/fs2:1;
x2 = cos(2*pi*f_signal*t2);
t3 = 0:1/fs3:1;
x3 = cos(2*pi*f_signal*t3);
% Plot the continuous signal
figure;
subplot(3,1,1);
plot(t_cont, x_cont, 'k', 'LineWidth', 1); hold on;
stem(t1, x1, 'r', 'LineWidth', 1.5);
title('Sampling at Nyquist Rate');
xlabel('Time (s)'); ylabel('Amplitude');
legend('Continuous Signal', 'Sampled Signal');
grid on;
subplot(3,1,2);
plot(t_cont, x_cont, 'k', 'LineWidth', 1); hold on;
stem(t2, x2, 'b', 'LineWidth', 1.5);
title('Sampling Below Nyquist Rate (Aliasing)');
xlabel('Time (s)'); ylabel('Amplitude');
legend('Continuous Signal', 'Sampled Signal');
grid on;
subplot(3,1,3);
plot(t_cont, x_cont, 'k', 'LineWidth', 1); hold on;
stem(t3, x3, 'g', 'LineWidth', 1.5);
title('Sampling Above Nyquist Rate');
xlabel('Time (s)'); ylabel('Amplitude');
legend('Continuous Signal', 'Sampled Signal');
grid on; 
