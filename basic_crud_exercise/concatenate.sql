SELECT
    concat_ws(' ', name, state) AS cities_information,
    area as area_km2
FROM
    cities
