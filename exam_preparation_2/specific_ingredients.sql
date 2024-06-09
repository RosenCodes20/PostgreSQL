SELECT
    i.name
        AS
    ingredient_name,
    p.name
        AS
    product_name,
    d.name
        AS
    distributor_name
FROM
    ingredients AS i
    JOIN products_ingredients AS pi
        ON
    i.id = pi.ingredient_id
    JOIN products AS p
        ON
    p.id = pi.product_id
    JOIN distributors AS d
        ON
    i.distributor_id = d.id
WHERE
    i.name LIKE '%Mustard%'
        AND
    d.country_id = 16
ORDER BY
    product_name
    ASC
;