algoritmo "IdadeCerta"

// Autores: Gilgl�cio Santos e Leidiane Lima.

// Declarar uma vari�vel inteira para ler o ano de nascimento da pessoa;
// Declarar uma vari�vel inteira para armazenar o ano atual;
// Declarar uma vari�vel inteira para receber a diferen�a entre 
// o ano atual e o ano de nascimento da pessoa;
// Pedir que o usu�rio informe o ano atual;
// Pedir que o usu�rio informe oano em que nasceu;
// Calcular a direferen�a entre o ano atual e o ano de nascimento da pessoa;
// Se a diferen�a for maior ou igual a 18, informar que a pessoa j� pode tirar 
// o t�tulo de eleitor e tamb�m e a CNH;
// Se a diferen�a for menor que 16, informar que que a pessoa n�o pode nem votar nem tirar a CNH;
// Se n�o for nenhuma das alternativas acima, informar que a pessoa pode 
// votar mas n�o pode tirar a CNH.

var
   ano_nascimento: real
   ano_atual: real
   idade: real
   
inicio

   // Se��o de Comandos
   // Aqui s�o lidos o ano atual e o ano de nascimento do usu�rio
   escreval ("Digite o ano atual")
   leia(ano_atual)

   escreval ("Digite o ano do nascimento:")
   leia(ano_nascimento)

   // C�lculo para encontrar a idade do usu�rio
   idade <- ano_atual - ano_nascimento

   // Condi��es
   se idade >= 18 entao
      escreval("Voce j� esta autorizado a tirar a CNH e o T�tulo de eleitor.")
   fimse

   se idade < 16 entao
      escreval("Voc� nao esta autorizado para ter a CNH e o t�tulo de eleitor")
   fimse

   se idade >= 16 entao
      se idade < 18 entao
         escreval("Voce pode votar mais n�o pode tirar a CNH.")
      fimse
   fimse

fimalgoritmo

