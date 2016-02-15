Tf = 200; y0 = [1,0,0]; N = 100000; h = Tf/N;

[T,Y] = ode45(@f_lorenz,[0:h:Tf],y0);

plot3(Y(:,1),Y(:,2),Y(:,3))