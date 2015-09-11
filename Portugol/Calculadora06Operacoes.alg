algoritmo "CALCULADORA"
var
   numero1: real
   numero2: real

funcao somar(x,y:real): real
inicio
      retorne (x+y)
fimfuncao

funcao multiplicar(x,y:real):real
inicio
      retorne (x*y)
fimfuncao

funcao dividir(x,y:real):real
inicio
      retorne (x/y)
fimfuncao

funcao subtrair(x,y:real):real
inicio
      retorne (x-y)
fimfuncao

funcao potencia (x,y:real):real
inicio
      retorne (x^y)
fimfuncao

funcao raiz (x:real):real
inicio
      retorne raizq(x)
fimfuncao

inicio
   // Seção de Comandos
   escreval("ecreva o numero 1:")
   leia (numero1)

   escreval("ecreva o numero 2:")
   leia (numero2)

   escreval("A somar dos numeros é",somar(numero1, numero2))
   escreval("A multiplicaçao dos numeros é",multiplicar(numero1, numero2))
   escreval("A divisao dos numeros é",dividir(numero1, numero2))
   escreval("A subtraçao dos numeros é",subtrair(numero1, numero2))
   escreval("A potenciaçao dos numeros é",potencia(numero1, numero2))
   escreval("A raiz quadrada do numero 1 é",raiz(numero1))
   escreval("A raiz quadrada do numero 2 é ",raiz(numero2))

fimalgoritmo
