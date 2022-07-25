SELECT 
userName AS usuario,
COUNT(h.musicID) AS qtde_musicas_ouvidas,
ROUND(SUM(duration/60),2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.historic AS h
ON u.userID = h.userID
INNER JOIN SpotifyClone.music AS m
ON m.musicID = h.musicID
GROUP BY u.userName
ORDER BY u.userName;
