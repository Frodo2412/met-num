function retval = gauss_seidel  (A, b, eps, max_iter)

  x0 = [0; 0; 0];
  i = 0;

  % Setup de submatrices
  D = diag(diag(A));
  E = - tril(A, -1);
  F = - triu(A, 1);

  r = (-E + D) \ b;
  Q = (-E + D) \ (F);

  Xk = x0;
  diff = 10000;

  while (i < max_iter && diff > eps)

    i++;
    Xk1 = (Q * Xk) + r;
    diff = norm(Xk1 - Xk);
    Xk = Xk1;

  endwhile


  if (i == max_iter)
    diff
    error("Metodo de Gauss-Seidel no converge luego de %d iteraciones, valor final de x = [%s]", max_iter, mat2str(Xk1));
  endif

  diff
  retval = Xk1;

endfunction

