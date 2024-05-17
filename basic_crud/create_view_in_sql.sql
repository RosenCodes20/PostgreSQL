CREATE VIEW highest_salary AS
	SELECT 
	*
	FROM employees
	ORDER BY salary DESC
	LIMIT 1;


SELECT
*
FROM highest_salary AS h;