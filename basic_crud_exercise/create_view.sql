CREATE VIEW select_concatenated_name
    AS
SELECT
    concat_ws(
        ' ',
        first_name,
        last_name
    ) as full_name,
    country as "Born Place",
    age
FROM
    people_getting
WHERE
    country LIKE 'Ch%'
ORDER BY
    full_name
LIMIT
    50;

SELECT
    *
FROM
    select_concatenated_name;

DROP VIEW
    select_concatenated_name