📊 Overview

This project showcases an in-depth data analysis of a BMW Cars dataset using SQL. The goal was to extract meaningful insights related to car pricing, mileage, regional sales performance, and overall profitability.

By leveraging SQL’s data manipulation and aggregation capabilities, the analysis uncovers valuable trends and patterns in BMW’s sales and product performance.

🧠 Objectives

Clean and prepare raw data for analysis.

Identify and remove duplicate records.

Analyze key performance indicators (KPIs) such as:

Average price by car model.

Average mileage by year.

Total sales and total price by region.

Fuel type distribution.

Sales and color performance.

Overall profit gain.

🧰 Tools & Technologies

SQL Language (MySQL / MariaDB)

Database: Sakila schema

Dataset: bmw cars table
📈 Insights & Findings

Model Pricing: Luxury models (e.g., X5, X7) have the highest average prices.

Mileage Trends: Newer car years show lower average mileage.

Regional Performance: Some regions contribute significantly more to total sales.

Fuel Preference: Petrol remains the most popular fuel type among buyers.

Profitability: The dataset reveals positive profit margins across multiple car models.

🧩 Skills Demonstrated

SQL Query Writing

Data Cleaning and Deduplication

Data Aggregation & Grouping

Descriptive Data Analysis

Business Intelligence Reporting

🏁 Conclusion

This analysis demonstrates how SQL can transform raw automobile data into actionable business insights. It reflects both technical skills and analytical thinking — essential for roles in data analytics, business intelligence, and decision support.

📎 Author

👤 Abdurrahman Uthman

🎓 300-Level Statistics Student

💼 Intern at BT-HUB Zaria
📄 Key SQL Queries
Data Exploration
SELECT * FROM sakila.`bmw cars`;
DESC TABLE sakila.`bmw cars`;
SELECT DISTINCT Model FROM sakila.`bmw cars`;

Data Cleaning
SELECT Model, COUNT(*) AS duplicate_count
FROM sakila.`bmw cars`
GROUP BY Model
HAVING COUNT(*) > 1;

DELETE FROM sakila.`bmw cars`
WHERE ID NOT IN (
  SELECT MIN(ID)
  FROM sakila.`bmw cars`
  GROUP BY Model
);

Analysis Queries
-- Average Price by Model
SELECT Model, AVG(Price) AS Average_Price 
FROM sakila.`bmw cars`
GROUP BY Model
ORDER BY Average_Price DESC;

-- Average Mileage by Year
SELECT Year, AVG(Mileage_KM) AS Average_Mileage 
FROM sakila.`bmw cars`
GROUP BY Year
ORDER BY Year DESC;

-- Total Sales by Region
SELECT Region, SUM(Sales) AS Total_Sale 
FROM sakila.`bmw cars`
GROUP BY Region
ORDER BY Total_Sale DESC;

-- Profit Gain
SELECT SUM(Price - Sales) AS Profit_Gain 
FROM sakila.`bmw cars`;
