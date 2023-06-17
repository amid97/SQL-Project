-- Create Database Tables--
USE Bank_Account_Records
CREATE TABLE Customer
(CustomerID INT PRIMARY KEY,
Firstname VARCHAR(50),
Lastname VARCHAR(50),
Phonenumber VARCHAR(15),
email VARCHAR(50),
Birthdate DATE,
Gender VARCHAR(10),
Address VARCHAR(100))	

CREATE TABLE BankAccount
(Accountnumber NUMERIC(8) PRIMARY KEY,
sortcode VARCHAR(8),
Accounttype VARCHAR(15),
CustomerID INT)
 
 CREATE TABLE Transaction_History
(TransactionID INT PRIMARY KEY,
transactiondate DATE,
Amount DECIMAL(10,2),
Accountnumber VARCHAR(50),
PayeeaccountID NUMERIC(9))

CREATE TABLE PayeeList
(PayeeaccountID NUMERIC(8) PRIMARY KEY,
Sortcode VARCHAR(11),
payeename VARCHAR(70))

CREATE TABLE Transferrequest
(TransferID INT PRIMARY KEY,
Amount DECIMAL(10,2),
Transferdate DATE,
TransferStatus VARCHAR(20),
PayeeaccountID NUMERIC(9))

CREATE TABLE Account_balance
(balanceID INT PRIMARY KEY,
Balance DECIMAL(10,2),
Balancedate DATE,
Accountnumber VARCHAR(50))