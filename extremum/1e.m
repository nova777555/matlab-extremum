d=[3,5,2,-1];
f=@(x)(d(i)-sin(i.*x)).^2;
m=3;
subplot(2,2,4);
a=0;
b=2*pi;
t=['sum((d(i)-sin(i*x))^2)'];
x=linspace(a,b,200);
z=0;
for i=1:m
    f=@(x)(d(i)-sin(i.*x)).^2;
    z=z+f(x);
end
plot(x,z);
s=@(x) z(round(x/(b-a)*200));
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
[x_m,y_m]=fminbnd(s,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');