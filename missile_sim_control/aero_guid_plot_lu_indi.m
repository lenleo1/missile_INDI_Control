% AERO_GUID_PLOT StopFcn plot script for Simulink model 'guidance'

%   Lu Zhidong
%   2025-04-28
% Extract signals from Dataset
theta = sigsOut.get('theta').Values*180/pi;
alpha = sigsOut.get('alpha').Values*180/pi;
az_cmd = sigsOut.get('az_cmd').Values/9.81;
az_mea = sigsOut.get('az_mea').Values/9.81;
az_ref = sigsOut.get('az_ref').Values/9.81;
delta = sigsOut.get('delta').Values*180/pi;
q_cmd = sigsOut.get('q_cmd').Values*(180/pi);
Ma = sigsOut.get('Ma').Values;
q_m = sigsOut.get('q_m').Values*180/pi;
q_ref = sigsOut.get('q_ref').Values*180/pi;

% Create figure
figure;
set(gcf, 'Position', [100 100 800 800]); % Set figure size

% Use 3x2 subplot layout
tiledlayout(3,2, 'TileSpacing', 'compact', 'Padding', 'compact');

% Plot 1: az_cmd and az_mea
nexttile;
plot(az_cmd.Time, az_cmd.Data, 'r--', 'LineWidth', 1.5); hold on;
plot(az_cmd.Time, az_ref.Data, 'g-', 'LineWidth', 1.5);
plot(az_mea.Time, az_mea.Data, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('$a_z$ (g)', 'Interpreter', 'latex');
title('Normal Acceleration Tracking', 'Interpreter', 'latex');
legend({'$a_{z,\mathrm{cmd}}$','$a_{z,\mathrm{ref}}$', '$a_{z,\mathrm{mea}}$'}, 'Interpreter', 'latex', 'Location', 'Best');

% Plot 2: q_cmd and q_m
nexttile;
plot(q_cmd.Time, q_cmd.Data, 'r--', 'LineWidth', 1.5); hold on;
plot(q_m.Time, q_ref.Data, 'g-', 'LineWidth', 1.5);
plot(q_m.Time, q_m.Data, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('$q$ (rad/s)', 'Interpreter', 'latex');
title('Pitch Rate Tracking', 'Interpreter', 'latex');
legend({'$q_{\mathrm{cmd}}$', '$q_{\mathrm{ref}}$','$q_{\mathrm{mea}}$'}, 'Interpreter', 'latex', 'Location', 'Best');

% Plot 3: Mach number
nexttile;
plot(Ma.Time, Ma.Data, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('Mach', 'Interpreter', 'latex');
title('Mach Number', 'Interpreter', 'latex');

% Plot 4: Angle of Attack
nexttile;
plot(alpha.Time, alpha.Data, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('$\alpha$ (deg)', 'Interpreter', 'latex');
title('Angle of Attack', 'Interpreter', 'latex');

% Plot 5: Theta (pitch angle)
nexttile;
plot(theta.Time, theta.Data, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('$\theta$ (deg)', 'Interpreter', 'latex');
title('Pitch Angle', 'Interpreter', 'latex');

% Plot 6: Fin Deflection (Input delta)
nexttile;
plot(delta.Time, delta.Data, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('$\delta$ (deg)', 'Interpreter', 'latex');
title('Fin Deflection', 'Interpreter', 'latex');
