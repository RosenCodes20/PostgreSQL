SELECT
    v.name
       AS
    volunteers,
    v.phone_number,
    trim(right(v.address, -6), ', ')
FROM
    volunteers AS v
    JOIN volunteers_departments AS vd
        ON
    v.department_id = vd.id
WHERE
    address LIKE '%Sofia%'
        AND
    vd.department_name = 'Education program assistant'
ORDER BY
    v.name
    ASC
;