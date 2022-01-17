SELECT 
usuario.nome AS usuario, 
COUNT(historico.usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(cancoes.duracao / 60), 2) AS total_minutos
FROM SpotifyClone.usuario as usuario
LEFT JOIN SpotifyClone.historico as historico
ON usuario.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cancoes as cancoes
ON cancoes.cancao_id = historico.music_id
GROUP BY usuario.nome
ORDER BY usuario.nome;