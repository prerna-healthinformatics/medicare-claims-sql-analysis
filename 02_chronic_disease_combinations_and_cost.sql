-- Query 2: Chronic Disease Combinations and Average Cost
-- Business question: A health plan wants to find the most common chronic disease
-- combinations among members to design care management programs and predict
-- high-cost patient groups.
-- Note: In the CMS DE-SynPUF data, condition flags use 1 = Yes, 2 = No.
-- Dialect: Microsoft Access SQL

SELECT
    SP_DIABETES,
    SP_CHF,
    SP_ISCHCMHT,
    SP_COPD,
    COUNT(*) AS beneficiary_count,
    AVG(MEDREIMB_IP + MEDREIMB_OP + MEDREIMB_CAR) AS avg_total_cost
FROM Beneficiary_Summary
WHERE SP_DIABETES IS NOT NULL
  AND SP_CHF      IS NOT NULL
  AND SP_ISCHCMHT IS NOT NULL
  AND SP_COPD     IS NOT NULL
GROUP BY SP_DIABETES, SP_CHF, SP_ISCHCMHT, SP_COPD
ORDER BY COUNT(*) DESC;
