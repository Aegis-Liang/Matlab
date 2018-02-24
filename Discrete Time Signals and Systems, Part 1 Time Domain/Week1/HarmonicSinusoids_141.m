N = 8;
n = 0:N-1;

for k=0:N-1;
    x = exp( j* (2*pi/N) * k * n);
    
    subplot(8,2,2*k+1)
    stem(n, real(x), 'b', 'fill', 'LineWidth', 2); hold on
    str = sprintf('k=%d', k); ylabel(str, 'fontsize', 14);
    aa = axis; axis([0, 7, -1, 1]);
    
    subplot(8,2,2*k+2)
    stem(n, imag(x), 'r', 'fill', 'LineWidth', 2); hold off
    aa = axis; axis([0, 7, -1, 1]);
end

subplot(821)
title(['${\rm Re}(e^{j \frac{2\pi}{8}kn}) = \cos(\frac{2\' ...
       'pi}{8}kn)$'],'interpreter','LaTeX','fontsize',12);

subplot(822)
title(['${\rm Im}(e^{j \frac{2\pi}{8}kn}) = \sin(\frac{2\' ...
       'pi}{8}kn)$'],'interpreter','LaTeX','fontsize',12);