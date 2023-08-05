-- TASK 1 - From the products table, return the name, unit price, and calculate the new price (unitprice * 2)

SELECT 
	name,
    unit_price,
    unit_price * 2 AS "new_price"
FROM products;


-- Task 2 - Query the orders that were placed after the year 2018

SELECT * 
FROM orders
WHERE order_date >= "2019-01-01";


-- Task 3 - Query data from the order_items table and compare the order ID 2's with the total price being greater than 10

SELECT *, 
	unit_price * quantity AS "total_price"
FROM order_items
WHERE order_id = 2 AND (unit_price * quantity >= 10);


-- Task 4 - From the products table, return products with quantity in stock equal to 49, 38, 72

SELECT * 
FROM products
WHERE quantity_in_stock IN ("49", "38", "72");


-- Task 5 - Filter the customers who are born between 1st Jan 1990 & 1st Jan 2000
SELECT * 
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';


/*Task 6 - Query data from the customers 
	1. Where addresses have either TRAIL or AVENUE in them */
	
SELECT * 
FROM customers
WHERE address LIKE '%Trail%' OR address LIKE '%Avenue%';
	
   /*2. Who's phone number end with the number 9*/
   
SELECT * 
FROM customers
WHERE phone LIKE '%9';


-- Task 7 - Filter out the customers whose
	-- 1. Last names start with MY or contains SE
	
SELECT * 
FROM customers
WHERE last_name REGEXP "^my|se";
	
	-- 2. last names contain B followed by R or U
	
SELECT * 
FROM customers
WHERE last_name REGEXP "b[ru]";
	
	-- 3. First names are ELKA or AMBUR
	
SELECT * 
FROM customers
WHERE first_name REGEXP "Elka|Ambur";
	
	-- 4. Last names end with EY or ON
	
SELECT * 
FROM customers
WHERE last_name REGEXP "ey$|on$";

-- Task 8 - Identify the orders that are not shipped yet

SELECT * 
FROM orders
WHERE shipped_date IS NULL;