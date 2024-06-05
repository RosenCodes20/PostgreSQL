CREATE OR REPLACE PROCEDURE sp_withdraw_money (
    account_id INT,
    money_amount numeric(10, 4)
)
AS
    $$
        BEGIN
            IF money_amount <= (SELECT balance FROM accounts WHERE id = account_id) THEN
                UPDATE accounts
                SET balance = balance - money_amount
                WHERE id = account_id;

            ELSE
                RAISE NOTICE 'Insufficient balance to withdraw %', money_amount;

            END IF;

        end
    $$
LANGUAGE plpgsql
;

CALL sp_withdraw_money(6, 5437.0000);