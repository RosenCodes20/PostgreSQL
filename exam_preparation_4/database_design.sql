CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    address VARCHAR(50)
)
;

CREATE TABLE animal_types (
    id SERIAL PRIMARY KEY,
    animal_type VARCHAR(30) NOT NULL
)
;

CREATE TABLE cages (
    id SERIAL PRIMARY KEY,
    animal_type_id INT NOT NULL REFERENCES animal_types ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    birthdate DATE NOT NULL,
    owner_id INT REFERENCES owners ON DELETE CASCADE ON UPDATE CASCADE,
    animal_type_id INT NOT NULL REFERENCES animal_types ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE volunteers_departments (
    id SERIAL PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
)
;

CREATE TABLE volunteers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    address VARCHAR(50),
    animal_id INT REFERENCES animals ON DELETE CASCADE ON UPDATE CASCADE,
    department_id INT NOT NULL REFERENCES volunteers_departments ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE animals_cages (
    cage_id INT NOT NULL REFERENCES cages ON DELETE CASCADE ON UPDATE CASCADE,
    animal_id INT NOT NULL REFERENCES animals ON DELETE CASCADE ON UPDATE CASCADE
)
;