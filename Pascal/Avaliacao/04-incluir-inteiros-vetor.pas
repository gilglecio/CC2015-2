///////////////////////////////////////////////////////////
// Inclusão de 5 valores inteiros em um vetor,           //
// e depois disto emitir a soma dos mesmos. (USAR VETOR) //
///////////////////////////////////////////////////////////

Program incluir_5_inteiros_no_vetor;

// Pedir para o usuário informe os valor para cada posição do vetor
// Somar os valores do vetor
// Exibir a soma ao usuário

var 
    vetor:array[1..5] of integer;
    posicao, soma: integer;
Begin
    for posicao := 1 to 5 do begin
      	writeln('INFORME O VALOR PARA A POSIÇÃO ', posicao);
      	read(vetor[posicao]);
      	soma := soma + vetor[posicao];
   	end;

   	writeln('A SOMA DOS VALORES DO VETOR É: ', soma);
End.