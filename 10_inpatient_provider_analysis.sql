-- Query 10: Inpatient Claims by Provider
-- Business question: A health plan wants to compare high-volume hospitals on
-- payments and length of stay for network contracting and quality initiatives.
-- Dialect: Microsoft Access SQL

SELECT TOP 20
    PRVDR_NUM               AS Provider_Number,
    COUNT(*)                AS Total_Claims,
    AVG(CLM_PMT_AMT)        AS Avg_Payment_Amount,
    SUM(CLM_PMT_AMT)        AS Total_Payments,
    AVG(CLM_UTLZTN_DAY_CNT) AS Avg_Length_Stay
FROM Inpatient_Claims
WHERE CLM_PMT_AMT > 0
GROUP BY PRVDR_NUM
HAVING COUNT(*) >= 10
ORDER BY COUNT(*) DESC;
