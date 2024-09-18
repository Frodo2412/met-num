function retval = area_triangulo (a, b, c)

  if (a > b + c | b > a + c | c > a + b)
    error("No cumple desigualdad triangular");
  endif

  p = (a + b + c) / 2;

  squared_area = p * (p - a) * (p - b) * (p - c);
  area = sqrt(squared_area);

  retval = area;

endfunction

