-- Scenario 2: EmployeeManagement
CREATE OR REPLACE PACKAGE EmployeeManagement AS

PROCEDURE HireEmployee(
p_id NUMBER,
p_name VARCHAR2,
p_pos VARCHAR2,
p_sal NUMBER,
p_dept VARCHAR2);

PROCEDURE UpdateEmployee(
p_id NUMBER,
p_salary NUMBER);

FUNCTION AnnualSalary(
p_id NUMBER)
RETURN NUMBER;

END;
/

CREATE OR REPLACE PACKAGE BODY EmployeeManagement AS

PROCEDURE HireEmployee(
p_id NUMBER,
p_name VARCHAR2,
p_pos VARCHAR2,
p_sal NUMBER,
p_dept VARCHAR2)
IS
BEGIN
INSERT INTO Employees
VALUES(p_id,p_name,p_pos,p_sal,p_dept,SYSDATE);
END;

PROCEDURE UpdateEmployee(
p_id NUMBER,
p_salary NUMBER)
IS
BEGIN
UPDATE Employees
SET Salary=p_salary
WHERE EmployeeID=p_id;
END;

FUNCTION AnnualSalary(
p_id NUMBER)
RETURN NUMBER
IS
v NUMBER;
BEGIN
SELECT Salary*12
INTO v
FROM Employees
WHERE EmployeeID=p_id;

RETURN v;
END;

END;
/