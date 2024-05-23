SELECT
    continent_name,
    trim(LEADING FROM
        continent_name
    )
FROM
    continents;