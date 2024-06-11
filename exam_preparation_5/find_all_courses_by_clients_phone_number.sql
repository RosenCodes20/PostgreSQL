CREATE OR REPLACE FUNCTION
    fn_courses_by_client(phone_num varchar(20))
RETURNS INT
AS
    $$
        DECLARE
            courses_count INT;
        BEGIN
            SELECT
                count(*)
            FROM
                courses AS cou
                JOIN clients AS cl
                    ON
                cou.client_id = cl.id
            WHERE
                cl.phone_number = phone_num
            INTO
                courses_count;
            RETURN courses_count;
        end;
    $$
LANGUAGE plpgsql
;
