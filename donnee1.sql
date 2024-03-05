CREATE DATABASE FILMS;

CREATE TABLE film (
    code INT PRIMARY KEY,
    titre VARCHAR(50),
    annee_de_sortie DATE,
    description TEXT,
    note INT CHECK (note >= 0 AND note <= 10),
    genre VARCHAR(50)
);

