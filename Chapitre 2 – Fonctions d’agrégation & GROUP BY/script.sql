SELECT COUNT(*) AS total_articles FROM Article;
SELECT MAX(date_pub) AS derniere_publication FROM Article;
 SELECT id_utilisateur, COUNT(*) AS nb_articles
FROM Article
GROUP BY id_utilisateur;
SELECT id_utilisateur, COUNT(*) AS nb_articles
FROM Article
GROUP BY id_utilisateur
HAVING COUNT(*) >= 3;
SELECT AVG(nb_vues) AS moyenne_vues FROM Article;
