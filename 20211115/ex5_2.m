clc; clear all;

t = 0:0.1:3;
f1 = 10.*sin(t).*exp(-t);
f2 = t.^3 - 4.*t.^2 + t + 2;

plot(t, f1, '*', t, f2, '.')
xlabel('time input'); ylabel('magnitude')
title('display two functions')
grid on
gtext('function 1'); gtext('function 2')
