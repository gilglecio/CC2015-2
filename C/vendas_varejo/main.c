#include <stdio.h>
#include <stdlib.h>

struct vendedor {
    int codigo_vendedor;
    char nome[50];
    float salario;
    int ranking_vendas;
    int experiencia_anos;
};

int total_vendedores = 0;
int opcao_menu = 0;

struct vendedor vendedores[] = {0};

struct vendedor salvar_vendedor(struct vendedor vendedor) {

    printf("Digite o código do vendedor: ");
    scanf("%d", &vendedor.codigo_vendedor);

    printf("Digite o nome: ");
    scanf("%s", vendedor.nome);

    printf("Digite o salário: ");
    scanf("%f", &vendedor.salario);

    printf("Digite o ranking de vendas: ");
    scanf("%d", &vendedor.ranking_vendas);

    printf("Digite a experiência (anos): ");
    scanf("%d", &vendedor.experiencia_anos);

    printf("\nOK\n");

    return vendedor;
}

void apagar_vendedor() {
    printf("Digite o #ID do vendedor que deseja apagar:\n");
}

void editar_vendedor() {

    printf("Digite o #ID do vendedor que deseja atualizar:\n");

    int i;

    for (i = 0; i < total_vendedores; i++) {
        printf("%d -> %s\n", i, vendedores[i].nome);
    }

    int vendedor_id;

    scanf("%d", &vendedor_id);

    int j;

    for (j = 0; j < total_vendedores; j++)
    {
        if (vendedor_id == j) {

            printf("Editando o vendedor de %s\n", vendedores[j].nome);

            printf("Digite o código do vendedor: ");
            scanf("%d", &vendedores[j].codigo_vendedor);

            printf("Digite o nome: ");
            scanf("%s", vendedores[j].nome);

            printf("Digite o salário: ");
            scanf("%f", &vendedores[j].salario);

            printf("Digite o ranking de vendas: ");
            scanf("%d", &vendedores[j].ranking_vendas);

            printf("Digite a experiência (anos): ");
            scanf("%d", &vendedores[j].experiencia_anos);
        }
    }
}

void divisor() {
    printf("\n.............................\n");
}

void exibir_vendedor(struct vendedor vendedor, int id) {

    divisor();

    printf("Código: %d\n", vendedor.codigo_vendedor);
    printf("Nome: %s\n", vendedor.nome);
    printf("Salário: %f\n", vendedor.salario);
    printf("Ranking: %d\n", vendedor.ranking_vendas);
    printf("Experiência: %d\n", vendedor.experiencia_anos);

    divisor();
}

void bublesort(struct vendedor vetor[]) {
    
    int i, j, tamanho;

    tamanho = sizeof(vetor);
    
    for (i = 0; i < (tamanho -1); i++) {
        for (j=0; j < (tamanho -(i +1)); j++) {
            if( vetor[j] > vetor[j+1]) {
                int temporario = vetor[j];
                vetor[j] = vetor[j+1];
                vetor[j+1] = temporario;
            }
        } 
    }
}

void vendedor() {

    struct vendedor vendedor;
    printf("\nInforme os dados que se pede:\n\n");
    
    vendedores[total_vendedores++] = salvar_vendedor(vendedor);
}

char menu() {

    int tela;

    printf("\n\nMENU\n\n");

    printf("Digite:\n");

    printf("1 -> Cadastrar vendedor\n");
    printf("2 -> Listar vendedores\n");
    printf("3 -> Editar um vendedor\n");
    printf("4 -> Apagar vendedor:\n");
    printf("5 -> SAIR\n\n");

    scanf("%d", &tela);

    divisor();

    return tela;
}

int main()
{
    printf("\n\n::::: COMPRAS NO VAREJO :::::\n");

    opcao_menu = menu();

    while (opcao_menu != 5) {

        switch(opcao_menu) {
            case 1:
                vendedor();
                break;

             case 2:

                if (total_vendedores > 0) {

                    printf("%d - VENDEDORES CADASTRADOS:\n", total_vendedores);

                    int i;

                    bublesort(&vendedores);

                    for(i = 0; i < total_vendedores; i++) {
                        exibir_vendedor(vendedores[i], i);
                    }
                } else {
                    printf("Não há vendedores cadastrados.\n");
                }

                break;

             case 3:
                if (total_vendedores > 0) {
                    editar_vendedor();
                } else {
                    printf("Não há vendedores cadastrados.\n");
                }
                break;

             case 4:
                if (total_vendedores > 0) {
                    apagar_vendedor();
                } else {
                    printf("Não há vendedores cadastrados.\n");
                }  
                break;

             default:
                printf("Opcao invalida, tente novamente:\n\n");
        }

        opcao_menu = menu();
    }

    system("PAUSE");
    return 0;
}
