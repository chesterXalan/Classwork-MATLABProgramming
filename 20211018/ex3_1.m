clc; clear all;

student(1) = struct('number', 1, 'scores', [93 89 90 82]);
student(2) = struct('number', 2, 'scores', [90 95 88 87]);
student(3) = struct('number', 3, 'scores', [78 84 81 82]);
student(4) = struct('number', 4, 'scores', [89 89 85 86]);
student(5) = struct('number', 5, 'scores', [93 92 90 88]);
student(6) = struct('number', 6, 'scores', [89 90 88 78]);
student(7) = struct('number', 7, 'scores', [85 87 83 83]);

Sum = zeros(1, length(student));
Mean = zeros(1, length(student));
for i = 1:length(student)
    Sum(i) = sum(student(i).scores);
    Mean(i) = mean(student(i).scores);
end

[sorted, index] = sort(Sum, 'descend');
place = {'一', '二', '三', '四', '五', '六', '七'};

fprintf('名次與各學號總分、平均：\n')
n = 1;
for i = index
    fprintf('第%s名：學號 = %d\n  總分 = %d、平均 = %.2f\n', place{n}, ...
        student(i).number, Sum(i), Mean(i))
    n = n + 1;
end
