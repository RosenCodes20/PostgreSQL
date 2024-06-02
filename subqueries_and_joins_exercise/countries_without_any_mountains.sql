SELECT
    count(*)
FROM
    (
    SELECT
        *
    FROM
        countries AS c
        LEFT JOIN mountains_countries AS mc
            ON
        c.country_code = mc.country_code
    WHERE
        mc.mountain_id IS NULL
    ) as ea
;
