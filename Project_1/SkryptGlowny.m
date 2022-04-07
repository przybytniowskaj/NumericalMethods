digits(6);
przedzialy_poszukiwan = przedzialy(zakres_osi_X(1), zakres_osi_X(2), a_vec, 17); 

% Przyklad 1 
% a_vec = [0,3,1,2];
% zakres_osi_X = [-1,1];

%Przyklad 2 
% a_vec = [1,1,1,1];
% zakres_osi_X = [-1.1,1.1];

%Przyklad3
% a_vec = [1,3,2,6,1,3];
% zakres_osi_X = [-1,1];

%Przykład4
% a_vec = [6,9,1,2,5,7];
% zakres_osi_X = [-0.9,0.9];
% przedzialy_poszukiwan = przedzialy(zakres_osi_X(1), zakres_osi_X(2), a_vec, 23); 

%Przykald5
% a_vec = [5,4,3,2,1,1,2,3,4,5];
% zakres_osi_X = [-0.85,0.85];
% przedzialy_poszukiwan = przedzialy(zakres_osi_X(1), zakres_osi_X(2), a_vec, 39); 


x_find = zeros(size(przedzialy_poszukiwan, 1), 1); %wektor zer w przedzialach

for i=1:size(przedzialy_poszukiwan, 1)
	x_find(i) = Newton(przedzialy_poszukiwan(i, 1),przedzialy_poszukiwan(i, 2), 8, a_vec);
end

% odrzucanie blednych wynikow (bo metoda sie rozbiegla)
y_find = Czebyszew(x_find, a_vec);

x_find_corrected = x_find(find(abs(y_find)<0.1));
y_find_corrected = y_find(find(abs(y_find)<0.1))';
matrix = ["x", "y" ; vpa(x_find_corrected),vpa(y_find_corrected) ]


OX = linspace(zakres_osi_X(1), zakres_osi_X(2), 200);
%wykres
figure(Name="Przebieg badanego wielomianu", Position = [100 100 1000 650])
hold on
plot(OX, Czebyszew(OX, a_vec))
plot(x_find_corrected, y_find_corrected, 'x', 'MarkerSize', 12)
yline(0)
grid on
xlabel("x")
ylabel("Wielomian o współczynnikach a")
axis tight %automatyczne dopasowanie limitow osi X i Y. 