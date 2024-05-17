SELECT 
	id,
	CONCAT(first_name, ' ', last_name) as full_name,
	job_title,
	salary

from employees as e
WHERE salary > 1000
ORDER BY id;