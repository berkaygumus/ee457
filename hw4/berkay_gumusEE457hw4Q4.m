close all;
clear;
t = transpose(0:0.4:8);
y = [0.9783;
      1.4617;
      2.0580;
      2.0265;
      2.2238;
      1.5446;
      1.0970;
      0.2566;
      -0.5050;
      -0.8899;
      -1.5676;
      -2.1563;
      -1.9748;
      -2.2858;
      -1.6735;
      -1.0813;
      -0.1376;
      0.6637;
      1.0799;
      1.7931;
      2.1022
    ];
init_x = -rand(3,1);

max_itr = 120;
x = init_x;
for itr = 1:max_itr
    J = calculate_jacobian(x,t);
    r = calculate_r(x,t,y);
    new_x = x - (transpose(J)*J)\(transpose(J)*r);
    x = new_x;
end
x_gauss = x;

min_eig_values = zeros(max_itr,1);
x = init_x;
threshold = 0.0001; %0.00001
for itr = 1:max_itr
    J = calculate_jacobian(x,t);
    min_eig = min(eig(transpose(J)*J));
    mu =  threshold- min_eig; 
    if mu < 0
        mu = 0;
    end
    min_eig_values(itr) = mu;
    r = calculate_r(x,t,y);
    new_x = x - (transpose(J)*J + mu.*eye(3))\(transpose(J)*r);
    x = new_x;
end
x_levenberg = x;


gauss_est = calculate_f(x_gauss,t);
levenberg_est = calculate_f(x_levenberg,t);
plot(t,y,t,gauss_est,t,levenberg_est);
legend("real data", "gauss-newton est","levenberg-marquard est threshold: " + threshold);