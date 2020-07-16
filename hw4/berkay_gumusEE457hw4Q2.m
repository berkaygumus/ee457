clear;
close all;
init_x = 10*rand(3,1)-5
sufficient_grad = 0.01
gamma = 100
%% naived randomized search alfa = 0.01
alfa = 0.01;
k = 0;
x = init_x;
y1_values = zeros(1000000,1); 
while norm(g(x)) > sufficient_grad
    diff = alfa * (2*rand(3,1)-1);
    z = x + diff;
    if f(z) < f(x)
        x = z;
    end
    k = k +1;
    y1_values(k) = f(x);
end
x1 = x 
y1 = f(x1) 
k1 = k
y1_values = y1_values(1:k1);

%% naived randomized search alfa = 0.001
alfa = 0.001;
k = 0;
x = init_x;
y2_values = zeros(1000000,1); 
while norm(g(x)) > sufficient_grad
    diff = alfa * (2*rand(3,1)-1);
    z = x + diff;
    if f(z) < f(x)
        x = z;
    end
    k = k +1;
    y2_values(k) = f(x);
end
x2 = x 
y2 = f(x2) 
k2 = k
y2_values = y2_values(1:k2);
%% simulated annealing for alfa = 0.01;
alfa = 0.01;
k = 0;
x = init_x;
y3_values = zeros(1000000,1); 
while norm(g(x)) > sufficient_grad
    diff = alfa * (2*rand(3,1)-1);
    z = x + diff;
    if f(z) < f(x)
        x = z;
    else
        tk = gamma/(k+2);
        prob = exp(-(f(z)-f(x))/tk);
        if prob > 0.5
            x = z;
        end
    end
    k = k +1;
    y3_values(k) = f(x);
end

x3 = x 
y3 = f(x3) 
k3 = k
y3_values = y3_values(1:k3);
%% simulated annealing for alfa = 0.001;
alfa = 0.001;
k = 0;
x = init_x;
y4_values = zeros(1000000,1); 
while norm(g(x)) > sufficient_grad
    diff = alfa * (2*rand(3,1)-1);
    z = x + diff;
    if f(z) < f(x)
        x = z;
    else
        tk = gamma/(k+2);
        prob = exp(-(f(z)-f(x))/tk);
        if prob > 0.5
            x = z;
        end
    end
    k = k +1;
    y4_values(k) = f(x);
end
x4 = x 
y4 = f(x4) 
k4 = k
y4_values = y4_values(1:k4);

%% plots for y values
figure; 
loglog(transpose(1:k1),y1_values,transpose(1:k2),y2_values,transpose(1:k3),y3_values,transpose(1:k4),y4_values);
legend("naived alfa = 0.01","naived alfa = 0.001","annealing alfa = 0.01","annealing alfa = 0.001");
figure; 
plot(y1_values);
title("naived randomized search alfa = 0.01");
figure;
plot(y2_values); 
title("naived randomized search alfa = 0.001");
figure;
plot(y3_values);
title("simulated annealing for alfa = 0.01");
figure;
plot(y4_values);
title("simulated annealing for alfa = 0.001");