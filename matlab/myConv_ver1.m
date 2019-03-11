function y = myConv_ver1(h, x)
    m=length(x);
    n=length(h);
    X=[x,zeros(1,n)]; 
    H=[h,zeros(1,m)]; 
    Y = zeros(1, n + m - 1);
    for i = 1 : n + m - 1
        for j = 1 : m
            if(i - j + 1 > 0)
                Y(i) = Y(i) + X(j) * H(i - j + 1);
            end
        end
    end
    y = Y;
end