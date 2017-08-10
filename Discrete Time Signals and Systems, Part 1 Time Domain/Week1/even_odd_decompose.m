x = -7:0.1:7;
y = cos(x);
e = 1/2*(sin(x) + sin(-x));
o = 1/2*(sin(x) - sin(-x));

figure
hold on
plot(y, 'r')
plot(e, 'g')
plot(o, 'b')
hold off