SELECT
    deposit_group,
    is_deposit_expired,
    floor(avg(deposit_interest))
FROM
    wizard_deposits
WHERE
    deposit_start_date > '1985-01-01'
GROUP BY
    deposit_group,
    is_deposit_expired
ORDER BY
    deposit_group DESC,
    is_deposit_expired ASC;