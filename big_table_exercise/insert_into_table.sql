INSERT INTO people_getting (id, first_name, last_name, country, gender, age, salary)

VALUES (1001, 'Rosen', 'Ivanov', 'Bulgaria', 'Male', 15, 10000);

SELECT
*
FROM people_getting
WHERE first_name = 'Rosen'
ORDER by id ASC
LIMIT 3;