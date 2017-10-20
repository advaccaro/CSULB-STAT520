%STAT520_Exam1_3.m
%Adam Vaccaro
%Purpose: Generate enough random numbers for the distribution with the 
%specified CDF starting with a uniform random number in order to create a
%plot of the distribution of the generated random numbers.
n = 1000; %number of variables to be generated
nu = log(1-.3)/log(1-.15);
d1 = -log(1-.15); d2 = 3;
F_inv = @(u) 104*(-log(1-u)/(nu*d1))^(1/d2); %equation for inverse of F (CDF)
for i = 1:n
    u(i) = rand; %generate random number from uniform distribution
    t(i) = F_inv(u(i)); %generate random number using inverse of F
end
%Sort the vectors in ascending order:
ts = sort(t); us = sort(u);
plot(ts,us,'x') %plot the distribution of the generated random numbers
xlabel('Survival time (weeks)'); ylabel('Probability')