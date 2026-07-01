DECLARE
    CURSOR customersId IS
        SELECT CustomerID FROM Customers
        WHERE Age > 60;
BEGIN
    FOR cust IN customersId LOOP
        UPDATE Loans SET InterestRate = InterestRate - 1 
        WHERE CustomerID = cust.CustomerID;
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Updated successfully.');
END;
/