SELECT company_name AS Company, ARRAY_AGG(order_id) AS "Order IDs" FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY Company
ORDER BY Company;
