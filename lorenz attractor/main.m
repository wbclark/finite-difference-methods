N = 100000; yi = [1, 0, 0]; T = 200;

h = T/N;

y = zeros(N, 3);
y(1, 1:3) = yi;

for i = 1:N-1
    [xo, yo, zo] = feval(@lorenz, y(i,1), y(i,2), y(i,3) ,h);
    y(i+1,1:3) = [xo, yo, zo];
end


plot3(y(:,1), y(:,2), y(:,3))