%Matrix
B = [2 2 4; 1 3 5; 2 3 4]
%Eigen Value and Eigen Vector
[evalue,evector]=eig(B)
%Left
ev1 = [-0.5280;-0.6044;-0.5966]
s = B*evalue(:,1)
t=B*ev1
u = 8.8092*ev1
%Mid
ev2=[-0.7756;0.6228;-0.1032]
a = B*evalue(:,2)
b =B*ev2
c = 0.9262*ev2
%Right
ev3 = [-0.3627;-0.7103;0.6032]
e = B*evalue(:,3)
f =B*ev3
g = -0.7354*ev3