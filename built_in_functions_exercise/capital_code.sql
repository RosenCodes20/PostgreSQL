ALTER TABLE
        countries
ADD COLUMN capital_code varchar(200);

UPDATE countries
SET capital_code = substring(capital, 1, 2)
RETURNING *;