DELETE FROM players
WHERE hire_date < '2013-12-13 07:18:46'
;

DELETE FROM players_coaches
WHERE (
    SELECT
        p.hire_date
    FROM
        players as p
    WHERE
        p.id = players_coaches.player_id
          ) < '2013-12-13 07:18:46'
;