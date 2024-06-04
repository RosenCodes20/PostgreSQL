CREATE OR REPLACE PROCEDURE
            sp_increase_salaries(department_name varchar)
AS
    $$
        BEGIN
            UPDATE employees
            SET salary = salary + salary * 0.05
            WHERE department_id =
                  (SELECT department_id FROM departments WHERE name = department_name);
        end;
    $$
    LANGUAGE plpgsql
;