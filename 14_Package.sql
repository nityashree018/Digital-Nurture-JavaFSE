-- Package Specification

CREATE OR REPLACE PACKAGE emp_pkg2 AS

    total_salary NUMBER := 0;

    PROCEDURE list_employees;

END emp_pkg2;
/

-- Package Body

CREATE OR REPLACE PACKAGE BODY emp_pkg2 AS

    PROCEDURE list_employees IS

        CURSOR c IS
            SELECT *
            FROM employee;

    BEGIN

        total_salary := 0;

        FOR emp IN c LOOP

            DBMS_OUTPUT.PUT_LINE(
                emp.emp_id || ' ' ||
                emp.emp_name || ' ' ||
                emp.salary
            );

            total_salary :=
                total_salary + emp.salary;

        END LOOP;

    END;

END emp_pkg2;
/

-- Execute Package

SET SERVEROUTPUT ON;

BEGIN

    emp_pkg2.list_employees;

    DBMS_OUTPUT.PUT_LINE(
        'Total Salary = ' ||
        emp_pkg2.total_salary
    );

END;
/