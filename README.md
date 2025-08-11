# Pizza Sales Report: An End-to-End Data Analysis Project

This project showcases an end-to-end data analysis workflow, from data cleaning and transformation using SQL to building an interactive dashboard in Power BI. The goal is to analyze pizza sales data to identify key trends and business insights.

### 1. Data Cleaning and Analysis with SQL

The project begins with a raw CSV file of pizza sales data. To prepare the data for analysis, I used SQL to perform several key tasks:

* **Database Setup**: Created a `pizza_sales` table in a PostgreSQL database with appropriate data types for each column, including `DATE` and `TIME` for the order details.
* **Data Import**: Imported the data from the CSV file into the newly created table.
* **Key Performance Indicators (KPIs)**: Calculated essential business metrics to get a high-level overview of the sales performance:
    * **Total Revenue**: The total amount of money generated from all pizza sales.
    * **Average Order Value**: The average amount spent per order.
    * **Total Pizzas Sold**: The total number of pizzas sold.
    * **Total Orders**: The total number of unique orders placed.
    * **Average Pizzas Per Order**: The average number of pizzas in a single order.
* **Trend Analysis**: Wrote queries to identify trends over different time periods:
    * **Daily and Monthly Trends**: Analyzed the number of orders by day of the week and month to find the busiest periods.
    * **Sales Percentage by Category and Size**: Calculated the percentage of total sales contributed by each pizza category and size to understand which ones are most popular.
    * **Quarterly Sales Analysis**: Examined sales performance on a quarterly basis.
* **Best and Worst Sellers**: Identified the top 5 and bottom 5 pizzas based on revenue, quantity sold, and total orders to understand which products are performing well and which are not.

### 2. Interactive Dashboard with Power BI

After the data was processed and analyzed in SQL, I used Power BI to create a dynamic and interactive dashboard to visualize the insights.

* **Dashboard Overview**: The dashboard features key performance indicators (KPIs) at the top for an at-a-glance summary of the business's health. The KPIs include **Total Revenue**, **Average Order Value**, **Total Pizzas Sold**, **Total Orders**, and **Average Pizzas per Order**.
* **Busiest Periods**: A daily trend chart shows that orders are highest on weekends, particularly Friday and Saturday evenings, while a monthly trend chart indicates that orders peak in July and January.
* **Sales Performance**: The dashboard includes visuals to break down sales performance:
    * **`% of sales by Pizza Category`**: A donut chart shows the sales distribution across different pizza categories.
    * **`% of sales by Pizza Size`**: Another donut chart reveals that large pizzas contribute the most to total sales, followed by medium and regular sizes.
* **Best and Worst Sellers**: Charts were created to visualize the top and bottom 5 pizzas by revenue, quantity, and total orders, providing a clear picture of product performance. 

### 3. Key Takeaways

The project successfully provides a comprehensive overview of the pizza sales data. The SQL analysis revealed critical business insights, which were then effectively communicated through the Power BI dashboard. The findings can be used to inform business strategies, such as optimizing staffing during peak hours or adjusting the menu to capitalize on the popularity of certain pizza sizes and categories.


### 4. Conclusion

This project demonstrates a full data analysis lifecycle, beginning with raw data and concluding with actionable business insights. By leveraging the strengths of SQL for data manipulation and Power BI for data visualization, the project not only answers specific business questions but also provides a reusable framework for future analysis. The dashboard serves as a powerful tool for stakeholders to monitor performance, identify trends, and make data-driven decisions to enhance sales and profitability.

### Technologies Used

* **SQL (PostgreSQL)**: For data cleaning, transformation, and analysis.
* **Power BI**: For creating the interactive and insightful dashboard.
