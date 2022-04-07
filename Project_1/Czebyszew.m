function y = Czebyszew(xd, a_vec)
    %funkcja wyznacza watośc wielomianu w bazie wielomianów Czebyszewa st.I
    % xd - wektor argumentów
    % a_vec - wektor współczynnikow badanego wielomianu

	if size(xd, 1)>1 %transpozycja, jezeli na wejsciu mam wektor kolumnowy
		xd=xd';
    end

	T = [ones(1, length(xd)); xd; zeros(length(a_vec), length(xd))];

	for i=1:length(a_vec) %iterowanie po kolejnych wspolczynnikach a_vec
		T(i+2, :) = a_vec(i)*(2*xd.*T(i+1, :) - T(i, :));
    end

	y = T(end, :); %zwrocenie ostatniego wiersza macierzy T - wartosci funkcji

end