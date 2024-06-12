DELETE FROM board_games
WHERE
    publisher_id IN
    (SELECT
           p.id
    FROM
            publishers AS p
            JOIN addresses AS a
                ON
            p.address_id = a.id
    WHERE
        a.town LIKE 'L%'
           )
;


DELETE FROM publishers
WHERE
    address_id IN
    (
    SELECT
        a.id
    FROM
        addresses AS a
     WHERE
        a.town LIKE 'L%'
          )
;

DELETE FROM addresses
WHERE town LIKE 'L%'
;