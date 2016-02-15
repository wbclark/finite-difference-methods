clear all;

n = 100; h = 1/n; h1 = h*h; ua = 1; a = 2; b = -3; c = 0; ub = 0;

A = sparse(n,n); F = zeros(n,1); UE = zeros(n,1);

for k=1:n-1
	x = k*h;
	pup = feval(@p,x+h/2);
	pdown = feval(@p,x-h/2);
	F(k,1) = feval(@f,k*h);
	A(k,k) = -(pup + pdown)/h1 - x;
	A(k+1,k) = pup/h1;
	A(k,k+1) = pup/h1;
	UE(k) = feval(@uexact,x);
end

for k=1
	pdown = feval(@p,h/2);
	F(k,1) = F(k,1) - pdown*ua/h1;
end

for k=n
	x = k*h;
	pup = feval(@p,x+h/2);
	pdown = feval(@p,x-h/2);
	F(k,1) = F(k,1) - pdown*ub/h1;
	A(k,k) = -(pup + pdown)/h1 - x;
end

U = A\F;