clc; clear all;

x = linspace(0, 10);
y1 = exp(-0.5.*x).*sin(2.*x);
y2 = exp(-0.5.*x).*cos(2.*x);

plot(x, y1, 'b', 'LineWidth', 2)
hold on
plot(x, y2, 'r--', 'LineWidth', 3)

xlabel('x'); ylabel('y(x)')
title('Plot of y(x) = e^{-2x}sin2x and y(x) = e^{-2x}cos2x')
legend('Function 1', 'Function 2')
grid on
