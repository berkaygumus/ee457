function [y] = steepest_grad_fi(x_k,alfa)
    y = -g(x_k)*transpose(g(x_k-alfa*g(x_k)));
end

