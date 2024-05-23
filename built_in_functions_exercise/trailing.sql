SELECT
    continent_name,
    trim(
        TRAILING FROM
        continent_name
    )
FROM
    continents;