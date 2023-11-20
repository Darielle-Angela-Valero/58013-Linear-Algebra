% Find a solution to the 
% problem stated and plot 
% your equation/s 
% and save it to your github

syms x y
a = 20*x + 10*y == 350
b = 17*x +22*y == 500
[A,B]=equationsToMatrix([a,b],[x,y])
c=linsolve(A,B)
disp('An appple costs:')
disp(c(1))
disp('An orange costs:')
disp(c(2))

x_val = linspace(-100, 100, 100);% creates a range of x values for plotting.
y_val_a = (350 - 20*x_values) / 10; %compute y value
y_val_b = (500 - 17*x_values) / 22; %compute y value

plot(x_val, y_val_a);
hold on;
plot(x_val, y_val_b);

title('Linear Application');
xlabel('x-axis');
ylabel('y-axis');
legend('20*x + 10*y == 350', '17*x + 22*y == 500');
grid on;