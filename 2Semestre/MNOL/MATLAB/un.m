%exercicio 16. (isto é para se usar como comentário)
x0=[0.3,0.3];
[x,fval,exitflag,output] = fsolve(@fun,x0)
function F=fun(x)
F(1)= x(1)^4+0.068*x(1)-x(2)^4-0.058*x(2)-0.015;
F(2)= x(1)^4+0.058*x(1)-2*x(2)^4-0.117*x(2);
end