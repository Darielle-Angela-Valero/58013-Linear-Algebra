% Question 4
% Write a MATLAB code that will solve for the determinant of given matrix:

A = [-5 -1 -4
      4 0 -3
      2 -2 6]
disp('Determinant:')
disp(det(A))   

%Question 5
%What would be the output of the following code?
A = [1 2; 3 4]
C = A^2

%Question 7
%Choose the function to solve the following problem, symbolically, in the easiest way: 3x+y=5 and 2x+3y=7

D = [3 1
     2 3]
C = [5 
     7]
linsolve(D,C)

%Question 10
%What is the output of these MATLAB codes?

A = [0,1; 1,0] 
B = 2
C=A+B

%Question 13
%Write a MATLAB code that will solve the system of equations:
%3x-5y+4z=5
%5x+2y+z=0
%2x+3y-2z=3
%What are the values of x, y , and z?
L = [3 -5 4
     5 2 1
     2 3 -2]
E = [ 5
      0
      3]
ans = L\E
disp('x:')
disp(ans(1))
disp('y:')
disp(ans(2))
disp('z:')
disp(ans(3))

%Question 15
%What would be the output of the following code?
A = [1 1 0 0]
B = [1;2;3;4]
C=A*B