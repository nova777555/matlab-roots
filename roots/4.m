eq='x^2+1';
a=fzero(eq,0);
disp(a);
syms x;
a=solve(x^2+1 == 0);
disp(a);