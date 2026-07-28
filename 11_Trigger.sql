-- Salary Validation Trigger

CREATE OR REPLACE TRIGGER trg_salary_check
BEFORE INSERT OR UPDATE
ON employee
FOR EACH ROW
BEGIN
    IF :NEW.salary < 20000 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Salary must be at least 20000'
        );
    END IF;
END;
/

-- Test

INSERT INTO employee
VALUES (emp_seq.NEXTVAL, 'Tom', 15000);