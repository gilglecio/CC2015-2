algoritmo "Idade Certa"
var
   ano_nascimento: real
   ano_atual: real
   idade: real
   
inicio

// Seção de Comandos 
escreval ("Digite o ano atual")
leia (ano_atual)

escreval ("Digite o ano do nascimento:")
leia (ano_nascimento)

idade <- ano_atual - ano_nascimento

se idade >= 18 entao
   escreval("Voce já esta autorizado a tirar a CNH e o Título de eleitor.")
fimse

se idade < 16 entao
   escreval("Você nao esta autorizado para ter a CNH e o título de eleitor")
fimse

se idade >= 16 entao
   se idade < 18 entao
      escreval("Voce pode votar mais não pode tirar a CNH.")
   fimse
fimse

fimalgoritmo

