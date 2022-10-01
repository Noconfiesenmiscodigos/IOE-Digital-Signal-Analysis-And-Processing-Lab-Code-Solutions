n=0:1:4;
x= power(2,n).*ones(1,5)
h=[1, 1, 1, 1]


subplot(3,1,1);
stem(n,x);
xlabel('timedomain(n)');
ylabel('Amplitude x[n]');
title('Input Signal x[n]');
grid on;

n=0:1:3
subplot(3,1,2);
stem(n,h);
xlabel('timedomain(n)');
ylabel('Amplitude h[n]');
title('Impulse response h[n]');
grid on;

n=0:1:7
y = conv(x,h);
subplot(3,1,3);
stem(n,y);
xlabel('timedomain(n)');
ylabel('Amplitude y[n]');
title('Convolution sum x[n]*h[n]');
grid on;
disp(y)