-- IF-ELSE Statement Example

SET SERVEROUTPUT ON;

DECLARE
    salary NUMBER := 30000;
BEGIN
    IF salary >= 30000 THEN
        DBMS_OUTPUT.PUT_LINE('High Salary');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Low Salary');
    END IF;
END;
/