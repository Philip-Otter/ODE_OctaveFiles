1;
% Eulers Method
% Philip Otter
clear all
h = 0.1;
% Range of my x value
x = 0:h:2.5;  % When looking for specific values make sure to go one step past the
              % last point asked for
y = zeros(size(x));
y(1) = 100;
% Finds number of y values
c = numel(y);
for i=1:c-1
  disp("This is 'i'"), disp(i)
  f = 40^-4*(70-y(i)^4); % Change me every time!
  y(i+1) = y(i) + h * f;
  disp("This is X"), disp(x(i))
  disp("This is Y"), disp(y(i+1) = y(i) + h * f)
endfor
plot(x,y);
addlabels('x', 'y',
 'dy/dx = sqrt(1+sin(x))[1+y^2]')
%hold on
%plot(x,tan(x), 'r')  % Actual solution
%legend("Estimation", "Actual")
