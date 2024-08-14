function retval = g (x)

  numerator = power(x, 3);
  denominator = x - sin(x);

  retval = numerator / denominator;

endfunction

