///////////////////////////////////////////////////////////////////////////////////
// Desenvolva um programa que calcule o valor de uma divida com dias de atraso,  //
// para o calculo será preciso os seguintes dados:                               //
// o valor original da divida, os dias de atraso e o valor dos juros por dia,    //
// após isso mostre o valor atualizado da divida;                                //
///////////////////////////////////////////////////////////////////////////////////

Program valor_divida_juros_atraso;

// Pedir que o usuário informe o valor da dívida
// Pedir que o usuário informe a quantida de dias em atraso
// Pedir que o usuário informe o valor/dia em atraso
// Somar ao valor, o valor/dia em atraso pla quantidade de dias em atraso infromada
// Exibir para o usuário o valor atualizado da dívida

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