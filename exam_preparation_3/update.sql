UPDATE players_ranges
SET max_players = max_players + 1
WHERE max_players = 2
        AND
    min_players = 2
;

UPDATE board_games
SET name = concat(name, ' ', 'V2')
WHERE
    release_year >= 2020
;