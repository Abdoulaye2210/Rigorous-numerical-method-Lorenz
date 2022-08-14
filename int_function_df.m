% This function computes the Jacobian matrix at the point x for the Lorenz
% equation.
function [dy] = int_function_df(ix,ir)

% x is the initial guess of the root
% r is a parameter in the Lorenz equation
is = intval(10);
ib = intval(8)/intval(3);

%The Jacobian matrix
dy(1,1)=-is;
dy(1,2)=is;
dy(1,3)=intval(0);
dy(2,1)=ir-ix(3);
dy(2,2)=-intval(1);
dy(2,3)=-ix(1);
dy(3,1)=ix(2);
dy(3,2)=ix(1);
dy(3,3)=-ib;
end


