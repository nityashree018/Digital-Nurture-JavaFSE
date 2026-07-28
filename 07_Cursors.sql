-- Cursor Example

SET SERVEROUTPUT ON;

DECLARE
    CURSOR c IS
        SELECT emp_id, emp_name, salary
        FROM employee;

    v_id employee.emp_id%TYPE;
    v_name employee.emp_name%TYPE;
    v_salary employee.salary%TYPE;

BEGIN
    OPEN c;

    LOOP
        FETCH c INTO v_id, v_name, v_salary;

        EXIT WHEN c%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            v_id || ' ' ||
            v_name || ' ' ||
            v_salary
        );
    END LOOP;

    CLOSE c;
END;
/