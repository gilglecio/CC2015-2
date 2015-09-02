#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*
    Enunciado:
    Contrua um algorítimo para calcular as raizes de uma equação do 2° grau
    (ax²+bx+c), sendo que os valoes a, b e c serão fornecidos pelo usuário.
    (Considere que a equação possui duas raizes reais)
    Formula:
        delta = b²-4ac,
        x1 = -b + raiz(delta)/(2a)
        x2 = -b - raiz(delta)/(2a)
*/

/*
    Algorítimo:
    01 - Perguntar ao usuário e armazenar o vlaor de A;
    02 - Perguntar ao usuário e armazenar o valor de B;
    03 - Perguntar ao usuário e armazenar o valor de C;
    04 - Calcular o valor de delta
    05 - Validar o valor de delta
            Se delta for igual a zero, calcular o valor de X e exibir para o usuário
            Se delta for menor que zero, dizer ao usuário que não há raiz real
            Se deltar for maior que zero, exibir a solução com as duas raizes reais
    06 - Fim
*/

int valor_a, valor_b, valor_c;

int main()
{
    printf("EQUACAO DO 2° GRAU\n\n");

    printf("Data e equacao ax²+bx+c, informe os valores de A, B e C\n");

    printf("Valor de A: ");
    scanf("%d", &valor_a);

    printf("Valor de B: ");
    scanf("%d", &valor_b);

    printf("Valor de C: ");
    scanf("%d", &valor_c);

    float delta = (valor_b * valor_b) - (4 * valor_a * valor_c);

    if (delta == 0) {
        // duas raizes iguais

        int valor_x = (-valor_b + sqrt(delta)) / (2 * valor_a);

        printf("\nValor de X: %d", valor_x);

    } else if (delta < 0) {
        // não existe raiz real
        printf("\nNao ha raizes reais para a equacao.");
    } else {
        // duas raizes reais
        int valor_x1 = (-valor_b + sqrt(delta)) / (2 * valor_a);
        int valor_x2 = (-valor_b - sqrt(delta)) / (2 * valor_a);

        printf("\nSolucao: [%d,%d].", valor_x1, valor_x2);
    }

    return 0;
}
