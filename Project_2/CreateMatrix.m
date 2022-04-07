function X = CreateMatrix(A,B,C)
% funkcja z trzech macierzy (o wymiarach n x n) podanych jako argumenty tworzy 
% jedna macierz (o wymiarach 2n x 2n) opisana w treści zadania

[~,n] = size(A);
X = [A B; (-1)*eye(n) C];


end