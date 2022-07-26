SELECT 
    artistName AS artista,
    albumName AS album,
    COUNT(f.artistID) AS seguidores
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al
    ON ar.artistID = al.artistID
INNER JOIN SpotifyClone.follows AS f
    ON ar.artistID = f.artistID
GROUP BY albumName, artistName
ORDER BY seguidores DESC, artista, album;
