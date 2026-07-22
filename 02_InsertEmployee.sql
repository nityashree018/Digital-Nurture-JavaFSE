-- Insert Employee Records

INSERT INTO employee (emp_id, emp_name, salary)
VALUES (101, 'John', 25000);

INSERT INTO employee (emp_id, emp_name, salary)
VALUES (102, 'Alice', 30000);

INSERT INTO employee (emp_id, emp_name, salary)
VALUES (103, 'David', 40000);

INSERT INTO employee (emp_id, emp_name, salary)
VALUES (104, 'Emma', 45000);

COMMIT;

-- Display Records
SELECT * FROM employee;