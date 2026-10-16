-- Outpatient and Inpatient Transitions
-- Dialect: Microsoft Access SQL

-- 1) Outpatient claims with a urinary-tract admitting diagnosis
--    (ICD-9 595.0, 595.9, 597.80, 599.0) for beneficiaries who also had an
--    inpatient claim.  Result: 6
SELECT COUNT(O.CLM_ID)
FROM Outpatient_Claims AS O
INNER JOIN Inpatient_Claims AS I
    ON O.DESYNPUF_ID = I.DESYNPUF_ID
WHERE O.ADMTNG_ICD9_DGNS_CD IN ('5950', '5959', '59780', '5990');

-- 2) For one beneficiary: number of unique outpatient claims and total
--    prescription drug cost.  Result: 22 claims, $13,260 in Rx cost
SELECT
    (SELECT COUNT(*)
     FROM (SELECT CLM_ID
           FROM Outpatient_Claims
           WHERE DESYNPUF_ID = '0010191C5983C0F7'
           GROUP BY CLM_ID) AS UniqueClaims
    ) AS Claims_Count,
    SUM(TOT_RX_CST_AMT) AS Total_RX_Cost
FROM Prescription_Drug_Claims
WHERE DESYNPUF_ID = '0010191C5983C0F7';
