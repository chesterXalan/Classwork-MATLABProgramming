clc; clear all;
a = [1 2 3; 4 5 6];
b = a > 3
c = a <= 3
 
clc; clear all;
d = [1 0 0; 0 1 0; 0 0 1]
e = find (d)
f = magic(4)
g = find(f>10)

clc; clear all;
h = zeros(1, 5);
for i = 1:length(h)
    h(i) = i * 2;
end
h
