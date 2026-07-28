-- Create Sequence

CREATE SEQUENCE emp_seq
START WITH 105
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- Insert using Sequence

INSERT INTO employee
VALUES (emp_seq.NEXTVAL, 'Tom', 25000);

SELECT * FROM employee;