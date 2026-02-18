[x,fval,exitflag,output] = fsolve(@fun,[4.3, 2.4], optimset('Tolx', 1.5e-3))
function [F] = fun(x)
F(1) =1-x(1)*cos(x(2))-x(1);
F(2)=-0.1*x(1)^2+x(1)*sin(x(2))-1+exp(-x(1)) ;
end
