% FIGURE 1 GENERATOR (Run this in MATLAB)
figure('Color', 'w');
rectangle('Position', [0, 0, 20, 15], 'LineWidth', 2); hold on;
axis equal; xlim([-1, 21]); ylim([-1, 16]);
for x = 3:5:17
    for y = 2:4:12
        rectangle('Position', [x, y, 3, 2], 'FaceColor', [0.8, 0.8, 0.8]);
    end
end
plot([1, 4.5, 4.5, 9.5, 9.5, 19], [1, 5, 10, 10, 13, 13], 'r-', 'LineWidth', 4);
plot(1, 1, 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 10);
plot(19, 13, 'go', 'MarkerFaceColor', 'g', 'MarkerSize', 10);
title('Simulation Environment & Pathfinding');
legend('Path', 'Start', 'Asset');