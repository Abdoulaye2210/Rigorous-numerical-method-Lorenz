% Function for the Lorenz equation, ie f(x).
function [y] = myfunction(x,r)

% x is the initial guess of the root
% r is a parameter in the Lorenz equation
s = 10;
b = 2.6667;
y=zeros(size(x));
y=[s*(-x(1)+x(2)); r*x(1)-x(2)-x(1)*x(3);-b*x(3)+x(1)*x(2)];
end

