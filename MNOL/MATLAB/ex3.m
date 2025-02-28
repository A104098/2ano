[x,fval,exitflag,output] = fzero(@fun,[0.25,0.5],optimset ('Tolx', 1e-2))
function f = fun(x)
f = (pi*x^2*(3-x))/3 - 0.5 ;

end
