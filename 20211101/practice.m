clc; clear all;
a = [1 2; 3 4];
b = [5 6; 7 8];
c = [9 10 ; 11 12];
d = [13 14; 15 16];

m = [4*a b; c 2*d];
display(m);

clc; clear all;
data(1) = struct('name', 'Jack', 'scores', [76 84 91 68]);
data(2) = struct('name', 'Amy', 'scores', [96 56 84 72]);
data(3) = struct('name', 'Michael', 'scores', [80 90 75 84]);

Sum = zeros(1, length(data));
Mean = zeros(1, length(data));
for i = 1:length(data)
    Sum(i) = sum(data(i).scores);
    Mean(i) = mean(data(i).scores);
end
[sorted, index] = sort(Sum, 'descend');

n = 1;
for i = index
    fprintf('%d. %s: total score = %d, average = %.2f\n', n, data(i).name, ...
        Sum(i), Mean(i));
    n = n + 1;
end
