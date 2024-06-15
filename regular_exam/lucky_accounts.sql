SELECT
    concat_ws(
        ' ',
        a.id,
        a.username
    )
       AS
    id_username,
    a.email
FROM
    accounts AS a
    JOIN accounts_photos AS ap
    ON a.id = ap.account_id
    JOIN photos AS p
    ON ap.photo_id = p.id
WHERE
    a.id = p.id
ORDER BY
    a.id