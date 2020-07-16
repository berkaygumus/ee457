close all;
x = [3 -1 0];
x_values = zeros(80000,3);
f_values = zeros(80000,1);
k = 0;


while norm(g(x)) > 0.01
    k = k +1 ;
    new_x = x - g(x)*inv(Hessian(x));
    x_values(k,:) = new_x;
    f_values(k) = f(new_x);
    x = new_x;
    
end

q5x = x;
q5f = f(x);
q5n = k;

k_values = 1:1:k;
f_values = f_values(1:k);
x_values = x_values(1:k,:);


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