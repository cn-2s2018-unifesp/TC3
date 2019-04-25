function result(m,n)
	p=n-1;
	x(n)=m(n,n+1);
	while p > 0
   		i = n;
    		aux=0;
    		while i > p
        			aux=aux+m(p,i)*x(i);
        			i=i-1;
    		end
    		x(i)=m(p,n+1)-aux;
    		p=p-1;
	end
	fprintf('Solucao:');
	disp(x);
end

