A = [-3, 4, 0; 1, -2, 3; -1, 9, 3]
b = [-3; 4; 2]

D = diag(diag(A));
E = - tril(A, -1);
F = - triu(A, 1);

Q = (-E + D) \ (F);


eigen_values = eig(Q)

