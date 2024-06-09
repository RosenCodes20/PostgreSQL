SELECT
    p.name
     AS
    product_name,
    round(avg(p.price), 2)
       AS
    average_price,
    count(f.product_id)
        AS
    total_feedbacks
FROM
    products AS p
    JOIN feedbacks AS f
        ON
    p.id = f.product_id
WHERE
    p.price > 15
GROUP BY
    p.name
HAVING
    count(f.product_id) > 1
ORDER BY
    total_feedbacks
    ASC,
    average_price
    DESC
;
