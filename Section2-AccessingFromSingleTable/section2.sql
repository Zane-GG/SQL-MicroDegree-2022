-- TASK 1 - From the products table, return the name, unit price, and calculate the new price (unitprice * 2)

SELECT 
	name,
    unit_price,
    unit_price * 2 AS "new_price"
FROM products;