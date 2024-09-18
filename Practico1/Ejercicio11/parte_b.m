
deltas = zeros(16);
errores = zeros(16);

a = 1;

for i = 1:16

  deltas(i) = power(10, -i);

  b = deltas(i);
  c = sqrt(1 + power(deltas(i), 2));

  area_computada = area_triangulo(a, b, c);
  area_real = a * b / 2;

  errores(i) = abs(area_computada - area_real) / area_real;

endfor

figure;
loglog(deltas, errores, 'o-');
title('Error relativo en funcion de delta');
xlabel('Delta');
ylabel('Error relativo');
grid on;

