% associate law (AB)C = A(BC), it's hard to prove.
A = [1 2; 3 4];
B = [5 6; 7 8];
C = [9 10; 11 12];

disp(A*B*C)
disp(A*(B*C))
disp(isequal(A*B*C, A*(B*C)))


% column selector
D = eye(3);
v = D*[0;0;1];
v

% row selector
D = eye(3);
r = [0 0 1]*D;
r