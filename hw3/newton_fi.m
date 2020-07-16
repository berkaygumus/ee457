function [y] = newton_fi(x_k,alfa)
    y = f( x_k - alfa*g(x_k)*inv(Hessian(x_k)));
end
