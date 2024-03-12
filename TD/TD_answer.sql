# TD
a. How to delete a table ? 
```
    drop table table_name;
```
b. How to delete a database ?
```
    drop database database_name;
```
1. Create the table actor : 
CREATE TABLE actor (
    id_actor INTEGER PRIMARY KEY NOT NULL,
    name_actor VARCHAR(150),
    firstname_actor VARCHAR(150),
    birthday DATE,
    gender VARCHAR(1) CHECK(gender IN ('f', 'm', 'a')),
    bio TEXT,
    date_add DATE DEFAULT GETDATE()
);

2. Insert five actor :
    -- Daniel Radcliffe :
    --     Nom : Radcliffe
    --     Prénom : Daniel
    --     Date de naissance : 23 juillet 1989
    --     Genre : m
    --     Biographie : Acteur britannique surtout connu pour son rôle de Harry Potter dans la série de films du même nom.

    -- Keira Knightley :
    --     Nom : Knightley
    --     Prénom : Keira
    --     Date de naissance : 26 mars 1985
    --     Genre : f
    --     Biographie : Actrice britannique connue pour ses rôles dans des films comme "Pirates des Caraïbes" et "Orgueil et Préjugés".

    -- Javier Bardem :
    --     Nom : Bardem
    --     Prénom : Javier
    --     Date de naissance : 1er mars 1969
    --     Genre : m
    --     Biographie : Acteur espagnol lauréat d'un Oscar, connu pour ses performances dans des films tels que "No Country for Old Men" et "Biutiful".

    -- Ralph Fiennes :
    --     Nom : Fiennes
    --     Prénom : Ralph
    --     Date de naissance : 22 décembre 1962
    --     Genre : m
    --     Biographie : Acteur britannique célèbre pour ses rôles dans des films tels que "Schindler's List", "The English Patient" et la série de films "Harry Potter".

    -- Louis d'Inverno :
    --     Nom : d'Inverno
    --     Prénom : Louis
    --     Date de naissance : 10 mai 1980
    --     Genre : m
    --     Biographie : Acteur français connu pour ses performances dans des films d'art et d'essai, ainsi que pour ses rôles dans des pièces de théâtre classiques.

3. Louis D'Inverno : 
    -- just add an other ' near the current "'"
4. Show the bio content the word man case sensible : 
    select bio from actor like'%man%''

5. case insensible :
    select bio from actor ilike'%man%''

6. show the actor who have 'jeune' and 'europe' in his bio
    select * from actor where bio like'%jeune%' and bio like '%europe%'

7. Show the 1 youngest actor
    select * from actor order by birthday desc limit 1;

8. Show the 3 oldest actors
    select * from actor order by birthday asc limit 3;

9. show the name, the firstname, the birthday of all actors
    select name_actor, firstname_actor, birthday from actor;

10. show the name, the firstname, the age of all actors
    select name_actor, firstname_actor, age(birthday) as age from actor;

11. Show all actors who celebrate his birthday on march
    select * from actor where extract(month from birthday)=3;

12. Show the name, the firstanme, the age of the actors more than 30 years
    select name_actor, firstname_actor, age(birthday) as age from actor where age(birthday)>interval '30 years';

13. Show the list of the actor who was added today
    select * from actor where date_add=current_date;





II- Table producteur

create table productors (
    id_productor int not null primary key,
    name_productor varchar(150),
    city varchar(150)
)

1. rename city to country
    alter table productors rename column city to country

2. add column e-mail
    alter table productors add email varchar(150)

3. add new column tel
    alter table productors add tel integer(10)

4. Change data type :
    alter table productors alter column name_productor type text;

5. Delete column
    alter table productors drop column tel;

6. Rename 'productors' by 'realisators' : 
    alter table productors rename to realisator;

7. Rename 'database' films to 'netflix_hei' : 
    alter database films rename to netflix_hei;