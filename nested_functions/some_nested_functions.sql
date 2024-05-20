SELECT
    substring(
            concat_ws(
                    ' ',
                    concat_ws(
                            '',
                            upper(substring(first_name, 1, 1)),
                            right(first_name, -1)
                    ),
                    concat_ws(
                            '',
                            upper(substring(last_name, 1, 1)),
                            right(last_name, -1)
                    )
            ),
    1,
    2
    )
        as full_name,
    round(salary)
        AS
    money
FROM
    people
WHERE
    gender LIKE '_ale'
        AND
    salary > 11000
ORDER BY
    full_name
LIMIT
    20
;

UPDATE people
SET first_name = lower(first_name),
last_name = lower(last_name);

SELECT
    *
FROM
    people
WHERE
    gender LIKE '_ale'
        AND
    salary > 11000
ORDER BY
    first_name
LIMIT
    20
;