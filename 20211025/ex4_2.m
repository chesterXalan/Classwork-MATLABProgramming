clc; clear all;

fprintf('產生一個5x5矩陣\n\n');
matrix = zeros(5);
for i = 1:5
    for j = 1:5
        fprintf('請輸入矩陣(%d, %d)的值：', i, j);
        value = input('');
        matrix(i, j) = value;
    end
end

fprintf('\n輸入的矩陣值為：\n');
disp(matrix);
