function [y] = f2dot(x)
    y = 2*exp(5-x) + 2*x.^(-2)*(1-log(x));
end


