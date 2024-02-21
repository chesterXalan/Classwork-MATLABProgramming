clc; clear all;
x = linspace(0, 2 * pi);
y1 = sin(x);
y2 = cos(x);
plot(x, y1, 'r.', x, y2, 'b--');
xlabel('x');
ylabel('y');
title('test');
grid on
