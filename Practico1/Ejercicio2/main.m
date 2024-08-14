x = 5e-4;
double_precision = g(x);

y = single(x);
single_precision = g(y);

# Analisis

top = power(y,3)
bottom = y - sin(y)

