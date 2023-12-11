%Solve each system: (30 points) **Solve using MATLAB Codes
%3x - y + z = 5
%9x - 3y +3z = 15
%-12x +4y -4z = -20 

syms x y z
a = 3*x - 1*y + 1*z == 5
b = 9*x - 3*y + 3*z == 15
c = -12*x +4*y - 4*z == -20
[A,B]=equationsToMatrix([a,b,c],[x,y,z])
d=linsolve(A,B)
disp('x:')
disp(d(1))
disp('y:')
disp(d(2))
disp('z:')
disp(d(3))