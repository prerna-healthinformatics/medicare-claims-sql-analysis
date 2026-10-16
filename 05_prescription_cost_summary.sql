-- Query 5: Prescription Drug Cost Summary
-- Business question: A health plan wants to understand overall prescription cost
-- patterns to inform formulary strategy and forecast pharmacy spending.
-- Dialect: Microsoft Access SQL

SELECT
    COUNT(*)            AS Total_Prescriptions,
    AVG(TOT_RX_CST_AMT) AS Avg_Drug_Cost,
    MAX(TOT_RX_CST_AMT) AS Max_Drug_Cost,
    AVG(PTNT_PAY_AMT)   AS Avg_Patient_Payment
FROM Prescription_Drug_Claims
WHERE TOT_RX_CST_AMT > 0;
