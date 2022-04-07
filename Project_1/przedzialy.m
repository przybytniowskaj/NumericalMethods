function przedzialy = przedzialy(a, b, a_vec, l_przedzialow)
    %funkcja dzieli jeden przedział na mniejsza liczbe przedzialów oraz
    %zapisuje do macierzy tylko te które spełniaja założenia metody Newtona
    % a - początek przedziału, b - koniec przedziału
    % a_vec - wektor współczynników wielomianu


	%dzialanie funkcji:
	%1. dziele zakres <a, b> na okreslona liczbe przedzialow
	%2. sprawdzam kazdy z przedzialow, czy nie nastepuje zmiana znaku funkcji. 
	%3. zapisuje przedzialy, w ktorzych nastepuje zmiana znaku
	if nargin < 3
        error('za mało argumentów');
    elseif nargin == 3
        l_przedzialow = 30;
    end

	x_do_spr = linspace(a, b, l_przedzialow+1); %rownoodlegle punkty w osi X
	funkcja = Czebyszew(x_do_spr, a_vec); %wczesniej obliczam wartosci funkcji

	znalezione_indeksy = find(funkcja(1:end-1).*funkcja(2:end)<=0); %mnoze 2 wektory i szukam, gdzie iloczyn ten daje wartosci mniejsze lub rowne zero
	przedzialy = [x_do_spr(znalezione_indeksy)', x_do_spr(znalezione_indeksy+1)']; %skladam macierz z prawidlowymi przedzialami 
end