hilbert_5 = hilb(5)

K_1 = cond(hilbert_5, 1)
K_2 = cond(hilbert_5, 2)
K_Inf = cond(hilbert_5, Inf)

hilbert_10 = hilb(10)
K_1 = cond(hilbert_10, 1)
K_2 = cond(hilbert_10, 2)
K_Inf = cond(hilbert_10, Inf)


K_1 = cond_manual(5,1)
K_2 = cond_manual(5,2)
K_3 = cond_manual(5, Inf)

K_1 = cond_manual(10,1)
K_2 = cond_manual(10,2)
K_3 = cond_manual(10, Inf)

