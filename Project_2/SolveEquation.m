function [x] = SolveEquation(L, U, B)
% funkcja za pomocą macierzy podanych w argumentach funckji wyznacza
% rozwiazanie rownania Ax = B <=> LUx = B <=> Ly = B i Ux = y

% L, U - macierze ktorych iloczyn jest równy głównej macierzy A, wyznaczone
% za pomoca metody Crouta
% B - macierz potrzebna w równaniu




n = length(L);
y = zeros(size(B));
% find solution of Ly = B
for i = 1:n
    y(i,:) = (B(i,:) - L(i,1:i)*y(1:i,:))./L(i,i);
end
% find solution of Ux = y
x = zeros(size(B));
for i = n:(-1):1
    x(i,:) = y(i,:) - U(i,(i+1):n)*x((i+1):n,:);
end    

end
