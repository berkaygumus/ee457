close all;
x = [3 -1 0];
x_values = zeros(5000,3);
f_values = zeros(5000,1);
line_search_itr_values = zeros(5000,1);
k = 0;

while norm(g(x)) > 0.01
    k = k +1 ;
    [step_size,itr] = steepest_gold_section(x);
    new_x = x - step_size*g(x);
    x_values(k,:) = new_x;
    f_values(k) = f(new_x);
    line_search_itr_values(k) = itr;
    x = new_x;
    
end

q2x = x;
q2f = f(x);
q2n = k;

k_values = 1:1:k;
f_values = f_values(1:k);
x_values = x_values(1:k,:);
line_search_itr_values = line_search_itr_values(1:k);

q2line_itr=line_search_itr_values;

figure;
subplot(1,2,1);
plot(k_values,x_values);
legend({'x1','x2','x3'},'Location','northeast')
title('x values vs iteration number')
xlabel('iteration number')
ylabel('x values')

subplot(1,2,2);
plot(k_values,f_values);
title('function values vs iteration number')
xlabel('iteration number')
ylabel('function values')