-- Scenario 3: Loan reminders
BEGIN
    FOR r IN (
        SELECT c.Name,l.LoanID,l.EndDate
        FROM Customers c
        JOIN Loans l
        ON c.CustomerID=l.CustomerID
        WHERE l.EndDate BETWEEN SYSDATE AND SYSDATE+30
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
        'Reminder: '||r.Name||
        ' Loan ID='||r.LoanID||
        ' Due Date='||r.EndDate);
    END LOOP;
END;
/