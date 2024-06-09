CREATE OR REPLACE PROCEDURE
    sp_customer_country_name(customer_full_name varchar(50), OUT country_name varchar(50))
AS
    $$
        BEGIN
            country_name := (SELECT
                                cou.name
                            FROM
                                customers AS c
                                JOIN countries AS cou
                                    ON
                                c.country_id = cou.id
                            WHERE
                                concat_ws(
                                    ' ',
                                    c.first_name,
                                    c.last_name
                                ) = customer_full_name
            );
        end;
    $$
LANGUAGE plpgsql
;
