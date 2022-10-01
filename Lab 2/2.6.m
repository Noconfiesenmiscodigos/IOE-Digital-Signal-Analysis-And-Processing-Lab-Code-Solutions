x = input('Enter Discrete sequence x[n]');
N=length(x);

Xk=fft(x,N);
xn=ifft(Xk);

disp('FFT of x[n] = X(k) = ');
disp(Xk);

disp('IFFT of X(K) = x[n] = ');
disp(xn);

n=0:N-1;

subplot(2,2,1);
stem(n,x);
xlabel('n--->');
ylabel('Amplitude x[n]');
title('Input Discrete Sequence x[n]');
grid on;

subplot(2,2,2);
stem(n,abs(Xk));
xlabel('n--->');
ylabel('Magnitude ===> [X(k)]');
title('Manitude Response of X(k)');
grid on;

subplot(2,2,3);
stem(n,angle(Xk));
xlabel('k--->');
ylabel('Phase ===> [X(k)]');
title('Phase Response of X(k)');
grid on;

subplot(2,2,4);
stem(n,xn);
xlabel('n--->');
ylabel('Amplitude ===> x[n]');
title('IFFT of given descrete signal x[n] ++> Ogiginal Signal Signal');
grid on;

