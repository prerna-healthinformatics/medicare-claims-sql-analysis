-- Query 3: Highest-Cost Individual Prescriptions
-- Business question: A health plan wants to identify its highest-cost prescriptions
-- to target prior authorization protocols and negotiate pricing.
-- Dialect: Microsoft Access SQL

SELECT TOP 25
    PROD_SRVC_ID   AS ndc_code,
    TOT_RX_CST_AMT AS total_cost,
    PTNT_PAY_AMT   AS patient_payment,
    DAYS_SUPLY_NUM AS days_supply,
    QTY_DSPNSD_NUM AS quantity_dispensed
FROM Prescription_Drug_Claims
WHERE PROD_SRVC_ID IS NOT NULL
  AND TOT_RX_CST_AMT > 0
ORDER BY TOT_RX_CST_AMT DESC;
