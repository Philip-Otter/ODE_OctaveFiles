1; 
clear all
 % Euler's Method
% Initial conditions and setup
h = 0.1;  % step size
x = 0:h:0.5;  % the range of x
y = zeros(size(x));  % allocate the result y
y(1) = 3;  % the initial y value
n = numel(y);  % the number of y values
% The loop to solve the DE
for i=1:n-1
    f = (y(i))*(2-y(i));
    y(i+1) = y(i) + h * f;
end
plot(x,y);