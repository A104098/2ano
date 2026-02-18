x0=[1;1];
op=optimset('TolX',0.1);
[x,fval,exitflag,output] = fminsearch(fun,x0,options);
fun =@(x) x(1)*x(2)^2+(2-x(1))^2 ;
