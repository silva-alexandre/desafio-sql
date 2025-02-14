/* 1. Consulta contedo a quantidade de tarefas de ressuprimentos
solicitadas por dia  */

SELECT DATE(data_hora) AS dia, COUNT(*) AS total_tarefas
FROM tarefa
WHERE tipo = 1
GROUP BY DATE(data_hora)
ORDER BY dia;

/* 2. Consulta contedo a quantidade de tarefas de ressuprimentos
por situação por dia */

SELECT DATE(t.data_hora) AS dia, t.situacao, COUNT(*) AS total_tarefas
FROM tarefa t
WHERE t.tipo = 1
GROUP BY DATE(t.data_hora), t.situacao
ORDER BY dia, t.situacao;

/* 3. Consulta contedo a quantidade de tarefas por dia por usuário e
a quantidade disinta de produtos ressuprimentos */

SELECT DATE(t.data_hora) AS dia, t.id_usuario, COUNT(*) AS total_tarefa, COUNT(DISTINCT r.id_produto) AS qtd_produto
FROM tarefa t
LEFT JOIN ressuprimento r ON t.id_loja = r.id_loja AND t.id_tarefa = r.id_tarefa
WHERE t.tipo = 1
GROUP BY DATE(t.data_hora), t.id_usuario
ORDER BY dia, t.id_usuario;

/* 4. Consulta com todos os dados da primeira e da ultima tarefa executada,
por tipo e por dia. */

SELECT id_loja,
       id_usuario,
       tipo,
       DATE(data_hora) AS dia,
       MIN(data_hora) AS primeira_tarefa,
       MAX(data_hora) AS ultima_tarefa
FROM tarefa
GROUP BY id_loja, id_usuario, tipo, DATE(data_hora)
ORDER BY dia, id_loja, id_usuario, tipo;
