CREATE database football_catalog;

USE football_catalog;

CREATE TABLE footballer(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(150),
    surname varchar(150),
	gender varchar(150),
    birthdate date,
    team varchar(150),
    country varchar(150),
    PRIMARY KEY (id)
);

INSERT INTO footballer VALUES(1, 'Vasya', 'Petrov', 'male', '2001-12-12', 'Panthers', 'Russia');