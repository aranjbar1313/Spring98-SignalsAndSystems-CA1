u = @(t) double(t >= 0);
f = @(t) t .* (u(t) - u(t - 2));

t = -3 : 0.1 : 6;

g = cell(1, 3);
g{1} = 'f(t + 1)';
g{2} = 'f(-t + 1)';
g{3} = 'f(-2 * t + 1)';

subplot(2, 2, 1)
plot(t, f(t))
xlabel('$n$', 'interpreter', 'latex')
ylabel('$f(t)$', 'interpreter', 'latex')
title('$f(t) = t \cdot \big(u(t) - u(t - 2)\big)$', 'interpreter', 'latex')

for i = 1 : length(g)
    subplot(2, 2, i + 1)
    plot(t, f(t))
    hold on
    plot(t, eval(g{i}))
    xlabel('$n$', 'interpreter', 'latex')
    title(strcat('$g_', num2str(i), '(t) = ', g{i}, '$'), 'interpreter', 'latex')
    legend('$f(t)$', strcat('$g_', num2str(i), '(t)$'), 'interpreter', 'latex')
end