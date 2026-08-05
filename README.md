🎯 Business Questions

The analysis was designed to answer the following business questions:

What is the overall sales performance?
Which branch generates the highest sales?
Which branch generates the highest gross income?
Which product lines generate the most revenue?
Which product lines sell the highest quantities?
Which product lines generate the highest gross income?
Which product line has the highest average transaction value?
Which product line has the highest average quantity per transaction?
Which customer type contributes the most sales?
Which customer type generates the highest average transaction value?
How do male and female customers compare in sales performance?
Which payment method is most frequently used?
Which payment method generates the highest sales?
Which month generates the highest sales?
Which day of the week performs best?
Which hours generate the highest sales?
Which periods have the highest average transaction values?
🛠️ Tools & Technologies
Tool / Technology	Purpose
Python	Data inspection, cleaning, transformation, validation, exploratory analysis and visualisation
Pandas	Data manipulation, cleaning, grouping and aggregation
NumPy	Numerical calculations and data validation
Matplotlib	Data visualisation and chart creation
Seaborn	Statistical data visualisation
Jupyter Notebook	Interactive Python analysis and documentation
SQL	Data exploration, querying, aggregation and business analysis
SQLite	Database storage and querying
Visual Studio Code	SQL development and database analysis
CSV	Data transfer between the SQL analysis stage and Tableau
Tableau	Dashboard development, KPI cards, filters and visualisations
Tableau Public	Publishing and sharing the interactive dashboard
GitHub	Project documentation and portfolio presentation
📁 Dataset

The dataset contains 1,000 supermarket sales transactions.

The analysis uses transaction-level information relating to:

Branch
City
Customer Type
Gender
Product Line
Unit Price
Quantity
Tax
Sales
Date
Time
Payment
Gross Income
Gross Margin Percentage
Rating

Additional analytical fields were created during the Python stage for time-based analysis.

🔄 Project Workflow

The project was completed through several connected analytical stages.

Raw Dataset
     ↓
Python / Jupyter Notebook
     ↓
Data Inspection
     ↓
Data Cleaning
     ↓
Feature Engineering
     ↓
Data Validation
     ↓
Exploratory Data Analysis
     ↓
Cleaned CSV
     ↓
SQLite / SQL
     ↓
Business Analysis
     ↓
CSV Data Transfer
     ↓
Tableau
     ↓
Dashboard Development
     ↓
Tableau Public
     ↓
Portfolio Presentation
🐍 Stage 1 — Python & Jupyter Notebook

The project began in Jupyter Notebook, where Python was used as the first stage of the analytical workflow.

The notebook used:

Pandas
NumPy
Matplotlib
Seaborn

The initial dataset was loaded into the notebook from:

raw_data.csv

The dataset was then inspected, cleaned, transformed, validated, and explored before moving into the SQL and Tableau stages.

🔎 Python Data Inspection

The first stage involved understanding the structure and quality of the dataset.

The following inspection activities were performed:

Previewing the first records using head()
Reviewing the dataset structure using info()
Generating descriptive statistics using describe()
Checking for missing values
Checking for duplicate records
Reviewing categorical distributions
Checking numerical fields
Reviewing date and time fields
Checking data types
Reviewing the shape of the dataset

The analysis also examined categorical distributions for:

Branch
City
Product Line
Customer Type
Gender
Payment

The Rating field was also reviewed using descriptive statistics.

🧹 Data Cleaning & Transformation

The dataset was cleaned and transformed in Python before further analysis.

Date Processing

The Date field was converted into a proper datetime format.

This enabled the creation of additional time-related variables.

Time Processing

The original Time field was converted and validated to ensure it could be used for time-based analysis.

The hour was extracted from the transaction time to support hourly sales analysis.

Missing Values & Duplicate Checks

The dataset was checked for:

Missing values
Duplicate records

These checks were repeated after transformation to confirm that the dataset remained suitable for analysis.

⚙️ Feature Engineering

Several analytical variables were created from the original date and time fields.

These included:

Year
Month
Month_Name
Day
Day_of_Week
Day_Name
Hour

A Sales_Per_Unit field was also created:

Sales_Per_Unit = Sales / Quantity

These engineered variables supported:

Monthly analysis
Day-of-week analysis
Hourly analysis
Transaction-level analysis
Unit-level sales analysis
✅ Data Validation

The project included validation checks to confirm that important financial fields were internally consistent.

Sales Validation

Sales values were independently calculated using:

(Unit Price × Quantity) × 1.05

The calculated values were compared with the existing Sales field to identify any discrepancies.

Gross Income Validation

Gross income was independently calculated using:

Sales × Gross Margin Percentage / 100

The calculated results were compared with the original gross income field.

These checks helped validate the consistency of the dataset before proceeding to the business analysis stage.

🔎 Python Exploratory Data Analysis

After cleaning and validation, Python was used to perform exploratory analysis.

The analysis covered the following areas.

Branch Analysis
Total sales by branch
Average transaction value by branch
Gross income by branch
Product-Line Analysis
Total sales by product line
Quantity sold by product line
Gross income by product line
Average transaction value by product line
Average quantity per transaction
Customer Analysis
Sales by customer type
Average transaction value by customer type
Sales by gender
Average transaction value by gender
Payment Analysis
Total sales by payment method
Time Analysis
Sales by month
Number of transactions by month
Average transaction value by month
Sales by day of week
Number of transactions by day
Average transaction value by day
Sales by hour
Number of transactions by hour
Average transaction value by hour
Gross Income Analysis
Gross income by branch
Gross income by product line
Gross income by customer type
Gross income by gender
📊 Python Visualisation

Matplotlib and Seaborn were used to create exploratory visualisations of key business metrics.

The notebook produced visualisations covering:

Total sales by branch
Total sales by product line
Total sales by customer type
Total sales by gender
Total sales by month
Total sales by day of week
Total sales by hour
Gross income by product line
Gross income by branch
Quantity sold by product line
Average transaction value by product line
Average transaction value by customer type
Average transaction value by gender
Average transaction value by hour

These visualisations helped identify the major patterns that were later incorporated into the final Tableau dashboard.

💾 Cleaned Dataset Export

After the Python cleaning, transformation, validation, and exploratory analysis stage, the cleaned dataset was exported as:

cleaned_data.csv

This created a clean dataset that could be used in the subsequent stages of the project.

🗄️ Stage 2 — SQL & SQLite Analysis

The next stage involved structured SQL analysis using SQLite.

SQL was used to perform:

Business-focused queries
Aggregations
Comparisons
Performance analysis
Data validation

SQL development and analysis were performed using Visual Studio Code.

The SQL analysis was used to answer the major business questions before the Tableau dashboard was developed.

📌 SQL Analysis Areas
1. Overall Business Performance
Total number of transactions
Total sales
Total quantity sold
Average transaction value
2. Branch Analysis
Total sales by branch
Average transaction value by branch
Gross income by branch
3. Product-Line Analysis
Total sales by product line
Total quantity sold by product line
Gross income by product line
Average transaction value by product line
Average quantity per transaction by product line
4. Customer Analysis
Total sales by customer type
Number of transactions by customer type
Average transaction value by customer type
Total sales by gender
Number of transactions by gender
Average transaction value by gender
Gross income by customer type
Gross income by gender
5. Payment Method Analysis
Number of transactions by payment method
Total sales by payment method
Average transaction value by payment method
6. Time-Based Analysis
Monthly
Total sales by month
Number of transactions by month
Average transaction value by month
Day of Week
Total sales by day
Number of transactions by day
Average transaction value by day
Hourly
Total sales by hour
Number of transactions by hour
Average transaction value by hour
📈 Key SQL Results
Overall Performance
Metric	Result
Total Transactions	1,000
Total Sales	322,966.75
Total Quantity Sold	5,510
Average Transaction Value	322.97
🏢 Branch Performance

Giza generated the highest total sales.

Branch	Total Sales
Giza	110,568.71
Alex	106,200.37
Cairo	106,197.67
Insight

Giza was the strongest-performing branch by total sales.

Python analysis also showed that Giza had the highest average sales per transaction and gross income among the three branches.

🛍️ Product-Line Performance
Highest Sales

Food and Beverages generated the highest total sales at:

56,144.84

Product Line	Total Sales
Food and Beverages	56,144.84
Sports and Travel	55,122.83
Electronic Accessories	54,337.53
Fashion Accessories	54,305.89
Home and Lifestyle	53,861.91
Health and Beauty	49,193.74
Highest Quantity Sold

Electronic Accessories recorded the highest quantity sold:

971 units

Highest Gross Income

Food and Beverages generated the highest gross income:

2,673.56

Highest Average Transaction Value

Home and Lifestyle recorded the highest average transaction value:

336.64

Product Insight

The analysis shows that the product line with the highest unit volume is not necessarily the product line with the highest revenue.

Food and Beverages → highest total sales
Electronic Accessories → highest quantity sold
Home and Lifestyle → highest average transaction value
Health and Beauty → lowest overall sales and quantity

This demonstrates the importance of analysing multiple performance metrics rather than relying on sales volume alone.

👥 Customer Analysis
Customer Type

Members generated significantly more sales and transactions than Normal customers.

Customer Type	Sales	Transactions	Avg. Transaction
Member	189,694.76	565	335.74
Normal	133,271.98	435	306.37
Insight

Members generated more sales, completed more transactions, and had a higher average transaction value than Normal customers.

This indicates stronger spending and transaction activity among members in the analysed dataset.

👨‍👩‍👧 Gender Analysis

Female customers generated higher sales and had a higher average transaction value than male customers.

Gender	Sales	Transactions	Avg. Transaction
Female	194,671.84	571	340.93
Male	128,294.91	429	299.06
Insight

Female customers recorded both:

Higher transaction volume
Higher average transaction value

than male customers in the analysed dataset.

💳 Payment Method Analysis

The dataset contains three major payment methods:

Ewallet
Cash
Credit Card
Transaction Volume

Ewallet recorded the highest number of transactions with:

345 transactions

Cash followed closely with:

344 transactions

Total Sales
Payment Method	Total Sales
Cash	112,206.57
Ewallet	109,993.11
Credit Card	100,767.07
Insight

Cash generated the highest total sales, while Ewallet recorded the highest transaction count.

Cash also recorded the highest average transaction value at:

326.18

📅 Time-Based Analysis
Monthly Sales
Month	Sales	Transactions	Avg. Transaction
January	116,291.87	352	330.37
March	109,455.51	345	317.26
February	97,219.37	303	320.86
Insight

January was the strongest month across:

Total sales
Number of transactions
Average transaction value
📆 Day-of-Week Performance

Saturday was the strongest day.

Metric	Result
Highest Sales Day	Saturday — 56,120.81
Transactions	164
Average Transaction Value	342.20

Monday was the weakest day by total sales:

37,899.08

Insight

Saturday led in both transaction volume and average transaction value, making it the strongest day in the analysed dataset.

⏰ Hourly Performance
Finding	Result
Highest Total Sales Hour	19:00 — 39,699.51
Highest Transaction Volume	19:00 — 113 transactions
Highest Average Transaction Value	14:00 — 371.43
Lowest Total Sales Hour	20:00 — 22,969.53
Insight

19:00 generated the highest overall sales and transaction volume.

However, 14:00 had the highest average transaction value.

This means the time with the highest sales volume was not necessarily the time when customers spent the most per transaction.

💰 Gross Income Analysis

The analysis also examined gross income across different business dimensions.

Key Findings
Giza generated the highest gross income: 5,265.18
Food and Beverages generated the highest product-line gross income: 2,673.56
Members generated more gross income than Normal customers
Female customers generated more gross income than male customers

This provided an additional profitability-oriented perspective beyond total sales.

🔄 Stage 3 — Data Transfer to Tableau

After the Python and SQL stages, the cleaned and analysed data was prepared for visualisation in Tableau.

The workflow was:

Python / Jupyter Notebook
        ↓
Data Cleaning & Feature Engineering
        ↓
Exploratory Analysis & Validation
        ↓
Cleaned CSV
        ↓
SQLite / SQL Analysis
        ↓
Business Aggregations
        ↓
CSV Data Transfer
        ↓
Tableau

The SQL analysis was used to validate and understand the business metrics before they were translated into the Tableau dashboard.

📊 Stage 4 — Tableau Dashboard Development

Tableau was used to transform the analytical results into an interactive business intelligence dashboard.

The dashboard was designed to provide management with a concise visual overview of:

Sales performance
Branch performance
Product performance
Customer behaviour
Gross income
Time-based performance
📌 Dashboard Components
KPI Cards

The dashboard contains five KPI cards:

Total Sales
Total Quantity
Average Transaction Value
Gross Income
Number of Transactions
Sales Analysis

The dashboard includes:

Sales by Branch
Sales by Product Line
Gross Income by Product Line
Customer Analysis

The dashboard includes:

Sales by Customer Type
Customer performance comparisons
Time Analysis

The dashboard includes:

Sales by Month
Sales by Hour
Interactive Filters

Interactive filters allow users to explore different segments of supermarket performance and dynamically analyse the dashboard.

🖼️ Dashboard Preview

🔗 Live Tableau Dashboard

View and interact with the published Tableau Public dashboard:

Open Supermarket Sales Dashboard on Tableau Public

💡 Key Insights

The complete analysis produced the following major findings:

1. Giza was the strongest-performing branch

Giza generated:

110,568.71 in total sales

making it the strongest-performing branch.

2. Food and Beverages was the strongest product line by sales

Food and Beverages generated:

56,144.84 in sales
2,673.56 in gross income
3. Electronic Accessories had the highest quantity sold

Electronic Accessories recorded:

971 units

However, it did not generate the highest total sales.

4. Home and Lifestyle had the highest average transaction value

Home and Lifestyle recorded an average transaction value of:

336.64

5. Members were the strongest customer segment

Members generated:

189,694.76 in sales from 565 transactions.

They also recorded a higher average transaction value than Normal customers.

6. Female customers generated higher sales

Female customers generated:

194,671.84

compared with:

128,294.91 for male customers.

7. Cash generated the highest total sales

Cash payments generated:

112,206.57

8. January was the strongest month

January generated:

116,291.87 in sales from 352 transactions.

9. Saturday was the strongest day

Saturday generated:

56,120.81 in sales.

10. 19:00 was the strongest sales hour

19:00 generated:

39,699.51 in sales from 113 transactions.

11. 14:00 had the highest average transaction value

The highest average transaction value was:

371.43 at 14:00

This demonstrates the difference between transaction volume and transaction value.

📌 Business Recommendations
1. Strengthen the Membership Programme

Members generated significantly higher sales and average transaction values.

The business could strengthen customer retention through:

Member-exclusive promotions
Loyalty rewards
Targeted offers
Repeat-purchase incentives
2. Prioritise High-Performing Product Lines

Food and Beverages generated the highest sales and gross income.

Management could:

Maintain adequate inventory
Reduce stock-out risk
Introduce targeted promotions
Monitor demand trends
3. Investigate Electronic Accessories

Electronic Accessories recorded the highest quantity sold but did not generate the highest sales.

Management could investigate:

Pricing
Product mix
Profit margins
Cross-selling opportunities
Customer purchasing patterns
4. Optimise Weekend Promotions

Saturday recorded the highest sales.

The business could consider:

Increasing staffing during peak periods
Ensuring sufficient inventory
Running targeted weekend promotions
Increasing customer engagement
5. Optimise Peak Hours

Sales were strongest around 19:00, while average transaction value was highest around 14:00.

Management could align:

Staffing
Inventory
Promotions
Customer service resources

with these high-value periods.

6. Improve Lower-Performing Periods

Monday recorded the lowest sales.

The business could test targeted promotions, loyalty incentives, or special offers to increase customer traffic during weaker periods.

7. Monitor Payment Behaviour

Cash generated the highest sales, while Ewallet recorded the highest transaction count.

The business should continue supporting major payment channels while monitoring changes in customer payment preferences.

🎯 Project Outcome

This project demonstrates practical experience in:

Python data analysis
Pandas data manipulation
NumPy-based numerical analysis
Data cleaning
Data validation
Feature engineering
Exploratory data analysis
Data visualisation
SQL querying
SQLite database analysis
Business performance analysis
Customer segmentation
Product analysis
Payment behaviour analysis
Time-based analysis
KPI development
Tableau dashboard development
Interactive data visualisation
Business intelligence
Data storytelling
Business recommendations

The project demonstrates how raw transactional data can be transformed into a structured, validated, and interactive business intelligence solution that supports data-driven decision-making.

📂 Project Structure
Supermarket-Sales-Analysis/
│
├── data/
│   ├── raw_data.csv
│   └── cleaned_data.csv
│
├── dashboard/
│   └── dashboard.png
│
├── images/
│   ├── sales_by_branch.png
│   ├── product_sales_by_product_line.png
│   ├── sales_by_customer_type.png
│   ├── sales_by_gender.png
│   ├── sales_by_month.png
│   ├── sales_by_day.png
│   ├── sales_by_hour.png
│   ├── gross_income_by_product_line.png
│   ├── gross_income_by_branch.png
│   ├── quantity_by_product_line.png
│   ├── avg_transaction_by_product_line.png
│   ├── avg_transaction_by_customer_type.png
│   ├── avg_transaction_by_gender.png
│   └── avg_transaction_by_hour.png
│
├── notebooks/
│   └── supermarket_analysis.ipynb
│
├── supermarket_sales.sql
│
├── supermarket_dashboard.twbx
│
└── README.md
📊 Analytical Workflow

The project demonstrates the following progression:

Phase 1 — Data Understanding

The raw transaction dataset was loaded into Python and inspected for:

Structure
Data types
Missing values
Duplicates
Categorical distributions
Numerical characteristics
Phase 2 — Data Cleaning

Date and time fields were standardised, numerical fields were reviewed, and data quality checks were performed.

Phase 3 — Feature Engineering

Additional fields such as:

Year
Month
Month Name
Day
Day of Week
Day Name
Hour
Sales Per Unit

were created to support deeper analysis.

Phase 4 — Data Validation

Sales and gross income calculations were independently validated against the source fields.

Phase 5 — Exploratory Data Analysis

Python was used to identify patterns across:

Branches
Products
Customers
Gender
Payment methods
Time periods
Gross income
Phase 6 — SQL Business Analysis

SQLite and SQL were used to perform structured aggregations and answer specific business questions.

SQL development and analysis were performed using Visual Studio Code.

Phase 7 — Data Transfer

The cleaned and analysed data was prepared in CSV format for use in Tableau.

Phase 8 — Tableau Dashboard

Tableau was used to build:

KPI cards
Charts
Filters
Dashboard layouts
Business performance visualisations
Phase 9 — Tableau Public

The finished dashboard was published to Tableau Public for interactive access and portfolio presentation.

🧠 Analytical Approach

The project was structured around the principle of moving from data quality → exploration → validation → business analysis → visualisation → recommendations.

Rather than immediately building charts, the data was first inspected and validated in Python.

SQL was then used to perform structured business aggregations and answer specific analytical questions.

The results were subsequently translated into Tableau visualisations so that business users could interact with the findings through filters and dashboard components.

This workflow demonstrates the practical process of transforming raw transactional data into business intelligence.

📌 Business Value

The project demonstrates how transaction-level supermarket data can be used to identify:

High-performing branches
High-performing product categories
Customer segments with stronger spending patterns
Preferred payment methods
High-performing sales periods
High-volume products
Differences between sales volume and transaction value
Opportunities for customer retention
Opportunities for inventory optimisation
Opportunities for targeted promotions
Opportunities for operational planning

The analysis therefore moves beyond descriptive reporting and provides practical recommendations that could support management decision-making.

👤 Author

Awoyera Olayinka Oluwadunsin

Data Analyst | Data Science Enthusiast

Skills Demonstrated

Python • Pandas • NumPy • Matplotlib • Seaborn • SQL • SQLite • Tableau • Data Cleaning • Data Analysis • Data Visualisation • Business Intelligence • Data Storytelling

🔗 Project Links
Tableau Public

View Interactive Supermarket Sales Dashboard

GitHub

Add your GitHub repository URL here after publishing the project.

⭐ Conclusion

The Supermarket Sales Analysis project demonstrates a complete end-to-end data analytics workflow.

Starting with raw transaction data, the project used Python and Jupyter Notebook for data inspection, cleaning, transformation, feature engineering, validation, exploratory analysis, and visualisation.

The cleaned data was then used alongside SQLite and SQL in Visual Studio Code to perform structured business analysis and calculate key performance metrics.

The resulting analytical findings were prepared for Tableau, where they were transformed into an interactive dashboard containing KPI cards, filters, sales analysis, product-line analysis, customer analysis, gross income analysis, and time-based performance visualisations.

Finally, the dashboard was published through Tableau Public, providing an interactive business intelligence solution suitable for portfolio presentation.

The project demonstrates the ability to move from raw data to validated analysis, from analysis to visualisation, and from visualisation to actionable business recommendations.


🎯 Business Questions

The analysis was designed to answer the following business questions:

What is the overall sales performance?
Which branch generates the highest sales?
Which branch generates the highest gross income?
Which product lines generate the most revenue?
Which product lines sell the highest quantities?
Which product lines generate the highest gross income?
Which product line has the highest average transaction value?
Which product line has the highest average quantity per transaction?
Which customer type contributes the most sales?
Which customer type generates the highest average transaction value?
How do male and female customers compare in sales performance?
Which payment method is most frequently used?
Which payment method generates the highest sales?
Which month generates the highest sales?
Which day of the week performs best?
Which hours generate the highest sales?
Which periods have the highest average transaction values?
🛠️ Tools & Technologies
Tool / Technology	Purpose
Python	Data inspection, cleaning, transformation, validation, exploratory analysis and visualisation
Pandas	Data manipulation, cleaning, grouping and aggregation
NumPy	Numerical calculations and data validation
Matplotlib	Data visualisation and chart creation
Seaborn	Statistical data visualisation
Jupyter Notebook	Interactive Python analysis and documentation
SQL	Data exploration, querying, aggregation and business analysis
SQLite	Database storage and querying
Visual Studio Code	SQL development and database analysis
CSV	Data transfer between the SQL analysis stage and Tableau
Tableau	Dashboard development, KPI cards, filters and visualisations
Tableau Public	Publishing and sharing the interactive dashboard
GitHub	Project documentation and portfolio presentation
📁 Dataset

The dataset contains 1,000 supermarket sales transactions.

The analysis uses transaction-level information relating to:

Branch
City
Customer Type
Gender
Product Line
Unit Price
Quantity
Tax
Sales
Date
Time
Payment
Gross Income
Gross Margin Percentage
Rating

Additional analytical fields were created during the Python stage for time-based analysis.

🔄 Project Workflow

The project was completed through several connected analytical stages.

Raw Dataset
     ↓
Python / Jupyter Notebook
     ↓
Data Inspection
     ↓
Data Cleaning
     ↓
Feature Engineering
     ↓
Data Validation
     ↓
Exploratory Data Analysis
     ↓
Cleaned CSV
     ↓
SQLite / SQL
     ↓
Business Analysis
     ↓
CSV Data Transfer
     ↓
Tableau
     ↓
Dashboard Development
     ↓
Tableau Public
     ↓
Portfolio Presentation
🐍 Stage 1 — Python & Jupyter Notebook

The project began in Jupyter Notebook, where Python was used as the first stage of the analytical workflow.

The notebook used:

Pandas
NumPy
Matplotlib
Seaborn

The initial dataset was loaded into the notebook from:

raw_data.csv

The dataset was then inspected, cleaned, transformed, validated, and explored before moving into the SQL and Tableau stages.

🔎 Python Data Inspection

The first stage involved understanding the structure and quality of the dataset.

The following inspection activities were performed:

Previewing the first records using head()
Reviewing the dataset structure using info()
Generating descriptive statistics using describe()
Checking for missing values
Checking for duplicate records
Reviewing categorical distributions
Checking numerical fields
Reviewing date and time fields
Checking data types
Reviewing the shape of the dataset

The analysis also examined categorical distributions for:

Branch
City
Product Line
Customer Type
Gender
Payment

The Rating field was also reviewed using descriptive statistics.

🧹 Data Cleaning & Transformation

The dataset was cleaned and transformed in Python before further analysis.

Date Processing

The Date field was converted into a proper datetime format.

This enabled the creation of additional time-related variables.

Time Processing

The original Time field was converted and validated to ensure it could be used for time-based analysis.

The hour was extracted from the transaction time to support hourly sales analysis.

Missing Values & Duplicate Checks

The dataset was checked for:

Missing values
Duplicate records

These checks were repeated after transformation to confirm that the dataset remained suitable for analysis.

⚙️ Feature Engineering

Several analytical variables were created from the original date and time fields.

These included:

Year
Month
Month_Name
Day
Day_of_Week
Day_Name
Hour

A Sales_Per_Unit field was also created:

Sales_Per_Unit = Sales / Quantity

These engineered variables supported:

Monthly analysis
Day-of-week analysis
Hourly analysis
Transaction-level analysis
Unit-level sales analysis
✅ Data Validation

The project included validation checks to confirm that important financial fields were internally consistent.

Sales Validation

Sales values were independently calculated using:

(Unit Price × Quantity) × 1.05

The calculated values were compared with the existing Sales field to identify any discrepancies.

Gross Income Validation

Gross income was independently calculated using:

Sales × Gross Margin Percentage / 100

The calculated results were compared with the original gross income field.

These checks helped validate the consistency of the dataset before proceeding to the business analysis stage.

🔎 Python Exploratory Data Analysis

After cleaning and validation, Python was used to perform exploratory analysis.

The analysis covered the following areas.

Branch Analysis
Total sales by branch
Average transaction value by branch
Gross income by branch
Product-Line Analysis
Total sales by product line
Quantity sold by product line
Gross income by product line
Average transaction value by product line
Average quantity per transaction
Customer Analysis
Sales by customer type
Average transaction value by customer type
Sales by gender
Average transaction value by gender
Payment Analysis
Total sales by payment method
Time Analysis
Sales by month
Number of transactions by month
Average transaction value by month
Sales by day of week
Number of transactions by day
Average transaction value by day
Sales by hour
Number of transactions by hour
Average transaction value by hour
Gross Income Analysis
Gross income by branch
Gross income by product line
Gross income by customer type
Gross income by gender
📊 Python Visualisation

Matplotlib and Seaborn were used to create exploratory visualisations of key business metrics.

The notebook produced visualisations covering:

Total sales by branch
Total sales by product line
Total sales by customer type
Total sales by gender
Total sales by month
Total sales by day of week
Total sales by hour
Gross income by product line
Gross income by branch
Quantity sold by product line
Average transaction value by product line
Average transaction value by customer type
Average transaction value by gender
Average transaction value by hour

These visualisations helped identify the major patterns that were later incorporated into the final Tableau dashboard.

💾 Cleaned Dataset Export

After the Python cleaning, transformation, validation, and exploratory analysis stage, the cleaned dataset was exported as:

cleaned_data.csv

This created a clean dataset that could be used in the subsequent stages of the project.

🗄️ Stage 2 — SQL & SQLite Analysis

The next stage involved structured SQL analysis using SQLite.

SQL was used to perform:

Business-focused queries
Aggregations
Comparisons
Performance analysis
Data validation

SQL development and analysis were performed using Visual Studio Code.

The SQL analysis was used to answer the major business questions before the Tableau dashboard was developed.

📌 SQL Analysis Areas
1. Overall Business Performance
Total number of transactions
Total sales
Total quantity sold
Average transaction value
2. Branch Analysis
Total sales by branch
Average transaction value by branch
Gross income by branch
3. Product-Line Analysis
Total sales by product line
Total quantity sold by product line
Gross income by product line
Average transaction value by product line
Average quantity per transaction by product line
4. Customer Analysis
Total sales by customer type
Number of transactions by customer type
Average transaction value by customer type
Total sales by gender
Number of transactions by gender
Average transaction value by gender
Gross income by customer type
Gross income by gender
5. Payment Method Analysis
Number of transactions by payment method
Total sales by payment method
Average transaction value by payment method
6. Time-Based Analysis
Monthly
Total sales by month
Number of transactions by month
Average transaction value by month
Day of Week
Total sales by day
Number of transactions by day
Average transaction value by day
Hourly
Total sales by hour
Number of transactions by hour
Average transaction value by hour
📈 Key SQL Results
Overall Performance
Metric	Result
Total Transactions	1,000
Total Sales	322,966.75
Total Quantity Sold	5,510
Average Transaction Value	322.97
🏢 Branch Performance

Giza generated the highest total sales.

Branch	Total Sales
Giza	110,568.71
Alex	106,200.37
Cairo	106,197.67
Insight

Giza was the strongest-performing branch by total sales.

Python analysis also showed that Giza had the highest average sales per transaction and gross income among the three branches.

🛍️ Product-Line Performance
Highest Sales

Food and Beverages generated the highest total sales at:

56,144.84

Product Line	Total Sales
Food and Beverages	56,144.84
Sports and Travel	55,122.83
Electronic Accessories	54,337.53
Fashion Accessories	54,305.89
Home and Lifestyle	53,861.91
Health and Beauty	49,193.74
Highest Quantity Sold

Electronic Accessories recorded the highest quantity sold:

971 units

Highest Gross Income

Food and Beverages generated the highest gross income:

2,673.56

Highest Average Transaction Value

Home and Lifestyle recorded the highest average transaction value:

336.64

Product Insight

The analysis shows that the product line with the highest unit volume is not necessarily the product line with the highest revenue.

Food and Beverages → highest total sales
Electronic Accessories → highest quantity sold
Home and Lifestyle → highest average transaction value
Health and Beauty → lowest overall sales and quantity

This demonstrates the importance of analysing multiple performance metrics rather than relying on sales volume alone.

👥 Customer Analysis
Customer Type

Members generated significantly more sales and transactions than Normal customers.

Customer Type	Sales	Transactions	Avg. Transaction
Member	189,694.76	565	335.74
Normal	133,271.98	435	306.37
Insight

Members generated more sales, completed more transactions, and had a higher average transaction value than Normal customers.

This indicates stronger spending and transaction activity among members in the analysed dataset.

👨‍👩‍👧 Gender Analysis

Female customers generated higher sales and had a higher average transaction value than male customers.

Gender	Sales	Transactions	Avg. Transaction
Female	194,671.84	571	340.93
Male	128,294.91	429	299.06
Insight

Female customers recorded both:

Higher transaction volume
Higher average transaction value

than male customers in the analysed dataset.

💳 Payment Method Analysis

The dataset contains three major payment methods:

Ewallet
Cash
Credit Card
Transaction Volume

Ewallet recorded the highest number of transactions with:

345 transactions

Cash followed closely with:

344 transactions

Total Sales
Payment Method	Total Sales
Cash	112,206.57
Ewallet	109,993.11
Credit Card	100,767.07
Insight

Cash generated the highest total sales, while Ewallet recorded the highest transaction count.

Cash also recorded the highest average transaction value at:

326.18

📅 Time-Based Analysis
Monthly Sales
Month	Sales	Transactions	Avg. Transaction
January	116,291.87	352	330.37
March	109,455.51	345	317.26
February	97,219.37	303	320.86
Insight

January was the strongest month across:

Total sales
Number of transactions
Average transaction value
📆 Day-of-Week Performance

Saturday was the strongest day.

Metric	Result
Highest Sales Day	Saturday — 56,120.81
Transactions	164
Average Transaction Value	342.20

Monday was the weakest day by total sales:

37,899.08

Insight

Saturday led in both transaction volume and average transaction value, making it the strongest day in the analysed dataset.

⏰ Hourly Performance
Finding	Result
Highest Total Sales Hour	19:00 — 39,699.51
Highest Transaction Volume	19:00 — 113 transactions
Highest Average Transaction Value	14:00 — 371.43
Lowest Total Sales Hour	20:00 — 22,969.53
Insight

19:00 generated the highest overall sales and transaction volume.

However, 14:00 had the highest average transaction value.

This means the time with the highest sales volume was not necessarily the time when customers spent the most per transaction.

💰 Gross Income Analysis

The analysis also examined gross income across different business dimensions.

Key Findings
Giza generated the highest gross income: 5,265.18
Food and Beverages generated the highest product-line gross income: 2,673.56
Members generated more gross income than Normal customers
Female customers generated more gross income than male customers

This provided an additional profitability-oriented perspective beyond total sales.

🔄 Stage 3 — Data Transfer to Tableau

After the Python and SQL stages, the cleaned and analysed data was prepared for visualisation in Tableau.

The workflow was:

Python / Jupyter Notebook
        ↓
Data Cleaning & Feature Engineering
        ↓
Exploratory Analysis & Validation
        ↓
Cleaned CSV
        ↓
SQLite / SQL Analysis
        ↓
Business Aggregations
        ↓
CSV Data Transfer
        ↓
Tableau

The SQL analysis was used to validate and understand the business metrics before they were translated into the Tableau dashboard.

📊 Stage 4 — Tableau Dashboard Development

Tableau was used to transform the analytical results into an interactive business intelligence dashboard.

The dashboard was designed to provide management with a concise visual overview of:

Sales performance
Branch performance
Product performance
Customer behaviour
Gross income
Time-based performance
📌 Dashboard Components
KPI Cards

The dashboard contains five KPI cards:

Total Sales
Total Quantity
Average Transaction Value
Gross Income
Number of Transactions
Sales Analysis

The dashboard includes:

Sales by Branch
Sales by Product Line
Gross Income by Product Line
Customer Analysis

The dashboard includes:

Sales by Customer Type
Customer performance comparisons
Time Analysis

The dashboard includes:

Sales by Month
Sales by Hour
Interactive Filters

Interactive filters allow users to explore different segments of supermarket performance and dynamically analyse the dashboard.

🖼️ Dashboard Preview

🔗 Live Tableau Dashboard

View and interact with the published Tableau Public dashboard:

Open Supermarket Sales Dashboard on Tableau Public

💡 Key Insights

The complete analysis produced the following major findings:

1. Giza was the strongest-performing branch

Giza generated:

110,568.71 in total sales

making it the strongest-performing branch.

2. Food and Beverages was the strongest product line by sales

Food and Beverages generated:

56,144.84 in sales
2,673.56 in gross income
3. Electronic Accessories had the highest quantity sold

Electronic Accessories recorded:

971 units

However, it did not generate the highest total sales.

4. Home and Lifestyle had the highest average transaction value

Home and Lifestyle recorded an average transaction value of:

336.64

5. Members were the strongest customer segment

Members generated:

189,694.76 in sales from 565 transactions.

They also recorded a higher average transaction value than Normal customers.

6. Female customers generated higher sales

Female customers generated:

194,671.84

compared with:

128,294.91 for male customers.

7. Cash generated the highest total sales

Cash payments generated:

112,206.57

8. January was the strongest month

January generated:

116,291.87 in sales from 352 transactions.

9. Saturday was the strongest day

Saturday generated:

56,120.81 in sales.

10. 19:00 was the strongest sales hour

19:00 generated:

39,699.51 in sales from 113 transactions.

11. 14:00 had the highest average transaction value

The highest average transaction value was:

371.43 at 14:00

This demonstrates the difference between transaction volume and transaction value.

📌 Business Recommendations
1. Strengthen the Membership Programme

Members generated significantly higher sales and average transaction values.

The business could strengthen customer retention through:

Member-exclusive promotions
Loyalty rewards
Targeted offers
Repeat-purchase incentives
2. Prioritise High-Performing Product Lines

Food and Beverages generated the highest sales and gross income.

Management could:

Maintain adequate inventory
Reduce stock-out risk
Introduce targeted promotions
Monitor demand trends
3. Investigate Electronic Accessories

Electronic Accessories recorded the highest quantity sold but did not generate the highest sales.

Management could investigate:

Pricing
Product mix
Profit margins
Cross-selling opportunities
Customer purchasing patterns
4. Optimise Weekend Promotions

Saturday recorded the highest sales.

The business could consider:

Increasing staffing during peak periods
Ensuring sufficient inventory
Running targeted weekend promotions
Increasing customer engagement
5. Optimise Peak Hours

Sales were strongest around 19:00, while average transaction value was highest around 14:00.

Management could align:

Staffing
Inventory
Promotions
Customer service resources

with these high-value periods.

6. Improve Lower-Performing Periods

Monday recorded the lowest sales.

The business could test targeted promotions, loyalty incentives, or special offers to increase customer traffic during weaker periods.

7. Monitor Payment Behaviour

Cash generated the highest sales, while Ewallet recorded the highest transaction count.

The business should continue supporting major payment channels while monitoring changes in customer payment preferences.

🎯 Project Outcome

This project demonstrates practical experience in:

Python data analysis
Pandas data manipulation
NumPy-based numerical analysis
Data cleaning
Data validation
Feature engineering
Exploratory data analysis
Data visualisation
SQL querying
SQLite database analysis
Business performance analysis
Customer segmentation
Product analysis
Payment behaviour analysis
Time-based analysis
KPI development
Tableau dashboard development
Interactive data visualisation
Business intelligence
Data storytelling
Business recommendations

The project demonstrates how raw transactional data can be transformed into a structured, validated, and interactive business intelligence solution that supports data-driven decision-making.

📂 Project Structure
Supermarket-Sales-Analysis/
│
├── data/
│   ├── raw_data.csv
│   └── cleaned_data.csv
│
├── dashboard/
│   └── dashboard.png
│
├── images/
│   ├── sales_by_branch.png
│   ├── product_sales_by_product_line.png
│   ├── sales_by_customer_type.png
│   ├── sales_by_gender.png
│   ├── sales_by_month.png
│   ├── sales_by_day.png
│   ├── sales_by_hour.png
│   ├── gross_income_by_product_line.png
│   ├── gross_income_by_branch.png
│   ├── quantity_by_product_line.png
│   ├── avg_transaction_by_product_line.png
│   ├── avg_transaction_by_customer_type.png
│   ├── avg_transaction_by_gender.png
│   └── avg_transaction_by_hour.png
│
├── notebooks/
│   └── supermarket_analysis.ipynb
│
├── supermarket_sales.sql
│
├── supermarket_dashboard.twbx
│
└── README.md
📊 Analytical Workflow

The project demonstrates the following progression:

Phase 1 — Data Understanding

The raw transaction dataset was loaded into Python and inspected for:

Structure
Data types
Missing values
Duplicates
Categorical distributions
Numerical characteristics
Phase 2 — Data Cleaning

Date and time fields were standardised, numerical fields were reviewed, and data quality checks were performed.

Phase 3 — Feature Engineering

Additional fields such as:

Year
Month
Month Name
Day
Day of Week
Day Name
Hour
Sales Per Unit

were created to support deeper analysis.

Phase 4 — Data Validation

Sales and gross income calculations were independently validated against the source fields.

Phase 5 — Exploratory Data Analysis

Python was used to identify patterns across:

Branches
Products
Customers
Gender
Payment methods
Time periods
Gross income
Phase 6 — SQL Business Analysis

SQLite and SQL were used to perform structured aggregations and answer specific business questions.

SQL development and analysis were performed using Visual Studio Code.

Phase 7 — Data Transfer

The cleaned and analysed data was prepared in CSV format for use in Tableau.

Phase 8 — Tableau Dashboard

Tableau was used to build:

KPI cards
Charts
Filters
Dashboard layouts
Business performance visualisations
Phase 9 — Tableau Public

The finished dashboard was published to Tableau Public for interactive access and portfolio presentation.

🧠 Analytical Approach

The project was structured around the principle of moving from data quality → exploration → validation → business analysis → visualisation → recommendations.

Rather than immediately building charts, the data was first inspected and validated in Python.

SQL was then used to perform structured business aggregations and answer specific analytical questions.

The results were subsequently translated into Tableau visualisations so that business users could interact with the findings through filters and dashboard components.

This workflow demonstrates the practical process of transforming raw transactional data into business intelligence.

📌 Business Value

The project demonstrates how transaction-level supermarket data can be used to identify:

High-performing branches
High-performing product categories
Customer segments with stronger spending patterns
Preferred payment methods
High-performing sales periods
High-volume products
Differences between sales volume and transaction value
Opportunities for customer retention
Opportunities for inventory optimisation
Opportunities for targeted promotions
Opportunities for operational planning

The analysis therefore moves beyond descriptive reporting and provides practical recommendations that could support management decision-making.

👤 Author

Awoyera Olayinka Oluwadunsin

Data Analyst | Data Science Enthusiast

Skills Demonstrated

Python • Pandas • NumPy • Matplotlib • Seaborn • SQL • SQLite • Tableau • Data Cleaning • Data Analysis • Data Visualisation • Business Intelligence • Data Storytelling

🔗 Project Links
Tableau Public

View Interactive Supermarket Sales Dashboard

GitHub

Add your GitHub repository URL here after publishing the project.

⭐ Conclusion

The Supermarket Sales Analysis project demonstrates a complete end-to-end data analytics workflow.

Starting with raw transaction data, the project used Python and Jupyter Notebook for data inspection, cleaning, transformation, feature engineering, validation, exploratory analysis, and visualisation.

The cleaned data was then used alongside SQLite and SQL in Visual Studio Code to perform structured business analysis and calculate key performance metrics.

The resulting analytical findings were prepared for Tableau, where they were transformed into an interactive dashboard containing KPI cards, filters, sales analysis, product-line analysis, customer analysis, gross income analysis, and time-based performance visualisations.

Finally, the dashboard was published through Tableau Public, providing an interactive business intelligence solution suitable for portfolio presentation.

The project demonstrates the ability to move from raw data to validated analysis, from analysis to visualisation, and from visualisation to actionable business recommendations.