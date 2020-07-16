error = 100;
x0 = 0;
x1 = 1;
while(error>0.00005)
   x2 = x1 - g(x1)*((x1-x0)/(g(x1)-g(x0)));
   error = abs(g(x2));
   x0=x1;
   x1=x2;
   root = x2;
end
disp("root: " + root + " value: " + g(root));