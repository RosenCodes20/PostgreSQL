SELECT DISTINCT ON (name)
    c.name,
    c.area as area_km2

FROM cities as c
ORDER BY
    c.name DESC;