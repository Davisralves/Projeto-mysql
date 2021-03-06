SELECT FORMAT(MIN(plano.valor), 2) AS faturamento_minimo,
MAX(plano.valor) AS faturamento_maximo,
ROUND(AVG(plano.valor), 2) AS faturamento_medio,
ROUND(SUM(plano.valor), 2) AS faturamento_total
FROM SpotifyClone.plano AS plano
RIGHT JOIN SpotifyClone.usuario AS usuario
ON plano.plano_id = usuario.plano_id;