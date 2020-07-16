function [y] = newton_grad_fi(x_k,alfa)
    y = -g(x_k)*inv(Hessian(x_k))*transpose(g(x_k-alfa*g(x_k)*inv(Hessian(x_k))));
end

