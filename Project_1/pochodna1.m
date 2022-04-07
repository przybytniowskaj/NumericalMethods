function x_prim = pochodna1(x, a_vec)
    %funkcja liczy pochodna st. I za pomocą różnicy progresywnej w punkcie
    %x 

	dx = 1e-7;
	funkcja = Czebyszew([x+dx, x], a_vec); %wywoluje raz funkcje czebyszewa
	x_prim = (funkcja(1) - funkcja(2)) / dx; 
    
end