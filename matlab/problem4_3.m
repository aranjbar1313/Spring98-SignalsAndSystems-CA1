clear; clc
sympref('HeavisideAtOrigin',1);
nx = 0 : 24;
x = (1/2).^(nx - 2) .* heaviside(nx - 2);
nh = 0 : 14;
h = heaviside(nh);

ny = convIndices(nx, nh);
y = conv(h, x);

stem(ny, y, 'filled', 'Marker', 'o')
hold on

nx = -50 : 50;
x = (1/2).^(nx - 2) .* heaviside(nx - 2);
nh = -50 : 50;
h = heaviside(nh);

ny2 = convIndices(nx, nh);
y2 = conv(h, x);

[~, invalidIndices] = ismember(ny, ny2);
difference = y2(invalidIndices) - y;
nonZeroElements = difference ~= 0;
stem(ny(nonZeroElements), zeros(1, sum(nonZeroElements)), 'filled', 'Marker', 'x', 'MarkerSize', 10, 'LineWidth', 1.75)