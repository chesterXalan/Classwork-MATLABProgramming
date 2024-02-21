clc; clear all;

F = input('請輸入華氏溫度：');
C = (F - 32) * 5 / 9;
fprintf('換算攝氏溫度為：%.1f\n', C);

C = input('\n輸入攝氏溫度：');
F = C * 9 / 5 + 32;
fprintf('換算華氏溫度為：%.1f\n', F);