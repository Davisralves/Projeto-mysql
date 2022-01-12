SELECT 
usuario.nome AS usuario, 
COUNT(historico.usuario_id) AS qtde_musicas_ouvidas,
SUM(FLOOR(cancoes.duracao / 60, 2)) AS total_minutos
FROM SpotifyClone.usuario as usuario
LEFT JOIN SpotifyClone.historico as historico
ON usuario.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cancoes as cancoes
ON cancoes.nome = historico.historico_de_reproducao
GROUP BY usuario.nome
ORDER BY usuario.nome;