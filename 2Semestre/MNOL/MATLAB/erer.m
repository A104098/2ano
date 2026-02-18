% Definir a função a ser integrada
f = @(x) x .* exp(x);

% Calcular o integral
I = integral(f, 1, 5);

% Exibir o resultado
fprintf('A aproximação do integral é: %.4f\n', I);
