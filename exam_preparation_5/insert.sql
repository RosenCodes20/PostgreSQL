INSERT INTO clients (full_name, phone_number)
SELECT
    concat_ws(
        ' ',
        first_name,
        last_name
    )
        AS
    full_name,
    concat(
        '(088) 9999',
        '',
        id * 2
    )
        AS
    phone_number
FROM
    drivers
WHERE
    id BETWEEN 10 AND 20