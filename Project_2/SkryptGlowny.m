clear all
clc

% disp("Przyklad 1 :")
% A_11 = [1 2; 3 4];
% A_12 = [3 4; 3 6];
% A_22 = [1 2; 3 5];
% B = [1 2 3 4]';

% disp("Przyklad 2 :")
% A_11 = [1 2 3; 1 1 3 ; 7 8 9];
% A_12 = [1 2 3;1 1 3 ; 1 2 3];
% A_22 = [1 2 5; 4 5 6;1 4 1 ];
% B = [5 2 5 3 5 1; 1 2 3 4 5 6]';

% disp("Przyklad 3 :")
% A_11 = rand(4);
% A_12 = rand(4);
% A_22 =rand(4);
% B = rand(1,8)';

% disp("Przyklad 4 :")
% A_11 = [cos(1) cos(2) cos(3); cos(0) cos(1) cos(0) ; cos(2)  cos(2) cos(2)];
% A_12 = [sin(1) sin(3) sin(1);sin(3) sin(3) sin(3) ; sin(0) sin(1) sin(-1)];
% A_22 = [tan(2) tan(3) tan(1); tan(-2) tan(-3) tan(-1);tan(0) tan(1) tan(1) ];
% B = [1 2 3 0 1 0; 2 2 2 1 3 1]';

% disp("Przyklad 5 :")
% A_11 = magic(5);
% A_12 = inv(magic(5));
% A_22 = magic(5);
% B = [1 2 3 4 5 5 4 3 2 1]';

disp("Przyklad 6 :")
A_11 = [log(3) log(2) log(3); log(1) log(4) log(2) ; log(10)  log(3) log(6)];
A_12 = (-1)* [log(3) log(2) log(3); log(1) log(4) log(2) ; log(10)  log(3) log(8)];
A_22 = [sin(2) sin(2) sin(2);sin(4) sin(4) sin(4) ; sin(3) sin(3) sin(3)];
B = [log(1) log(2) log(3) log(4) log(5) log(6); 1 2 3 4 5 6; cos(1) cos(2) cos(3) cos(4) cos(5) cos(6)]';


A = CreateMatrix(A_11,A_12,A_22)
[L,U] = Crout(A)
% checkpoint A = L*U :
disp("A - L*U => if is 0, [L, U] are correct")
L*U-A

disp("Solution : ")
x = SolveEquation(L, U, B)
y = A\B;

% checkpoint Ax = B:
disp("A\B - x => if is 0, x is correct")
x-y
x
y

