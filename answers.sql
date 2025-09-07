/* An SQL query to get the 
firstName, lastName, email, and officeCode of all employees.  
An INNER JOIN to combine the employees table 
with the offices table using the officeCode column.
*/

USE salesdb;

SELECT * FROM employees;

SELECT E.firstName, E.lastName, E.email, E.officeCode
FROM employees AS E
INNER JOIN offices AS O ON E.officeCode = O.officeCode;

/* An SQL query to get the 
productName, productVendor, and productLine
from the products table.  
LEFT JOIN to combine the products table 
with the productlines table using 
the productLine column.
*/

USE salesdb;

SELECT P.productName, P.productVendor, P.productLine
FROM products AS P
LEFT JOIN productlines AS PL ON P.productLine = PL.productLine;

/* An SQL query to retrieve 
orderDate, shippedDate, status, and customerNumber
for the first 10 orders.  
Use a RIGHT JOIN to combine the customers table
with the orders table using the customerNumber column.
*/

SELECT O.orderDate, O.shippedDate, O.status, O.customerNumber
FROM orders AS O
RIGHT JOIN customers AS C ON O.CustomerNumber = C.CustomerNumber
LIMIT 10;
