/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, '1', 10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Gabumon', '2018-11-15', 2, '1', 8);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Pikachu', '2021-01-07', 1, '0', 15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Devimon', '2017-05-12', 5, '1', 11);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Charmander', '2020-02-08', 0, '0', -11);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Plantmon', '2021-11-15', 2, '1', -5.7);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Squirtle', '1993-04-02', 3, '0', -12.13);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Angemon', '2005-06-12', 1, '1', -45);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Boarmon', '2005-06-07', 7, '1', 20.4);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Blossom', '1998-10-13', 3, '1', 17);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Ditto', '2022-05-14', 4, '1', 22);


-- day3

-- #1

INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);


-- #2
INSERT INTO species (name)
VALUES ('Pokemon'),
('Digimon');

-- #3
BEGIN;

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 1
WHERE name NOT LIKE '%mon';

COMMIT;

-- #4
BEGIN;

UPDATE animals
SET owner_id = 1
WHERE name LIKE 'Agumon';

UPDATE animals
SET owner_id = 2
WHERE name LIKE 'Gabumon' OR name LIKE 'Pikachu';

UPDATE animals
SET owner_id = 3
WHERE name LIKE 'Devimon' OR name LIKE 'Plantmon';

UPDATE animals
SET owner_id = 4
WHERE name LIKE 'Charmander' OR name LIKE 'Squirtle' OR name LIKE 'Blossom';

UPDATE animals
SET owner_id = 5
WHERE name LIKE 'Angemon' OR name LIKE 'Boarmon';

COMMIT;




