CREATE OR REPLACE PROCEDURE sp_players_team_name(full_name varchar(50), OUT team_name varchar(45))
AS
    $$
        BEGIN
            IF (SELECT team_id FROM players WHERE concat(first_name, ' ', last_name) = full_name) IS NULL THEN
                team_name := 'The player currently has no team';
            ELSE
                    SELECT
                        t.name
                    FROM
                        players AS p
                        JOIN teams AS t
                            ON
                        p.team_id = t.id
                    WHERE
                        concat(first_name, ' ', last_name) = full_name
                    INTO
                        team_name;
            end if;
        end
    $$
LANGUAGE plpgsql
;