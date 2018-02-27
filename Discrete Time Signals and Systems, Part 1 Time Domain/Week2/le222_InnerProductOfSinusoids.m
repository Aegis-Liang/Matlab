%---INNER PRODUCT OF SINUSOIDS
N = 40;
n = 0:N-1;

k = 0; % 1, 2, 2.5
omega = (2*pi/N) * k;
x = exp(j * omega * n).';
subplot(211)
stem(n,real(x),'b','Marker','none','LineWidth',2); hold on
stem(n,imag(x),'r','Marker','none','LineWidth',2); hold off
title('Real part = Blue, Imaginary part = Red','fontsize',18)

k = 1;
omega = (2*pi/N) * k;
y = exp(j * omega * n).';
subplot(212)
stem(n,real(y),'b','Marker','none','LineWidth',2); hold on
stem(n,imag(y),'r','Marker','none','LineWidth',2); hold off

% Note: in Matlab, the operation ' performs complex conjugate transpose
innerproduct = y' * x 