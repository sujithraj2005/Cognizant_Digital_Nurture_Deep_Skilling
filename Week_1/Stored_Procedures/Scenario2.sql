CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(bonus IN NUMBER)
AS 
BEGIN
    UPDATE Employees SET salary = (salary) + (salary)*(bonus/100)
    WHERE Department = 'IT';
    COMMIT;
END;
/

BEGIN 
    UpdateEmployeeBonus(10);
END;
/