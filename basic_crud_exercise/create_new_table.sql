CREATE TABLE exercise
    AS
SELECT
    id,
    concat_ws(
        ' ',
        name,
        state
    ) as adress,
    area as area_km2
FROM
    cities
ORDER BY id;

SELECT
    *
FROM
    exercise;
