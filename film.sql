create table film(
    code int primary key,
    title varchar(50),
    date_of_distribution date,
    film_description text,
    gender varchar(50),
    note int check(note between 1 and 10)
)