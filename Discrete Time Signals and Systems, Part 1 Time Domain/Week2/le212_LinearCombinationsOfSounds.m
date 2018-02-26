%--- LINEAR COMBINATION IN SOUND


fs = 44100;
N = 145000;
M = 4;

% signal 0: "Alas, Poor Yorick!"
load hamlet.mat
hamlet = 2*alas(1:N);
subplot(511)
stem(hamlet(1:10000), 'b', 'Marker', 'none', 'LineWidth', 1);
title('Hamlet', 'FontSize', 12);
sound(hamlet,fs);

% sine wave
n = 0:N-1;
sinewave = 0.99*cos(2*pi/200 * n)';
subplot(512)
stem(sinewave(1:10000), 'b', 'Marker', 'none', 'LineWidth', 1);
title('Sinewave', 'FontSize', 12);
%sound(sinewave,fs);

% chirp
chirp = 0.3*cos(2*pi/3000000 * n.^2)';
subplot(513)
stem(chirp(1:10000), 'b', 'Marker', 'none', 'LineWidth', 1);
title('Chirp', 'FontSize', 12);
%sound(chirp,fs)

% white gaussian noise
noise = 0.1*randn(N,1);
subplot(514)
stem(noise(1:10000), 'b', 'Marker', 'none', 'LineWidth', 1);
title('Noise', 'FontSize', 12);
%sound(noise,fs);

% check that all the vectors are the same length and orientation
size(hamlet)
size(sinewave)
size(chirp)
size(noise)

% build "X" matrix
X = [hamlet, sinewave, chirp, noise];
size(X)

% specify an "a" vector, multiply by "X", and listen to the result "y"
a = [1; 
    0; 
    0; 
    0]

y = X*a;
subplot(515)
stem(y(1:10000), 'r', 'Marker', 'none', 'LineWidth', 1);
title('Linear Combination', 'FontSize', 12);
%sound(y,fs);

% specify an "a" vector, multiply by "X", and listen to the result "y"
a = [0; 
    1; 
    0; 
    0]
y = X*a;
%sound(y,fs);


% specify an "a" vector, multiply by "X", and listen to the result "y"
a = [0; 
    0; 
    1; 
    0]
y = X*a;
%sound(y,fs);

% specify an "a" vector, multiply by "X", and listen to the result "y"
a = [0; 
    0; 
    0; 
    1]
y = X*a;
%sound(y,fs);

% specify an "a" vector, multiply by "X", and listen to the result "y"
a = [0.5; 
    0.5; 
    0.25; 
    0.1]
y = X*a;
%sound(y,fs);

% specify an "a" vector, multiply by "X", and listen to the result "y"
a = [0.25; 
    0.5; 
    0.5; 
    0.1]
y = X*a;
%sound(y,fs);
 