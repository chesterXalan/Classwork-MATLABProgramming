clc; clear; close all

data = [1   2
        1.3 2.5
        1.5 2.7
        1.8 2.6
        1.9 2.2
        2   2.5
        2.2 2.8
        2.4 3
        2.6 3.2
        2.8 2.9
        3   2.4
        3.2 2.5];

t = 1:0.01:3.2;
for i = [5 7 9]
    p = polyfit(data(:, 1), data(:, 2), i);
    v = polyval(p, t);

    figure
    plot(data(:, 1), data(:, 2), '*', t, v)
    axis([1 3.2 2 3.2])
end

tt = 1:0.01:3.2;
vv = spline(data(:, 1), data(:, 2), tt);

figure
plot(data(:, 1), data(:, 2), '*', tt, vv)
axis([1 3.2 2 3.2])
