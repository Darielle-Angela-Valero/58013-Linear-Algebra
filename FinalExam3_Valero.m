%Consider the matrix, (30 points)
%Find the eigenvalue/s
%Find the eigenvectors
A = [ 8 5 -6
     12 -9 12
     -3 -3 5]
[evector,evalue]=eig(A)
disp('Eigen Vectors')
disp(evector)
disp('Eigen Values')
disp(diag(evalue))