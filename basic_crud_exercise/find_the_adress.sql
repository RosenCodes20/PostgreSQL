SELECT
    id,
    concat_ws(' ', number, street),
    city_id
FROM addresses
WHERE
    id >= 20