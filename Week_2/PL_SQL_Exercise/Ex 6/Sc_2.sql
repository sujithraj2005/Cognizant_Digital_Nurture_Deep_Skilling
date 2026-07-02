-- Scenario 2: Annual Fee
DECLARE

CURSOR c IS
SELECT AccountID
FROM Accounts;

v_fee NUMBER:=100;

BEGIN

FOR r IN c LOOP

UPDATE Accounts
SET Balance=Balance-v_fee
WHERE AccountID=r.AccountID;

END LOOP;

COMMIT;

END;
/