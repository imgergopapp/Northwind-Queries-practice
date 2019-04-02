SELECT company_name AS Company,COUNT(*) AS NumberOfProducts FROM products
INNER JOIN suppliers ON products.supplier_id = suppliers.supplier_id
GROUP BY company
ORDER BY NumberOfProducts DESC, Company;
