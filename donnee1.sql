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
VALUES (1, 'La famille Adams' ,1991, "Ils sont étranges, mystérieux et terrifiants. C'est la famille Addams. Une famille aux penchants morbides qui pense pourtant être tout à fait normale ! ",8, 'horreur');
SELECT * FROM film ORDER BY note DESC;
SELECT * FROM film WHERE note>=5 AND note<=10;

CREATE TABLE actor (
    name VARCHAR(50),
    pseudo_name VARCHAR(50),
    bithday DATE,
    address VARCHAR(),
    contact int(9)
)

UPDATE film SET titre="Fureur de vaincre", note=10 WHERE code=1;

\d nom_de_la_table : afficher la nom_de_la_table
ALTER TABLE table_name ALTER TABLE COLUMN column_name [SET DATA] TYPE new_type;


UPDATE film SET note=3 WHERE code=1; mettre à jour une valeur dans un table

SELECT * FROM film WHERE titre LIKE 'The%'; afficher les titres commençant pas 'the';

Get help:

=> \help

List all databases:

=> \l

Connect to a particular database:

=> \c database

List all users and their permission levels:

=> \du

Show summary information about all tables in the current database:

=> \dt

Exit/quit the psql shell:

=> \q

or press Ctrl+d.

There are of course many more meta-commands, but these should help you get started. To see all meta-commands run:

=> \?

