USE Bank_Account_Records

-- Query 1: What is the average age of the customers in years? 

SELECT AVG(DATEDIFF(YEAR, Birthdate, GETDATE())) AS avg_age_in_years FROM Customer;

-- The AVG function returns the average value of an expression,DATEDIFF finds the difference between a start date and an end date based on a datepart, GETDATE gets the current date
  


-- Query 2: What is the total amount of money transferred between 2020 to 2023?
SELECT SUM(Amount) as Total_Transferred
FROM Transaction_History
WHERE transactiondate BETWEEN '2020-01-01' AND '2023-01-01';

-- SUM calaculates the sum of a sets values, WHERE is used to filter the query, SELECT and FROM are used to retrieve data.


-- Query 3: How many male and female customers are registered in the database?
SELECT Gender, COUNT(*) as Num_Customers
FROM Customer
GROUP BY Gender;

-- COUNT counts the number of rows or columns, SELECT and FROM are used to retrieve data.

-- Query 4: How many accounts have a balance above 5000 pounds? 
SELECT COUNT(*) as AccountCount
FROM Account_balance
WHERE Balance > 5000

-- COUNT counts the number of rows or columns, WHERE is used to filter the query, SELECT and FROM are used to retrieve data.

-- Query 5: How many transfer requests were completed successfully between two specific dates? 
SELECT COUNT(*) as NumCompletedTransfers
FROM Transferrequest tr
INNER JOIN Transaction_History th ON tr.PayeeaccountID = th.PayeeaccountID
WHERE tr.TransferStatus = 'Completed'
AND th.transactiondate BETWEEN '2020-01-01' AND '2023-01-01';

-- COUNT counts the number of rows or columns, SELECT and FROM are used to retrieve data, WHERE is used to filter the query, BETWEEN and AND used to fliter by a range, INNER JOIN keyword selects records that have matching values in both tables.

-- Query 6: What is the most common account type? 
SELECT TOP 1 Accounttype, COUNT(*) AS NumAccounts
FROM BankAccount
GROUP BY Accounttype
ORDER BY NumAccounts DESC;

-- COUNT counts the number of rows or columns, SELECT and FROM are used to retrieve data,









