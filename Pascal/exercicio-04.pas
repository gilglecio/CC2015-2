Program cosumo_medio_combustivel;

// Pedir que o usuário informe a distânia pecorrida em Km
// Pedir que o usuário informe o total de combustivel em L
// Dividir a quantidade de combustivel pela distancia pecorrida
// Exibir ao usuário a distancia pecorrida por litro (Km/L)

var
	distancia_pecorrida, combustivel_gasto, km_por_litro: real;
	
Begin

	writeln('CONSUMO MÉDIO DE COMBUSTÍVEL');

	writeln('QUAL A DISTÂNCIA PECORRIDA (Km)? ');
	read(distancia_pecorrida);
	
	writeln('QUAL A QUANTIDADE DE COMBUSTIVEL GASTO (L)?');
	read(combustivel_gasto);
	
	if (distancia_pecorrida < 0) or (combustivel_gasto < 0) then 
		begin
			writeln('APENAS VALORES MAIORES QUE 0 SÃO PERMITIDOS.')
		end
	else
		begin		
		
			km_por_litro := combustivel_gasto / distancia_pecorrida;
		
			writeln('SEU VEÍCULO CONSOME ', km_por_litro:10:2, ' km/l.');	
		end;
	
End.