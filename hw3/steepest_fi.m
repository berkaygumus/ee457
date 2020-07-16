function [y] = steepest_fi(x_k,alfa)
    y = f( x_k - alfa*g(x_k));
end

