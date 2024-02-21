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

fprintf('最大利潤：%d\n', max)
fprintf('電視外框製造數量：%.f\n', x(1))
fprintf('立鐘框架製造數量：%.f\n', x(2))
