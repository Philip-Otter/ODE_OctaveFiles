1;
% ODE HWIII
% Philip Otter
clear all

% Runs my direction_fields function file
direction_fields(0, 0, 4, 4, 0.1, 0.5, 'off')


% Function for the differential equation
function f=diffeq(t, p)
  f= p.*(p-1).*(2-p);
endfunction

% Solves IVP problems
[sol1, out1] = ode45('diffeq', [0 4], 4.0);
[sol2, out2] = ode45('diffeq', [0 4], 3.0);
[sol3, out3] = ode45('diffeq', [0 4], 1.5);
[sol4, out4] = ode45('diffeq', [0 4], 0.75);

% Plots solutions
plot(sol1, out1, 'r');
plot(sol2, out2, 'b');
plot(sol3, out3, 'g');
plot(sol4, out4, 'm');


% Runs my addlabels function file
addlabels("x", "y", "dy/dx = p(p-1)(2-p)")