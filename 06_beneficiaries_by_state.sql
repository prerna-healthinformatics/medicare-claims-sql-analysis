-- Query 6: Top 10 States by Beneficiary Count
-- Business question: A health plan wants to know where its Medicare members are
-- concentrated to plan provider networks and customer service resources.
-- Dialect: Microsoft Access SQL

SELECT TOP 10
    SP_STATE_CODE AS State_Code,
    COUNT(*)      AS Beneficiary_Count
FROM Beneficiary_Summary
GROUP BY SP_STATE_CODE
ORDER BY COUNT(*) DESC;
