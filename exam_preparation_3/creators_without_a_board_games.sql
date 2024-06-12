SELECT
    c.id,
    concat_ws(
        ' ',
        c.first_name,
        c.last_name
    )
        AS
    creator_name,
    c.email
FROM
    creators AS c
    LEFT JOIN creators_board_games AS cbg
        ON
    c.id = cbg.creator_id
    LEFT JOIN board_games AS bg
        ON
    cbg.board_game_id = bg.id
WHERE
    bg.id IS NULL
ORDER BY
    creator_name
    ASC
;
