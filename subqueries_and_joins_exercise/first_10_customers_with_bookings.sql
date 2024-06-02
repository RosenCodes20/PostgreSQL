SELECT
    b.booking_id,
    cast(
        b.starts_at
        AS
        date
    ),
    b.apartment_id,
    concat_ws(
        ' ',
        c.first_name,
        c.last_name
    )
        AS
    customer_name
FROM
    bookings AS b
    RIGHT OUTER JOIN customers AS c
    USING(customer_id)
ORDER BY
    customer_name
    ASC
LIMIT
    10
;