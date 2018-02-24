%--- 2. Create and Visualize a Matrix of Harmonic Sinusoids for N=8
figure;
N = 8;
n = 0:N-1;

% create N sinusoids and lead each as a column into the matrix D
for k=0:N-1;
  
  D(:,k+1) = exp( j* (2*pi/N) * k * n).';

end

% plot the Real and Imaginary parts as images
clf
subplot(121)
imagesc(n,n,real(D)); axis('square')
xlabel('$k$','interpreter','LaTeX','fontsize',12);
ylabel('$n$','interpreter','LaTeX','fontsize',12);
title('${\rm Re}(e^{j\frac{2\pi}{N}kn}) = \cos(\frac{2\pi}{N}kn)$','interpreter','LaTeX','fontsize',18);
colorbar

subplot(122)
imagesc(n,n,imag(D)); axis('square')
xlabel('$k$','interpreter','LaTeX','fontsize',12);
ylabel('$n$','interpreter','LaTeX','fontsize',12);
title('${\rm Im}(e^{j\frac{2\pi}{N}kn}) = \sin(\frac{2\pi}{N}kn)$','interpreter','LaTeX','fontsize',18);
colorbar