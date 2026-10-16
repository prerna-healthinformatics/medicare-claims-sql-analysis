# 🏥 Medicare Claims Analysis with SQL

Healthcare analytics project using SQL to analyze the **CMS Synthetic Medicare Claims dataset** (DE-SynPUF). Each query answers a real business question a health plan or provider might ask, from chronic disease cost drivers to seasonal claim trends.

*Signature project for HCIN 543: Database Design & Knowledge Management, MS in Health Care Informatics, University of San Diego*

---

## 📁 Repository Contents

| Folder | What's inside |
|---|---|
| [`queries/`](queries/) | The 10 SQL queries from the final project, one file each |
| [`coursework-queries/`](coursework-queries/) | Additional queries on coverage, ICD-9 diagnoses, and outpatient-to-inpatient transitions |
| [`presentation/`](presentation/) | Final presentation with each question, query, output, and interpretation |

---

## 🗄️ Data

The **CMS 2008–2010 Data Entrepreneurs' Synthetic Public Use File (DE-SynPUF)** is a synthetic dataset that mirrors the structure of real Medicare claims but contains **no real patient information**. Tables used:

| Table | Contents |
|---|---|
| `Beneficiary_Summary` | Demographics, state, coverage months, chronic condition flags, reimbursement totals |
| `Inpatient_Claims` | Hospital stays: provider, payment, length of stay, ICD-9 diagnoses |
| `Outpatient_Claims` | Outpatient visits: dates, payments, admitting diagnoses |
| `Prescription_Drug_Claims` | Part D fills: NDC code, drug cost, patient payment, days supply |

**Tool:** Microsoft Access (Access SQL dialect: `TOP`, `*` wildcard in `LIKE`)

---

## 🔎 Questions & Key Findings

| # | Business Question | Key Finding |
|---|---|---|
| 1 | What is the age distribution of beneficiaries? | Age profile by birth year to help plan senior-focused services |
| 2 | Which chronic disease combinations are most common, and what do they cost? | Beneficiaries with none of the four conditions averaged about **$891** in reimbursements, while groups with multiple conditions averaged **$9,500–$13,800** |
| 3 | Which individual prescriptions cost the most? | Top prescriptions cost up to **$570**, which makes them candidates for prior authorization |
| 4 | How common is diabetes? | **206 of 702 beneficiaries (29%)** have diabetes |
| 5 | What do prescription costs look like overall? | **1,515 prescriptions**, averaging **$69.35**, with an average patient payment of **$10.03** |
| 6 | Which states have the most beneficiaries? | State codes 5, 33, and 10 lead (53, 50, and 45 beneficiaries) |
| 7 | Which inpatient claims cost the most? | Top claims all paid **$57,000**, with stays ranging from 0 to 53 days, which points to case-based (DRG-style) payment |
| 8 | Are there seasonal patterns in outpatient claims? | Claims peaked in **January (58)** and were lowest in **October–November (11)** |
| 9 | Which chronic conditions are most prevalent? | Diabetes (206), heart failure (189), COPD (63) |
| 10 | How do high-volume hospitals compare? | Provider 3400SP: 12 claims, **$10,917 average payment**, 8.75-day average stay. Provider 2600ZT: 11 claims, **$6,182 average payment**, 5.36-day average stay |

---

## 🛠️ SQL Techniques Used
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MAX`
- `GROUP BY` and `HAVING`
- Subqueries and derived tables
- `INNER JOIN` across claims tables
- `UNION ALL` to combine condition counts
- String functions for date grouping (`LEFT`)
- Filtering by ICD-9 diagnosis codes with `IN`
- `TOP N` ranking with `ORDER BY`

---

## 💡 What This Project Shows
- Translating business questions from health plans and providers into SQL
- Working with real-world claims data structures (beneficiary, inpatient, outpatient, Part D)
- Interpreting results for population health, cost management, and network planning

---

## ⚠️ Notes
- All data is **synthetic**, so findings illustrate analytical methods and should not be used for real-world inference.
- Queries are written in Microsoft Access SQL. Small syntax changes (for example, `LIMIT` instead of `TOP` and `%` instead of `*`) are needed for MySQL or PostgreSQL.

---

👩‍💻 **Prerna Sinha** · [LinkedIn](https://www.linkedin.com/in/prerna-sinha-health-informatics/) · [ePortfolio](https://sites.google.com/view/prernasinha/home)
