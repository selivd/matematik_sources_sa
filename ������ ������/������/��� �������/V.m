function res = V(X_0, M_0, a, b, t0, T, ppi)

if t0 < T
    res = ppi * V(a*X_0, min(M_0, a*X_0), a, b, t0+1, T, ppi) +...
        (1-ppi) * V(b*X_0, min(M_0, b*X_0), a, b, t0+1, T, ppi);
else
    
    res = X_0 - M_0;
end