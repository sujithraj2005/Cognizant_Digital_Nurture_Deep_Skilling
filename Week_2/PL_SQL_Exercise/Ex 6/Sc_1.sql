-- Scenario 1: Monthly Statements
DECLARE

CURSOR c IS
SELECT *
FROM Transactions
WHERE TRUNC(TransactionDate,'MM')=
      TRUNC(SYSDATE,'MM');

r Transactions%ROWTYPE;

BEGIN

OPEN c;

LOOP
FETCH c INTO r;

EXIT WHEN c%NOTFOUND;

DBMS_OUTPUT.PUT_LINE(
'Account='||r.AccountID||
' Amount='||r.Amount||
' Type='||r.TransactionType);

END LOOP;

CLOSE c;

END;
/