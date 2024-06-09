SELECT
    p.id,
    concat_ws(
        ' ',
        p.first_name,
        p.last_name
    )
        AS
    full_name,
    p.age,
    p.position,
    p.salary,
    sd.pace,
    sd.shooting
FROM
    players AS p
    JOIN skills_data AS sd
        ON
    p.skills_data_id = sd.id
WHERE
    position = 'A'
        AND
    pace + shooting > 130
        AND
    team_id IS NULL
;