function [uncertanity_lengths] = bisection(n)
    disp("bisection");
    a0 = 2;
    b0 = 20;
    uncertanity_lengths = zeros(1,n);
    for i=1:n
       mid = (a0 + b0)/2;
       if fdot(mid) < 0 
          a0 = mid;
       else
          b0 = mid;
       end
       range = b0 - a0;
       min_value = f(mid);
       disp("itearation: " + i + " range: " + range + " minimizer: " + mid +" min value: " + min_value);
        uncertanity_lengths(i) = range;
    end
end

