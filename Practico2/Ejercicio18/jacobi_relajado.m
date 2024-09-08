function retval = jacobi_relajado (A, b, x0, eps, max_iter, w)
  i = 0;

  % Setup de submatrices
  D = diag(diag(A));
  E = - tril(A, -1);
  F = - triu(A, 1);

  r = (D \ b) * w;
  Q = w * (D \ (E + F)) + (1 - w) * eye(3);

  Xk = x0;
  diff = 10000;

  eigenvalues = eig(Q);
  spectral_radius = max(abs(eigenvalues));

  while (i < max_iter && diff > eps)

    i++;

    Xk1 = (Q * Xk) + r;

    diff = norm(Xk1 - Xk);
    Xk = Xk1;
  endwhile

  if (i == max_iter)
    error("Metodo de Jacobi no converge luego de %d iteraciones, valor final de x = [%s]", max_iter, mat2str(Xk1));
  endif
  retval = [i, spectral_radius, Xk1];

endfunction

