clc; clear; close all

p = -1:0.1:1;
f = exp(-2 .* p) .* sin(9 .* p);
figure
plot(p, f, '*')

net = newrb(p, f);
Y = sim(net, p);
figure
plot(p, f, '*', p, Y)

pp = -1:0.01:1;
YY = spline(p, Y, pp);
figure
plot(p, f, '*', pp, YY)
%-------------------------------
f(1, 10) = 3;
figure
plot(p, f, '*')

net = newrb(p, f);
Y = sim(net, p);
figure
plot(p, f, '*', p, Y)

YY = spline(p, Y, pp);
figure
plot(p, f, '*', pp, YY)
