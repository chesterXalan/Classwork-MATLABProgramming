clc; clear all;

t = 0:0.1:3;
f = exp(-5.*t).*(sin(3.*t) + 5.*cos(3.*t));

subplot(121); plot(t, f, '+')
subplot(122); plot(t, f, '*')
