SELECT company_name AS Company,COUNT(DISTINCT product_name) AS NumberOfProducts FROM products
INNER JOIN suppliers ON products.supplier_id = suppliers.supplier_id
GROUP BY company
HAVING COUNT(DISTINCT product_name) = 5
ORDER BY Company;
