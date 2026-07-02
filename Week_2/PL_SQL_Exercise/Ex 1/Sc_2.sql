-- Scenario 2: Set VIP flag
BEGIN
    FOR c IN (SELECT CustomerID, Balance FROM Customers)
    LOOP
        IF c.Balance > 10000 THEN
            UPDATE Customers
            SET IsVIP='Y'
            WHERE CustomerID=c.CustomerID;
        END IF;
    END LOOP;

    COMMIT;
END;
/