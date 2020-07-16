clear;
clc;
close all;
x = 2:0.01:20;
y = 2*exp(5-x)+(log(x)).^2;
ydot =(2*log(x))/x -2*exp(5-x);
figure('Name','f function:');
plot(x,y);

n = 30;

length_golden = goldenSection(n);

length_fibonacci = fibonacci(n);

length_bisection = bisection(n);

length_newton = newton(n);

figure;
index = 1:1:n;
plot(index,length_golden,'*',index,length_fibonacci,'y',index,length_bisection,'g',index,length_newton,'r');
xlabel('iteration numbers');
ylabel('lengths of uncertainty intervals');
legend({'goldenSection','fibonacci','bisection','newton'},'Location','northeast')