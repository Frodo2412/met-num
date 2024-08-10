function retval = norma (v)

  n = length(v);
  norma = 0;

  for i = 1:n
    norma = norma + v(i)^2;
  endfor

  retval = sqrt(norma);

endfunction
