-- Savepoint and Rollback Example

SAVEPOINT sp1;

INSERT INTO employee
VALUES (105, 'Tom', 25000);

ROLLBACK TO sp1;

SELECT * FROM employee;