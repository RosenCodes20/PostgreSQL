CREATE OR REPLACE FUNCTION fn_full_name (
    first_name varchar,
    last_name  varchar
) RETURNS VARCHAR
AS
$$
    DECLARE
        full_name VARCHAR(50);
    BEGIN
        full_name := concat_ws(
                        ' ',
                        INITCAP(first_name),
                        INITCAP(last_name)
                     );
        RETURN full_name;
    end
$$
LANGUAGE plpgsql
;