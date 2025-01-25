-- Database Creation & Schema Design
-- Create the following Tables

CREATE TABLE Products(
Product_ID INT PRIMARY KEY, 
Product_Name VARCHAR (30), 
Category VARCHAR (30),
Price INT
 );
SELECT *
FROM Products;

CREATE TABLE Customers( 
Customer_ID INT PRIMARY KEY, 
First_Name VARCHAR (30), 
Last_Name VARCHAR (30), 
Email VARCHAR (30), 
Phone_Number INT
);
SELECT *
FROM Customers;

CREATE TABLE Sales( 
Sale_ID INT PRIMARY KEY, 
Product_ID INT, 
Customer_ID INT, 
Sale_Date VARCHAR (30), 
Quantity VARCHAR (30), 
Total_Amount INT
);
SELECT *
FROM Sales;

CREATE TABLE Payments( 
Payment_Id INT PRIMARY KEY, 
Sale_ID INT, 
Payment_Method VARCHAR (30), 
Payment_Date VARCHAR (30), 
Amount_Paid INT
);
SELECT * 
FROM Payments;

-- Data Insertion
-- Insert at least 10 products into the Products table
INSERT INTO Products (Product_ID, Product_Name, Category, Price) VALUES
(1001, "Mixed Berries", "Fruits", 5000),
(1002, "Television", "Electronics", 80000),
(1003, "Penne Pasta", "Food Stuff", 7000), 
(1004, "Laptop", "Gadget", 70000),
(1005, "Cutlery set", "Kitchen Utensil", 4000),
(1006, "Blender", "Home Appliance", 75000),
(1007, "Wrting Materials", "Stationery", 2000),
(1008, "Light Bulbs", "Light Fixtures", 5000),
(1009, "Tea Set", "Kitchen Utensils", 8000),
(1010, "Oven", "Home Appliance", 65000),
(1011, "Pineapples", "Fruits", 8000),
(1012, "Basmati Rice", "Food Stuff", 15000),
(1013, "Phone", "Gadget", 80000),
(1014, "Plates", "Kitchen Utensils", 10000),
(1015, "Crocs", "Foot Wear", 20000),
(1016, "Pillows", "Beddings", 5000),
(1017, "Mattress", "Beddings", 35000),
(1018, "Ottoman", "Furniture", 45000),
(1019, "Blanket", "Beddings", 25000),
(1020, "Air Conditioner", "Electronics", 40000) ;

-- Insert at least 40 customers into the `customers` table
INSERT INTO Customers (Customer_ID, First_Name, Last_Name, Email, Phone_Number) VALUES
(2001, "Zainab", "Mumu", "zainab989@gmail.com", 234-988-6752),
(2002, "Fatima", "Good", "fab003@gmail.com", 234-289-1286),
(2003, "Gerald", "Ojukwu", "geraldojukwu@gmail.com", 234-988-8776),
(2004, "Daniel", "Hardy", "danihardy@gmail.com", 234-898-7499),
(2005, "Micheal" ,"Olomola", "mike444@gmail.com", 234934-2959),
(2006, "John", "Doe", "john.doe@gmail.com", 234-156-7890),
(2007, "Jane", "Smith", "jane.smith@gmail.com", 234-567-8901),
(2008, "Mike", "Johnson", "mike.j@gmail.com", 234-678-9012),
(2009, "Emily", "Davis", "emily.davis@gmail.com", 234-789-0123),
(2010, "Chris", "Brown", "chris.brown@gmail.com", 234-890-1234),
(2011, "Jessica", "Wilson", "jessica.w@gmail.com", 234-901-2345),
(2012, "David", "Miller", "david.miller@gmail.com",  234-012-3456),
(2013, "Sarah", "Taylor", "sarah.taylor@gmail.com", 234-123-4567),
(2014, "Brian", "Anderson", "brian.a@gmail.com", 234-234-5678),
(2015, "Megan", "Thomas", "megan.thomas@gmail.com", 234-345-6789),
(2016, "Kevin", "Jackson", "kevin.j@gmail.com", 234-456-7891),
(2017, "Rachel", "White", "rachel.w@gmail.com", 234-567-8902),
(2018, "Laura", "Harris", "laura.harris@gmail.com", 234-678-9013),
(2019, "Daniel", "Martin", "daniel.m@gmail.com", 234-789-0124),
(2020, "Amy", "Thompson", "amy.t@gmail.com", 234-890-1235),
(2021, "Mark", "Garcia", "mark.garcia@gmail.com", 234-678-9011),
(2022, "Christopher", "Rodriguez", "chrisr@gmail.com", 234-234-5678),
(2023, "Amanda", "Lee", "amandal@gmail.com", 234-345-6789),
(2024, "Matthew", "Walker", "mattheww@gmail.com", 234-456-7891),
(2025, "Nicole", "Hall","nicoleh@gmail.com", 234-567-8902),
(2026, "Olivia", "Hernandez", "oliviah@gmail.com", 234-789-0124),
(2027, "Benjamin", "Scott", "benjamins@gmail.com", 234-012-3457),
(2028, "Sophia", "Wright", "sophiaw@gmail.com", 234-901-2346),
(2029, "Anthony", "King", "anthonyk@gmail.com", 234-890-1235),
(2030, "Jessica", "Martin", "jessicam@gmail.com", 234-123-4567),
(2031, "John", "Smith", "john.smith@gmail.com", 234-234-5678),
(2032, "Mary", "Johnson", "mary.johnson@gmail.com", 234-345-6789),
(2033, "James", "Brown", "james.brown@gmail.com", 234-456-7890), 
(2034, "Linda", "Williams", "linda.williams@gmail.com", 234-567-8901),
(2035, "Robert", "Jones", "robert.jones@gmail.com", 234-678-9012),
(2036, "Patricia", "Garcia", "patricia.garcia@gmail.com", 234-789-0123),
(2037, "Michael", "Martinez", "michael.martinez@gmail.com", 234-890-1234),
(2038, "Barbara", "Rodriguez", "barbara.rodriguez@gmail.com", 234-901-2345),
(2039, "William", "Lee", "william.lee@gmail.com", 234-709-3456),
(2040, "Elizabeth", "Harris", "elizabeth.harris@gmail.com", 234-710-4567);

-- Insert at least 20 records into the `sales` table, making sure some customers buy multiple products
INSERT INTO Sales (Sale_ID, Product_ID, Customer_ID, Sale_Date, Quantity, Total_Amount) VALUES
(3001, 1001, 2001, 08-30-2021, 4, 50000),
(3002, 1002, 2025, 11-11-2020, 3, 240000),
(3003, 1003, 2002, 01-22-2023, 5, 27000),
(3004, 1004, 2016, 03-09-2022, 2, 140000),
(3005, 1015, 2033, 01-10-2023, 3, 60000),
(3006, 1006, 2028, 02-14-2022, 1, 45000),
(3007, 1007, 2002, 01-22-2023, 5, 10000),
(3008, 1008, 2016, 03-09-2022, 10, 15000),
(3009, 1009, 2033, 02-14-2022, 1, 5000),
(3010, 1010, 2028, 01-10-2003, 1, 65000),
(3011, 1011, 2020, 08-30-2021, 4, 24000),
(3012, 1012, 2002, 01-22-2023, 6, 90000),
(3013, 1004, 2008, 08-30-2019, 2, 210000),
(3014, 1014, 2033, 03-09-2022, 1, 10000),
(3015, 1015, 2016, 10-03-2019, 5, 100000),
(3016, 1016, 2008, 08-30-2019, 2, 10000),
(3017, 1017, 2008, 10-03-2019, 2, 70000),
(3018, 1018, 2002, 01-10-2023, 4, 90000),
(3019, 1019, 2016,10-03-2019, 10, 250000),
(3020, 1020, 2008, 08-25-2018, 2, 80000);

-- Insert payment records corresponding to the sales, with varying amounts and dates
INSERT INTO Payments (Payment_Id, Sale_ID, Payment_Method, Payment_Date, Amount_Paid) VALUES
(4001, 3001, "Cash", 03-09-2022, 10000),
(4002, 3002, "Cash", 10-03-2019, 24000),
(4003, 3003, "Bank Transfer", 10-03-2019, 250000),
(4004, 3004, "Cash", 10-03-2019, 27000),
(4005, 3005, "Credit Card", 01-22-2023, 80000),
(4006, 3006, "Bank Transfer", 01-22-2023, 90000),
(4007, 3007, "Debit Card", 02-14-2022, 50000),
(4008, 3008, "Credit Card", 08-30-2021, 100000),
(4009, 3009, "Cash", 08-30-2019, 15000),
(4010, 3010, "Debit Card", 08-25-2018, 65000), 
(4011, 3011, "Apple Pay", 01-10-2023, 210000),
(4012, 3012, "Credit Card", 10-03-2019, 45000),
(4013, 3013, "Debit Card", 02-14-2022, 60000),
(4014, 3014, "Bank Transfer", 08-25-2018, 140000),
(4015, 3015, "Debit Card", 03-09-2022, 10000),
(4016, 3016, "Cash", 08-30-2019, 5000), 
(4017, 3017, "Apple Pay", 11-20-2022, 15000),
(4018, 3018, "Credit Card", 08-25-2018, 210000),
(4019, 3019, "Apple Pay", 03-09-2022, 70000),
(4020, 3020, "Bank Transfer", 11-20-2022, 240000);

-- Analysis Using SQL Concepts
-- GROUP BY:
-- Write a query to calculate the total quantity sold for each product category
SELECT P.Category, SUM(S.Quantity) AS Total_Quantity_Sold
FROM Sales AS S
INNER JOIN Products AS P
ON S.Product_ID = P.Product_ID
GROUP BY Category;

-- Write a query to count the number of sales for each customer
SELECT CONCAT (C.First_Name, " ",C.Last_Name) AS Full_Name, COUNT(S.Sale_ID) AS No_of_Sales
FROM Customers AS C
LEFT JOIN Sales AS S
ON C.Customer_ID = S.Customer_ID
GROUP BY CONCAT (C.First_Name, " ",C.Last_Name);

-- Write a query to find the total revenue generated by each payment method
SELECT P.Payment_Method, SUM(Pr.Price * S.Quantity) AS Total_Revenue
FROM Payments AS P
INNER JOIN Sales AS S
ON P.Sale_ID = S.Sale_ID
INNER JOIN Products AS Pr
ON S.Product_ID = Pr.Product_ID
GROUP BY P.Payment_Method;

--  ORDER BY:
-- Write a query to retrieve a list of products, sorted by price in descending order
SELECT Pr.Product_Name, Pr.Price
FROM Products AS Pr
INNER JOIN Sales AS S
ON Pr.Product_ID = S.Product_ID
INNER JOIN Payments AS P
ON S.Sale_ID = P.Sale_ID
INNER JOIN Customers AS C
ON S.Customer_ID = C.Customer_ID
GROUP BY Pr.Product_Name, Pr.price
ORDER BY Pr.Price DESC;

-- Write a query to get the sales records ordered by `sale_date` in ascending order
SELECT S.Sale_ID, S.Sale_Date, Pr.Product_Name, CONCAT (C.First_Name, " ",C.Last_Name) AS Full_Name, P.Payment_Method, S.Quantity, S.Total_Amount
FROM Sales AS S
INNER JOIN Products AS Pr
ON S.Product_Id = Pr.Product_ID
INNER JOIN Customers AS C
ON S.Customer_ID = C.Customer_ID
INNER JOIN Payments AS P
ON S.Sale_ID = P.Sale_ID
GROUP BY S.Sale_ID, S.Sale_Date, Pr.Product_Name, CONCAT (C.First_Name, " ",C.Last_Name), P.Payment_Method, S.Quantity
ORDER BY S.Sale_Date ASC;

-- Write a query to display customers sorted by their last name alphabetically
SELECT C.Customer_ID, C.Last_Name
FROM Customers AS C
INNER JOIN Sales AS S
ON C.Customer_ID = S.Customer_ID
INNER JOIN Products AS Pr
ON S.Product_ID = Pr.Product_ID
GROUP BY C.Customer_ID, C.Last_Name
ORDER BY C.Last_Name ASC;

-- HAVING Clause:
-- Write a query to find products that have been sold more than 5 times, using `HAVING` with the `GROUP BY` statement
SELECT Pr.Product_ID, Pr.Product_Name, COUNT(S.Sale_ID) AS Total_Sales
FROM Products AS Pr
INNER JOIN Sales AS S
On Pr.Product_ID = S.Product_ID
INNER JOIN Customers AS C
ON S.Customer_ID = C.Customer_ID
INNER JOIN Payments AS P
ON S.Sale_ID = P.Sale_ID
GROUP BY Pr.Product_ID, Pr.Product_Name
HAVING COUNT(S.Sale_ID) > 5;

-- Write a query to list customers who have made total purchases (sum of `total_amount`) exceeding $100
SELECT CONCAT (C.First_Name, " ",C.Last_Name) AS Full_Name, C.Customer_ID, SUM(P.Amount_Paid) AS Total_Purchases
FROM Customers AS C
INNER JOIN Sales AS S
ON C.Customer_ID = S.Customer_ID
INNER JOIN Payments AS P
ON S.Sale_ID = P.Sale_ID
GROUP BY C.Customer_ID, CONCAT (C.First_Name, " ",C.Last_Name)
HAVING SUM(P.Amount_Paid) > 77000; -- $100 = N77,000

-- Write a query to find categories with a total sales revenue greater than $500
SELECT Pr.Category, SUM(P.Amount_Paid) AS Total_Sales_Revenue
FROM Products AS Pr
INNER JOIN Sales AS S
ON Pr.Product_ID = S.Product_ID
INNER JOIN Payments AS P
ON S.Sale_ID = P.Sale_ID
GROUP BY Pr.Category
HAVING SUM(P.Amount_Paid) > 385000; -- $500 = 385,000

-- LIMIT Clause:
-- Write a query to display the top 5 most expensive products
SELECT Pr.Product_Name, MAX(S.Total_Amount) AS Max_Price
FROM Products AS Pr
INNER JOIN Sales AS S
ON Pr.Product_ID = S.Product_ID
GROUP BY Pr.Product_Name
ORDER BY Max_Price Desc
LIMIT 5;

-- Write a query to display the 3 most recent sales
SELECT CONCAT (C.First_Name, " ",C.Last_Name) AS Full_Name, S.Sale_ID, S.Sale_Date, Pr.Product_Name, P.Amount_Paid
FROM Sales AS S
INNER JOIN Products AS Pr
ON S.Product_ID = Pr.Product_ID
INNER JOIN Customers AS C
ON S.Customer_ID = C.Customer_ID
INNER JOIN Payments AS P
ON S.Sale_ID = P.Sale_ID 
ORDER BY S.Sale_Date DESC
LIMIT 3;

-- Write a query to list the first 5 customers who made purchases
SELECT CONCAT (C.First_Name, " ",C.Last_Name) AS Full_Name, C.Customer_ID, MIN(S.Sale_Date) AS Purchase_by_Customers
FROM Sales AS S
INNER JOIN Customers AS C
ON S.Customer_ID = C.Customer_ID
GROUP BY C.Customer_ID, CONCAT (C.First_Name, " ",C.Last_Name)
ORDER BY Purchase_by_Customers
LIMIT 5;

-- Write a query to calculate the total revenue (sum of `total_amount`) for each product and use an alias `total_revenue` for the calculated field
SELECT P.Product_ID, P.Product_Name, SUM(S.Total_Amount) AS Total_Revenue
FROM Sales AS S
INNER JOIN Products AS P
ON S.Product_ID = P.Product_ID
GROUP BY P.Product_ID, P.Product_Name;

-- Write a query to display each customer's full name as `customer_name` by concatenating `first_name` and `last_name
SELECT CONCAT (C.First_Name, " ",C.Last_Name) AS Customer_Name
FROM Customers AS C;

-- Use aliasing to create a column called `sales_value` representing the product of `price` and `quantity` for each sale
SELECT S.Sale_ID, S.Product_ID, (S.Quantity * S.Total_Amount) AS Sales_Value
FROM Sales AS S;

-- String Functions:
-- Write a query to display the product names in uppercase
SELECT Product_ID, UPPER(Product_Name) AS PRODUCT
FROM Products;

-- Write a query to extract the domain from the `email` field of each customer
SELECT Email, SUBSTRING(Email,INSTR(Email, '@')+1) AS Domain
FROM Customers AS C;

-- Write a query to display the first three characters of each customer's `last_name`
SELECT Last_Name, SUBSTRING(Last_Name, 1, 3) AS First_3_Chars
FROM Customers;

-- Write a query that trims extra spaces around product names and displays them
SELECT Product_ID, TRIM(Product_Name) AS Trimmed_Product_Name
FROM Products;

-- Aggregate Functions:
-- Write a query to calculate the average price of all products
SELECT AVG(Price) AS Average_Price
FROM Products;

-- Write a query to find the maximum `total_amount` from the `sales` table
SELECT MAX(Total_Amount) AS Max_Total_Amount
FROM Sales;

--  Write a query to calculate the total amount paid for all sales
SELECT SUM(Total_Amount) AS Total_Amount_Paid
FROM Sales;

-- Write a query to calculate the minimum and maximum sale quantities
SELECT MIN(Quantity) AS Min_Sale_Quantity, MAX(Quantity) AS Max_Sale_Quantity
FROM Sales;

-- Write a query to determine the number of distinct product categories available
SELECT COUNT(DISTINCT Category) AS No_of_Categories
FROM Products;

-- Additional Analysis Tasks
-- Write a query to identify the customer with the highest total purchase amount
SELECT Customer_ID, SUM(Total_Amount) AS Total_Purchase_Amount
FROM Sales
GROUP BY Customer_ID
ORDER BY Total_Purchase_Amount DESC
LIMIT 1;

-- Calculate the total number of products sold for each product category and sort the result in descending order
SELECT Category, SUM(Quantity) AS Total_Products_Sold
FROM Products AS P
INNER JOIN Sales AS S
ON P.Product_ID = S.Product_ID
GROUP BY Category
ORDER BY Total_Products_Sold DESC;

-- Write a query that retrieves the details of sales made in the last 30 days
SELECT *
FROM sales
WHERE Sale_Date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- Create a query to display the top 3 customers with the most sales in terms of quantity
SELECT Customer_ID, SUM(Quantity) AS Total_Quantity_Sold
FROM Sales
GROUP BY Customer_ID
ORDER BY Total_Quantity_Sold DESC
LIMIT 3;

-- Write a query to list all customers whose names start with the letter "J"
SELECT First_Name, Last_Name
FROM Customers
WHERE First_Name LIKE 'J%' OR Last_Name LIKE 'J%';

-- Write a query to calculate the total unpaid amount for each sale by subtracting `amount_paid` from `total_amount`
SELECT S.Sale_ID, (S.Total_Amount - P.Amount_Paid) AS Unpaid_Amount
FROM Sales AS S
INNER JOIN Payments AS P
ON S.Sale_ID = P.Sale_ID;

-- Write a query to find sales where the payment method was "Credit Card" and the `total_amount` is greater than $50
SELECT *
FROM Sales AS S
INNER JOIN Payments AS P
ON S.Sale_ID = P.Sale_ID
WHERE P.Payment_Method = 'Credit Card' AND Total_Amount > 38500;

-- Write a query that lists all sales made by customers whose last names contain the letter "e"
SELECT Last_Name
FROM Customers
WHERE Last_Name LIKE '%e%';

































