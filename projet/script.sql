--1. Afficher le nombre de tâches par projet

SELECT P.nom, COUNT(T.id) AS nbTaches
FROM Projet P
LEFT JOIN Taches T ON P.id = T.idProjet
GROUP BY P.id, P.nom;

--2. Afficher la durée de chaque projet en jours

SELECT nom, DATEDIFF(dateFin, dateDebut) AS duree_en_jours
FROM Projet;

--3. Afficher les tâches en retard

SELECT T.*
FROM Taches T
WHERE T.dateLimite < CURDATE() AND T.etat!= 'terminé';

--4. Afficher le nombre de projets par employé

SELECT E.nom, E.prenom, COUNT(P.id) AS nbProjets
FROM Employeur E
LEFT JOIN Projet P ON E.id = P.idChefprojet
GROUP BY E.id, E.nom, E.prenom;


--5. Afficher l'employé qui a réalisé le plus grand nombre de tâches

SELECT E.nom, E.prenom, COUNT(T.id) AS nbTaches
FROM Employeur E
JOIN Taches T ON E.id = T.idEmploye
GROUP BY E.id, E.nom, E.prenom
ORDER BY nbTaches DESC
LIMIT 1;

--6. Afficher la dernière tâche ajoutée pour chaque projet

SELECT T1.*
FROM Taches T1
JOIN (
    SELECT idProjet, MAX(id) AS maxId
    FROM Taches
    GROUP BY idProjet
) T2 ON T1.id = T2.maxId;
