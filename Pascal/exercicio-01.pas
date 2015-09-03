Program area_do_triangulo;

var
	area, base, altura: real;
	
Begin

	writeln('CALCULAR A ÁREA DE UM TRIÂNGULO');
	
	writeln('QUAL O VALOR DA BASE? ');
	read(base);
	
	writeln('QUAL O VALOR DA ALTURA? ');
	read(altura);
	
	if (base < 1) or (altura < 1) then 
		begin
			writeln('APENAS VALORES MAIORES QUE 1 SÃO PERMITIDOS')
		end
	else
		begin		
			area := (base * altura) / 2;
		
			writeln('A ÁREA DO TRIANGULO E: ', area:10:2);	
		end;
	
End.