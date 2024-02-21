clc; clear

f = [-1 1 -1];
A = [2  1 -3
     -1 -1 1
     -9 1  1];
b = [52
     10
     32];
int = [0
       0
       0];

x = linprog(f, A, b, [], [], int);
max = f * -x;
disp(max)
