%Lab 2.1
%Convolution Sum

n=0:1:5;
x=[1,0,-1,1,2,1];
subplot(3,1,1);
stem(n,x);
xlabel('Time domain(n)');
ylabel('Amplitude x[n]');
title('Input Sequence x[n]');
grid on;

n=0:1:3;
h=[1,1,1,1];
subplot(3,1,2);
stem(n,h);
xlabel('Time domain(n)');
ylabel('Amplitude h[n]');
title('Impulse Response h[n]');
grid on;

n=(0+0):1:(5+3);
y=conv(x,h);
subplot(3,1,3);
stem(n,y);
xlabel('Time domain(n)');
ylabel('Amplitude y[n]');
title('Convolution of x[n] & h[n]');
grid on;
disp(y);

%>> Untitled8
%     1     1     0     1     2     3     4     3     1