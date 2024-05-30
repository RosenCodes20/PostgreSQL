SELECT
    count(*)
FROM
    countries as c
    LEFT JOIN countries_rivers as cr
            ON
    c.country_code = cr.country_code
WHERE
    river_id IS NULL
;