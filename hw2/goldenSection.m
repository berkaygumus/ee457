function [uncertanity_lengths] = goldenSection(n)
    disp("golden Section Search"); 
    a0 = 2;
    b0 = 20;
    gold_ratio = (3-sqrt(5))/2;
    uncertanity_lengths = zeros(1,n);
    for i=1:n
       a1 = a0 + gold_ratio*(b0-a0);
       b1 = b0 - gold_ratio*(b0-a0);
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

