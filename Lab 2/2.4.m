%Lab 2.4

b=input('Enter the numerator coeff. = ');
a=input('Enter the denominator coeff. = ');

w = -2*pi: pi/256:2*pi;

[h]=freqz(b,a,w);

subplot(2,2,1);
plot(w,abs(h));
grid on;
xlabel('Normalised Freq------>');
ylabel('Magnitude in dB------>');
zlabel('Magnitude Response--->');

subplot(2,2,2);
plot(w,angle(h));
grid on;
xlabel('Normalised Freq------>');
ylabel('Phase In Radian------>');
zlabel('Phase Response--->');

subplot(2,2,[3,4]);
zplane(b,a)
xlabel('Real Part');
ylabel('Imag. Part');
title('Pole & Zero of H[z] in Z-plane');


%>> Untitled12
%Enter the numerator coeff. = [1 0.6]
%Enter the denominator coeff. = [1 -0.4 0.1]