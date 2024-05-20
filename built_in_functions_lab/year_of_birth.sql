SELECT
    first_name,
    last_name,
    extract('year' from born)
        AS
    year
FROM
    authors;