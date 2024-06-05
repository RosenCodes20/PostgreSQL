CREATE OR REPLACE FUNCTION fn_difficulty_level(
    level INT
)
RETURNS varchar
AS
    $$
        DECLARE
            result varchar(50);
        BEGIN
            IF level <= 40 THEN
                result := 'Normal Difficulty';

            ELSIF level >= 41 AND level <= 60 THEN
                result := 'Nightmare Difficulty';

            ELSE
                result := 'Hell Difficulty';

            end if;

            RETURN result;
        end
    $$
LANGUAGE plpgsql
;

SELECT
    user_id,
    level,
    cash,
    fn_difficulty_level(level)
        AS
    difficulty_level
FROM
    users_games
ORDER BY
    user_id
    ASC
;