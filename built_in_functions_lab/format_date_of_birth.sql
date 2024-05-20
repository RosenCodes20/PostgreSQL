SELECT
    last_name
        AS
    "Last Name",
    to_char(
            born,
            'DD (Dy) Mon YYYY'
    )
FROM
    authors;