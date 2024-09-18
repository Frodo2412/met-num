function retval = error_hilbert (n)

  x = ones(1,n)';
  H = hilb(n);

  b = H * x;

  x_p = H \ b;

  retval = x - x_p;

endfunction
