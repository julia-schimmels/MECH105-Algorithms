function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
if length(x) ~= length(y)
    error('Vectors must be of equal length')
end

spacing = linspace(x(1),x(end),length(x));
if sum(spacing) ~= sum(x)
    error('The vectors must be evenly spaced')
end

b = x(2)
a = x(1)

h = (b-a)
j = length(x)
if j == 3
    I = (h/3) * (y(1) + 4*(sum(y(2:2:j-2))) + 2*(sum(y(3:2:j-1)) + y(j)));
elseif mod(j,2) == 0
    warning('The trapezoidal rule must be used on the last interval because there is an odd number of intervals')
    if j == 2
        I = (x(j) - x(1)) * ((y(j) + y(1))/2);
    else
        simpRule = (h/3) * (y(1) + 4*(sum(y(2:2:j-2))) + 2*(sum(y(3:2:j-1)) + y(j)));
        trapRule = (x(j) - x(j-1)) * ((y(j) + y(j-1))/2);
        I = simpRule + trapRule
    end
else
    simpRule = (h/3) * (y(1) + 4*(sum(y(2:2:j-2))) + 2*(sum(y(3:2:j-1)) + y(j)));
    trapRule = (x(j) - x(j-1)) * ((y(j) + y(j-1))/2);
    I = simpRule + trapRule;
end
end