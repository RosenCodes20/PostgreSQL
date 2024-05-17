UPDATE employees
SET salary = salary + 100
WHERE job_title = 'Manager';

SELECT 
*
from employees as e
WHERE job_title = 'Manager';