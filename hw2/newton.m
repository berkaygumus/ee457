function [uncertanity_lengths] = newton(n)
    disp("newton");
    x0 = 0.5;
    uncertanity_lengths = zeros(1,n);
    for i=1:n
       x1 = x0 - fdot(x0)/f2dot(x0);
       range = abs(x1-x0);
       min = x1;
       min_value = f(min);
       x0=x1;
       disp("itearation: " + i + " range: " + range + " minimizer: " + min +" min value: " + min_value);
        uncertanity_lengths(i) = range;
    end
end

