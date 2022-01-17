SELECT cancoes.nome AS nome,
COUNT(historico.music_id) AS reproducoes
FROM SpotifyClone.cancoes AS cancoes
LEFT JOIN SpotifyClone.historico as historico
ON cancoes.cancao_id = historico.music_id
LEFT JOIN SpotifyClone.usuario
ON historico.usuario_id = usuario.usuario_id
WHERE usuario.plano_id = 1 OR usuario.plano_id = 4
GROUP BY historico.music_id
ORDER BY cancoes.nome;