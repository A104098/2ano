% Dados fornecidos
x = [2; 5; 6; 10; 12; 15];
f_x = [122; 177; 270; 150; 120; 140];

% Montagem da matriz A para o ajuste da parábola
A = [x.^2, x, ones(size(x))];

% Resolução do sistema de equações normais para obter os coeficientes
coefficients = (A' * A) \ (A' * f_x);

% Exibir os coeficientes da parábola
fprintf('A parábola que melhor se ajusta aos dados é: f(x) = %.4fx^2 + %.4fx + %.4f\n', coefficients(1), coefficients(2), coefficients(3));

% Gráfico dos dados e da parábola ajustada
x_values = linspace(min(x), max(x), 100);
f_x_values = coefficients(1) * x_values.^2 + coefficients(2) * x_values + coefficients(3);

figure;
plot(x, f_x, 'bo', x_values, f_x_values, 'r-');
xlabel('x');
ylabel('f(x)');
title('Ajuste da Parábola aos Dados');
legend('Dados', 'Parábola Ajustada', 'Location', 'best');
grid on;
