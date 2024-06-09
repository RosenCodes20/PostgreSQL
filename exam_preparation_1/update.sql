UPDATE coaches
SET
    salary = salary * coach_level
WHERE
    first_name LIKE 'C%'
        AND
    (SELECT
         count(*)
     FROM
         players_coaches
     WHERE
         coach_id = coaches.id
     GROUP BY
         coach_id
     ) >= 2
;
