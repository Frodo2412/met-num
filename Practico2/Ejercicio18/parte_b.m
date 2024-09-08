A = [-3, 4, 0; 1, -2, 3; -1, 9, 3]
b = [-3; 4; 2]

eps = 1e-6

max_iter = 100

try
  x_j = jacobi (A, b, eps, max_iter)
catch
  lasterror.message
end_try_catch

try
  x_gs = gauss_seidel (A, b, eps, max_iter)
catch
  lasterror.message
end_try_catch

