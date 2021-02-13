1;
% ODE HWIII
% Philip Otter
clear all

% Runs my direction_fields function file
direction_fields(1., 1., 2., 2., 0.048, 0.5, 'off')


% Function for the differential equation
function f=diffeq(t, p)
  f= sqrt(1+sin(t)).*(1+p^2)
endfunction

% Solves IVP problems
[sol1, out1] = ode45('diffeq',[1 2], 1.0);


% Plots solutions
plot(sol1, out1, 'r');


% Runs my addlabels function file
addlabels("x", "y", "dy/dx = sqrt(1+sin(x))[1+y^2]")