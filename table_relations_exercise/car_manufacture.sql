CREATE TABLE manufacturers (
    id SERIAL PRIMARY KEY NOT NULL ,
    name VARCHAR(50)
)
;

INSERT INTO manufacturers (name)
VALUES ('BMW'),
       ('Tesla'),
       ('Lada')
;

CREATE TABLE models (
    id INT GENERATED ALWAYS AS IDENTITY (START 1000 INCREMENT BY 1) PRIMARY KEY,
    model_name VARCHAR(50),
    manufacturer_id INT,
    CONSTRAINT models_manufacturer_id_pk
        FOREIGN KEY (manufacturer_id)
            REFERENCES manufacturers(id)
)
;

INSERT INTO models(model_name, manufacturer_id)
VALUES ('X1', 1),
       ('i6', 1),
       ('Model S', 2),
       ('Model X', 2),
       ('Model 3', 2),
       ('Nova', 3)
;

CREATE TABLE production_years (
    id SERIAL PRIMARY KEY NOT NULL,
    established_on DATE,
    manufacturer_id INT,
    CONSTRAINT production_years_manufacturer_id_fk
        FOREIGN KEY (manufacturer_id)
            REFERENCES manufacturers(id)
)
;

INSERT INTO production_years (established_on, manufacturer_id)
VALUES ('1916-03-01', 1),
       ('2003-01-01', 2),
       ('1966-05-01', 3)
;