function retval = cond_manual (n, m)

  H = hilb(n);
  H_inv = invhilb(n);

  retval = norm(H, m) * norm(H_inv, m);

endfunction

