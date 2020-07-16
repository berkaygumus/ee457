>>There are 9 main scripts for the homework. 

mainq1.m
mainq2.m
mainq3.m
mainq4.m
mainq5.m
mainq6.m
mainq7.m
mainq8.m
	These files can run directly to check the algorithms and plots.

berkay_gumusEE457hw3Q9.m
	This file can run after all other main scripts run. It uses the variables saved to the workspace at the other scripts.
	This script is for the evaluation and to check iteration numbers for the question 9.
	

>>Other matlab files are necessary functions for the algoritms.

f.m >> Rosenbrock function 
g.m >> gradient function
hessian.m >> hessian function

steepest_fi.m >> fi function for the steepest descent method to find optimal alfa
steepest_grad_fi.m >> gradient fi function for the steepest descent method

steepest_gold_section.m >> gold section method to find the optimal alfa for the steepest descent method
steepest_first_armijo.m >> first armijo condition function to find the optimal alfa for the steepest descent method
steepest_armijo_goldstein.m >> armijo-goldstein conditions function to find the optimal alfa for the steepest descent method

newton_fi.m >> fi function for the newton method to find optimal alfa
newton_grad_fi.m >> gradient fi function for the newton method

newton_gold_section.m >> gold section method to find the optimal alfa for the newton method
newton_first_armijo.m >> first armijo condition function to find the optimal alfa for the newton method
newton_armijo_goldstein.m >> armijo-goldstein conditions function to find the optimal alfa for the newton method