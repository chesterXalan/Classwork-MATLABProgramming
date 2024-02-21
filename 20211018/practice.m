clc; clear all;
a(:, :, 1) = [1 2 3; 4 5 6];
a(:, :, 2) = [7 8 9; 10 11 12];
a

clc; clear all;
b = 'This is an apple.';
b_split = strsplit(b)

c = ['¦w¦w', 'ªd¦n']
d = {'£~£~'; [1 2 3]; [1+2i 2+3i]}

clc; clear all;
e1.name = 'aa';
e1.num = 1;
e1.score = 50;
fprintf('name = %s\nnumber = %d\nscore = %d\n', e1.name, e1.num, e1.score);
e2.name = 'bb';
e2.num = 2;
e2.score = 60;
fprintf('name = %s\nnumber = %d\nscore = %d\n', e2.name, e2.num, e2.score);
scores = [e1.score e2.score];
fprintf('\nsum = %d\nmean = %.1f\n', sum(scores), mean(scores))
