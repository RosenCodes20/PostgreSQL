CREATE OR REPLACE FUNCTION fn_is_word_comprised (
    set_of_letters varchar(50),
    word varchar(50)
)
RETURNS bool
AS
    $$
        DECLARE
            final_result bool;
        BEGIN
            final_result := trim(lower(word), lower(set_of_letters)) = '';
            RETURN final_result;
        end
    $$
LANGUAGE plpgsql;