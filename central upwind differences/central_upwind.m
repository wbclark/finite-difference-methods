function [ X, U, UE ] = central_upwind( n, epsilon )
    
    a = 0; ua = 1; b = 1; ub = 3;

    h = (b - a)/n; h1 = h*h; h2 = 2*h;

    A = sparse(n,n); F = zeros(n,1); UE = zeros(n,1); X = zeros(n,1);

    for k=1:n-1
	    x = a + k*h;
	    X(k,1) = x;
	    F(k,1) = -1;
	    A(k,k) = -2*epsilon/h1 - 1/h;
	    A(k+1,k) = epsilon/h1 + 1/h;
	    A(k,k+1) = epsilon/h1;
	    UE(k) = feval(@u_exact,x,epsilon);
    end

    for k=1
	    F(k,1) = F(k,1) - epsilon*ua/h1 - ua/h;
    end

    for k=n
	    x = a + k*h;
	    X(k,1) = x;
	    F(k,1) = -1 - epsilon*ub/h1;
	    A(k,k) = -2*epsilon/h1 - 1/h;
	    UE(k) = feval(@u_exact,x,epsilon);
    end

    U = A\F;

end