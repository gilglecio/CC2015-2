Program operacoes_com_numeros;

// Pedir que o usuário informe o primeiro número
// Pedir que o usuário informe o segundo número

// Somar os dois números
// Subtrair os dois números
// Multiplicar os dois números
// Dividir os dois números

// Exibir o resultados das operações

var 
	numero1, numero2, soma, multiplicacao, divisao, subtracao: real;

Begin

	writeln('OPERAÇÕES COM NUMEROS');
	
	writeln('Insira o primeiro numero: ');
	read(numero1);
	
	writeln('Insira o segundo numero: ');
	read(numero2);
	
	soma := numero1 + numero2;
	multiplicacao := numero1 * numero2;
	divisao := numero1 / numero2;
	subtracao := numero1 - numero2;
	
	writeln('A soma dos números é: ', soma:10:2);
	writeln('A multiplicação dos números é: ', multiplicacao:10:2);
	writeln('A divisao dos números é: ', divisao:10:2);
	writeln('A subtracao dos números é: ', subtracao:10:2);
End.