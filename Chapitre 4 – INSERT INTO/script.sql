CREATE DATABASE Tuto;
USE Tuto;
CREATE TABLE Utilisateurs (
id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL
);
CREATE TABLE Articles (
id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(200) NOT NULL,
    contenu TEXT NOT NULL,
    date_publication DATE NOT NULL,
    auteur_id INT,
    FOREIGN KEY (auteur_id) REFERENCES Utilisateurs(id)
)
INSERT INTO Utilisateur (nom, email, mot_de_passe)
VALUES 
  ('Bob', 'bob@test.com', 'passbob'),
  ('Charlie', 'charlie@test.com', 'passcharlie');
SELECT * FROM Utilisateur;
SELECT * FROM Article;
