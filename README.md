# sales-performance-analysis
This repository contains an in-depth examination of a supermarket's sales data in 3 different locations and includes various visualizations and findings related to product performance, customer demographics, and branch efficiency.
The objective was to extract actionable insights from the sales data to support strategic initiatives and enhance overall business performance.



Insights and Recommendations are Provided on the Following Key Areas:

* Sales Overview
* Product Line Performance
* Customer Segmentation
* Branch Performance
The SQL queries used for data inspection and cleaning are here: [[SQL Queries Link](./supermarket_sales_sqlscript.sql)].

The Power BI dashboard used to report and explore sales trends can be found here: [[Dashboard Link](./Supermarket%20Sales%20Dashboard.pbix)].


Data Structure & Initial Checks

The main database structure consists of one table with the following data: sales data, product data, customer data, and branch data, with a total row count of X records. A brief description of the data is as follows:

* sales data: Contains sales transactions, including total sales, quantity sold, and customer ratings.
* product data: Details of product lines, unit prices, and descriptions.
* customer data: Provides demographic details, including customer type and gender.
* branch data: Lists information about different branches, including location and performance metrics.

# EXECUTIVE SUMMARY

# Overview of Findings

The analysis reveals significant trends in sales performance, product demand, and customer behavior. Key takeaways for stakeholders include:

* Sales Concentration: High sales volumes are concentrated within certain product lines, suggesting targeted marketing opportunities.

* Customer Behavior: Distinct customer segments show varying preferences in product pricing and purchase frequency.

* Branch Efficiency: Performance metrics indicate that specific branches excel in customer satisfaction, warranting further exploration of their strategies.


![supermarket sales visuals](https://github.com/user-attachments/assets/bcb5b21a-a8e1-4ab2-8eca-cc3906b2669e)


# Insights Deep Dive

Sales Overview

* Total Sales Amount: The total sales amount to $322.97k, highlighting overall business health.
* Total Quantity Sold: The total quantity sold was 5510 units, indicating high demand in specific categories.
* Average Unit Price: The average unit price across all product lines is $55.67.

![general totals](https://github.com/user-attachments/assets/e046cc36-bcf9-48a9-b55e-eeae80a55950)


Product Line Performance

* Main insight 1: The highest-performing product in the 80-100 price range is Fashion Accessories, contributing significantly to overall sales.

* Main insight 2: In the 20-40 price range, Electronic Accessories leads in sales, indicating strong demand for affordable technology.

* Main insight 3: Sports and Travel products excel in the 60-80 price range, showcasing seasonal purchasing trends.

* Main insight 4: The data indicates a competitive market where price sensitivity varies significantly among customer demographics.

![top performing products](https://github.com/user-attachments/assets/ecaca0da-edbe-4abd-9c7f-5f6b37221225)


Gross Income Distribution by Product Line:

* Main insight 1: Gross income data shows Electronic Accessories achieving the highest revenue despite lower quantity sold.

* Main insight 2: Fashion Accessories lag in gross income relative to sales volume, prompting a review of pricing strategies.

* Main insight 3: Home and Lifestyle products maintain steady sales, suggesting potential for growth in targeted marketing.

* Main insight 4: Income distribution reflects broader market trends that can be leveraged for strategic planning.

![gross income vs avg units](https://github.com/user-attachments/assets/89b8f815-a47a-421d-9674-0b42e04acfc8)


Customer Demographics and Purchase Behavior:

* Main insight 1: Female customers dominate the higher price range, while male customers lead in the lower price range.

* Main insight 2: Member customers tend to spend more on average than normal customers, emphasizing the value of loyalty programs.

* Main insight 3: Sales data indicates notable trends based on branch locations, with Branch C having a diverse customer base.

![average rating ](https://github.com/user-attachments/assets/d3a1db20-d259-40be-abb8-bb1095ba862e) ![gender insights](https://github.com/user-attachments/assets/832ea446-9063-4655-bf06-d363fff6bb04)


Branch Performance

* Main insight 1: Branch C averaged 16, Branch B at 15, and Branch A at 14, showcasing Branch C's superior performance.

* Main insight 2: Branch C led with an average rating of 7.07, while Branch A and B followed closely at 7.02 and 6.8, respectively.

![branch gross income](https://github.com/user-attachments/assets/b9c169b5-c509-41c1-bba1-6e88a1e0fd0a)


# Recommendations
Based on the insights and findings above, we would recommend the marketing and sales teams to consider the following:

* Product Adjustments: Explore pricing strategies for fashion accessories to enhance gross income.

* Targeted Marketing: Develop tailored marketing campaigns focusing on female customers for higher-priced products.

* Replicate Success: Investigate successful strategies used in Branch C and apply them to underperforming branches.

* Growth Opportunities: Leverage insights from gross income distribution to identify areas for increased marketing efforts.


# Assumptions and Caveats

Throughout the analysis, several assumptions were made to manage data challenges:

Assumption: Missing customer demographic records were inferred based on overall trends observed within the dataset.
Assumption: December data was imputed using historical trends due to missing entries.
Assumption: Ratings with non-sensical values were excluded from the analysis to maintain data integrity.
