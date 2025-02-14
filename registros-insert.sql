INSERT INTO usuario (id_loja, id_usuario, username, nome) 
VALUES 
	(1, 1, 'andre','André Silva'),
	(1, 2, 'luiz','Luiz André'),
	(1, 3, 'alexandre', 'Alexandre'),
	(2, 4, 'silva','Silva');

/* 
			Tarefas por tipo

	1 - Ressuprimento   		2 - Check-in
	3 - Transferência 	 		4 - Auditoria
	5 - Vincular			 	6 - Etiqueta
	7 - Etiqueta por local 		8 - Inventário
	9 - Recebimento 			10 - Questionário
*/

/*		Tarefa por Situação 			

	1 - Aberta					2 - Atribuída
	3 - Bloqueada		  		4 - Iniciada
	5 - Finalizada		  		6 - Cancelada pelo sistema
	7 - Anulada			  		8 - Esperando Tarefa
	9 - Esperando Usuário 		10 - Cancelada por não haver estoque

*/

INSERT INTO tarefa (id_loja, id_tarefa, situacao, data_hora, id_usuario, tipo) /*ID_USUARIO 1*/
VALUES 
	(1, 1, 1, '2025-02-01 08:10:00', 1, 1),
	(1, 2, 1, '2025-02-01 09:00:00', 1, 1),

	(1, 3, 1, '2025-02-01 09:10:00', 1, 1),
	(1, 4, 1, '2025-02-01 10:00:00', 1, 1),

	(1, 5, 5, '2025-02-01 11:10:00', 1, 1),
	(1, 6, 5, '2025-02-01 12:00:00', 1, 1),
	
		/* Tarefa de vínculo */

	(1, 7, 1, '2025-02-01 15:00:00', 1, 5),
	(1, 8, 1, '2025-02-01 16:00:00', 1, 5);