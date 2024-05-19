CREATE VIEW view_the_best_slo_country
    AS

SELECT
    id,
    concat_ws(
        ' ',
        first_name,
        last_name
    ) as full_name,
    country as born_place,
    salary as money

FROM
    people_getting
WHERE
    country LIKE 'Slo%'
ORDER BY
    id,
    country,
    gender
OFFSET 1
LIMIT 1;

SELECT
    *
FROM
    view_the_best_slo_country;

DROP VIEW view_the_best_slo_country;