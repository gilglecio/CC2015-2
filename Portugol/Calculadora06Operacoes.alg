algoritmo "Calculadora06Operacoes"

// Autores: Gilglécio Santos e Leidiane Lima.

// Declarar duas variáveis reais;
// Ler o valor da variável 1;
// Ler o valor da variável 2;
// Declarar quatro variáveis para receberem o resultado de cada operação (+, -, *, /, pot, rad);
// Calcular e armazenar a soma entre os dois números;
// Calcular e armazenar a divisão entre os dois números;
// Calcular e armazenar a multiplicação entre os dois números;
// Calcular e armazenar a subtração entre os dois números;
// Elevar o primeiro numero ao segundo numero, e armazenar a potenciação;
// Calcular a raiz quadrada do primeiro numero;
// Calcular a raiz quadrada do segundo numero;
// Exibir para o usuário as 6 operações realizadas.

var
   numero1: real
   numero2: real

// Função para somar dois números reais
funcao somar(x,y:real): real
inicio
   retorne (x+y)
fimfuncao

// Função para multiplicar dois números reais
funcao multiplicar(x,y:real):real
inicio
   retorne (x*y)
fimfuncao

// Função para dividir dois números reais
funcao dividir(x,y:real):real
inicio
   retorne (x/y)
fimfuncao

// Função para subtrair dois números reais
funcao subtrair(x,y:real):real
inicio
   retorne (x-y)
fimfuncao

// Função para elevar um número a outro
funcao potencia (x,y:real):real
inicio
   retorne (x^y)
fimfuncao

// Função que calcula a raiz quadrada de um número real
funcao raiz (x:real):real
inicio
   retorne raizq(x)
fimfuncao

inicio

   // Seção de Comandos

   // Este trecho faz a leitura dos numeros
   escreval("ecreva o numero 1:")
   leia(numero1)

   escreval("ecreva o numero 2:")
   leia(numero2)

   // Aqui as entradas são calculadas usando as funções acima
   // E o resultado dos calculos éexibido ao usuário

   escreval("A somar dos numeros é: ", somar(numero1, numero2))
   escreval("A multiplicaçao dos numeros é: ", multiplicar(numero1, numero2))
   escreval("A divisao dos numeros é: ", dividir(numero1, numero2))
   escreval("A subtraçao dos numeros é: ", subtrair(numero1, numero2))
   escreval("A potenciaçao dos numeros é: ", potencia(numero1, numero2))
   escreval("A raiz quadrada do numero 1 é: ", raiz(numero1))
   escreval("A raiz quadrada do numero 2 é: ", raiz(numero2))

fimalgoritmo
