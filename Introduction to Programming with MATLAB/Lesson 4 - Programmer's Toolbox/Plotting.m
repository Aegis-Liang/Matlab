a = (1:10).^2;
plot(a)

a = (-10:10).^2;
figure(2)
plot(a)

t = -10:10;
b = t.^2;
plot(t, b);

figure(2)
x1 = 0:0.1:2*pi; y1 = sin(x1);
x2 = pi/2:0.1:3*pi; y2 = cos(x2);
plot(x1, y1, x2, y2);

figure
plot(x1, y1, 'r', x2, y2, 'k:');

figure(1)
plot(t, b, 'm--o');

figure(2)
plot(x1, y1, 'r')
hold on
plot(x2, y2, 'k:')
hold off

figure(3)
grid
title('title')
xlabel('xlabel')
ylabel('ylabel')
legend('sine', 'cosine')
axis([-2 12 -1.5 1.5])

close(3)