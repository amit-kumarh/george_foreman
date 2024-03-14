%% MOTOR PARAMETER ESTIMATION
t = .02:.02:.02*141;
l = data(:, 1)';
r = data(:, 1)';

% from cftool with custom equation
K = 0.0031
tau = 0.1044
hold on
plot(t, r, '.', 'MarkerSize', 10)
plot(t, 300*K*(1-exp(-t/tau)))
xlabel("Time (s)")
ylabel("Motor Speed")
title("Right motor calibration data")

%% GYROSCOPE CALIBRATION
t = .05:.05:.05*140;
figure
plot(t, gyro, '.', 'MarkerSize', 20)
title("Gyroscope Calibration Data")
xlabel("Time (s)")
ylabel("Pendulum Angle (rad)")

wn = 2*pi * (1/1.3)
leff = 9.8 / wn^2 