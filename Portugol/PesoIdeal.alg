algoritmo "PesoIdeal"

// Autores: Gilgl�cio Santos e Leidiane Lima.

// Declarar uma vari�vel do tipo string, para receber M ou F;
// Declarar uma vari�vel do tipo float, para receber a altura;
// Declarar uma vari�vel do tipo float para armazenar o peso ideal calculado;
// Criar uma fun��o que calcule para mulheres, (72,7 * altura) - 58;
// Criar uma fun��o que calcule para homens, (62,1 * altura) - 44,7;
// Ler o g�nero da pessoa;
// Ler a altura da pessoa;
// Calcular o peso ideal conforme o genero informado;
// Se o g�nero for M utilizar a fun��o para homens;
// Se o g�nero for F utilizar a fun��o para mulheres;
// Exibir o peso idela para o usu�rio.

var
   genero: caractere
   altura: real
   peso_ideal: real

// Fun��o que calcula o peso ideal usando a formula para mulheres   
funcao mulheres (h:real): real
inicio
	retorne (62.1*h)-44.7
fimfuncao

// Fun��o que calcula o peso ideal usando a formula para homens   
funcao homens (h:real): real
inicio
	retorne (72.7*h)-58
fimfuncao

inicio
	
	// Se��o de Comandos 
	
	// Aqui s�o feitas as leituras de g�nero F ou M, e altura respectivamente
	escreval("Digite f para mulher e m para homem:")
	leia(genero)

	escreval ("Digite a altura:")
	leia(altura)

	// Condi��es
	se genero = "f" entao
	   peso_ideal <- mulheres(altura)
	fimse

	se genero = "m" entao
	   peso_ideal <- homens(altura)
	fimse

	escreval("Seu peso ideal �: ", peso_ideal)

fimalgoritmo
