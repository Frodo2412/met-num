function retval = resolver_hilbert (n)
  x = ones(1,n)';
  H = hilb(n);

  b = H * x;

  x_p = H \ b;

  retval = x_p;
endfunction

