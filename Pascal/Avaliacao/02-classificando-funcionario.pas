//////////////////////////////////////////////////////////////////////////////////////////
// Desenvolva um programa que realiza o cadastro de um funcionário,                     //
// deverá conter nome e idade,                                                          //
// com base nesses dados mostre o nome informado ao usuário,                            //
// caso a idade seja maior que 17 mostre “Efetivo”, caso contrario mostre “Estagiário”; //
//////////////////////////////////////////////////////////////////////////////////////////

Program classificando_funcionario;

// Pedir que o usuário informe o nome do funcionário
// Pedir que o usuário informe a idade do funcionário
// Se a idade do funcionário for maior que 17 anos, exibir "Efetivo", do contrário "Estagiário"

var
	nome: string;
	clasificacao: string;
	idade: integer;
	
Begin

	writeln('CLASSIFICA UM FUNCIONÁRIO COM BASE NA IDADE');
	
	writeln('QUAL O NOME DO FUNCIONÁRIO? ');
	read(nome);
	
	writeln('QUAL A IDADE DO FUNCIONÁRIO? ');
	read(idade);

	if (idade > 17) then 
		begin
			clasificacao := 'Efetivo';
		end
	else
		begin
			clasificacao := 'Estagiário';
		end;

	writeln(nome, ' é ', clasificacao);	
	
End.