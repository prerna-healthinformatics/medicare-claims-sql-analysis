-- Query 7: Highest-Cost Inpatient Claims
-- Business question: A health plan wants to identify its most expensive inpatient
-- claims to develop case management protocols and negotiate hospital rates.
-- Dialect: Microsoft Access SQL

SELECT TOP 10
    DESYNPUF_ID,
    CLM_ID,
    CLM_PMT_AMT        AS Payment_Amount,
    CLM_UTLZTN_DAY_CNT AS Days_Count
FROM Inpatient_Claims
WHERE CLM_PMT_AMT > 0
ORDER BY CLM_PMT_AMT DESC;
