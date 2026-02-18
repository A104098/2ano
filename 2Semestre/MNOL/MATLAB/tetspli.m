% Dados fornecidos
x = [0; 0.25; 0.75];
y = [1.00; 1.06; 1.76];
derivatives = [0; 2.63]; % Valores derivativos conhecidos nos extremos do intervalo

% Criar a spline cúbica completa
s = spline(x, [derivatives(1); y; derivatives(2)], x);
