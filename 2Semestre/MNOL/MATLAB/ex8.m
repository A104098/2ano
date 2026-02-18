[x,fval,exitflag,output] = fzero(@fun,6,optimset('TolX',1e-3))
function f = fun(x)
f = 7*(2-(0.9)^x)- 10 ;
end