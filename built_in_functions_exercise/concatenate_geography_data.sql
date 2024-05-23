CREATE VIEW view_continents_countries_currencies_details
        AS
SELECT
    concat(
        con.continent_name,
        ': ',
        con.continent_code
    )
        AS
    continent_details,
    concat_ws(
        ' - ',
        cou.country_name,
        cou.capital,
        cou.area_in_sq_km,
        'km2'
    )
        AS
    country_information,
    concat(
        curr.description,
        ' ',
        '(',
        curr.currency_code,
        ')'
    )
        AS
    currencies
FROM
    continents AS con,
    countries AS cou,
    currencies as curr
WHERE
    con.continent_code = cou.continent_code
        AND
    cou.currency_code = curr.currency_code
ORDER BY
    country_information,
    currencies
;
SELECT
    *
FROM
    view_continents_countries_currencies_details;

DROP VIEW
    view_continents_countries_currencies_details;