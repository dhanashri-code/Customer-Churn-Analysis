# Customer Churn Analysis using SQL & Python

## Project Overview
This project analyzes customer, subscription, and support data to understand churn patterns and retention opportunities.

The workflow combines **MySQL/XAMPP, SQL, Python, Pandas, Matplotlib, and Seaborn** for data loading, cleaning, integration, analysis, and visualization.

## Key Analysis
- Overall churn and retention
- Churn by subscription plan
- Churn by state
- Monthly churn trend
- Complaint activity and churn
- Customer tenure and monthly charges
- Churn-risk segmentation
- Revenue associated with churned customers

## Project Structure
```text
Customer-Churn-Analysis/
├── Customer Churn Analysis/
│   ├── data/
│   ├── sql/
│   ├── notebook/
│   ├── output/
│   │   └── charts/
│   ├── README.md
│   └── requirements.txt
```

## Charts

### Churn Rate by Plan Type
![Churn by Plan](Customer%20Churn%20Analysis/output/charts/01_churn_by_plan.png)

### Churn Rate by State
![Churn by State](Customer%20Churn%20Analysis/output/charts/02_churn_by_state.png)

### Customer Churn Distribution
![Churn Distribution](Customer%20Churn%20Analysis/output/charts/03_churn_distribution.png)

### Monthly Churn Trend
![Monthly Churn](Customer%20Churn%20Analysis/output/charts/04_monthly_churn_trend.png)

### Churn Rate by Complaint Count
![Complaint vs Churn](Customer%20Churn%20Analysis/output/charts/05_churn_by_complaints.png)

## Tools
Python | Pandas | NumPy | Matplotlib | Seaborn | MySQL | XAMPP | SQL

## How to Run
1. Start **Apache** and **MySQL** in XAMPP.
2. Open phpMyAdmin and create the `customer_churn` database.
3. Run the SQL files in the `sql/` folder.
4. Open the notebook in Jupyter.
5. Update the MySQL username/password if required.
6. Run the notebook from top to bottom.

## Notes
Charts are generated from the supplied project dataset. No synthetic customer records are added to the analysis.
