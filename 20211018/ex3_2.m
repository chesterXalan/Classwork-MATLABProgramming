clc; clear all;

data(1) = struct('country', '台灣', 'money', [13046 13976 12619 12601]);
data(2) = struct('country', '日本', 'money', [35373 37547 32853 31368]);
data(3) = struct('country', '新加坡', 'money', [20911 22766 20790 20980]);
data(4) = struct('country', '香港', 'money', [24315 24811 24211 23803]);
data(5) = struct('country', '菲律賓', 'money', [1026 991 936 995]);
data(6) = struct('country', '印尼', 'money', [684 729 676 816]);
data(7) = struct('country', '韓國', 'money', [8676 9790 8999 9976]);
data(8) = struct('country', '泰國', 'money', [1987 1980 1848 2014]);
data(9) = struct('country', '馬來西亞', 'money', [3485 3837 3664 3870]);

Mean = zeros(1, length(data));
Median = zeros(1, length(data));
Max = zeros(1, length(data));
Min = zeros(1, length(data));
for i = 1:length(data)
    Mean(i) = mean(data(i).money);
    Median(i) = median(data(i).money);
    Max(i) = max(data(i).money);
    Min(i) = min(data(i).money);
end

[sorted, index] = sort(Mean, 'descend');

fprintf('各國所得排序（由高到低）：\n')
n = 1;
for i = index
    fprintf('%d. %s：平均值 = %.2f、中數 = %.2f\n   最大值 = %d、最小值 = %d\n', ...
        n, data(i).country, Mean(i), Median(i), Max(i), Min(i))
    n = n + 1;
end
