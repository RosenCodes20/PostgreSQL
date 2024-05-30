ALTER TABLE countries_rivers

ADD CONSTRAINT
    countries_rivers_river_id_fk
FOREIGN KEY
    (river_id)
REFERENCES
    rivers(id)
ON
    UPDATE CASCADE,

ADD CONSTRAINT
    countries_rivers_country_code_fk
FOREIGN KEY
    (country_code)
REFERENCES
    countries(country_code)
ON
    UPDATE CASCADE
;