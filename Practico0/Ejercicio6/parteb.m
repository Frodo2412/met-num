n = 20; % Tomamos 20 puntos
base = 0.1;

f = @(x) sin(5 * x);
a = 1; % Centramos en 1

derivadas = zeros(1, n);
h = zeros(1, n);

for k = 1:n
  h(k) = base ^ k;
  derivadas(k) = (f(a + h(k)) - f(a - h(k))) / (2 * h(k));
end


derivada_real = 5 * cos(5);
errores = abs(derivadas - derivada_real * ones(1, n));

loglog(h, errores); % Usar el array hs en lugar de h
xlabel('h');
ylabel('Error absoluto');
title('Error absoluto en función de h');

