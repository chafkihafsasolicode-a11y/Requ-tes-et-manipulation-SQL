SELECT * FROM Article;
SELECT titre, contenu FROM Article;

SELECT titre, date_pub
FROM Article
WHERE date_pub >= '2024-01-01';

SELECT titre, date_pub
FROM Article
ORDER BY date_pub DESC;


SELECT titre
FROM Article
ORDER BY date_pub DESC
LIMIT 5;
