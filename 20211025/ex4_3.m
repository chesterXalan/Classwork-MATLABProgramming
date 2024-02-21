clc; clear all;

Ans = 1;
for i = 1:1001
    Ans = Ans * (-1 ^ i);
end

display(Ans);
