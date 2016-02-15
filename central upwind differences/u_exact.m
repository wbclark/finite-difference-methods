function [ UE ] = u_exact( x, epsilon )
	UE = 1 + x + (exp(x/epsilon) - 1)/(exp(1/epsilon) - 1)
end

