-- Records Example

SET SERVEROUTPUT ON;

DECLARE
    TYPE emp_record IS RECORD (
        emp_id NUMBER,
        emp_name VARCHAR2(50),
        salary NUMBER
    );

    emp emp_record;
BEGIN
    emp.emp_id := 101;
    emp.emp_name := 'John';
    emp.salary := 25000;

    DBMS_OUTPUT.PUT_LINE(
        emp.emp_id || ' ' ||
        emp.emp_name || ' ' ||
        emp.salary
    );
END;
/