select * from dbo.FraudShield_Banking_Data;

--Total Number of Customers:
select count(Customer_ID) as Total_customers
from FraudShield_Banking_Data;

--Total Fraud Revenue
select sum(Transaction_Amount_in_Million) as total_fraud_revenue
from FraudShield_Banking_Data;

--Avearge Daily Fraud transcations:
select avg(Daily_Transaction_Count) as avg_daily_frauds
from FraudShield_Banking_Data
where Fraud_Label='Fraud';

--Avearge Weekly Frauds:
select avg(Weekly_Transaction_Count) as avg_weekly_frauds
from FraudShield_Banking_Data
where Fraud_Label='Fraud';


--Fraud Transcation Details:
select Customer_ID,Transaction_Type,Transaction_Location,Card_Type from dbo.FraudShield_Banking_Data
where Fraud_Label = 'Fraud';

--Percentage of Fraud Transcations:
select 
round((sum(case when Fraud_Label='Fraud' then 1.0 else 0 end)/count(*))*100,2) as fraud_percentage
from FraudShield_Banking_Data;

--High Risk Transcation Type
select 
TOP 1 Transaction_Type,
count(*) as total_transcations,
sum(case when Fraud_Label='Fraud' then 1 else 0 end) as fraud_numbers
from FraudShield_Banking_Data
group by Transaction_Type
order by fraud_numbers desc;

--Fraud level by Merchant Category
select 
Merchant_Category,
count(*) as total_transactions,
sum(case when Fraud_Label='Fraud' then 1 else 0 end) as fraud_category
from FraudShield_Banking_Data
group by Merchant_Category
order by fraud_category desc;





