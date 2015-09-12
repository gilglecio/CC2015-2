algoritmo "TiposDeTriangulos"

// Autores: Gilglécio Santos e Leidiane Lima.

// Declarar três variáveis inteiras positivas, (A, B e C)
// que armazenarár as medidas dos três lados do triângulo;
// Pedir ao usuário que informe as três medidas do triângulo;
// Validar as medidas passadas;
// Se quaisquer da três condições forem falsas A < B+C e B < A+C e C < A+B, 
// informar que as medidas não formam um triângulo;
// Classificando o triângulo o triângulo (equilátero, isósceles e escaleno);
// Se A = B e B = C, informar que que trata de um triângulo Equilátero;
// Se A = B ou A = C ou B = C, informar que se trata de um triângulo Isósceles;
// Se A for diferente de B e B for diferente de C, 
// informar que se trata de um triângulo Escaleno;

var
	A, B, C: real
	triangulo, equilatero, isosceles, escaleno: logico

// Esta função retornará VERDADEIRO se as medias passadas formar um triângulo
funcao trianguloValido(A, B, C:real): logico
inicio
	retorne (A < B+C) e (B < A+C) e (C < A+B)
fimfuncao

// Esta função retornará VERDADEIRO se as medias passadas formar um triângulo equilátero 
funcao trianguloEquilatero(A, B, C:real): logico
inicio
	retorne (A = B) e (B = C)
fimfuncao

// Esta função retornará VERDADEIRO se as medias passadas formar um triângulo isósceles
funcao trianguloIsosceles(A, B, C:real): logico
inicio
	retorne (A = B) ou (A = C) ou (B = C)
fimfuncao

// Esta função retornará VERDADEIRO se as medias passadas formar um triângulo escaleno
funcao trianguloEscaleno(A, B, C:real): logico
inicio
	retorne (A <> B) e (B <> C)
fimfuncao

inicio
	
	// Seção de comandos

	// Lendo a medida dos três lados do triângulo
	escreval("Infome as três medidas do triângulo: ")
	leia(A, B, C)

	triangulo <- trianguloValido(A, B, C)

	// Verificando se as medidas é de um triângulo válido
	se triangulo entao

		// As variáveis são preenchidas com os valores lógicos retornados
		// pelas respectivas funções 
		equilatero <- trianguloEquilatero(A, B, C)
		isosceles  <- trianguloIsosceles(A, B, C)
		escaleno   <- trianguloEscaleno(A, B, C)

		// Estrutura de escolha que procura um caso que seja VERDADEIRO
		// e informa ao usuário a que tipo de triângulo as medidas represetam 
		escolha VERDADEIRO
			caso equilatero
				escreval("Triângulo EQUILÁTERO")

			caso isosceles
				escreval("Triângulo ISÓSCELES")

			caso escaleno
				escreval("Triângulo ESCALENO")
		fimescolha

	senao
		escreval("As medidas informada não formam um triângulo.")
	fimse 

fimalgoritmo

