SELECT
    r.start_point,
    r.end_point,
    c.id,
    concat_ws(
        ' ',
        c.first_name,
        c.last_name
    )
        AS
    leader_name
FROM
    campers
        AS c
    JOIN routes AS r
        ON
    c.id = r.leader_id;