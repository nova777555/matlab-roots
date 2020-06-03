clear 
a=0;
b=6;
m=50;
x=linspace(a,b,m);
h=0.001;
iter=5;
eps=0.001;
f=@(x)1+(1+sin(x)-cos(x)).^2-(sin(2.*x)-cos(2.*x)-0.2).^2;
y=f(x);
plot (x,f(x),x,0*x,':');
grid on
xlabel('x');
ylabel('y');
hold on
y_min=min(y);
y_max=max(y);
if y_min<0 y_min=1.1*y_min; else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; else y_max=0.9*y_max; end;
axis([a,b,y_min,y_max]);
z=ginput(2);
z1=z(1,1); z2=z(2,1);
f1=f(z1); f2=f(z2);
z=(z1+z2)/2; y=f(z);
P=plot(z1,0,'*',z2,0,'*',z,0,'o');
if f1*f2>0 
    disp('Wrong points') ;   
end
for i=1:iter
    z=(z1+z2)/2;y=f(z);
    delete(P);
    P=plot(z1,0,'*',z2,0,'*',z,0,'o');
    if y*f1<0
        z2=z;
    else z1=z;
    end
    if abs(f(z))<eps break;
    end
end
hold off
