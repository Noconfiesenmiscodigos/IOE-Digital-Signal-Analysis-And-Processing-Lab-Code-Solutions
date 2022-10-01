x=input('Enter the i/p sequence');
subplot(3,1,1);
stem(x);
xlabel('time domain(n)');
ylabel('===>>>x');
title('input sequence');
grid on
h=input('Enter the impulse sequence');

subplot(3,1,2);
stem(h);
xlabel('time domain');
ylabel('===>>>h');
title('impulse response');
grid on
y= conv(x,h);

subplot(3,1,3);
stem(y);
xlabel('time domain(n)');
ylabel('===>>>y');
title('convolution of x and h');
grid on