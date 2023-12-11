%Question 1 
%Student A, Student B, and Student C have a total of Php 89 cash in their banks.
% Student A has 6 less than Student C. 
% Student B has 3 times what Student C has.
% How much does each student have? 

%a + b + c = 89
% a - c = -6
% b = 3c
syms x y z
a = 1*x + 1*y + 1*z == 89
b = 1*x + 0*y - 1*z == -6
c = 0*x +1*y - 3*z == 0
[A,B]=equationsToMatrix([a,b,c],[x,y,z])
d=linsolve(A,B)
disp("Student A:")
disp(d(1))
disp("Student B:")
disp(d(2))
disp("Student C:")
disp(d(3))