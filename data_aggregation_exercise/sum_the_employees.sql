SELECT
    sum(CASE WHEN e.department_id = 1 THEN 1 ELSE 0 END) AS "Engineering",
    sum(CASE WHEN e.department_id = 2 THEN 1 ELSE 0 END) AS "Tool Design",
    sum(CASE WHEN e.department_id = 3 THEN 1 ELSE 0 END) AS "Sales",
    sum(CASE WHEN e.department_id = 4 THEN 1 ELSE 0 END) AS "Marketing",
    sum(CASE WHEN e.department_id = 5 THEN 1 ELSE 0 END) AS "Purchasing",
    sum(CASE WHEN e.department_id = 6 THEN 1 ELSE 0 END) AS "Research and Development",
    sum(CASE WHEN e.department_id = 7 THEN 1 ELSE 0 END) AS "Production"
FROM
    employees as e;