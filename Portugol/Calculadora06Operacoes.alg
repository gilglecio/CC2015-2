algoritmo "Calculadora06Operacoes"

// Autores: Gilgl�cio Santos e Leidiane Lima.

// Declarar duas vari�veis reais;
// Ler o valor da vari�vel 1;
// Ler o valor da vari�vel 2;
// Declarar quatro vari�veis para receberem o resultado de cada opera��o (+, -, *, /, pot, rad);
// Calcular e armazenar a soma entre os dois n�meros;
// Calcular e armazenar a divis�o entre os dois n�meros;
// Calcular e armazenar a multiplica��o entre os dois n�meros;
// Calcular e armazenar a subtra��o entre os dois n�meros;
// Elevar o primeiro numero ao segundo numero, e armazenar a potencia��o;
// Calcular a raiz quadrada do primeiro numero;
// Calcular a raiz quadrada do segundo numero;
// Exibir para o usu�rio as 6 opera��es realizadas.

var
   numero1: real
   numero2: real

// Fun��o para somar dois n�meros reais
funcao somar(x,y:real): real
inicio
   retorne (x+y)
fimfuncao

// Fun��o para multiplicar dois n�meros reais
funcao multiplicar(x,y:real):real
inicio
   retorne (x*y)
fimfuncao

// Fun��o para dividir dois n�meros reais
funcao dividir(x,y:real):real
inicio
   retorne (x/y)
fimfuncao

// Fun��o para subtrair dois n�meros reais
funcao subtrair(x,y:real):real
inicio
   retorne (x-y)
fimfuncao

// Fun��o para elevar um n�mero a outro
funcao potencia (x,y:real):real
inicio
   retorne (x^y)
fimfuncao

// Fun��o que calcula a raiz quadrada de um n�mero real
funcao raiz (x:real):real
inicio
   retorne raizq(x)
fimfuncao

inicio

   // Se��o de Comandos

   // Este trecho faz a leitura dos numeros
   escreval("ecreva o numero 1:")
   leia(numero1)

   escreval("ecreva o numero 2:")
   leia(numero2)

   // Aqui as entradas s�o calculadas usando as fun��es acima
   // E o resultado dos calculos �exibido ao usu�rio

   escreval("A somar dos numeros �: ", somar(numero1, numero2))
   escreval("A multiplica�ao dos numeros �: ", multiplicar(numero1, numero2))
   escreval("A divisao dos numeros �: ", dividir(numero1, numero2))
   escreval("A subtra�ao dos numeros �: ", subtrair(numero1, numero2))
   escreval("A potencia�ao dos numeros �: ", potencia(numero1, numero2))
   escreval("A raiz quadrada do numero 1 �: ", raiz(numero1))
   escreval("A raiz quadrada do numero 2 �: ", raiz(numero2))

fimalgoritmo
