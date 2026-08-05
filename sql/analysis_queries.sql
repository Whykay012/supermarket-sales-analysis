-- ============================================================
-- SUPERMARKET SALES ANALYSIS
-- SQL ANALYSIS
-- ============================================================


-- ============================================================
-- 1. OVERALL BUSINESS PERFORMANCE
-- ============================================================

-- 1.1 Total number of records

SELECT
    COUNT(*) AS total_rows
FROM sales;


-- 1.2 Overall sales, quantity sold and average transaction value

SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    SUM(Quantity) AS total_quantity,
    ROUND(AVG(Sales), 2) AS average_transaction
FROM sales;


-- ============================================================
-- 2. BRANCH ANALYSIS
-- ============================================================

-- 2.1 Total sales by branch

SELECT
    Branch,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY Branch
ORDER BY total_sales DESC;


-- 2.2 Average transaction value by branch

SELECT
    Branch,
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY Branch
ORDER BY average_transaction_value DESC;


-- 2.3 Gross income by branch

SELECT
    Branch,
    ROUND(SUM("gross income"), 2) AS total_gross_income
FROM sales
GROUP BY Branch
ORDER BY total_gross_income DESC;


-- ============================================================
-- 3. PRODUCT LINE ANALYSIS
-- ============================================================

-- 3.1 Total sales by product line

SELECT
    "Product line",
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY "Product line"
ORDER BY total_sales DESC;


-- 3.2 Total quantity sold by product line

SELECT
    "Product line",
    SUM(Quantity) AS total_quantity_sold
FROM sales
GROUP BY "Product line"
ORDER BY total_quantity_sold DESC;


-- 3.3 Gross income by product line

SELECT
    "Product line",
    ROUND(SUM("gross income"), 2) AS total_gross_income
FROM sales
GROUP BY "Product line"
ORDER BY total_gross_income DESC;


-- 3.4 Average transaction value by product line

SELECT
    "Product line",
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY "Product line"
ORDER BY average_transaction_value DESC;


-- 3.5 Average quantity per transaction by product line

SELECT
    "Product line",
    ROUND(AVG(Quantity), 2) AS average_quantity_per_transaction
FROM sales
GROUP BY "Product line"
ORDER BY average_quantity_per_transaction DESC;


-- ============================================================
-- 4. CUSTOMER ANALYSIS
-- ============================================================

-- 4.1 Total sales by customer type

SELECT
    "Customer type",
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY "Customer type"
ORDER BY total_sales DESC;


-- 4.2 Number of transactions by customer type

SELECT
    "Customer type",
    COUNT(*) AS number_of_transactions
FROM sales
GROUP BY "Customer type"
ORDER BY number_of_transactions DESC;


-- 4.3 Average transaction value by customer type

SELECT
    "Customer type",
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY "Customer type"
ORDER BY average_transaction_value DESC;


-- 4.4 Total sales by gender

SELECT
    Gender,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY Gender
ORDER BY total_sales DESC;


-- 4.5 Number of transactions by gender

SELECT
    Gender,
    COUNT(*) AS number_of_transactions
FROM sales
GROUP BY Gender
ORDER BY number_of_transactions DESC;


-- 4.6 Average transaction value by gender

SELECT
    Gender,
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY Gender
ORDER BY average_transaction_value DESC;

-- 4.6 Average transaction value by gender

SELECT
    Gender,
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY Gender
ORDER BY average_transaction_value DESC;


-- 4.7 Gross income by customer type

SELECT
    "Customer type",
    ROUND(SUM("gross income"), 2) AS total_gross_income
FROM sales
GROUP BY "Customer type"
ORDER BY total_gross_income DESC;


-- 4.8 Gross income by gender

SELECT
    Gender,
    ROUND(SUM("gross income"), 2) AS total_gross_income
FROM sales
GROUP BY Gender
ORDER BY total_gross_income DESC;

-- ============================================================
-- 5. PAYMENT METHOD ANALYSIS
-- ============================================================

-- 5.1 Number of transactions by payment method

SELECT
    Payment,
    COUNT(*) AS number_of_transactions
FROM sales
GROUP BY Payment
ORDER BY number_of_transactions DESC;


-- 5.2 Total sales by payment method

SELECT
    Payment,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY Payment
ORDER BY total_sales DESC;


-- 5.3 Average transaction value by payment method

SELECT
    Payment,
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY Payment
ORDER BY average_transaction_value DESC;


-- ============================================================
-- 6. MONTHLY ANALYSIS
-- ============================================================

-- 6.1 Total sales by month

SELECT
    Month_Name,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY Month, Month_Name
ORDER BY Month;


-- 6.2 Number of transactions by month

SELECT
    Month_Name,
    COUNT(*) AS number_of_transactions
FROM sales
GROUP BY Month, Month_Name
ORDER BY Month;


-- 6.3 Average transaction value by month

SELECT
    Month_Name,
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY Month, Month_Name
ORDER BY Month;


-- ============================================================
-- 7. DAY-OF-WEEK ANALYSIS
-- ============================================================

-- 7.1 Total sales by day of week

SELECT
    Day_Name,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY Day_of_Week, Day_Name
ORDER BY total_sales DESC;


-- 7.2 Number of transactions by day of week

SELECT
    Day_Name,
    COUNT(*) AS number_of_transactions
FROM sales
GROUP BY Day_of_Week, Day_Name
ORDER BY number_of_transactions DESC;


-- 7.3 Average transaction value by day of week

SELECT
    Day_Name,
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY Day_of_Week, Day_Name
ORDER BY average_transaction_value DESC;


-- ============================================================
-- 8. HOURLY ANALYSIS
-- ============================================================

-- 8.1 Total sales by hour

SELECT
    Hour,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY Hour
ORDER BY total_sales DESC;


-- 8.2 Number of transactions by hour

SELECT
    Hour,
    COUNT(*) AS number_of_transactions
FROM sales
GROUP BY Hour
ORDER BY number_of_transactions DESC;


-- 8.3 Average transaction value by hour

SELECT
    Hour,
    ROUND(AVG(Sales), 2) AS average_transaction_value
FROM sales
GROUP BY Hour
ORDER BY average_transaction_value DESC;