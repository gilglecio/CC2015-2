#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*
    Enunciado:
    Contrua um algorítimo que tendo como dados de entrada dois pontos
    quaiquer de um plano, A(x1, y1) e B(x2, y2), imprima a distância entre eles.
    Formula: d = raiz( (x2-x1)² + (y2-y1)² )
*/

/*
    Algorítimo:
    01 - Perguntar ao usuário e armazenar a posição do ponto A;
    02 - Perguntar ao usuário e armazenar a posição do ponto B;
    03 - Resolver (x2-x1)² e armazenar;
    04 - Resolver (y2-y1)² e armazenar;
    05 - Calcular a distancia tirando a raiz quadrada da soma do resultado
         do passo 03 e 04;
    06 - Exibir para o usuário a disntacia calculada
    07 - Fim
*/

int px1, py1, px2, py2;

int main()
{
    printf("CALCULAR DISTANCIA ENTRE DOIS PONTO EM UM PLANO\n\n");

    printf("Par ordenado do ponto A, (ex: 10 20): ");
    scanf("%d %d", &px1, &py1);

    printf("Ponto A(%d,%d)\n", px1, py1);

    printf("Par ordenado do ponto B, (ex: 10 20): ");
    scanf("%d %d", &px2, &py2);

    printf("Ponto B(%d,%d)", px2, py2);

    float calculo1 = (px1-px2)*(px1-px2);
    float calculo2 = (py1-py2)*(py1-py2);

    float distancia = sqrt(calculo1 + calculo2);

    printf("\nA distancia entre os pontos A e B é: %.2f", distancia);

    return 0;
}
