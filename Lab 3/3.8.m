b = input('Enter the numerator coefficients = ');
a = input('Enter the denominator coefficients = ');

w = -pi: pi/256: pi;

[h] = freqz(b,a,w);

subplot(2,2,1);
plot(w,abs(h));
grid on;
xlabel('Normalized Frequency--->');
ylabel('Magnitude in dB--->');
title('Magnitude Response');

subplot(2,2,2);
plot(w,angle(h));
grid on;
xlabel('Normalized Frequency--->');
ylabel('phase in radians--->');
title('Phase Response');

subplot(2,2,[3,4]);
zplane(b,a);
xlabel('Real Part');
ylabel('Imaginary Part');
title('Poles and Zeros of H[z] in Z-plane');

%Enter the numerator coefficients = 4
%Enter the denominator coefficients = 6