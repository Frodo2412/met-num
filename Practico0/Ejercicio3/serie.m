function retval = serie (f, n)

  suma = 0;

  for i = 0:n
    suma = suma + f(n);
  endfor

  retval = suma;

endfunction

