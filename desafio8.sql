SELECT 
    ar.artistName AS artista,
    al.albumName AS album
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al
    ON ar.artistID = al.artistID
WHERE ar.artistName = 'Walter Phoenix'
GROUP BY al.albumName
ORDER BY album;