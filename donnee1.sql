CREATE DATABASE FILMS;

CREATE TABLE film (
    code INT PRIMARY KEY,
    titre VARCHAR(50),
    annee_de_sortie DATE,
    description TEXT,
    note INT CHECK (note >= 0 AND note <= 10),
    genre VARCHAR(50)
);

INSERT INTO film 
VALUES (1, 'La famille Adams' ,1991, "Ils sont étranges, mystérieux et terrifiants. C'est la famille Addams. Une famille aux penchants morbides qui pense pourtant être tout à fait normale ! ",8, 'horreur')
SELECT * FROM FILM 
