SELECT
    count(*)
FROM
    (
    SELECT
        *
    FROM
        customers
    WHERE
        last_name
            LIKE
        '%Hahn%'
    ) AS count
;