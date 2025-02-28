%exercicio 44
x=[-2 1 2];
y=[-8 1 8];
s=spline(x,[12 y 20]);
s.coefs
f_l=ppval(s,-1)
plot(x,y,'o')
novo_x=-2: 0.1:2;
novo_f=ppval(s,novo_x);
plot(x,y,'o',novo_x,novo_f)