SELECT
    concat_ws(
        ' ',
        first_name,
        last_name
    )
        AS
    full_name,
    email,
    max(bg.rating)
FROM
    creators AS c
    JOIN creators_board_games AS cbg
        ON
    c.id = cbg.creator_id
    JOIN board_games AS bg
        ON
    cbg.board_game_id = bg.id
WHERE
    c.email LIKE '%.com%'
GROUP BY
    first_name,
    last_name,
    email
ORDER BY
    full_name
;