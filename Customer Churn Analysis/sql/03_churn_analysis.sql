USE customer_churn;

-- Overall churn rate from the subscription table
SELECT ROUND(AVG(cancellation_date IS NOT NULL) * 100, 2) AS churn_rate
FROM db_subscription;

-- Churn by plan
SELECT plan_type, COUNT(*) AS customers,
       ROUND(AVG(cancellation_date IS NOT NULL) * 100, 2) AS churn_rate
FROM db_subscription
GROUP BY plan_type
ORDER BY churn_rate DESC;

-- Churn by state
SELECT c.state, COUNT(*) AS customers,
       ROUND(AVG(s.cancellation_date IS NOT NULL) * 100, 2) AS churn_rate
FROM db_customer c
JOIN db_subscription s ON c.customerid = s.customerid
GROUP BY c.state
ORDER BY churn_rate DESC;

-- Monthly charges associated with churned customers
SELECT ROUND(SUM(monthly_charges), 2) AS revenue_at_risk
FROM db_subscription
WHERE cancellation_date IS NOT NULL;

-- Support escalation and churn
SELECT sp.escalations, COUNT(DISTINCT sp.customerid) AS customers,
       ROUND(AVG(s.cancellation_date IS NOT NULL) * 100, 2) AS churn_rate
FROM db_support sp
JOIN db_subscription s ON sp.customerid = s.customerid
GROUP BY sp.escalations;
