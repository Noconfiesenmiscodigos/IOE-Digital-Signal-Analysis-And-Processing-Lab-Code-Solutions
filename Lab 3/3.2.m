clc;
close all;
clear all;
 x = input('Enter the discrete sequence');
 N= length(x);
 
 Xk = fft(x,N);
 xn = ifft(Xk);
 disp('FFT of x[n] = X(k) = ');
 disp(Xk);
 
 disp('FFT of X(k) = x[n] = ');
 disp(xn);
 n = 0:N-1;
 subplot(2,2,1);
 stem(n,x);
 xlabel('n--->');
 ylabel('Amplitude x[n]');
 title('Input Discrete Sequence x[n]');
 grid on;
 
 subplot(2,2,3);
 stem(n,angle(Xk));
 xlabel('k--->');
 ylabel('Phase ===> <X(k)');
 title('Phase Response of X(k)');
 grid on;
 
 subplot(2,2,4);
 stem(n,xn);
 xlabel('n--->');
 ylabel('Amplitude x[n]');
 title('IFFT of given discrete signalx[n] ==> Original signal');
 grid on;

%Enter the discrete sequence [2 -3 4 5 6 8 9 -4]
%FFT of x[n] = X(k) =
% Columns 1 through 4:

%   27.0000 +       0i  -18.1421 +  6.4142i   -5.0000 -  4.0000i   10.1421 -  3.5858i

% Columns 5 through 8:

%   15.0000 +       0i   10.1421 +  3.5858i   -5.0000 +  4.0000i  -18.1421 -  6.4142i
%FFT of X(k) = x[n] =
%   2  -3   4   5   6   8   9  -4