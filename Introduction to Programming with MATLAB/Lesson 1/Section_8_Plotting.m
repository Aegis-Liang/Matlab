x_coordinates = [1, 3, 10];
y_coordinates = [2, -4.2, 12.3];

plot(x_coordinates, y_coordinates);

plot(x_coordinates, y_coordinates,'*');

plot(x_coordinates, y_coordinates,'r*');
grid on
xlabel('Selection')
ylabel('Change')
title('Changes in Selections during the Past Year')
axis([0, 12, -10, 20])

figure

bar(x_coordinates, y_coordinates)

figure

pie([4 2 7 4 7])

close all

xxx = imread('xxx.jpg');
image(xxx)
axis off