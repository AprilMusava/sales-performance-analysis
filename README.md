# sales-performance-analysis
This repository contains an in-depth examination of sales data to derive meaningful insights that can help drive strategic decision-making. The analysis includes various visualizations and findings related to product performance, customer demographics, and branch efficiency.
The objective was to extract actionable insights from the sales data to support strategic initiatives and enhance overall business performance.



Insights and Recommendations are Provided on the Following Key Areas:

* Sales Overview
* Product Line Performance
* Customer Segmentation
* Branch Performance
The SQL queries used for data inspection and cleaning are here: [[SQL Queries Link](./supermarket_sales_sqlscript.sql)].

The interactive Power BI dashboard used to report and explore sales trends can be found here: [Dashboard Link].


Data Structure & Initial Checks

The main database structure consists of one table with the following data: sales data, product data, customer data, and branch data, with a total row count of X records. A brief description of the data is as follows:

* sales data: Contains sales transactions, including total sales, quantity sold, and customer ratings.
* product data: Details of product lines, unit prices, and descriptions.
* customer data: Provides demographic details, including customer type and gender.
* branch data: Lists information about different branches, including location and performance metrics.

# EXECUTIVE SUMMARY

# Overview of Findings

* The analysis reveals significant trends in sales performance, product demand, and customer behavior. Key takeaways for stakeholders include:

* Sales Concentration: High sales volumes are concentrated within certain product lines, suggesting targeted marketing opportunities.

* Customer Behavior: Distinct customer segments show varying preferences in product pricing and purchase frequency.

* Branch Efficiency: Performance metrics indicate that specific branches excel in customer satisfaction, warranting further exploration of their strategies.


![supermarket sales visuals](https://github.com/user-attachments/assets/bcb5b21a-a8e1-4ab2-8eca-cc3906b2669e)


# Insights Deep Dive

Sales Overview

Total Sales Amount: The total sales amount to $322.97k, highlighting overall business health.
Total Quantity Sold: The total quantity sold was 5510 units, indicating high demand in specific categories.
Average Unit Price: The average unit price across all product lines is $55.67.

![general totals](https://github.com/user-attachments/assets/e046cc36-bcf9-48a9-b55e-eeae80a55950)


Product Line Performance

* Top-Performing Product Lines:

Fashion Accessories excelled in the $80-$100 price range, suggesting effective positioning.
Electronic Accessories recorded the highest quantity sold at 971 units, indicating robust consumer interest.
Sports and Travel products peaked in the mid-price range ($60-$80), suggesting balanced demand.

![top performing products](https://github.com/user-attachments/assets/ecaca0da-edbe-4abd-9c7f-5f6b37221225)


* Gross Income Analysis: The analysis revealed contrasting sales volume and gross income, particularly for fashion accessories, which showed lower gross income despite high unit sales.

![grosss income analysis](https://github.com/user-attachments/assets/37ccdbf7-11d7-40e9-9525-ade44886c14f)
![average sales product line](https://github.com/user-attachments/assets/7247cc21-f8b4-4273-b85f-1dce4f572e4f)



Customer Segmentation

* Customer Type Analysis: Members exhibited an average rating of 6.9, while normal customers averaged 7.

![average rating ](https://github.com/user-attachments/assets/d3a1db20-d259-40be-abb8-bb1095ba862e)

* Gender Insights: Female members dominate higher price range purchases, while male normal customers lead in lower-priced segments.

![gender insights](https://github.com/user-attachments/assets/832ea446-9063-4655-bf06-d363fff6bb04)


Branch Performance

* Average Gross Income by Branch:
Branch C averaged 16, Branch B at 15, and Branch A at 14, showcasing Branch C's superior performance.

![branch gross income](https://github.com/user-attachments/assets/b9c169b5-c509-41c1-bba1-6e88a1e0fd0a)

* Ratings by Branch:
Branch C led with an average rating of 7.07, while Branch A and B followed closely at 7.02 and 6.8, respectively.

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
