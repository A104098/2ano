x=[1,3,6,10,12];
y=[122,188,270,160,120];
c0=[1;1]; %geral, se não nos derem valores
fun=@(c,x)c(1)*x+c(2)*sin(x);
[c,resnorm]=lsqcurvefit(fun,c0,x,y) %resnorm é a SQR; o  c é o coeficiente do modelo; fun é o modelo; c0 é a aproximação inicial; x e y são vetores x,f(x)
fun(c,8)
%grafico
%plot(x,y,'o')
%hold on
%fplot(@(x)c(1)*x+c(2)*sin(x));