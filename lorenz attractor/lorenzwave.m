function [ xo, yo, zo ] = step( xi, yi, zi , h)
    xo = (10)*(yi - xi)*h + xi;
    yo = ((75 +50*sin(0.200*zi) - zi)*xi - yi)*h + yi;
    zo = (xi*yi - (8/3)*zi)*h + zi;
end

