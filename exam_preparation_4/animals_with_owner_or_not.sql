CREATE OR REPLACE PROCEDURE
                sp_animals_with_owners_or_not(animal_name varchar(30), OUT owner_name varchar(50))
AS
    $$
        BEGIN
            IF (SELECT owner_id FROM animals WHERE name = animal_name) IS NULL THEN
                owner_name := 'For adoption';
            ELSE
                owner_name := (SELECT
                                    o.name
                                FROM
                                    animals AS a
                                    JOIN owners AS o
                                        ON
                                    a.owner_id = o.id
                                WHERE
                                    a.name = animal_name)
                ;
            end if;
        end
    $$
LANGUAGE plpgsql
;