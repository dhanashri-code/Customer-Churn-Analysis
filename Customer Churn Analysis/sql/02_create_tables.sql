USE customer_churn;

CREATE TABLE IF NOT EXISTS db_customer (
  customerid VARCHAR(20) PRIMARY KEY,
  name VARCHAR(100), country VARCHAR(100), state VARCHAR(100), gender VARCHAR(20),
  dob DATE, interests VARCHAR(100), pincode VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS db_subscription (
  customerid VARCHAR(20) PRIMARY KEY, subscription_start_date DATE, subscription_type VARCHAR(50),
  renewal_date DATE, plan_type VARCHAR(50), contract_type VARCHAR(50), cancellation_date DATE,
  cancellation_reason VARCHAR(255), monthly_charges DECIMAL(10,2), cltv DECIMAL(12,2), churn_score INT
);

CREATE TABLE IF NOT EXISTS db_support (
  customerid VARCHAR(20), complaint_date DATE, escalations VARCHAR(5), csat_score DECIMAL(6,2),
  col_1 VARCHAR(100), comment VARCHAR(255)
);
