-- Scenario 3: AccountOperations
CREATE OR REPLACE PACKAGE AccountOperations AS

PROCEDURE OpenAccount(
p_acc NUMBER,
p_cust NUMBER,
p_type VARCHAR2,
p_bal NUMBER);

PROCEDURE CloseAccount(
p_acc NUMBER);

FUNCTION TotalBalance(
p_cust NUMBER)
RETURN NUMBER;

END;
/

CREATE OR REPLACE PACKAGE BODY AccountOperations AS

PROCEDURE OpenAccount(
p_acc NUMBER,
p_cust NUMBER,
p_type VARCHAR2,
p_bal NUMBER)
IS
BEGIN
INSERT INTO Accounts
VALUES(p_acc,p_cust,p_type,p_bal,SYSDATE);
END;

PROCEDURE CloseAccount(
p_acc NUMBER)
IS
BEGIN
DELETE FROM Accounts
WHERE AccountID=p_acc;
END;

FUNCTION TotalBalance(
p_cust NUMBER)
RETURN NUMBER
IS
v NUMBER;
BEGIN
SELECT SUM(Balance)
INTO v
FROM Accounts
WHERE CustomerID=p_cust;

RETURN v;
END;

END;
/