SELECT company_name AS Company,product_name AS Product, Price FROM (
SELECT company_name, product_name, MAX(unit_price) AS Price FROM suppliers
INNER JOIN products ON products.supplier_id = suppliers.supplier_id
GROUP BY company_name, product_name) As foo
ORDER BY Price DESC, product_name, company_name;
