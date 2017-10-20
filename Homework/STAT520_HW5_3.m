%STAT520_HW5_3.m
%Adam Vaccaro

%Vars
syms x t d

R2 = [t-d,t+d];
R3 = [t+d,t+1-d];
R4 = [t+1-d,t+1+d];

%Integral 2
%int2 = int((x/2)*(1+sin(pi*(x-t)/(2*d))),[t-d,t+d]);
int2 = int((x/2)*(1+sin(pi*(x-t)/(2*d))),R2);

%Integral 3
int3 = int(x, R3);%[t+d, t+1-d]);

%Integral 4
int4 = int((x/2)*(1-sin(pi*(x-t-1)/(2*d))),R4);%[t+1-d, t+1+d]);

%MOM var
%syms t_hat

%EX Integral 2
%eint2 = int((t_hat/2)*(1+sin(pi(t_hat-t)/(2*d))),R2);

%EX Integral 3
%eint3 = int(x, R3);%[t+d, t+1-d]);

%EX Integral 4

logf2(t) = log(0.5*(1+sin(pi*(x-t)/(2*d))));
dlogf2 = diff(logf2,t);

%logf3(t) = log(1);

logf4(t) = log(0.5*(1-sin(pi*(x-t-1)/(2*d))));
dlogf4 = diff(logf4,t);


%Eth2 = int(dlogf2^2,R2);

%Eth4 = int(dlogf4^2,R4);

%Eth = Eth2 + Eth4;

dlf2= diff(.5*sin(pi*(x-t)/(2*d)),t);

dlf4 = diff(.5*sin(pi*(x-t-1)/(2*d)),t);

diffnum2 = diff(.5+.5*sin(pi*(x-t)/(2*d)),t);

diffnum4 = diff(.5-.5*sin(pi*(x-t-1)/(2*d)),t);

E_dlf2_sq = int(((pi/(4*d))^2 * (cos(pi*(t-x)/(2*d)))^2)/(.5+.5*sin(pi*(x-t)/(2*d))),R2); 

E_dlf4_sq = int(((pi/(4*d))^2 * (cos(pi*(t-x+1)/(2*d)))^2)/(.5-.5*sin(pi*(x-t-1)/(2*d))),R4);
%Problem 4 part d.
fx(x) = (1/t)*exp(-x/t);
Fx = int(fx,[0,x]);

syms n

eth(x) = (n*x/t)*(exp(-x/t))^n;
Eth = int(eth,[0,inf]);

eth2(x) = x*exp(-n*x/t);
Eth2 = int(eth2,[0,inf]);
