SELECT
    f.product_id,
    f.rate,
    f.description,
    c.id
     AS
    customer_id,
    c.age,
    c.gender
FROM
    feedbacks AS f
    JOIN customers AS c
        ON
    f.customer_id = c.id
WHERE
    c.gender = 'F'
        AND
    c.age > 30
        AND
    f.rate < 5
ORDER BY
    product_id
    DESC
;