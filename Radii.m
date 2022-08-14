% Radii Polynomials associated to the Lorenz equation.
function x = Radii(x,r)
% x is the initial point and r is a parameter;
f  = myfunction(x,r);
iv = inv(function_df(x,r));
Y  = abs(iv*f);
num2str(Y)
fprintf('\n');
eps= abs (eye(3) - iv*(function_df(x,r)));
Z1 = eps*([1; 1; 1]);
Z2 = 2*abs(iv)*([0; 1; 1]);
p  = [Z2, Z1-[1; 1; 1], Y] ;
num2str(p)
fprintf('\n');
for i=1:3
    a(i)=max(roots(p(i,:)));
    b(i)=min(roots(p(i,:)));
end
u1 =infsup(b(1),a(1));
u2 =infsup(b(2),a(2));
u3 =infsup(b(3),a(3));
u=intersect(u1,u2);
x=intersect(u,u3);

%for i=1:3
     %s(i) =sum(roots(p(i,:)))/2;
     %fprintf('%10g \n', s(i));
%end
% u1, u2 and u3 are intervals.
%r1= sqrt (p(1,2)^2 -4*p(1,1)*p(1,3))/2*abs(p(1,1));
%u1=midrad(s(1),r1);
%r2= sqrt (p(2,2)^2 -4*p(2,1)*p(2,3))/2*abs(p(2,1));
%u2=midrad(s(2),r2);
%r3= sqrt (p(3,2)^2 -4*p(3,1)*p(3,3))/2*abs(p(3,1));
%u3=midrad(s(3),r3);

%u=intersect(u1,u2);
%fprintf('The Interval founded is \n');
%fprintf('\n');
%x=intersect(u,u3);
end

% x0 = [0; 0; -0.01] and r=2 then I = [ 0.0100,    0.5050]. 
