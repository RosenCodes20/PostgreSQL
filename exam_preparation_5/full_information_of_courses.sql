SELECT
    a.name
        AS
    address,
    CASE
        WHEN extract(hour FROM start) BETWEEN 6 AND 20 THEN 'Day'
        WHEN extract(hour FROM start) = 21
                OR
             extract(hour FROM start) = 22
                OR
             extract(hour FROM start) = 23
                OR
             extract(hour FROM start) = 0
                OR
             extract(hour FROM start) = 1
                OR
             extract(hour FROM start) = 2
                OR
             extract(hour FROM start) = 3
                OR
             extract(hour FROM start) = 4
                OR
             extract(hour FROM start) = 5
            THEN 'Night'
    END
        AS
    day_time,
    cou.bill,
    cli.full_name,
    car.make,
    car.model,
    cat.name
        AS
    category_name
FROM
    addresses AS a
    JOIN courses AS cou
        ON
    a.id = cou.from_address_id
    JOIN clients AS cli
        ON
    cou.client_id = cli.id
    JOIN cars AS car
        ON
    cou.car_id = car.id
    JOIN categories AS cat
        ON
    car.category_id = cat.id
ORDER BY
    cou.id
;
