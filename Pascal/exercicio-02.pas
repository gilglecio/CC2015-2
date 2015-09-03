Program somar_dois_numeros;

// Pedir que o usuário informe o primeiro número
// Pedir que o usuário informe o segundo número
// Somar os dois números
// Exibir a soma dos números

var 
	numero1, numero2, soma: real;

Begin
	
	writeln('SOMAR DOIS NUMEROS');
	
	writeln('Insira o primeiro numero: ');
	read(numero1);
	
	writeln('Insira o segundo numero: ');
	read(numero2);
	
	soma := numero1 + numero2;
	
	writeln('A soma dos números é: ', soma:10:2);
End.