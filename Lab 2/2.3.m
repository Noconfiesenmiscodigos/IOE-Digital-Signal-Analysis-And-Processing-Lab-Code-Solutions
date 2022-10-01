%Lab 2.3
%Convolution Sum

n=0:1:4;
x=power(2.732,n).*ones(1,5);
subplot(3,1,1);
stem(n,x);
xlabel('Time domain(n)');
ylabel('Amplitude x[n]');
title('Input Sequence x[n]');
grid on;

n=0:1:5;
h=[1,1,1,1,1,1]; 
subplot(3,1,2);
stem(n,h);
xlabel('Time domain(n)');
ylabel('Amplitude h[n]');
title('Impulse Response h[n]');
grid on;

n=(0+0):1:(4+5);
y=conv(x,h);
subplot(3,1,3);
stem(n,y);
xlabel('Time domain(n)');
ylabel('Amplitude y[n]');
title('Convolution of x[n] & h[n]');
grid on;
disp(y);

%Untitled11
%  Columns 1 through 9

%    1.0000    3.7320   11.1958   31.5870   87.2957   87.2957   86.2957   83.5637   76.0998

%  Column 10

%   55.7087