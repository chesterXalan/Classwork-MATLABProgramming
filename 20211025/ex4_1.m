clc; clear all;

dim_r = input('�п�J�G���x�}���C�ơG');
dim_c = input('�п�J�G���x�}����ơG');
fprintf('\n');

matrix = zeros(dim_r, dim_c);
for i = 1:dim_r
    for j = 1:dim_c
        fprintf('�п�J�x�}(%d, %d)���ȡG', i, j);
        value = input('');
        matrix(i, j) = value;
    end
end

fprintf('\n��J���x�}�Ȭ��G\n');
disp(matrix);
