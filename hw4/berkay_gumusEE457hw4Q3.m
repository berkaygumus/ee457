close all;
clear;
data = [2.69670;
        2.66766;
        2.58348;
        2.62418;
        2.67750;
        2.73102;
        2.72662;
        2.68096;
        2.68090;
        2.68424;
        2.64755;
        2.68472;
        2.75736;
        2.77880;
        2.77856;
        2.88432;
        2.92674;
        2.92866;
        3.01290;
        3.03274];
    
 %% recursive least square estimation;   
 %for initial 2 points:
 A = [1 1;
       2 1];
 b = [data(1);data(2)];
 x = A\b;
 P = inv(transpose(A)*A);
 x_values = x;
 for ti = 3:20
    new_a = [ti; 1];
    new_b = data(ti);
    new_P = P - (P*new_a*transpose(new_a)*P)./(1 + transpose(new_a)*P*new_a);
    new_x = x + new_P*new_a*(new_b - transpose(new_a)*x);
    P = new_P;
    x = new_x;     
    x_values = [x_values x];
 end
 
 f_values = transpose(x_values)*[20;1];%% f(t20) values for each iteration 
 est1 = x(1) + x(2); %f(t1)
 est20 = 20*x(1) + x(2);%f(t20)
 est_y = [est1;est20];
 est_x = [1 20];
 
 %% least square estimation;
 A_least = [transpose(1:20) ones(20,1)];
 x_least = (transpose(A_least)*A_least)\transpose(A_least)*data;
 least_est1 = x_least(1) + x_least(2);%f(t1)
 least_est20 = 20*x_least(1) + x_least(2);%f(t20)
 least_est_y = [least_est1;least_est20];
 least_est_x = [1 20];
 
 %% plot
 
 data_x = 1:20;
 
 figure;
 plot(data_x,data,est_x,est_y,least_est_x,least_est_y);
 title("USD/TL parity between 08-05-2015 and 18-09-2015");
 legend("real data","recursive least squares estimation","least squares estimation");
 xlabel("weeks");
 ylabel("USD/TL parity");
 
 figure;
 plot(transpose(x_values(1,:)));
 title("m values for each iteration");
 legend("m values");
 xlabel("iterations");
 ylabel("value");
 
 figure;
 plot(transpose(x_values(2,:)));
 title("c values for each iteration");
 legend("c values");
 xlabel("iterations");
 ylabel("value");
 
 figure;
 plot(transpose(1:19),f_values,transpose(1:19),data(20)*ones(19,1));
 title("f values of week 20 for each iteration");
 legend("f values","real value");
 xlabel("iterations");
 ylabel("value");