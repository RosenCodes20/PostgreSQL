SELECT
    a.name
        AS
    animal,
    to_char(a.birthdate, 'YYYY')
        AS
    birth_year,
    at.animal_type
FROM
    animals AS a
    JOIN animal_types AS at
        ON
    a.animal_type_id = at.id
WHERE
    animal_type <> 'Birds'
        AND
    a.owner_id IS NULL
        AND
    a.birthdate > '01/01/2017'
ORDER BY
    a.name
    ASC
;


