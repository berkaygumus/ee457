function [x_grad] = g(x)
x_grad = zeros(1,3);
x_grad(1) = -400*(x(2)-x(1)^2)*x(1) + 2*(x(1)-1) ;
x_grad(2) = 200*(x(2)-x(1)^2) -400*(x(3)-x(2)^2)*x(2) + 2*(x(2)-1);
x_grad(3) = 200*(x(3)-x(2)^2);
end

