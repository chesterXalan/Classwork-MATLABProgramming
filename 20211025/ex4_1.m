clc; clear all;

dim_r = input('請輸入二維矩陣的列數：');
dim_c = input('請輸入二維矩陣的行數：');
fprintf('\n');

matrix = zeros(dim_r, dim_c);
for i = 1:dim_r
    for j = 1:dim_c
        fprintf('請輸入矩陣(%d, %d)的值：', i, j);
        value = input('');
        matrix(i, j) = value;
    end
end

fprintf('\n輸入的矩陣值為：\n');
disp(matrix);
