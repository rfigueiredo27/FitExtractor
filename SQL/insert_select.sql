INSERT INTO atividades (id_usuario,nome_usuario, id_app, nome_app, id_atividade_fitrank, 
modalidade, desc_atividade, duracao_decimal, distancia, duracao, velocidade_media,
ritmo_medio, calorias, data_atividade, horario, id_periodo, desc_periodo, url
)
SELECT id_usuario,nome_usuario, id_app, nome_app, id_atividade, 
modalidade, desc_atividade, duracao_decimal, distancia, duracao, velocidade_media,
ritmo_medio, caloria_aproximada, data_publicacao, horario, id_periodo, desc_periodo, url_atividade
 FROM bd_atividades order by data_publicacao;
 
commit;

select * from atividades;
truncate table atividades;
SELECT * FROM bd_atividades;

select * from post_fitness order by data_publicacao desc;

