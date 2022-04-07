function x = Newton(a, b, n, a_vec)
    % funkcja za pomocą metody Newtona wyznacza miejsca zerowe w przedziale
	% a - początek przedziału, b - koniec przedziału
	% n - maksymalna liczba iteracji
    % a_vec - wektor współczynników wielomianu

	%warunki wyboru lepszego punktu startowego
	if Czebyszew(a, a_vec)*pochodna2(a, a_vec)>0
		x = a;
	else 
		x = b; 
	end

	for i = 1:n 
		x = x - Czebyszew(x, a_vec) / pochodna1(x, a_vec); %kolejne przyblizenia
    end
    
end
