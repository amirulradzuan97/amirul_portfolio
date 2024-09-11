-- To get top sales dealer name for each region 
SELECT 

    Dealer_Name,
    Dealer_Region,
    SUM(Price) AS total_sales, 
    ROW_NUMBER() OVER (PARTITION BY Dealer_Region ORDER BY SUM(Price) DESC) AS row_num
    
FROM car_sales.`car sales.xlsx - car_data`
GROUP BY Dealer_Name, Dealer_Region
;

-- Revenue by models
SELECT 
Model, 
SUM(Price) AS total_sales
FROM car_sales.`car sales.xlsx - car_data`
GROUP BY Model
ORDER BY total_sales DESC
;

-- Top selling models
SELECT 
	Model,
    COUNT(Model) AS total_sold
FROM car_sales.`car sales.xlsx - car_data`
GROUP BY Model
ORDER BY total_sold DESC
;

-- Sales per dealer
SELECT 
	Dealer_Name,
    SUM(Price) AS total_sales
FROM car_sales.`car sales.xlsx - car_data`
GROUP BY Dealer_Name 
ORDER BY total_sales;

-- Sales by region 
SELECT 
	Dealer_Region,
    SUM(Price) AS total_sales
FROM car_sales.`car sales.xlsx - car_data`
GROUP BY Dealer_Region
ORDER BY total_sales DESC;
