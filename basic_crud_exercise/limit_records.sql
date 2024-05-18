SELECT
    employees.id,
    concat_ws(' ', employees.first_name, employees.last_name) as "full_name",
    employees.job_title

FROM employees
ORDER BY
    first_name ASC
LIMIT 50;
