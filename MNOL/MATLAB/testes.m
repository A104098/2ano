op=optimset('tolfun',1e-2)
x=[2 2]
[x,fval,exitflag,output] = fsolve(@fun,x,op)
function [F]= fun(x)
F(1) = (x(1)-4).^2+(x(2)-4).^2-5 ;
F(2) = x(1).^2-x(2).^2-16 ;
end
