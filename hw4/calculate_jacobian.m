function [jacobian] = calculate_jacobian(x,t)
    m = size(t,1);
    n = size(x,1);
    jacobian = zeros(m,n);
    for i = 1:m
        jacobian(i,1) = -sin(x(2)*t(i) + x(3));
        jacobian(i,2) = -x(1)*t(i)*cos(x(2)*t(i) + x(3));
        jacobian(i,3) = -x(1)*cos(x(2)*t(i) + x(3));
    end
end

