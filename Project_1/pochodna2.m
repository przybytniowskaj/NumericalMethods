function x_prim2 = pochodna2(x, a_vec)
    %funkcja liczy pochodna st. II za pomocą różnicy progresywnej w punkcie
    %x 

	dx = 1e-7;
	funkcja = Czebyszew([x+2*dx, x+dx, x], a_vec); %wywoluje raz funkcje czebyszewa
	x_prim2 = (funkcja(1)-2*funkcja(2)+funkcja(3))/dx^2; 
    
end