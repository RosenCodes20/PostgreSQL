CREATE VIEW view_addresses
    AS
SELECT
    concat_ws(' ', e.first_name, e.last_name) as full_name,
    e.department_id,
    concat_ws(' ', a.number, a.street) as address
FROM
    employees AS e, addresses as a
WHERE
    e.address_id = a.id
ORDER BY
    address;

SELECT
    *
FROM
    view_addresses;
