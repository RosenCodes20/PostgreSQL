CREATE OR REPLACE PROCEDURE sp_transfer_money (
    sender_id INT,
    receiver_id INT,
    amount numeric(10, 4)
)
AS
    $$
        DECLARE
            current_amount numeric(10, 4);
        BEGIN
            CALL sp_withdraw_money(sender_id, amount);
            CALL sp_deposit_money(receiver_id, amount);

            SELECT balance FROM accounts WHERE sender_id = id INTO current_amount;

            IF current_amount < 0 THEN
                ROLLBACK;
            ELSE
                COMMIT;
            end if;
        end;
    $$
LANGUAGE plpgsql
;

CALL transfer_money(10, 2, 1043.9000);