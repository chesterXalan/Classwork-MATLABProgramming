clc; clear; close all

x = 0:0.1:5;
y = [3, -2, 1, -10];
v = polyval(y, x);
plot(x, v)
