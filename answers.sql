/*
Question 1
Write an SQL query to show the total payment amount for each payment date from payments table.
*/
-- Display the payment date and the total amount paid on that date.
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
-- Show only the top 5 latest payment dates
GROUP BY paymentDate
-- Sort the results by payment date in descending order.
ORDER BY paymentDate DESC
LIMIT 5;

/*
Question 2
Write an SQL query to find the average credit limit of each customer from customers table.
Display the customer name, country, and the average credit limit.
Group the results by customer name and country.
*/  
SELECT customerName, country, AVG(creditLimit) AS avgCreditLimit
FROM customers
GROUP BY customerName, country;

/*
Question 3
Write an SQL query to find the total price of products ordered from orderdetails table.
Display the product code, quantity ordered, and the total price for each product.
Group the results by product code and quantity ordered.
*/
SELECT productCode, quantityOrdered, SUM(priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

/*
Question 4
Write an SQL query to find the highest payment amount for each check number from payments table.
Display the check number and the highest amount paid for that check number.
Group the results by check number.
*/
SELECT checkNumber, MAX(amount) AS highest_amount_paid
FROM payments
GROUP BY checkNumber;

SELECT * FROM payments;

