algoritmo "PesoIdeal"

// Autores: Gilglécio Santos e Leidiane Lima.

// Declarar uma variável do tipo string, para receber M ou F;
// Declarar uma variável do tipo float, para receber a altura;
// Declarar uma variável do tipo float para armazenar o peso ideal calculado;
// Criar uma função que calcule para mulheres, (72,7 * altura) - 58;
// Criar uma função que calcule para homens, (62,1 * altura) - 44,7;
// Ler o gênero da pessoa;
// Ler a altura da pessoa;
// Calcular o peso ideal conforme o genero informado;
// Se o gênero for M utilizar a função para homens;
// Se o gênero for F utilizar a função para mulheres;
// Exibir o peso idela para o usuário.

var
   genero: caractere
   altura: real
   peso_ideal: real

// Função que calcula o peso ideal usando a formula para mulheres   
funcao mulheres (h:real): real
inicio
	retorne (62.1*h)-44.7
fimfuncao

// Função que calcula o peso ideal usando a formula para homens   
funcao homens (h:real): real
inicio
	retorne (72.7*h)-58
fimfuncao

inicio
	
	// Seção de Comandos 
	
	// Aqui são feitas as leituras de gênero F ou M, e altura respectivamente
	escreval("Digite f para mulher e m para homem:")
	leia(genero)

	escreval ("Digite a altura:")
	leia(altura)

	// Condições
	se genero = "f" entao
	   peso_ideal <- mulheres(altura)
	fimse

	se genero = "m" entao
	   peso_ideal <- homens(altura)
	fimse

	escreval("Seu peso ideal é: ", peso_ideal)

fimalgoritmo
