-- 1. Реализовать практические задания на примере других таблиц и запросов.

-- see attached screenshots

-- 2. Подумать, какие операции являются транзакционными, и написать несколько примеров с транзакционными запросами.

USE employees;

DELETE FROM employees WHERE emp_no = 9999;
DELETE FROM salaries  WHERE emp_no = 9999;
DELETE FROM dept_emp WHERE emp_no = 9999;

SET AUTOCOMMIT = 0;
 
 BEGIN;
	-- INSERT INTO employees
	INSERT INTO employees (emp_no, first_name, last_name, gender, birth_date, hire_date) 
    VALUES (9999, 'Unix',  'Epoch',  'M', '1970-01-31',  CURDATE());
    -- UPDATE
	UPDATE employees SET gender = 'F' WHERE emp_no = 9999;
	UPDATE employees SET birth_date = '1970-01-01' WHERE emp_no = 9999;
    -- AFTER INSERT INTO employees: trg_new_employee INSERT INTO salaries
    -- UPDATE
    UPDATE salaries SET salary = 999999 WHERE emp_no = 9999; 
    -- INSERT INTO dept_emp
    INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) 
    VALUES (9999, 'd008',  CURDATE(), '9999-01-01');
 COMMIT;
 
SET AUTOCOMMIT = 1;
 
SELECT * FROM employees WHERE emp_no = 9999;
SELECT * FROM salaries WHERE emp_no = 9999;
SELECT * FROM dept_emp WHERE emp_no = 9999;
 
 -- 3. Проанализировать несколько запросов с помощью EXPLAIN.
 
 USE employees;
 
 -- cost: 85543.29
 
EXPLAIN
SELECT
	dp.dept_name  AS dept_name,
    COUNT(1)      AS emp_number,
	AVG(s.salary) AS avg_salary,
    MAX(s.salary) AS max_salary,
    MIN(s.salary) AS min_salary
FROM departments dp
JOIN dept_emp AS de
	ON dp.dept_no = de.dept_no
    AND de.to_date = '9999-01-01'
JOIN salaries AS s 
	ON de.emp_no = s.emp_no
    AND s.to_date = '9999-01-01'
GROUP BY dp.dept_name;

-- new cost: 995.29

EXPLAIN
SELECT
	de.dept_name,
    t.emp_number,
    t.avg_salary,
    t.max_salary,
    t.min_salary
FROM departments AS de
JOIN (
		SELECT
			de.dept_no,
			COUNT(1)      AS emp_number,
			AVG(s.salary) AS avg_salary,
			MAX(s.salary) AS max_salary,
			MIN(s.salary) AS min_salary
		FROM dept_emp AS de
		JOIN salaries AS s 
			ON de.emp_no = s.emp_no
			AND s.to_date = '9999-01-01'
		WHERE 1 = 1
			AND de.to_date = '9999-01-01'    
		GROUP BY de.dept_no
	) AS t
    ON de.dept_no = t.dept_no
;
