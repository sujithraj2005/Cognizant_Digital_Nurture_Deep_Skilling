-- Scenario 1: Update LastModified
CREATE OR REPLACE TRIGGER UpdateCustomerLastModified
BEFORE UPDATE
ON Customers
FOR EACH ROW
BEGIN
    :NEW.LastModified:=SYSDATE;
END;
/