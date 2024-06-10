SELECT
    o.name,
    count(a.owner_id)
        AS
    count_of_animals
FROM
    owners AS o
    JOIN animals AS a
        ON
    o.id = a.owner_id
GROUP BY
    o.name
ORDER BY
    count_of_animals
    DESC,
    o.name
    ASC
LIMIT
    5