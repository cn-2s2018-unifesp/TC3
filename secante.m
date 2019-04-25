function y=secante(x0,x1,erro)
	y=x1;
	i=0;
	if equacao(x1)~=equacao(x0)
    		while abs(fator(x0,x1)) > erro
        			y=y-fator(x0,x1);
        			x0=x1;
        			x1=y;
        			i=i+1;
    		end
	end
	disp(i);
end

