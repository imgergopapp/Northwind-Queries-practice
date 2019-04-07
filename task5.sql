SELECT * FROM(
	SELECT DISTINCT ON (company_name) company_name AS Company, product_name AS Product, unit_price AS Price FROM suppliers 
	INNER JOIN products ON products.supplier_id = suppliers.supplier_id
	ORDER BY company_name, Price DESC ) As foo
ORDER BY Price DESC, Product, Company ;
 
/* DISTINCT ON : functions like a GROUP BY 
   ORDER BY ... Price DESC : functions like a MAX aggregation 
   Leading expressions in ORDER BY have to agree with columns in DISTINCT ON */
