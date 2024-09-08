A = [-3, 4, 0; 1, -2, 3; -1, 9, 3]
b = [-3; 4; 2]

eps = 1e-6

max_iter = 10000;

w_values = linspace(0.0, 1.0, 100);
iterations = zeros(1, length(w_values));
spectral_radii = zeros(1, length(w_values));

for j = 1:length(w_values)

    w = w_values(j);
    try
      result = jacobi_relajado(A, b, [0;0;0], 1e-6, max_iter, w);
      iterations(j) = result(1);
      spectral_radii(j) = result(2);
    catch
      iterations(j) = max_iter;
      spectral_radii(j) = 1;
    end_try_catch

endfor

% Plotting iterations
figure;
subplot(2, 1, 1);
plot(w_values, iterations, 'LineWidth', 2);
xlabel("Parametro de relajacion w");
ylabel("Cantidad de iteraciones");
title("Cantidad de iteraciones antes de converger segun w");

% Plotting spectral radius
subplot(2, 1, 2);
plot(w_values, spectral_radii, 'LineWidth', 2);
xlabel("Parametro de relajacion w");
ylabel("Radio espectral");
title("Radio espectral del matrix Q segun w");

