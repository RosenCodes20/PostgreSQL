SELECT
    cl.full_name,
    count(cou.car_id)
       AS
    count_of_cars,
    sum(cou.bill)
        AS
    total_sum
FROM
    clients AS cl
    JOIN courses AS cou
        ON
    cl.id = cou.client_id
WHERE
    cl.full_name LIKE '_a%'
GROUP BY
    cl.full_name
HAVING
    count(cou.car_id) > 1
ORDER BY
    cl.full_name
    ASC
;