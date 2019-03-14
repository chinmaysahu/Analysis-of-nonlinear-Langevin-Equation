clc
clear
tspan = 0:0.1:20; % time duration for which we solve ODE
x0=[0;0]; %initial conditions
% Command to invoke this function
[t,x]=ode45(@Call_ODE,tspan,x0);

 %Numerical Solution
function xdot= Call_ODE(t,x)
step=20/200;
S0=55.44;  % power density
WhiteNoise=(sqrt((2*pi*S0)/step))*randn(1,1);

ft=WhiteNoise;
% ft=sin(t);
epsilon=0; %0.1,0.5,1
xdot=[x(2);ft-0.02*x(2)-x(1)-epsilon*x(1)^3];
end