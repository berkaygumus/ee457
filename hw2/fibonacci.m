function [uncertanity_lengths] = fibonacci(n)
    disp("fibonacci Search"); 
    a0 = 2;
    b0 = 20;
    uncertanity_lengths = zeros(1,n);
    for i=1:n
       rho = 1 - fibSequence(n-i+1)/fibSequence(n-i+2);
       a1 = a0 + rho*(b0-a0);
       b1 = b0 - rho*(b0-a0);
       if f(a1) < f(b1) 
          b0 = b1;
          min = a1;
       else
          a0 = a1;
          min = b1;
       end
       range = b0 - a0;
       min_value = f(min);
       disp("itearation: " + i + " range: " + range + " minimizer: " + min +" min value: " + min_value);
        uncertanity_lengths(i) = range;
    end
end

