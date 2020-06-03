eq='cos(x)-exp(0.001+x^2)';
a=fzero(eq,0);
disp(a);
x=linspace(-pi,pi,200);
plot(x,cos(x)-exp(0.001+x.^2));
xlabel('x');
ylabel('y');
grid on
syms y;
b=solve(cos(y)-exp(0.001+y^2) == 0);
disp(b);