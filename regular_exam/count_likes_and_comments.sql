SELECT
    p.id
    AS
    photo_id,
    count(distinct(l.id))
    AS likes_count,
    count(distinct(c.id))
    AS comments_count
FROM
    photos AS p
    LEFT JOIN likes AS l
        ON
    p.id = l.photo_id
    LEFT JOIN comments AS c
        ON
    p.id = c.photo_id
GROUP BY
    p.id
ORDER BY
    likes_count
    DESC,
    comments_count
    DESC,
    p.id
;