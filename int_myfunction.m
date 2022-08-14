% Function for the Lorenz equation, ie f(x).
function [y] = int_myfunction(ix,ir)

% x is the initial guess of the root
% r is a parameter in the Lorenz equation
is = intval(10);
ib = intval(8)/intval(3);
y=[is*(-ix(1)+ix(2)); ir*ix(1)-ix(2)-ix(1)*ix(3);-ib*ix(3)+ix(1)*ix(2)];
end

