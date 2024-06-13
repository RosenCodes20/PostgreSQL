CREATE OR REPLACE FUNCTION
    fn_creator_with_board_games(first_name_of_creator VARCHAR(30))
RETURNS INT
AS
    $$
        DECLARE
            count INT;
        BEGIN
            SELECT
                count(*)
            FROM creators AS c
                JOIN creators_board_games AS cbg
                    ON
                c.id = cbg.creator_id
                JOIN board_games AS bg
                    ON
                cbg.board_game_id = bg.id
            WHERE
                c.first_name = first_name_of_creator
            INTO count;
            RETURN count;
        end
    $$
LANGUAGE plpgsql
;