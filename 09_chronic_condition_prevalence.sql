-- Query 9: Chronic Condition Prevalence
-- Business question: A health plan needs to compare how common major chronic
-- conditions are to prioritize disease management programs.
-- Dialect: Microsoft Access SQL

SELECT 'Diabetes' AS Condition, COUNT(*) AS Count_With_Condition
FROM Beneficiary_Summary
WHERE SP_DIABETES = 1

UNION ALL

SELECT 'Heart Failure' AS Condition, COUNT(*) AS Count_With_Condition
FROM Beneficiary_Summary
WHERE SP_CHF = 1

UNION ALL

SELECT 'COPD' AS Condition, COUNT(*) AS Count_With_Condition
FROM Beneficiary_Summary
WHERE SP_COPD = 1;
