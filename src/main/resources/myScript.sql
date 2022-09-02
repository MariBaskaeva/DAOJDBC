SELECT product_name from ORDERS
JOIN CUSTOMERS ON customer_id = CUSTOMERS.id
WHERE CUSTOMERS.name LIKE :name;