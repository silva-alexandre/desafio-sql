
create table loja (
	id_loja int,
	nome VARCHAR(25),
	PRIMARY KEY (id_loja)
);

create table usuario (
	id_loja int,
	id_usuario int,
	username VARCHAR(20),
	nome VARCHAR(84),
	PRIMARY KEY (id_loja, id_usuario)
);

create table tarefa (
	id_loja int,
	id_tarefa int,
	situacao tarefa_situacao NOT NULL,
	data_hora timestamp,
	id_usuario int,
	tipo tarefa_tipo NOT NULL,
	PRIMARY KEY (id_loja, id_tarefa)
	
);

create table ressuprimento(
	id_loja int,
	id_tarefa int,
	id_produto int,
	PRIMARY KEY (id_loja, id_tarefa)
);


create table historico (
	id_loja int,
	id_tarefa int,
	data_hora timestamp,
	tipo historico_tipo not null,
	id_usuario int,
	PRIMARY KEY (id_loja, id_tarefa, data_hora)
);



/*
		Domínios
*/
create DOMAIN tarefa_situacao as SMALLINT
CHECK (VALUE IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10));

/*					Tarefa por Situação 			

	1 - Aberta					2 - Atribuída
	3 - Bloqueada		  		4 - Iniciada
	5 - Finalizada		  		6 - Cancelada pelo sistema
	7 - Anulada			  		8 - Esperando Tarefa
	9 - Esperando Usuário 		10 - Cancelada por não haver estoque
		
*/

create DOMAIN tarefa_tipo as SMALLINT
CHECK (VALUE IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10));

		/* 			Tarefas por tipo

			1 - Ressuprimento   		2 - Check-in
			3 - Transferência 	 		4 - Auditoria
			5 - Vincular			 	6 - Etiqueta
			7 - Etiqueta por local 		8 - Inventário
			9 - Recebimento 			10 - Questionário
		*/

create DOMAIN historico_tipo as SMALLINT
CHECK (VALUE IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19));

		/* 
			1 - Solicitação			2 - Atribuição
			3 - Desatribuição		4 - Prioridade
			5 - Hierarquia			6 - Início
			7 - Finalização			8 - Bloqueio
			9 - Desbloqueio			10 - Prioridade Manual
			11 - Cancelamento		12 - Analuamento
			13 - Esperando Tarefa	14 - Retomada
			15 - Esperando Usuário	16 - Reatribuição
			17 - Fila				18 - Execução Tarefa
									19 - Anexar Imagem
		*/