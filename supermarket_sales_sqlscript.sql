
--gathering summary statistics for numerical columns to help with identifying trends, central tendencies and variability in data--

select *
from supermarket_sales_sheet1;

SELECT 
  AVG(`Unit Price`) AS avg_unit_price,
  MIN(`Unit Price`) AS min_unit_price,
  MAX(`Unit Price`) AS max_unit_price,
  STDDEV(`Unit Price`) AS stddev_unit_price,
  
  AVG(`Quantity`) AS avg_quantity,
  MIN(`Quantity`) AS min_quantity,
  MAX(`Quantity`) AS max_quantity,
  STDDEV(`Quantity`) AS stddev_quantity,

  AVG(`Total`) AS avg_total,
  MIN(`Total`) AS min_total,
  MAX(`Total`) AS max_total,
  STDDEV(`Total`) AS stddev_total,

  AVG(`Rating`) AS avg_rating,
  MIN(`Rating`) AS min_rating,
  MAX(`Rating`) AS max_rating,
  STDDEV(`Rating`) AS stddev_rating
FROM supermarket_sales_sheet1;



--analyzing categorical variables to identify number of unique categories, distribution of each categroy and trends or patterns--

--unique categories--

SELECT 'Branch' AS Category, COUNT(DISTINCT Branch) AS Unique_Categories
FROM supermarket_sales_sheet1

UNION ALL

SELECT 'City' AS Category, COUNT(DISTINCT City)
FROM supermarket_sales_sheet1

UNION ALL

SELECT 'Customer Type' AS Category, COUNT(DISTINCT `Customer Type`)
FROM supermarket_sales_sheet1;

--frequency distribution to identify patterns such as branch or city making most sales--

SELECT Branch, COUNT(*) as bnch_frequency
FROM supermarket_sales_sheet1
GROUP BY Branch
ORDER BY bnch_frequency DESC;


SELECT City, COUNT(*) AS city_frequency
FROM supermarket_sales_sheet1
GROUP BY City
ORDER BY city_frequency DESC;


SELECT `Customer Type`, COUNT(*) AS type_frequency
FROM supermarket_sales_sheet1
GROUP BY `Customer Type`
ORDER BY type_frequency DESC;


--lets explore trends across categories e.g branches selling specific product lines more often--

SELECT Branch, `Product Line`, COUNT(*) as product_freq_bnch
FROM supermarket_sales_sheet1
GROUP BY Branch, `Product Line`
ORDER BY Branch, product_freq_bnch DESC;


SELECT `Customer Type`, `Payment`, COUNT(*) AS payment_freq
FROM supermarket_sales_sheet1
GROUP BY `Customer Type`, `Payment`
ORDER BY `Customer Type`, payment_freq DESC;

--distribution analysis: analyzing numerical columns to identify profitability, purchasing patterns, price sensitivity, customer preferences and customer satisfaction--

SELECT 
    CASE
        WHEN Quantity < 5 THEN '<5'
        WHEN Quantity BETWEEN 5 AND 10 THEN '5-10'
        WHEN Quantity BETWEEN 10 AND 15 THEN '10-15'
        ELSE '>15'
    END AS Quantity_Range,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
GROUP BY Quantity_Range
ORDER BY Quantity_Range;

--customers are mostly purchasing between 5-10 items. there are no purchases above 10 items--


SELECT 
    CASE
        WHEN `Unit Price` < 20 THEN '10-20'
        WHEN `Unit Price` BETWEEN 20 AND 40 THEN '20-40'
        WHEN `Unit Price` BETWEEN 40 AND 60 THEN '40-60'
        WHEN `Unit Price` BETWEEN 60 AND 80 THEN '60-80'
        ELSE '80-100'
    END AS Unit_Price_Range,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
GROUP BY Unit_Price_Range
ORDER BY Unit_Price_Range;

--the spread of customers across the price ranges suggest a diverse customer base with higher-priced items being most popular. lets look at the distribution of product lines within the high-performing price ranges--

SELECT 
    `Product Line`,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 80 AND 100
GROUP BY `Product Line`
ORDER BY Frequency DESC;

--fashion accessories is the highest-performing product in 80-100 price range--


SELECT 
    `Product Line`,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 20 AND 40
GROUP BY `Product Line`
ORDER BY Frequency DESC;

--electronic accessories is the highest performing product in the 20-40 price range--


SELECT 
    `Product Line`,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 60 AND 80
GROUP BY `Product Line`
ORDER BY Frequency DESC;

--sports and travel is the highets-performing product in the 60-80 price range--

--analyzing the gender and customer types of the top performing products: Fashion accessories(80-100), electronic accessories(20-40) and sports&travel(60-80)--

SELECT 
    Gender,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 80 AND 100
AND `Product Line` = 'Fashion accessories'
GROUP BY Gender
ORDER BY Frequency DESC;

SELECT 
    `Customer Type`,
    COUNT(*) AS Hprice_frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 80 AND 100
AND `Product Line` = 'Fashion accessories'
GROUP BY `Customer Type`
ORDER BY Hprice_frequency DESC;

--the customers dominating the higher price range product are female and member customers--


SELECT 
    Gender,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 20 AND 40
AND `Product Line` = 'Electronic accessories'
GROUP BY Gender
ORDER BY Frequency DESC;

SELECT 
    `Customer Type`,
    COUNT(*) AS Lprice_frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 20 AND 40
AND `Product Line` = 'Electronic accessories'
GROUP BY `Customer Type`
ORDER BY Lprice_frequency DESC;

--the customers dominating the lower price range product are male and normal customers--


SELECT 
    Gender,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 60 AND 80
AND `Product Line` = 'Sports and travel'
GROUP BY Gender
ORDER BY Frequency DESC;

SELECT 
    `Customer Type`,
    COUNT(*) AS Mprice_frequency
FROM supermarket_sales_sheet1
WHERE `Unit Price` BETWEEN 60 AND 80
AND `Product Line` = 'Sports and travel'
GROUP BY `Customer Type`
ORDER BY Mprice_frequency DESC;

--the customers dominating the mid price range product are male and member customers--

--continue with analyzing distribution--

SELECT 
    CASE
        WHEN `Gross Income` < 50 THEN '<50'
        WHEN `Gross Income` BETWEEN 50 AND 100 THEN '50-100'
        WHEN `Gross Income` BETWEEN 100 AND 150 THEN '100-150'
        ELSE '>150'
    END AS Gross_Income_Range,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
GROUP BY Gross_Income_Range
ORDER BY Gross_Income_Range;

--there is a small margin in terms of gross income in general in the supermarket, lets break it down further to understand which segments are contrinuting to the low gross income--

SELECT 
    `Product Line`, 
    AVG(`Gross Income`) AS avg_gross_income, 
    MIN(`Gross Income`) AS min_gross_income, 
    MAX(`Gross Income`) AS max_gross_income
FROM supermarket_sales_sheet1
GROUP BY 
    `Product Line`;


SELECT 
    `Branch`, 
    AVG(`Gross Income`) AS avg_gross_income, 
    MIN(`Gross Income`) AS min_gross_income, 
    MAX(`Gross Income`) AS max_gross_income
FROM 
    supermarket_sales_sheet1
GROUP BY 
    `Branch`;


SELECT 
    `Customer Type`, 
    AVG(`Gross Income`) AS avg_gross_income, 
    MIN(`Gross Income`) AS min_gross_income, 
    MAX(`Gross Income`) AS max_gross_income
FROM 
     supermarket_sales_sheet1
GROUP BY 
    `Customer Type`;


--there seems to be a conflict where the highest-performing product in the unit prices analysis bringing in the lowest gross income. lets a check why that could be in terms of quantity of products and COGS--

SELECT 
    `Product Line`, 
    SUM(`Quantity`) AS total_quantity, 
    AVG(`Quantity`) AS avg_quantity
FROM 
    supermarket_sales_sheet1
GROUP BY 
    `Product Line`;


SELECT 
    `Product Line`, 
    SUM(`COGS`) AS total_COGS, 
    SUM(`Gross Income`) AS total_gross_income
FROM 
    supermarket_sales_sheet1
GROUP BY 
    `Product Line`;

--despite the high performance of Fashion and Accessories in the unit price analysis, its clear the low gross income comes from low quantity of goods being sold. its likely the products are of higher price, lower volume.--
--Electronic accessores continues to maintain a high performance even in gross income and the quantity of goods sold making it the clear popular product line--


--rating distribution for customer satisfaction analysis--

SELECT 
    CASE 
        WHEN Rating >= 4.0 AND Rating <= 5.0 THEN 'Very Low'
        WHEN Rating > 5.0 AND Rating <= 6.5 THEN 'Low'
        WHEN Rating > 6.5 AND Rating <= 8.0 THEN 'Medium'
        WHEN Rating > 8.0 AND Rating <= 9.5 THEN 'High'
        WHEN Rating > 9.5 AND Rating <= 10.0 THEN 'Very High'
        ELSE 'Out of Range'
    END AS Rating_Range,
    COUNT(*) AS Frequency
FROM supermarket_sales_sheet1
GROUP BY Rating_Range
ORDER BY Rating_Range;


SELECT 
    `Customer Type`, 
    AVG(rating) AS average_rating,
    COUNT(rating) AS count_of_ratings
FROM 
    supermarket_sales_sheet1
GROUP BY 
    `Customer Type`;


SELECT 
    Branch,
    AVG(Rating) AS Average_Rating,
    COUNT(*) AS Rating_Count
FROM 
    supermarket_sales_sheet1
GROUP BY 
    Branch
ORDER BY 
    Average_Rating DESC;

--the customer ratings indicate an average satisfaction from the customers with the most ratings falling in the range 6.5-8.0--





