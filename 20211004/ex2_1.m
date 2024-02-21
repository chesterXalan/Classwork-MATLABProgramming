clc; clear all;

x = [3 5 8 1 4];
[sorted, index] = sort(x)

unsort = x(sort(index))