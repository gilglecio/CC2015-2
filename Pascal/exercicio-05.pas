Program calculo_comissao;

// Pedir que o usuário informe o nome do vendedor
// Pedir que o usuário informe o salário fixo do vendedor
// Pedir que o usuário informe o total de vendas efetuada por ele no mes (em reais)
// Calcular a comissã do vendedor
// Somar ao salário fixo do vendedor a comissao calculada

// Exibir o nome nome do vendedor, o salario fixo e o total recebido

const TAXA_COMISSAO = 15/100;

var
	nome: string;
	salario, total_vendas, comissao, valor_total: real;
	
Begin

	writeln('CALCULO DE COMISSAO DO VENDEDOR:');

	write('INFOME O NOME DO VENDEDOR: ');
	readln(nome);
	
	write('INFORME O SALÁRIO FIXO DO VENDEDOR (R$): ');
	readln(salario);

	write('INFORME O TOTAL DE VENDAS NO MES (R$): ');
	readln(total_vendas);
	
	comissao := total_vendas * TAXA_COMISSAO;
	valor_total := salario + comissao;

	writeln('+++++++++++++++++++++++++++++++++++');
	writeln('VENDEDOR: ', nome);
	writeln('SALÁRIO:', salario:10:2);
	writeln('TOTAL:', valor_total:10:2);
End.