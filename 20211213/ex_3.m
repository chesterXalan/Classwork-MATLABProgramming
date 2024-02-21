clc; clear

a1 = fminbnd('ex_3f1', 0, 1);
%b1 = fminbnd('ex_3f2', 0, 1);

a2 = fminsearch('ex_3f1', 0);
b2 = fminsearch('ex_3f2', [0; 0]);

a3 = fzero('ex_3f1', 0);
%b3 = fzero('ex_3f2', 0);

fprintf('fminbnd: (a)min =  %f\n', a1)
fprintf('fminserch: (a)min = %f\n', a2)
fprintf('\t\t   (b)min(x1) = %f, min(x2) = %f\n', b2)
fprintf('fzero: (a)min = %f\n', a3)
