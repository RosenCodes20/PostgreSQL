SELECT
    population,
    length(
        cast(
                population
                    AS
                VARCHAR(50))
    )
FROM
    countries;