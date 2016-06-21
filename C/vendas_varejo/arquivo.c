#include <stdio.h>

struct vendedor {
    char nome;
    int codigo;
    float salario;
    int ranking;
    int experiencia;
};

struct vendedor vendedores[] = {0};

int main(void)
{
    char url[]="arquivo.txt";
    char ch;
    FILE *arq;
    int i = 0;
    int c = 0;
    int l = 0;
    
    arq = fopen(url, "r");
    
    if(arq == NULL) {
        printf("Erro, nao foi possivel abrir o arquivo\n");
    } else {
        while( (ch=fgetc(arq))!= EOF ) {

            switch (c) {
                case 0: vendedores[l].nome = ch; break;
                case 1: vendedores[l].codigo = ch; break;
                case 2: vendedores[l].salario = ch; break;
                case 3: vendedores[l].ranking = ch; break;
                case 4: vendedores[l].experiencia = ch; break;
            }

            c++;

            if ((i%5) == 0) {
                c = 0;
                l++;
            }

            i++;
        }
    }
    
    fclose(arq);
    
    return 0;
}
