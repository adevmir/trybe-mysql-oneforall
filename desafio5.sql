SELECT
    musicName AS cancao,
    COUNT(h.musicID) AS reproducoes
FROM SpotifyClone.music AS m
INNER JOIN SpotifyClone.historic AS h
    ON m.musicID = h.musicID
GROUP BY h.musicID
ORDER BY reproducoes DESC, m.musicName
LIMIT 2;