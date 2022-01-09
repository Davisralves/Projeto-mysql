SELECT 
COUNT(DISTINCT cancoes.cancao_id) AS cancoes,
COUNT(DISTINCT artistas.artista_id) AS artistas, 
COUNT(DISTINCT albuns.album_id) AS albuns
FROM SpotifyClone.cancoes AS cancoes
INNER JOIN SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.album as albuns;
