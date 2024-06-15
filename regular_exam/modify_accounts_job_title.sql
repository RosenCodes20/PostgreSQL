CREATE OR REPLACE PROCEDURE udp_modify_account(address_street VARCHAR(30), address_town VARCHAR(30))
AS
    $$
        BEGIN
            UPDATE accounts
            SET job_title = concat(
                                '(Remote) ',
                                job_title
                            )
            WHERE
               address_street IN (SELECT street FROM addresses WHERE accounts.id = account_id)
                    AND
               address_town IN (SELECT addresses.town FROM addresses WHERE accounts.id = account_id)
            ;
        end
    $$
LANGUAGE plpgsql
;