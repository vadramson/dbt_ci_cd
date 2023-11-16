USE DATABASE VAD_DBT_TEST;

-- Insert Country data
--INSERT INTO VAD_DBT_TEST.DBT_DVAD.Country

-- Sales Performance by Product or Brand:

-- Sales by Product
SELECT
    ProductID,
    SUM(SaleAmount) AS TotalSales
FROM VAD_DBT_TEST.DBT_DVAD.Sales
GROUP BY ProductID
ORDER BY TotalSales DESC;

-- Sales by Brand
SELECT
    b.BrandID,
    b.Name AS BrandName,
    SUM(s.SaleAmount) AS TotalSales
FROM VAD_DBT_TEST.DBT_DVAD.Sales s
JOIN VAD_DBT_TEST.DBT_DVAD.Product p ON s.ProductID = p.ProductID
JOIN VAD_DBT_TEST.DBT_DVAD.Brand b ON p.BrandID = b.BrandID
GROUP BY b.BrandID, b.Name
ORDER BY TotalSales DESC;


-- Monthly Sales
SELECT
    EXTRACT(MONTH, SaleDate) AS Month,
    SUM(SaleAmount) AS MonthlySales
FROM VAD_DBT_TEST.DBT_DVAD.Sales
GROUP BY Month
ORDER BY Month;

-- Quarterly Sales
SELECT
    CONCAT(EXTRACT(YEAR, SaleDate), ' Q', QUARTER(SaleDate)) AS Quarter,
    SUM(SaleAmount) AS QuarterlySales
FROM VAD_DBT_TEST.DBT_DVAD.Sales
GROUP BY Quarter
ORDER BY Quarter;

-- Yearly Sales
SELECT
    LEFT(DATE_TRUNC(YEAR, SaleDate), 4) AS Year,
    SUM(SaleAmount) AS YearlySales
FROM VAD_DBT_TEST.DBT_DVAD.Sales
GROUP BY Year
ORDER BY Year;



-- Customer Demographics:
-- Sample query to retrieve customer demographics
SELECT
    c.CustomerID,
    c.Name AS CustomerName,
    ci.Name AS City,
    co.Name AS Country
FROM VAD_DBT_TEST.DBT_DVAD.Customer c
JOIN VAD_DBT_TEST.DBT_DVAD.City ci ON c.CityID = ci.CityID
JOIN VAD_DBT_TEST.DBT_DVAD.Country co ON c.CountryID = co.CountryID;


SELECT * FROM VAD_DBT_TEST.DBT_DVAD.SALES;

SELECT PRODUCTID, ROUND((SALEAMOUNT/QUANTITY), 2) AS COST FROM VAD_DBT_TEST.DBT_DVAD.SALES;
