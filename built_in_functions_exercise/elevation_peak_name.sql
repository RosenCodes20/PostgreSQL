SELECT
    concat(
        elevation,
        ' ',
        repeat(
            '-',
            3
        ),
        repeat(
            '>',
            2
        ),
        ' ',
        peak_name
    )
        AS
    "Elevation -->> Peak Name"
FROM
    peaks
WHERE
    elevation >= 4884;