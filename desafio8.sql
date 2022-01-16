SELECT artistas.nome AS artista,
album.album as album
FROM SpotifyClone.album AS album
LEFT JOIN SpotifyClone.artistas AS artistas
ON artistas.artista_id = album.artista_id
GROUP BY album.album
ORDER BY album.album;
