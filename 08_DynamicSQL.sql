-- Dynamic SQL Example

SET SERVEROUTPUT ON;

DECLARE
    sql_stmt VARCHAR2(500);
BEGIN
    sql_stmt :=
        'CREATE TABLE test_table (
            id NUMBER,
            name VARCHAR2(50)
        )';

    EXECUTE IMMEDIATE sql_stmt;

    DBMS_OUTPUT.PUT_LINE('Table Created Successfully');
END;
/