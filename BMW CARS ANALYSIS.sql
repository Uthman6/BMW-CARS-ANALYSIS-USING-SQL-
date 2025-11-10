-- how to call the table 
SELECT * FROM sakila.`bmw cars`;
-- how to describe the table 
DESC TABLE sakila.`bmw cars`;
-- how to call the distint content of the table 
SELECT DISTINCT Model FROM sakila.`bmw cars`;
-- HOW TO VIEW  DUPLICATE 
SELECT Model, count(*) AS duplicate_count
FROM sakila.`bmw cars`GROUP BY Model HAVING COUNT(*)>1;
-- HOW TO REMOVE THE DUPLICATE 
DELETE FROM sakila.`bmw cars`
WHERE ID NOT IN (
SELECT MIN(ID)
FROM sakila.`bmw cars` 
GROUP BY Model );
-- ANALYSIS OF THE BMW CARS SALE 
-- Average Price bt model
SELECT Model, AVG(Price) AS Average_Price FROM sakila.`bmw cars` GROUP BY Model ORDER BY Average_Price DESC;
-- Average Milleage by year
SELECT Year, AVG(Mileage_KM) AS Average_Mileage FROM sakila.`bmw cars`GROUP BY Year ORDER BY Year DESC;
-- Total sale by Region
SELECT Region, SUM(Sales) AS Total_sale FROM sakila.`bmw cars`GROUP BY Region ORDER BY Total_sale DESC;
-- Total pricce BY REGION
SELECT Region, SUM(Price) AS Total_Price FROM sakila.`bmw cars` GROUP BY Region ORDER BY Total_Price DESC;
-- COUNT OF CARS BY FUEL TYPE 
SELECT Fuel_Type, COUNT(*) AS Number_of_cars FROM sakila.`bmw cars` GROUP BY Fuel_Type;
-- Total of cars sale by fuel type 
SELECT Fuel_Type, SUM(Sales) AS Total_of_sales FROM sakila.`bmw cars` GROUP BY Fuel_Type ORDER BY Total_of_sales;
-- distribution of transmission type 
SELECT Transmission, COUNT(*) AS count FROM sakila.`bmw cars` GROUP BY Transmission;
-- Most Expensive car 
SELECT Model,Year,Price FROM sakila.`bmw cars`ORDER BY Price DESC limit 10;
-- sale type summary 
SELECT Sale_type, COUNT(*) AS Total_cars, AVG(Price) FROM sakila.`bmw cars`GROUP BY Sale_type;
-- sales by color 
SELECT Color, SUM(Sales) AS Total_Sales  FROM sakila.`bmw cars`GROUP BY Color ORDER BY Total_Sales DESC ;
-- Total number of car by color
SELECT Color, COUNT(*) AS Total_no_of_cars FROM sakila.`bmw cars`GROUP BY Color ORDER BY Total_no_of_cars;
-- Total Price  
	SELECT SUM(Price)  AS Total_Price  FROM sakila.`bmw cars`;
    -- Total sales 
    SELECT SUM(Sales) AS total_sales FROM sakila.`bmw cars`;
    -- Profit 
    SELECT  SUM(Price-Sales) As Profit_gain FROM sakila.`bmw cars`;
    
    



