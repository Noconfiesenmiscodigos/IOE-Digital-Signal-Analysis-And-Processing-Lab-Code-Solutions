%Lab 2.2
%Convolution Sum

n=0:1:4;
x=power(2,n).*ones(1,5);
subplot(3,1,1);
stem(n,x);
xlabel('Time domain(n)');
ylabel('Amplitude x[n]');
title('Input Sequence x[n]');
grid on;

n=0:1:3;
h=[1,1,1,1]; %u[n]-u[n-4]
subplot(3,1,2);
stem(n,h);
xlabel('Time domain(n)');
ylabel('Amplitude h[n]');
title('Impulse Response h[n]');
grid on;

n=(0+0):1:(4+3);
y=conv(x,h);
subplot(3,1,3);
stem(n,y);
xlabel('Time domain(n)');
ylabel('Amplitude y[n]');
title('Convolution of x[n] & h[n]');
grid on;
disp(y);


%Untitled10
%     1     3     7    15    30    28    24    16