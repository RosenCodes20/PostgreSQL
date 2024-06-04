CREATE OR REPLACE FUNCTION
    fn_count_employees_by_town(town_name varchar(20))
RETURNS int
AS
$$
    DECLARE
        town_count INT;
    BEGIN
        SELECT
            count(*)
        FROM
            employees AS e
            JOIN addresses AS a
                ON
            e.address_id = a.address_id
            JOIN towns AS t
                ON
            a.town_id = t.town_id
        WHERE
            t.name = town_name
        INTO
            town_count;
        RETURN town_count;
    END;
$$
LANGUAGE plpgsql
;