xn = input('Enter the sequence x(n)=');
N = length(xn);
xk = zeros(1,N);
ixk = zeros(1,N);


for n=0:N-1
for k=0:N-1
xk(k+1) = xk(k+1) + (xn(n+1)*exp((-i)*2*pi*k*n/N));
end
end
disp('DFT values of x[n] = X[k]');
disp(xk)

t=0:N-1;
subplot(221);
stem(t,xn);
grid
ylabel ('Amplitude');
xlabel ('Time Index');
title('Input Sequence x[n]');

magnitude = abs(xk);

t=0:N-1;
subplot(222);
stem(t,magnitude);
grid
ylabel ('Amplitude');
xlabel ('K');
title('Magnitude Response |X(K)| DFT values');

phase = angle(xk);

t=0:N-1;
subplot(223);
stem(t,phase);
grid
ylabel ('Phase');
xlabel ('K');
title('Phase Response |X(K)| DFT values');

for n=0:N-1
for k=0:N-1
    ixk(n+1)=ixk(n+1)+(xk(k+1)*exp(i*2*pi*k*n/N));
end
end
ixk = ixk./N;
disp('IDFT values of X[K]');
disp(ixk)

t=0:N-1;
subplot(224);
stem(t,ixk);
grid;
ylabel ('Amplitude');
xlabel ('Time Index');
title('IDFT sequence');

%Enter the sequence x(n)= [4 5 6 7]
%DFT values of x[n] = X[k]
%   22.0000 +       0i   -2.0000 +  2.0000i   -2.0000 -  0.0000i   -2.0000 -  2.0000i
%IDFT values of X[K]
%   4.0000 - 0.0000i   5.0000 - 0.0000i   6.0000 + 0.0000i   7.0000 + 0.0000i
%>>