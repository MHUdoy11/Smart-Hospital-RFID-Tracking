crowd = [0, 10, 20, 30, 40, 50];
manual_time = [120, 180, 240, 310, 380, 450];
rfid_time = [25, 28, 30, 32, 35, 38];

figure('Color', 'w', 'Position', [100, 100, 600, 350]);
plot(crowd, manual_time, '-bo', 'LineWidth', 2, 'MarkerFaceColor', 'b'); hold on;
plot(crowd, rfid_time, '-rs', 'LineWidth', 2, 'MarkerFaceColor', 'r');
yline(300, '--k', 'Critical Limit (5 min)', 'LineWidth', 1.5, 'LabelHorizontalAlignment', 'left');
grid on;
legend('Manual Search', 'Proposed System', 'Location', 'NorthWest');
xlabel('Crowd Density (People)', 'FontSize', 11, 'FontWeight', 'bold');
ylabel('Search Time (Seconds)', 'FontSize', 11, 'FontWeight', 'bold');
title('Emergency Response Time', 'FontSize', 12);