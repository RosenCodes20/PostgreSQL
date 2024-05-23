ALTER TABLE bookings
ADD COLUMN billing_day timestamptz DEFAULT current_timestamp;

SELECT
    billing_day,
    to_char(billing_day, 'DD Day MM Month YYYY "Year" HH24:MI:SS')
FROM
    bookings;