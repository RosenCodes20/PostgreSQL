SELECT
    concat(
            "left"(description, 10),
            '...'
    )
        AS
    summary,
    to_char(capture_date, 'DD.MM HH24:MI')
        AS
    date
FROM
    photos
WHERE
    extract('Day' FROM capture_date) = 10
ORDER BY
    capture_date
    DESC