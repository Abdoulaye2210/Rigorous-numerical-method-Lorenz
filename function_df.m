% This function computes the Jacobian matrix at the point x for the Lorenz
% equation.
function [dy] = function_df(x,r)

% x is the initial guess of the root
% r is a parameter in the Lorenz equation
s = 10;
b = 8/3;

%The Jacobian matrix
dy(1,1)=-s;
dy(1,2)=s;
dy(1,3)=0;
dy(2,1)=r-x(3);
dy(2,2)=-1;
dy(2,3)=-x(1);
dy(3,1)=x(2);
dy(3,2)=x(1);
dy(3,3)=-b;
end


