-- Scenario 2: CalculateMonthlyInstallment
CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment(
    p_loan NUMBER,
    p_rate NUMBER,
    p_years NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN (p_loan + (p_loan*p_rate*p_years/100))
           /(p_years*12);
END;
/