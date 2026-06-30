CREATE OR REPLACE PROCEDURE TransferFunds(src IN Number, dest IN Number, amount IN Number)
AS 
curr_balance Number;
BEGIN 
    SELECT Balance INTO curr_balance FROM Accounts WHERE Accountid = src;
    IF curr_balance >= amount THEN
        UPDATE Accounts SET Balance = Balance - amount WHERE AccountId = src;
        UPDATE Accounts SET Balance = Balance + amount WHERE Accountid = dest;
        commit;
        DBMS_OUTPUT.PUT_LINE('Funds Transferred Successfully');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');
    END IF;
END;
/

BEGIN 
    TransferFunds(1001,1005,10000);
END;
/
