# 🛒 Brazilian E-Commerce: Top Performing Sellers Analysis (2016–2018)

![SQL](https://img.shields.io/badge/SQL-MS%20SQL%20Server-red?style=flat-square)
![Excel](https://img.shields.io/badge/Excel-Dashboard-green?style=flat-square)
![Dataset](https://img.shields.io/badge/Dataset-Olist%20Brazil-blue?style=flat-square)
![Years](https://img.shields.io/badge/Period-2016--2018-orange?style=flat-square)

## 📌 Overview
This project analyzes the **Olist Brazilian E-Commerce dataset** using **MS SQL Server** and **Microsoft Excel** to identify **top-performing sellers** across Brazilian states from **2016 to 2018**. The analysis focuses on revenue distribution, seller concentration, and the gap between average and maximum-performing sellers.

## 🛠️ Tools & Dataset
- **Database:** MS SQL Server
- **Visualization:** Microsoft Excel (Pivot Charts & Tables)
- **Dataset:** [Olist Brazilian E-Commerce](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) (Kaggle)
- **Analysis Period:** 2016 – 2018


## 🔬 Methodology
1. **Data Cleaning (`01_data_cleaning.sql`)**
   - Removed duplicate orders and null seller IDs
   - Standardized date formats and currency values
   - Filtered valid transactions (delivered status only)

2. **Analysis (`02_top_sellers_analysis.sql`)**
   - Aggregated total revenue per seller by state and year
   - Calculated yearly average revenue and maximum seller revenue
   - Segmented sellers using `is_above_average` flag to identify top performers

3. **Visualization**
   - Exported query results to Excel
   - Created pivot charts for state-wise and temporal analysis

---

## 📊 Key Findings

### 1. State-wise Revenue Distribution (2016)
<img width="500" src="https://github.com/tagiyevtehmasib/New-Olist-Seller-Analyses/blob/main/dashboards/01_seller_revenue_by_state_2016.png">

> **Insight:** **São Paulo (SP) dominates** with ~650K total revenue despite a relatively small seller count. This indicates that **fewer, high-quality sellers generate disproportionate value** — a "quality over quantity" pattern.

---

### 2. State-wise Revenue Distribution (2017)
<img width="500" src="https://github.com/tagiyevtehmasib/New-Olist-Seller-Analyses/blob/main/dashboards/02_seller_revenue_by_state_2017.png">

> **Insight:** **Paraná (PR) emerges as a breakout region** in 2017 with ~13M revenue, while **Sergipe (SE) shows early potential**. This signals **regional market expansion** beyond traditional hubs.

---

### 3. State-wise Revenue Distribution (2018)
<img width="500" src="https://github.com/tagiyevtehmasib/New-Olist-Seller-Analyses/blob/main/dashboards/03_seller_revenue_by_state_2018.png">

> **Insight:** **Sergipe (SE) reaches ~87M revenue in 2018**, confirming **new regional markets are maturing**. The revenue concentration remains high, but the geographic footprint is diversifying year-over-year.

---

### 4. Average vs. Maximum Seller Revenue Trend (2016–2018)
<img width="500" src="https://github.com/tagiyevtehmasib/New-Olist-Seller-Analyses/blob/main/dashboards/04_seller_performance_chart.png">


> **Insight:** **Maximum seller revenue grew 10x (500K → 5M)**, while average revenue grew only ~10x (31K → 328K). The widening gap reveals a **"superstar effect"**: top sellers are capturing exponentially more value, while median sellers stagnate.

---

### 5. Seller Performance Summary Statistics
<img width="500" src="https://github.com/tagiyevtehmasib/New-Olist-Seller-Analyses/blob/main/dashboards/05_seller_statistics_table.png">

> **Insight:** **Top-performing seller share remains stable at 74–77%**, but the **maximum revenue increased from 488K to 5M (10x growth)**. This confirms that **the elite seller tier is pulling away from the average**, creating a two-speed marketplace.

---

## 📂 Files Description

| File | Description |
|------|-------------|
| `01_data_cleaning.sql` | Removes duplicates, handles nulls, standardizes dates and currencies |
| `02_top_sellers_analysis.sql` | Calculates revenue by seller/state/year; flags above-average performers |
| `01_seller_revenue_by_state_2016.png` | Pivot chart: seller count vs. total revenue by state (2016) |
| `02_seller_revenue_by_state_2017.png` | Pivot chart: seller count vs. total revenue by state (2017) |
| `03_seller_revenue_by_state_2018.png` | Pivot chart: seller count vs. total revenue by state (2018) |
| `04_seller_performance_chart.png` | Line chart: yearly average vs. maximum seller revenue trend |
| `05_seller_statistics_table.png` | Summary table: total sellers, successful sellers %, avg/max revenue |

## 🚀 How to Reproduce
1. Run `SQL_Scripts/01_data_cleaning.sql` on the Olist dataset.
2. Execute `SQL_Scripts/02_top_sellers_analysis.sql` to generate aggregated results.
3. Export results to Excel and build pivot charts as shown in `/Dashboard`.

## 🎯 Business Implications
- **For Olist:** Invest in **seller onboarding programs** in PR and SE to replicate SP's success.
- **For Sellers:** Focus on **review quality and fulfillment speed** to enter the top-performing tier.
- **For Investors:** The "superstar effect" suggests **platform revenue is increasingly concentrated** — monitor top seller dependency risk.

---
*Analyst: [Tağıyev Təhmasib] | June 2026*
