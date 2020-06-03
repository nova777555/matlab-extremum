f=@(x,i)(cos(i.*x)-sin(i.*x)).^2;
m=3;
a=0;
b=2*pi;
t=['sum(cos(k.*x)-sin(k.*x)^2)'];
x=linspace(a,b,200);
z=0;
for i=1:m
    z=z+f(x,i);
end
plot(x,z);
s=@(x) z(round(x/(b-a)*200));
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
[x_m,y_m]=fminbnd(s,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
