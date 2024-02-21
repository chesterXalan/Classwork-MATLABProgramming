clc; clear all;

t_a = 10;
y_a = 1200 / (1 + 28 * exp(-0.2 * t_a));
fprintf('(a) 10個月後的魚群數目 = %.2f\n', y_a)

size = int8((50 - 10) / 5);
y_c = zeros(1, size);
n = 1;
for t_b = 10:5:50
    y_b = 1200 / (1 + 28 * exp(-0.2 * t_b));
    y_c(n) = y_b;
    n = n + 1;
end
fprintf('(b) 10~50個月每間隔5個月後的魚群數目 = %.2f\n', y_b)

figure('Name', '(c) 關係曲線圖', 'NumberTitle','off');
plot(10:5:50, y_c);
xlabel('月份')
ylabel('魚群數量')
