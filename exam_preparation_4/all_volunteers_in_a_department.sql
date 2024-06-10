CREATE OR REPLACE FUNCTION
    fn_get_volunteers_count_from_department(searched_volunteers_department varchar(30))
RETURNS INT
AS
    $$
        DECLARE
            count INT;
        BEGIN
            SELECT
                count(*)
            FROM
                volunteers AS v
                JOIN volunteers_departments AS vd
                    ON
                v.department_id = vd.id
            WHERE
                department_name = searched_volunteers_department
            INTO
                count;
            RETURN count;
        end;
    $$
LANGUAGE plpgsql
;