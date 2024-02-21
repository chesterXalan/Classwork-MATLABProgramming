clc; clear all;
p1 = [3, 2, 1, 1];
p2 = [1, 2, 3, 4];
a = p1 + p2
b = p1 - p2
c = conv(p1, p2)
[d, r] = deconv(p1, p2)

clc; clear all;
p = [4, 3, 2, 1];
p_der = polyder(p)
p_int = polyint(p)

clc; clear all;
p = [4, 3, 2, 1];
x = 0:0.1:3;
val = polyval(p, x);
plot(x, val)