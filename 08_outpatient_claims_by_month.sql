-- Query 8: Outpatient Claims by Month (2010)
-- Business question: A health plan wants to find seasonal patterns in outpatient
-- claims to plan staffing for claims processing and customer service.
-- Dialect: Microsoft Access SQL (uses * as the LIKE wildcard)

SELECT
    LEFT(CLM_FROM_DT, 6) AS Year_Month,
    COUNT(*)             AS Claim_Count,
    AVG(CLM_PMT_AMT)     AS Avg_Payment
FROM Outpatient_Claims
WHERE CLM_FROM_DT LIKE '2010*'
GROUP BY LEFT(CLM_FROM_DT, 6)
ORDER BY LEFT(CLM_FROM_DT, 6);
