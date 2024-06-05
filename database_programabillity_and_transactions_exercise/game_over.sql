CREATE OR REPLACE FUNCTION fn_is_game_over (
    is_game_over boolean
)
RETURNS TABLE (name varchar(50), game_type_id int, is_finished boolean)
AS
    $$
        BEGIN
            RETURN QUERY
                SELECT
                    g.name,
                    g.game_type_id,
                    g.is_finished
                FROM
                    games
                        AS
                    g
                WHERE
                    g.is_finished = is_game_over;
        end;
    $$
LANGUAGE plpgsql
;

SELECT
    *
FROM
    fn_is_game_over(true);