SELECT
    concat_ws(
        ' ',
        m.mountain_range,
        p.peak_name
    )
        AS
    mountain_information,
    char_length(
        concat_ws(
        ' ',
        m.mountain_range,
        p.peak_name
    )
    )
        AS
    characters_length,
    bit_length(
        concat_ws(
        ' ',
        m.mountain_range,
        p.peak_name
    )
    )
        AS
    bit_of_a_tring
FROM
    mountains as m,
    peaks as p
WHERE
    m.id = p.mountain_id;