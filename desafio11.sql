SELECT 
    musicName AS nome_musica,
    CASE
WHEN musicName LIKE '%Streets' THEN REPLACE(musicName, 'Streets', 'Code Review')
WHEN musicName LIKE '%Her Own' THEN REPLACE(musicName, 'Her Own', 'Trybe')
WHEN musicName LIKE '%Inner Fire' THEN REPLACE(musicName, 'Inner Fire', 'Project')
WHEN musicName LIKE '%Silly' THEN REPLACE(musicName, 'Silly', 'Nice')
WHEN musicName LIKE '%Circus' THEN REPLACE(musicName, 'Circus', 'Pull Request') END AS novo_nome
FROM SpotifyClone.music AS m
WHERE musicName LIKE '%Streets' OR musicName LIKE '%Her Own' OR musicName LIKE '%Inner Fire' OR musicName LIKE '%Silly' OR musicName LIKE '%Circus'
GROUP BY nome_musica
ORDER BY nome_musica;
