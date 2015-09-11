algoritmo "Peso Ideal"
var
   genero: caractere
   altura: real
   peso_ideal: real
   
funcao mulheres (h:real): real
inicio
      retorne (62.1*h)-44.7
fimfuncao

funcao homens (h:real): real
inicio
      retorne (72.7*h)-58
fimfuncao

inicio
// Seção de Comandos 
escreval("Digite f para mulher e m para homem:")
leia (genero)

escreval ("Digite a altura:")
leia (altura)

se genero = "f" entao
   peso_ideal <- mulheres(altura)
fimse

se genero = "m" entao
   peso_ideal <- homens(altura)
fimse

escreval("Seu peso ideal é: ",peso_ideal)

fimalgoritmo
