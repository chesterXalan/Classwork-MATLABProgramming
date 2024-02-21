clc; clear all;

i = 1;
C = zeros(1, 15);
for x = 1:2:30
    C(i) = 0.1 * x^2 + 7 * x + 210;
    i = i + 1;
end

figure
plot(1:2:30, C);
xlabel('生產數量');
ylabel('生產成本');