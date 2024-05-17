UPDATE people_getting

SET salary = 4000

WHERE country = 'Bulgaria';

SELECT
*
FROM people_getting as p
WHERE country = 'Bulgaria'
ORDER by id DESC
LIMIT 3;