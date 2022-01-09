SELECT 
usuario.nome AS usuario, 
COUNT(historico.usuario_id) AS qtde_musicas_ouvidas,
SUM(ROUND(cancoes.duracao / 60, 2)) AS total_minutos
FROM spotifyclone.usuario as usuario
LEFT JOIN spotifyclone.historico as historico
ON usuario.usuario_id = historico.usuario_id
INNER JOIN spotifyclone.cancoes as cancoes
ON cancoes.nome = historico.historico_de_reproducao
GROUP BY usuario.nome
ORDER BY usuario.nome;