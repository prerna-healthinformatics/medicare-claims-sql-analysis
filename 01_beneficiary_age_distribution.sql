-- Query 1: Beneficiary Age Distribution
-- Business question: A provider planning a new clinic wants to understand the
-- age mix of local Medicare beneficiaries to plan senior-focused services.
-- Dialect: Microsoft Access SQL

SELECT
    birth_year,
    age_in_2010,
    beneficiary_count,
    ROUND(beneficiary_count * 100.0 / total_beneficiaries, 2) AS percentage
FROM (
    SELECT
        LEFT(BENE_BIRTH_DT, 4)        AS birth_year,
        2010 - LEFT(BENE_BIRTH_DT, 4) AS age_in_2010,
        COUNT(*)                      AS beneficiary_count,
        (SELECT COUNT(*)
         FROM Beneficiary_Summary
         WHERE BENE_BIRTH_DT IS NOT NULL) AS total_beneficiaries
    FROM Beneficiary_Summary
    WHERE BENE_BIRTH_DT IS NOT NULL
    GROUP BY LEFT(BENE_BIRTH_DT, 4)
) AS age_data
ORDER BY age_in_2010;
