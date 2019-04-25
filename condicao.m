function y=condicao(m,n)
	i=1;
	while(m(i,1)==0&&i<=n)
    		i=i+1;
	end
	if(i>n)
    		disp('impossivel resolver');
	else
    		aux=m(1,:);
    		m(1,:)=m(i,:);
    		m(i,:)=aux;
    		y=m;
    		i=1;
    		teste=m(1,i);
    		while i <= n
        			if m(1,i)~=teste
            			i=n+2;
        			end
        			i=i+1;
		end
    		if(i==n+1)%toda primeira linha eh igual
			aux=m(1,:);
        			m(1,:)=m(n,:);
      			m(n,:)=aux;
        			y=m;
   		end
	end
end

