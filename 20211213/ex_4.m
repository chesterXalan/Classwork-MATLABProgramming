clc; clear

x = fmincon('ex_4f1', [0 0], [], [], [], [], [], [], 'ex_4f2');
min = ex_4f1(x);

fprintf('min = %.4f\n', min)
fprintf('x = %.4f, %.4f\n', x)
