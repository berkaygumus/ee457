function [r] = calculate_f(x,t)
    m = size(t,1);
    r = zeros(m,1);
    for i = 1:m
        r(i) = x(1)*sin(x(2)*t(i) + x(3));
    end
end

