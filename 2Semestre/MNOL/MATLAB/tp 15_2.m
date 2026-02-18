fplot(@fun),[-3,3])
op=optimset ('plotfcns',@optimplotfval)
[x,fval,exitflag,output] = fzero(@fun,0.25)%,op)
function f=fun(x)
f=pi*x^2*(3-x)-1.5;
end