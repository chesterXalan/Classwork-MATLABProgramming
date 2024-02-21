clc; clear all;

x1 = -10:0.1:-2;
x2 = -2:0.1:0;
x3 = 0:0.1:10;

y1 = -2.186.*x1 - 12.864;
y2 = 4.246.*x2;
y3 = 10.*exp(-0.05.*x3 - 0.5).*sin(0.03.*x3.^2 + 0.7.*x3);

hold on
plot(x1, y1); plot(x2, y2); plot(x3, y3)
box on

gtext('function_{1}(-2.186x-12.864)')
gtext('function_{2}(4.246x)')
gtext('function_{3}(10e^{-0.05x-0.5}sin(0.03x^{2}+0.7x))')
