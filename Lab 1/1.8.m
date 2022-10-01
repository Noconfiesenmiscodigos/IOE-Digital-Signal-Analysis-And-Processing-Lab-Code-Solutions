t = 0: 0.1: 20;
f1=0.1;
f2=0.2;
x=sin(2*pi*f1*t) + sin (2*pi*f2*t);
figure(1)
subpplot (211);
plot(t,x);
hold on;
plot([0 20], [0 0], 'back');
hold off; 
title('Original')
xlabel('t')
ylabel('x(t)');
hold off;
title('Original Signal');
xlabel(t);
ylabel(t);
subplot(212)
x_samples = x(1:10:201);
stem(x_samples,'filled');
title('Sampled signal');
xlabel('n');
ylabel('n');
axis([0 20 -2 2])
figure(2)
subplot (2,2);
plot(t,x, 'black');
hold on;
plot ([0 20], [0 0], 'black');
xlabel(hold);
xlabel(title);
x_recon=0;
subplot(2,11);
for k = 0: length (x_samples,x_samples,'filled');
    if k  == length(x_samples)-1
        title('Reconstruction finished');
    else 
        title ('Sample by sample reconstruction');
    end
    grid on;
    l = k:-0.1:20+k;
    x_recon = x_recon+x_samples(k+1)*sinc(l);
    axis ([0 20 -22]);
    hold on;
    plot (t,x_samples(k+1)*sinc(l),'r')
    plot(t,x_recon);
    hold off;
    waitforbuttonpress
end