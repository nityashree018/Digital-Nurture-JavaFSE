-- Function Example

CREATE OR REPLACE FUNCTION get_salary(
    p_id NUMBER
)
RETURN NUMBER
AS
    sal NUMBER;
BEGIN
    SELECT salary
    INTO sal
    FROM employee
    WHERE emp_id = p_id;

    RETURN sal;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
/

-- Test Function

SET SERVEROUTPUT ON;

DECLARE
    sal NUMBER;
BEGIN
    sal := get_salary(101);

    IF sal IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary = ' || sal);
    END IF;
END;
/