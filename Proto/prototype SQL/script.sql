USE Gestion_projets;
INSERT INTO Employe VALUES
(1, 'EL MANSOURI', 'Youssef', 'Chef de projet'),
(2, 'ALAMI', 'Ahmed', 'Développeur'),
(3, 'EL FASSI', 'Sara', 'Développeur');


INSERT INTO Projet (idProjet, titre, dateDeb, dateFin, etat, idChef)
VALUES
(123, 'Application RH', '2025-01-10', '2025-12-30','en cours', 1),
(235, 'Site E-commerce Beauty', '2025-03-01', '2025-11-15','terminée', 2),
(98, 'CRM Client', '2024-09-01', '2026-05-20','annulé', 3);


INSERT INTO Taches (idTache, description, etat, priorite, idProjet, idEmploye)
VALUES 
(98, 'Développement du backend', 'En cours', 2, 123,1),
(99, 'Design UI', 'Terminée', 1, 98,3),
(100, 'Test final', 'Non commencée',2, 235,2),
(101, 'Déploiement', 'Non commencée',3, 98,3);


--1.Afficher tous les projets (titre,dateDeb,dateFin);
SELECT titre, dateDeb, dateFin FROM Projet;

--2.Afficher les employés dont le nom commence par 'EL';
SELECT * FROM Employe WHERE nom LIKE 'EL%';

--3.Afficher les taches du projet Num 235 ordonnées par priorité par ordre croissant;
SELECT * FROM Tache WHERE idProjet = 235 ORDER BY priorite ASC;


--4.Afficher les projets qui doivent se terminer avant Avril 2026;
SELECT * FROM Projet WHERE dateFin < '2026-04-01';


--5.Afficher tous les employés développeurs;
SELECT * FROM Employe WHERE poste = 'Développeur';


--6.Afficher les taches terminées du projet de code 98;
SELECT * FROM Tache WHERE idProjet = 98 AND etat = 'Terminée';


--7.Afficher pour les projets avec leur responsables(titre,dateDéb,dateFin,nomChef,prénomChef);
SELECT P.titre, P.dateDeb, P.dateFin, E.nom AS nomChef, E.prenom AS prenomChef
FROM Projet P
JOIN Employe E ON P.idChef = E.idEmp;


--8.Afficher les taches du projet 'Site E-commerce Beauty';
SELECT T.*
FROM Tache T
JOIN Projet P ON T.idProjet = P.idProjet
WHERE P.titre = 'Site E-commerce Beauty';


--9.Afficher le nombre de taches 'terminées' du projet  'Site E-commerce Beauty';
SELECT COUNT(*) AS nbTachesTerminees
FROM Tache T
JOIN Projet P ON T.idProjet = P.idProjet
WHERE P.titre = 'Site E-commerce Beauty' AND T.etat = 'Terminée';


--10.Combien de projets ont été terminé dans l'année 2025;
SELECT COUNT(*) AS nbProjets2025
FROM Projet
WHERE YEAR(dateFin) = 2025;


UPDATE

--1.Modifier la date de fin du projet 235 par "16/05/2026";
UPDATE Projet
SET dateFin = '2026-05-16'
WHERE idProjet = 235;


--2.Modifier l'état de la tache 98 par "Terminée";
UPDATE Tache
SET etat = 'Terminée'
WHERE idTache = 98;


DELETE

--1.Supprimer les taches "non commencées" du projet 123;
DELETE FROM Tache
WHERE idProjet = 123 AND etat = 'Non commencée';

--2.Supprimer l'employé "ALAMI AHMED";
DELETE FROM Employe
WHERE nom = 'ALAMI' AND prenom = 'Ahmed';
