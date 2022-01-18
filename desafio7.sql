SELECT artistas.nome AS `artista`,
album.album as `album`,
COUNT(usuario_artista.usuario_id) AS `seguidores`
FROM SpotifyClone.album AS `album`
LEFT JOIN SpotifyClone.artistas AS `artistas`
ON artistas.artista_id = album.artista_id
LEFT JOIN SpotifyClone.usuario_artista AS `usuario_artista`
ON usuario_artista.artista_id = album.artista_id
GROUP BY album.album
ORDER BY `seguidores` DESC, `artista`, `album`;
