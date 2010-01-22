a = 0.92;
b = 1.1;
X_0 = 0.5;
M_0 = X_0;
ppi = (1-b) / (a-b);
T = 10;
t0 = 0;
N = 15;

a1 = linspace(0.2, 0.99, N);
b1 = linspace(1.01, 1.8, N);
for i = 1 : N
for j = 1 : N
    a = a1(i);
    b = b1(j);
    ppi = (1-b) / (a-b);
    V_0 = V(X_0, M_0, a, b, t0, T, ppi);
    V_mas(i,j) = V_0;
end
end
V_mas
figure(1);
[A1,B1] = meshgrid(a1, b1);
surf(A1, B1, V_mas);
xlabel('a');
ylabel('b');
zlabel('V_0(a,b)');
% print -depsc -tiff pic

% for i = 1 : T
%     V_opt
% end

% d = min(b-1,1-a);
% 
% X = [];
% X = X_0;
% x1 = X_0;
% Xi = [];
% for i = 1 : T
%     xi = 1-d + 2*d *rand(1);
%     Xi = [Xi xi];
%     x1 = x1 * xi;
%     X = [X x1];
% end
% X
% 
% H = [];
% for i = 1 : T
%     H(i) = (V(a*X(i), min(M_0, a*X(i)), a, b, t0+1, T, ppi) - ...
%         V(b*X(i), min(M_0, b*X(i)), a, b, t0+1, T, ppi)) / (b-a);
%     t0 = t0 + i;
% end
% H
% dX = X(1,2:end) - X(1,1:end-1);
% 
% W = [];
% W = V_0;
% for i = 1 : T
%     V1 = W(i) + H(i) * dX(i);
%     W = [W V1];
% end
% W
% 
% dzeta = X(end) - min(X)

