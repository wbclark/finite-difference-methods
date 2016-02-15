function [ xo, yo, zo ] = step( xi, yi, zi , h)
    xo = (10)*(yi - xi)*h + xi;
    yo = ((25 - zi)*xi - yi)*h + yi;
    zo = (xi*yi - (8/3)*zi)*h + zi;
end

