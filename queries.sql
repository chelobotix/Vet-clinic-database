/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals
WHERE name LIKE '%mon';

SELECT name FROM animals
WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';

SELECT name FROM animals
WHERE neutered = '1' AND escape_attempts < 3;

SELECT date_of_birth FROM animals
WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animals
WHERE weight_kg > 10.5;

SELECT * FROM animals
WHERE neutered = '1';

SELECT * FROM animals
WHERE name NOT LIKE 'Gabumon';

SELECT * FROM animals
WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- SECOND DAY
-- #1
BEGIN;

UPDATE animals
SET species = 'unspecified';

ROLLBACK;

-- #2
BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE species is null;

-- #3
BEGIN;

DELETE FROM animals;

ROLLBACK;

-- #4
BEGIN;

DELETE FROM animals
WHERE date_of_birth > '2022-01-01';

SAVEPOINT DEL_YEAR_2022;

UPDATE animals
SET weight_kg = (weight_kg * -1);

ROLLBACK TO DEL_YEAR_2022;

UPDATE animals
SET weight_kg = (weight_kg * -1)
WHERE weight_kg < 0;

-- How many animals are there?
SELECT COUNT(name) AS total
FROM animals;

-- How many animals have never tried to escape?
SELECT COUNT(name) AS total
FROM animals
WHERE escape_attempts = 0
GROUP BY name;

-- What is the average weight of animals?
SELECT AVG(weight_kg)
FROM animals;

-- Who escapes the most, neutered or not neutered animals?
SELECT neutered, SUM(escape_attempts)
FROM animals
GROUP BY neutered;

-- What is the minimum and maximum weight of each type of animal?
SELECT species, MIN(weight_kg) AS min, MAX(weight_kg) AS max
FROM animals
GROUP BY species;

--What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT species, AVG(escape_attempts)
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;


