-- Query 4: Diabetes Prevalence
-- Business question: A health plan needs to know diabetes prevalence among its
-- Medicare members to plan wellness programs and care management resources.
-- Note: SP_DIABETES 1 = Yes, 2 = No.
-- Dialect: Microsoft Access SQL

SELECT
    SP_DIABETES,
    COUNT(*) AS beneficiary_count
FROM Beneficiary_Summary
GROUP BY SP_DIABETES;
