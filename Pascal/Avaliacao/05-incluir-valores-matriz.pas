/////////////////////////////////////////////////////////////
// Ler 6 valores em uma matriz de 2 linhas e 3 colunas     //
// e depois disto emitir a soma dos valores. (USAR MATRIZ) //
/////////////////////////////////////////////////////////////

Program incluir_valores_numa_matriz;

// Pedir para o usuário informe os valor para cada posição da matriz
// Somar os valores da matriz
// Exibir a soma ao usuário

var 
    matriz:array[1..2, 1..3] of integer; {matriz 2x3} 
    coluna, linha, soma: integer;
    
Begin
    for coluna := 1 to 2 do begin
    	for linha := 1 to 3 do begin
	      	writeln('INFORME O VALOR PARA A POSIÇÃO ', coluna, ',', linha);
	      	read(matriz[coluna][linha]);
	      	soma := soma + matriz[coluna][linha];
   		end;
   	end;

   	writeln('A SOMA DOS VALORES DO MATRIZ É: ', soma);
End.