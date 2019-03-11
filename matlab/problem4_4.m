clear; clc
nh = -250 : 250;
h = sinc(2 * pi * nh / 25);

nx = 0 : 4;
x = ones(size(nx));

ny = convIndices(nx, nh);

tic
y1 = conv(h, x);
toc

tic
y2 = myConv_ver1(h, x);
toc

stem(ny, y1, 'Marker', 'o', 'MarkerSize', 10, 'LineWidth', 1.5)
hold on
stem(ny, y2, 'Marker', 'x', 'MarkerSize', 10, 'LineWidth', 1.5)