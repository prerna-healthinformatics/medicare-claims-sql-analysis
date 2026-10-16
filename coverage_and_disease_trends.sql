-- Coverage and Disease Trends
-- Dialect: Microsoft Access SQL

-- 1) Inpatient claims with a hyperlipidemia diagnosis (ICD-9 272.0-272.4)
--    in the primary or secondary diagnosis field.  Result: 45 claims
SELECT COUNT(*) AS Hyperlipidemia_Inpatient_Count
FROM Inpatient_Claims
WHERE ICD9_DGNS_CD_1 IN ('2720', '2721', '2722', '2723', '2724')
   OR ICD9_DGNS_CD_2 IN ('2720', '2721', '2722', '2723', '2724');

-- 2) Beneficiaries with more than 6 months of both Medicare Part A and Part B coverage
SELECT
    DESYNPUF_ID,
    BENE_HI_CVRAGE_TOT_MONS  AS Part_A_Coverage_Months,
    BENE_SMI_CVRAGE_TOT_MONS AS Part_B_Coverage_Months
FROM Beneficiary_Summary
WHERE BENE_HI_CVRAGE_TOT_MONS > 6
  AND BENE_SMI_CVRAGE_TOT_MONS > 6;

-- 3) Beneficiaries with CHF or COPD, by sex (1 = Male, 2 = Female)
--    Result: Male 89, Female 122
SELECT
    BENE_SEX_IDENT_CD,
    COUNT(*) AS count_with_chf_or_copd
FROM Beneficiary_Summary
WHERE SP_CHF = 1 OR SP_COPD = 1
GROUP BY BENE_SEX_IDENT_CD;
