
deltas = zeros(16);
errores = zeros(16);

a = 2;

for i = 1:16

  deltas(i) = power(10, -i);

  b = sqrt(1 + power(deltas(i), 2));
  c = b;

  area_computada = area_triangulo(a, b, c);
  area_real = deltas(i);

  errores(i) = abs(area_computada - area_real) / area_real;

endfor

figure;
loglog(deltas, errores, 'o-');
title('Error relativo en funcion de delta');
xlabel('Delta');
ylabel('Error relativo');
grid on;

