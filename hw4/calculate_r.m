function [r] = calculate_r(x,t,y)
    m = size(t,1);
    r = zeros(m,1);
    for i = 1:m
        r(i) = y(i) - x(1)*sin(x(2)*t(i) + x(3));
    end
end

