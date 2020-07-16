function [optimum_alfa, itr] = newton_armijo_goldstein(x_k)
    alfa = 1;
    epsilon = 0.2;
    eta = 0.8;
    tau1 = 0.5;
    tau2 = 1.5;
    sufficient = false;
    itr = 0;
    while ~sufficient
        itr = itr + 1;
        sufficient = true;
        if newton_fi(x_k,alfa) > newton_fi(x_k,0) + epsilon*alfa*newton_grad_fi(x_k,0)
            alfa = alfa*tau1; 
            sufficient = false;
        elseif newton_fi(x_k,alfa) < newton_fi(x_k,0) + eta*alfa*newton_grad_fi(x_k,0)
            alfa = alfa*tau2; 
            sufficient = false;
        end
    end
    optimum_alfa = alfa;

end