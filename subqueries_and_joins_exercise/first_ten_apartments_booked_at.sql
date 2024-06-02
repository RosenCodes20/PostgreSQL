SELECT
    a.name,
    a.country,
    cast(b.booked_at AS date)
FROM
    apartments AS a
    LEFT JOIN bookings AS b
    USING(booking_id)
LIMIT
    10
;