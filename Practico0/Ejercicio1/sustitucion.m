function retval = sustitucion (A, v, n)

  k = length(v);

  for i = 1:k
    A(n,i) = v(i);
  endfor

  retval = A;

endfunction
