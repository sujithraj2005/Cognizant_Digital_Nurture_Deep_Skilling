-- Scenario 3: Transaction Rules
CREATE OR REPLACE TRIGGER CheckTransactionRules
BEFORE INSERT
ON Transactions
FOR EACH ROW
DECLARE
    v_balance NUMBER;
BEGIN

    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE AccountID=:NEW.AccountID;

    IF :NEW.TransactionType='Withdrawal'
       AND :NEW.Amount>v_balance THEN
        RAISE_APPLICATION_ERROR(-20002,'Insufficient Balance');
    END IF;

    IF :NEW.TransactionType='Deposit'
       AND :NEW.Amount<=0 THEN
        RAISE_APPLICATION_ERROR(-20003,'Invalid Deposit');
    END IF;

END;
/