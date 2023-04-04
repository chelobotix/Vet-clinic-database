/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    name varchar(100)
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BIT NOT NULL,
    weight_kg DECIMAL NOT NULL
);

ALTER TABLE animals
ADD species varchar(255);



