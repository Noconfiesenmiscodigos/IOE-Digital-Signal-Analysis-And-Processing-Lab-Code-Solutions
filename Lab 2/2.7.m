u=ones(1,10);
n=1:1:10;
a=1;
x=exp(-a*n).*u;
h=u;
y=conv(x,h);
stem(y);
xlabel('time domain(n)');
ylabel('===>>>y');
title('convolution of x and h');
grid on