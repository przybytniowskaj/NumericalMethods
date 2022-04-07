function [L,U] = Crout(A)
% funkcja za pomoca metody Crouta wyznacza macierze L (dolnotrojkatna) i U
% (gornotrojkatna z  wartosciami 1 na glownej przekatnej) ktorych iloczyn
% jest rowny macierzy A

n = length(A);
L = zeros(n);
U = zeros(n) + diag(ones(1,n));

for i = 1:n
   for j = 1:i
       L(i,j) = A(i,j) - L(i,1:(j-1))*U(1:(j-1),j);
   end
   j = (i+1):n;
   if (L(i,i)== 0)
       warning("Metoda nie działa dla tego przykładu, wartość zerowa na przekatnej macierzy L")
   end
   U(i,j) = (A(i,j) - L(i,1:(i - 1))*U(1:(i - 1),j))./L(i,i);
end

end