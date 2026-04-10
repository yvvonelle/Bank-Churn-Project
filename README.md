# Bank Customer Churn Analysis

## Business Problem
A European retail bank is losing customers at an unsustainable rate.
This analysis investigates why customers are churning and which 
segments are most at risk.

**Central question:** Why are we losing customers, and which customer 
profiles are most at risk?

---

## Key Findings

**1. Overall churn rate is 20.4%**
2,037 out of 10,000 customers have left the bank.

**2. Germany is a structural problem**
German customers churn at 32.4% — nearly double France (16.2%) and 
Spain (16.7%).

**3. Female customers churn significantly more**
Female churn is 25.1% vs 16.5% for males. German females are the 
highest-risk segment at 37.6%.

**4. The 50-59 age group is the most at risk**
56% churn rate — nearly 3x the overall rate. Under-30s churn at 
just 7.6%.

**5. Over-selling is driving customers away**
100% of 4-product customers churned. The 2-product segment is the 
healthiest at 7.6% — the sweet spot.

**6. Nearly half the base is disengaged**
48.5% of customers are inactive, churning at 26.9% vs 14.3% for 
active members.

---

## Recommendations

**R1 — Germany market audit**
Churn at 32.4% vs ~16% in France and Spain. Investigate pricing, 
product fit, and competitor activity in the German market specifically.

**R2 — Retention programme for 50-59 segment**
56% churn in the highest-balance age group represents significant 
deposit risk. A dedicated relationship or loyalty programme for this 
segment is the highest-ROI intervention.

**R3 — Revise cross-selling strategy**
Cap product cross-selling at 2 products. Focus on moving 1-product 
customers to 2, not beyond — every customer with 4 products left.

---

## Tools
Python (pandas) · SQL Server (T-SQL) · Power BI

## Workflow
- **Data cleaning** — Python (pandas): nulls, duplicates, data types
- **Exploratory analysis** — SQL Server (T-SQL): churn rates by geography, gender, age, products, and engagement
- **Visualisation** — Power BI: single-page interactive dashboard with slicers for geography and gender
