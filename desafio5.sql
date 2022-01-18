SELECT cancoes.nome AS `cancao`,
COUNT(historico.historico_id) AS `reproducoes`
FROM SpotifyClone.cancoes AS `cancoes`
LEFT JOIN SpotifyClone.historico AS `historico`
ON cancoes.cancao_id = historico.music_id
GROUP BY historico.music_id
ORDER BY `reproducoes` DESC, `cancao` 
LIMIT 2;