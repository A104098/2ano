[x,fval,exitflag,output] = fsolve(@fun,[1.9, 1.1])
function [F] = fun(x)
F(1) = x(1)*x(2)+x(2)^3 -3 ;
F(2) = log(x(2))+ 0.5*x(1) -1 ;
end