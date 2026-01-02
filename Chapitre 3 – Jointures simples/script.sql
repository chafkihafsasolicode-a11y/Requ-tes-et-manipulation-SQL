SELECT a.titre, a.date_pub, u.nom
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id;
SELECT a.titre, u.nom
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id
WHERE u.nom = 'Alice';
SELECT a.titre, u.nom
FROM Article a
LEFT JOIN Utilisateur u ON a.id_utilisateur = u.id;
SELECT a.titre, u.nom, c.contenu
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id
INNER JOIN Commentaire c ON a.id = c.id_article;
