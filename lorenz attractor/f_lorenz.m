function [ dY ] = lorenz(t, Y)
    dY = [(10)*(Y(2) - Y(1)); ((50 +25*sin(1.25*Y(3)) - Y(3))*Y(1) - Y(2)); (Y(1)*Y(2) - (8/3)*Y(3))];
end