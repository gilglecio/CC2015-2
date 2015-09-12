algoritmo "IdadeCerta"

// Autores: Gilglécio Santos e Leidiane Lima.

// Declarar uma variável inteira para ler o ano de nascimento da pessoa;
// Declarar uma variável inteira para armazenar o ano atual;
// Declarar uma variável inteira para receber a diferença entre 
// o ano atual e o ano de nascimento da pessoa;
// Pedir que o usuário informe o ano atual;
// Pedir que o usuário informe oano em que nasceu;
// Calcular a direferença entre o ano atual e o ano de nascimento da pessoa;
// Se a diferença for maior ou igual a 18, informar que a pessoa já pode tirar 
// o título de eleitor e também e a CNH;
// Se a diferença for menor que 16, informar que que a pessoa não pode nem votar nem tirar a CNH;
// Se não for nenhuma das alternativas acima, informar que a pessoa pode 
// votar mas não pode tirar a CNH.

var
   ano_nascimento: real
   ano_atual: real
   idade: real
   
inicio

   // Seção de Comandos
   // Aqui são lidos o ano atual e o ano de nascimento do usuário
   escreval ("Digite o ano atual")
   leia(ano_atual)

   escreval ("Digite o ano do nascimento:")
   leia(ano_nascimento)

   // Cálculo para encontrar a idade do usuário
   idade <- ano_atual - ano_nascimento

   // Condições
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

