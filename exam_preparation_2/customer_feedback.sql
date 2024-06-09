CREATE OR REPLACE FUNCTION fn_feedbacks_for_product(product_name varchar(25))
RETURNS TABLE (customer_id INT, customer_name varchar(75), feedback_description varchar(255), feedback_rate numeric(4, 2))
AS
    $$
        BEGIN
            RETURN QUERY
                SELECT
                    c.id
                     AS
                    customer_id,
                    c.first_name
                        AS
                    customer_name,
                    f.description
                        AS
                    feedback_description,
                    f.rate
                        AS
                    feedback_rate
                FROM
                    customers AS c
                    JOIN feedbacks AS f
                        ON
                    c.id = f.customer_id
                    JOIN products AS p
                        ON
                    f.product_id = p.id
                WHERE
                    p.name = product_name
                ORDER BY
                    c.id
                    ASC
                ;
        end;
    $$
LANGUAGE plpgsql
;
