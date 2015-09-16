#include <stdio.h>
#include <stdlib.h>

struct cadastro {
    char nome[50]; //, rg[10], cpf[14], endereco[45], municipio[45], uf[2];
    char idade[2];
};

int total_pessoas = 0;
int opcao_menu = 0;

struct cadastro pessoas[] = {0};

struct cadastro salvar_pessoa(struct cadastro pessoa) {

    printf("Digite o nome: ");
    scanf("%s", pessoa.nome);

    // printf("Digite o numero do RG: ");
    // scanf("%s", pessoa.rg);

    // printf("Digite o numero do cpf: ");
    // scanf("%s", pessoa.cpf);

    // printf("Digite a unidade federativa (UF): ");
    // scanf("%s", pessoa.uf);

    // printf("Digite o endereco: ");
    // scanf("%s", pessoa.endereco);

    // printf("Digite o nome do municipio: ");
    // scanf("%s", pessoa.municipio);

    printf("Digite o nome do idade: ");
    scanf("%s", pessoa.idade);

    printf("\nOK\n");

    return pessoa;
}

void apagar_pessoa() {
    printf("Digite o #ID da pessoa que deseja apagar:\n");
}

void editar_pessoa() {

    printf("Digite o #ID da pessoa que deseja atualizar:\n");

    int i;

    for (i = 0; i < total_pessoas; i++) {
        printf("%d -> %s\n", i, pessoas[i].nome);
    }

    int pessoa_id;

    scanf("%d", &pessoa_id);

    int j;

    for (j = 0; j < total_pessoas; j++)
    {
        if (pessoa_id == j) {

            printf("Editando o cadastro de %s\n", pessoas[j].nome);

            printf("Nome: ");
            scanf("%s", pessoas[j].nome);

            printf("Idade: ");
            scanf("%s", pessoas[j].idade);
        }
    }
}

void divisor() {
    printf("\n.............................\n");
}

void exibir_pessoa(struct cadastro pessoa, int id) {

    divisor();

    printf("#ID: %i\n", id);
    printf("Nome: %s\n", pessoa.nome);
    printf("Idade: %s", pessoa.idade);
    // printf("RG: %s\n", pessoa.rg);
    // printf("CPF: %s\n", pessoa.cpf);
    // printf("UF: %s\n", pessoa.uf);
    // printf("Endereco: %s\n", pessoa.endereco);
    // printf("Municipio: %s\n", pessoa.municipio);

    divisor();
}

void cadastro() {

    int quantidade;

    printf("Quantas pessoas deseja cadastrar? ");
    scanf("%d", &quantidade);

    int i;

    struct cadastro pessoa;

    for(i = 0; i < quantidade; i++) {
        printf("\nCadastro da pessoa #%d:\n\n", i + 1);
        pessoas[i] = salvar_pessoa(pessoa);
        total_pessoas++;
    }
}

char menu() {

    int tela;

    printf("\n\nMENU\n\n");

    printf("Digite:\n");

    printf("1 -> Cadastrar Pessoas\n");
    printf("2 -> Listar Pessoas\n");
    printf("3 -> Atualizar uma Pessoa\n");
    printf("4 -> Apagar uma Pessoa:\n");
    printf("5 -> SAIR\n\n");

    scanf("%d", &tela);

    divisor();

    return tela;
}

int main()
{
    printf("\n\n::::: CADASTRO DE PESSOAS :::::\n");

    opcao_menu = menu();

    while (opcao_menu != 5) {

        switch(opcao_menu) {
            case 1:
                cadastro();
                break;

             case 2:

                if (total_pessoas > 0) {

                    printf("LISTA DAS PESSOAS CADASTRADAS (%d):\n\n", total_pessoas);

                    int i;

                    for(i = 0; i < total_pessoas; i++) {
                        exibir_pessoa(pessoas[i], i);
                    }
                } else {
                    printf("Não há pessoas cadastradas.\n");
                }

                break;

             case 3:
                if (total_pessoas > 0) {
                    editar_pessoa();
                } else {
                    printf("Não há pessoas cadastradas.\n");
                }
                break;

             case 4:
                if (total_pessoas > 0) {
                    apagar_pessoa();
                } else {
                    printf("Não há pessoas cadastradas.\n");
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
