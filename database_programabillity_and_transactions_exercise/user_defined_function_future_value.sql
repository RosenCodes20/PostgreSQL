CREATE OR REPLACE FUNCTION fn_calculate_future_value (
    initial_sum DECIMAL,
    yearly_interested_rate DECIMAL,
    number_of_years INT
)
RETURNS decimal(20, 4)
AS
    $$
        DECLARE
            future_value decimal;
        BEGIN
            future_value := initial_sum * power(1 + yearly_interested_rate, number_of_years);
            RETURN trunc(future_value, 4);
        end;
    $$
    LANGUAGE plpgsql
;
