# Fraud Detection & Risk Analysis Dashboard

## 📊 Project Overview
This project identifies and visualizes fraudulent transaction patterns within a global retail dataset. By integrating **SQL** for data modeling and **Excel** for dynamic visualization, the analysis provides a strategic view of risk segments, merchant vulnerabilities, and geographic fraud trends.

---

## 🚀 Key Business Insights
* **Global Fraud Rate:** Identified a consistent fraud rate of approximately **4.85%** across total transactions.
* **Revenue at Risk:** Quantified total fraud revenue exposure exceeding **$249,000**.
* **High-Risk Merchants:** Identified **Restaurants (426 cases)** and **ATMs (419 cases)** as the primary targets for fraudulent activity.
* **Geographic Hotspots:** Mapped fraud distribution across high-volume cities including **Multan**, **Lahore**, and **Islamabad**.

---

## 🛠️ Technical Stack
* **Database:** SQL Server (Advanced aggregations, CASE statements, and KPI modeling).
* **Data Visualization:** Microsoft Excel (Pivot Tables, Slicers, and Dynamic KPI shapes).
* **Analytical Techniques:** Trend modeling, categorical risk assessment, and percentage-of-total analysis.

---

## 📈 Dashboard Features
* **Executive KPI Summary:** Real-time tracking of Total Customers (**49,850**) and Total Fraud Transactions (**2,417**).
* **Interactive Slicers:** Allows stakeholders to filter the entire risk profile by **Card Type** (Credit/Debit).
* **Trend Monitoring:** Visualizes month-over-month fraud percentages to identify seasonal spikes.

---

## 💻 SQL Query Highlight
```sql
-- Calculating Fraud Percentage per Merchant Category
SELECT 
    Merchant_Category, 
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN Fraud_YN = 1 THEN 1 ELSE 0 END) AS fraud_count
FROM Transactions
GROUP BY Merchant_Category
ORDER BY fraud_count DESC;
