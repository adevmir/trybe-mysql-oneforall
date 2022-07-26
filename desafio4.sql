SELECT u.userName AS usuario,
CASE
    WHEN MAX(dateReproduction) LIKE '2021%'
    THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
    END AS condicao_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.historic AS h
ON u.userID = h.userID
GROUP BY userName
ORDER BY userName;
    