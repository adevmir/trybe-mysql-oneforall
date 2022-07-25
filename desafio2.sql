SELECT (SELECT COUNT (music.musicID) FROM SpotifyClone.music) AS cancoes,
(SELECT COUNT (artist.artistID)FROM SpotifyClone.artist)  AS artistas,
(SELECT COUNT (album.albumID) FROM SpotifyClone.album) AS albuns;