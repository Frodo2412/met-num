A = [3 4 1;1 5 1;1 0 3]


D = diag(diag(A));
E = - tril(A, -1);
F = - triu(A, 1);

Q = (-E + D) \ (F);

eig(Q)
