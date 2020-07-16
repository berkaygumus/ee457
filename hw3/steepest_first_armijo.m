function [optimum_alfa,itr] = steepest_first_armijo(x_k)
    alfa = 1;
    epsilon = 0.2;
    tau = 0.5;
    itr = 0;
    while steepest_fi(x_k,alfa) > steepest_fi(x_k,0) + epsilon*alfa*steepest_grad_fi(x_k,0)
       itr = itr + 1;
       alfa = alfa*tau;        
    end
    optimum_alfa = alfa;

end

