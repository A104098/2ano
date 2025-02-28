% Define a função
fun = @(x) (x - 1)^3 - (log(x))^2 - 4;

% Aproximação inicial
x0 = 3;

% Opções de tolerância
options = optimset('TolX', 1e-1);

% Resolver a equação não linear
x_solution = fzero(fun, x0, options);

% Exibir a solução
fprintf('A raiz próxima de 3 é: %.4f\n', x_solution);
