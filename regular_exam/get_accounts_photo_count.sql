CREATE OR REPLACE FUNCTION udf_accounts_photos_count(account_username VARCHAR(30))
RETURNS INT
AS
    $$
        DECLARE
            photo_count INT;
        BEGIN
            SELECT
                count(p.id)
            FROM
                accounts AS a
                JOIN accounts_photos AS ap
                    ON
                a.id = ap.account_id
                JOIN photos AS p
                    ON
                ap.photo_id = p.id
            WHERE
                a.username = account_username
            INTO photo_count
            ;
            RETURN photo_count;
        end;
    $$
LANGUAGE plpgsql
;
