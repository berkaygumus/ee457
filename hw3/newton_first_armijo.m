function [optimum_alfa, itr] = newton_first_armijo(x_k)
    alfa = 1;
    epsilon = 0.2;
    tau = 0.8;
    itr = 0;
    while newton_fi(x_k,alfa) > newton_fi(x_k,0) + epsilon*alfa*newton_grad_fi(x_k,0)
        itr = itr + 1;
        alfa = alfa*tau;        
    end
    optimum_alfa = alfa;

end

