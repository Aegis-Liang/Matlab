%--- 3. Visualizing Complex Exponentials z^n 

% input value of z
z = 1.1 * exp(j*pi*0.1);

% plot z in complex plane
figure
zplane(0,z);
title(['$z~{\rm in~the~complex~plane}$'],'interpreter','LaTeX','fontsize',18);

% plot real and imaginary parts of z^n
N = 20;
n = -N:N;

x = z.^n;

figure
subplot(211)
stem(n,real(x),'b','Marker','none','LineWidth',2)
title(['$z^n, {\rm Real~part}$'],'interpreter','LaTeX','fontsize', ...
      14);
subplot(212)
stem(n,imag(x),'r','Marker','none','LineWidth',2)
title(['$z^n, {\rm Imaginary~part}$'],'interpreter','LaTeX', ...
      'fontsize',14);