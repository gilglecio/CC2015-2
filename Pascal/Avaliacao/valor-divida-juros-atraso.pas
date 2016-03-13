Program valor_divida_juros_atraso;

var
	valor, dias_atraso, valor_por_dia_atraso, total: real;
	
Begin

	writeln('CALCULA O VALOR DA DÍVIDA ATRASADA');
	
	writeln('QUAL O VALOR DA DÍVIDA? ');
	read(valor);
	
	writeln('DIAS EM ATRASO? ');
	read(dias_atraso);

	writeln('VALOR POR DIA EM ATRASO? ');
	read(valor_por_dia_atraso);

	total := valor + (valor_por_dia_atraso * dias_atraso);
	
	writeln('O VALOR ATUALIZADO DA DÍVIDA É: ', total:10:2);	
	
End.