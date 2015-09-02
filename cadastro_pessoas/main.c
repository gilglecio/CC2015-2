#include <stdio.h>
#include <stdlib.h>

struct cadastro {
    char nome[50], rg[10], cpf[14], endereco[45], municipio[45], uf[2];
    int idade;
};

struct cadastro pessoas[] = {0};

struct cadastro salvar_pessoa(struct cadastro pessoa) {

    printf("Digite o nome: ");
    scanf("%s", &pessoa.nome);

    printf("Digite o numero do RG: ");
    scanf("%s", &pessoa.rg);

    printf("Digite o numero do cpf: ");
    scanf("%s", &pessoa.cpf);

    printf("Digite a unidade federativa (UF): ");
    scanf("%s", &pessoa.uf);

    printf("Digite o endereco: ");
    scanf("%s", &pessoa.endereco);

    printf("Digite o nome do municipio: ");
    scanf("%s", &pessoa.municipio);

    printf("Digite o nome do idade: ");
    scanf("%d", &pessoa.idade);

    printf("\nOK\n");

    return pessoa;
}

void apagar_pessoa(int indice) {

}

void divisor() {
     printf("\n\n++++++++++++++++++++++++++++++++++++++++++++++++++\n\n");
}

void exibir_pessoa(struct cadastro pessoa) {

     divisor();

     printf("Nome: %s\n", pessoa.nome);
     printf("Idade: %d\n", pessoa.idade);
     printf("RG: %s\n", pessoa.rg);
     printf("CPF: %d\n", pessoa.cpf);
     printf("UF: %s\n", pessoa.uf);
     printf("Endereco: %d\n", pessoa.endereco);
     printf("Municipio: %s\n", pessoa.municipio);

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
     }
}

char menu() {

     char tela;

     printf("\n\nMENU\n\n");

     printf("Digite:\n");

     printf("c -> Cadastrar Pessoas\n");
     printf("l -> Listar Pessoas\n");
     printf("a -> Atualizar uma Pessoa\n");
     printf("d -> Apagar uma Pessoa:\n\n");

     scanf("%s", tela);

     divisor();

     return tela;
}

int main()
{
    printf("SISTEMA\n\n");

    switch(menu()) {
         case 'c':
              cadastro();
              break;

         case 'l':

              printf("LISTA DAS PESSOAS CADASTRADAS:\n\n");

              int i;

              for(i = 0; i < sizeof(pessoas); i++) {
                  exibir_pessoa(pessoas[i]);
              }

              break;

         case 'a':
              break;

         case 'd':
              break;

         default:
              printf("Opcao invalida, tente novamente:\n\n");
    }

    system("PAUSE");
    return 0;
}
