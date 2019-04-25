function el_gauss(m,n)
	m=condicao(m,n);	% Arquivo: condicao.m
	p=1;
	if m(1,1)~=0
		while(p<=n)
       			if m(p,p)~=1
           				m(p,:) = m(p,:)/m(p,p);
        			end
        			i=p+1;
        			while i<=n
        				m(i,:) = (-1)*m(i,p)*m(p,:) + m(i,:);
				i=i+1;
			end
			p=p+1;
		end
	end
	disp(m);
	result(m,n);	%Arquivo: result.m
end

