SELECT 
COUNT(DISTINCT cancoes.cancao_id) AS cancoes,
COUNT(DISTINCT artistas.artista_id) AS artistas, 
COUNT(DISTINCT albuns.album_id) AS albuns
FROM spotifyclone.cancoes AS cancoes
INNER JOIN spotifyclone.artistas AS artistas
INNER JOIN spotifyclone.album as albuns;
