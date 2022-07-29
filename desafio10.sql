SELECT 
    m.musicName AS nome,
    COUNT(h.musicID) AS reproducoes
FROM SpotifyClone.music AS m
INNER JOIN SpotifyClone.historic AS h
    ON m.musicID = h.musicID
INNER JOIN SpotifyClone.users AS u
    ON u.userID = h.userID
WHERE u.planCode = 1 OR u.planCode = 3
GROUP BY nome
ORDER BY nome;