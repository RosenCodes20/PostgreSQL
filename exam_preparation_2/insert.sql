CREATE TABLE gift_recipients (
    id SERIAL PRIMARY KEY,
    name varchar(200),
    country_id INT REFERENCES countries ON DELETE CASCADE ON UPDATE CASCADE,
    gift_sent BOOLEAN DEFAULT false
)
;

INSERT INTO gift_recipients (name, country_id)
SELECT
    concat_ws(
        ' ',
        first_name,
        last_name
    ),
    country_id
FROM
    customers
;

UPDATE gift_recipients
SET gift_sent = true
WHERE country_id IN (7, 8, 14, 17, 26)
;