clc; clear all;

fprintf('���ͤ@��5x5�x�}\n\n');
matrix = zeros(5);
for i = 1:5
    for j = 1:5
        fprintf('�п�J�x�}(%d, %d)���ȡG', i, j);
        value = input('');
        matrix(i, j) = value;
    end
end

fprintf('\n��J���x�}�Ȭ��G\n');
disp(matrix);
