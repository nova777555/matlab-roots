a=-2.*pi, b=6.*pi;
m=100;
x=linspace(a,b,m);
f='5.*exp(1).^(-0.1.*x).*sin(x)-0.1.*x';
plot(x,eval(f),x,0*x,':');
grid on
z=ginput(1);
[zr,fr]=fzero(f,z(1))
hold on
plot(zr,fr,'r*',z(1),z(2),'g*')
