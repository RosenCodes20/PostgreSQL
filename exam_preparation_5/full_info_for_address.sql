CREATE OR REPLACE PROCEDURE
    sp_courses_by_address(address_name varchar(100))
AS
    $$
        BEGIN
            TRUNCATE TABLE search_results;
            INSERT INTO search_results (address_name, full_name, level_of_bill, make, condition, category_name)
            SELECT
                a.name
                    AS
                address_name,
                cli.full_name,
                CASE
                    WHEN bill <= 20 THEN 'Low'
                    WHEN bill <= 30 THEN 'Medium'
                    ELSE 'High'
                END
                    AS
                level_of_bill,
                car.make,
                car.condition,
                cat.name
                    AS
                category_name
            FROM
                addresses AS a
                JOIN courses AS cou
                    ON
                a.id = cou.from_address_id
                JOIN clients AS cli
                    ON
                cou.client_id = cli.id
                JOIN cars AS car
                    ON
                cou.car_id = car.id
                JOIN categories AS cat
                    ON
                car.category_id = cat.id
            WHERE
                a.name = address_name
            ORDER BY
                car.make,
                cli.full_name
            ;
        end
    $$
LANGUAGE plpgsql
;


CREATE TABLE search_results (
    id SERIAL PRIMARY KEY,
    address_name VARCHAR(50),
    full_name VARCHAR(100),
    level_of_bill VARCHAR(20),
    make VARCHAR(30),
    condition CHAR(1),
    category_name VARCHAR(50)
);
