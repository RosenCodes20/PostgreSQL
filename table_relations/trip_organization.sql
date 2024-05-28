SELECT
    v.driver_id,
    v.vehicle_type,
    concat_ws(
        ' ',
        c.first_name,
        c.last_name
    )
        AS
    driver_name
FROM
    campers as c
    JOIN vehicles as v on
        c.id = v.driver_id;
