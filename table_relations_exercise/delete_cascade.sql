ALTER TABLE countries

ADD CONSTRAINT
    countries_continent_code_fk
FOREIGN KEY
    (continent_code)
REFERENCES
    continents(continent_code)
ON
    DELETE CASCADE ,

ADD CONSTRAINT
    countries_currency_code_fk
FOREIGN KEY
    (currency_code)
REFERENCES
    currencies(currency_code)
ON
    DELETE CASCADE;

DELETE FROM
           continents
WHERE id = 3;