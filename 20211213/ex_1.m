clc; clear

f = [-7 -22];
A = [3 10
     5 8];
b = [33000
     42000];
int = [0
       0];
   
x = linprog(f, A, b, [], [], int);
max = f * -x;

fprintf('�̤j�Q��G%d\n', max)
fprintf('�q���~�ػs�y�ƶq�G%.f\n', x(1))
fprintf('�����ج[�s�y�ƶq�G%.f\n', x(2))
