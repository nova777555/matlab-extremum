f=@(x) 2-abs(x).*exp(-abs(x-1));
subplot(2,2,2);
a=0;
b=4;
t=['2-abs(x)*exp(-abs(x-1)) '];
x=linspace(a,b,200);
plot(x,f(x));
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');