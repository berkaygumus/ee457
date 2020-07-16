function [y] = fibSequence(n)
    x0=1;
    x1=1;
    if n==1
        y =1;
    elseif n==2
        y = 1;
    else
        for i=3:n
           x2 = x1+x0;
           y = x2;
           x0=x1;
           x1=x2;            
        end
    end
end

