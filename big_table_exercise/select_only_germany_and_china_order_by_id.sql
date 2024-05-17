SELECT 
*
FROM people_getting
WHERE country = 
	'Germany' 
OR country = 'China'
ORDER by id ASC
LIMIT 20;