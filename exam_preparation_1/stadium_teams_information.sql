CREATE OR REPLACE FUNCTION
    fn_stadium_team_name(stadium_name varchar(30))
RETURNS TABLE(team_name varchar(50))
AS
    $$
        BEGIN
            RETURN QUERY (SELECT
                t.name
            FROM
                teams AS t
                JOIN stadiums AS s
                    ON
                t.stadium_id = s.id
            WHERE
                s.name = stadium_name
            ORDER BY
                t.name
                ASC);
        end;
    $$
LANGUAGE plpgsql
;