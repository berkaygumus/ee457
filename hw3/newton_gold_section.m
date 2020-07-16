function [optimum_alfa, itr] = newton_gold_section(x)
a = 0;
b = 1;
gold_ratio = (3-sqrt(5))/2;
itr = 0;
while b - a > 0.0001
    itr = itr + 1;
    new_a = a + gold_ratio*(b - a);
    new_b = b - gold_ratio*(b - a);
    if newton_fi(x,new_a) < newton_fi(x,new_b) 
        a = a;
        b = new_b; 
     
    else
        a = new_a;
        b = b;
    end
end

optimum_alfa = (a+b)/2;


end

