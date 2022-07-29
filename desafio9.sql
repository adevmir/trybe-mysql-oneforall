SELECT 
    COUNT(h.userID) AS quantidade_musicas_no_historico
FROM SpotifyClone.historic AS h
INNER JOIN SpotifyClone.users AS u
    ON h.userID = u.userID
WHERE u.userName = 'Bill';