SELECT title FROM 
(SELECT category1 AS title, COUNT(*) AS counter 
 FROM items 
 WHERE category1 <> "" AND category1 IS NOT NULL 
 GROUP BY category1 
 ORDER BY counter DESC 
 LIMIT 300
) mostused
ORDER BY title;

SELECT DISTINCT category1 FROM items WHERE starred = 1 AND dead = 0 AND TRIM(category1) <> '' ORDER BY category1;

SELECT id, title, price1, category1, photo, 
IFNULL((SELECT SUM(qty_out) FROM invoices_items INNER JOIN invoices ON invoices_items.kind = invoices.kind AND invoices_items.id = invoices.id WHERE item_id = items.id AND date1 > DATE_ADD(NOW(), INTERVAL -2 MONTH)), 0) AS sales
FROM items WHERE starred = 1 AND dead = 0 ORDER BY category1, id;



Prepare	SELECT * FROM invoices WHERE kind=? AND id=?;

Execute	SELECT * FROM invoices WHERE kind='SALE' AND id='';


Prepare	SELECT invoices_items.*, 
       items.title, items.code1, items.code2, items.barcode, 
       items.tax_type, items.price_include_tax1,
       items.category1, items.category2, items.category3, items.category4, items.category5, items.category6, 
       items.price1, items.price2, items.price3, items.price4, items.price_min, 
       items.photo, SUBSTRING(items.more, 1, 200) AS more,
       items.service, 
       ROUND(stores_items.qty * invoices_items.uqty2 / invoices_items.uqty1, 3) AS qty_available       
FROM invoices_items 
LEFT JOIN items ON items.id = invoices_items.item_id 
LEFT JOIN stores_items ON stores_items.item_id = invoices_items.item_id AND stores_items.store_id = invoices_items.store_id
WHERE kind = ? AND invoices_items.id = ? AND invoices_items.store_id = ?
ORDER BY sn;

Execute	SELECT invoices_items.*, 
       items.title, items.code1, items.code2, items.barcode, 
       items.tax_type, items.price_include_tax1,
       items.category1, items.category2, items.category3, items.category4, items.category5, items.category6, 
       items.price1, items.price2, items.price3, items.price4, items.price_min, 
       items.photo, SUBSTRING(items.more, 1, 200) AS more,
       items.service, 
       ROUND(stores_items.qty * invoices_items.uqty2 / invoices_items.uqty1, 3) AS qty_available       
FROM invoices_items 
LEFT JOIN items ON items.id = invoices_items.item_id 
LEFT JOIN stores_items ON stores_items.item_id = invoices_items.item_id AND stores_items.store_id = invoices_items.store_id
WHERE kind = 'SALE' AND invoices_items.id = '' AND invoices_items.store_id = ''
ORDER BY sn;

Prepare	SELECT * FROM money 
WHERE parent_kind=? AND parent_id=? AND kind LIKE "CASH_%"
ORDER BY pk;

Execute	SELECT * FROM money 
WHERE parent_kind='SALE' AND parent_id='' AND kind LIKE "CASH_%"
ORDER BY pk;

Prepare	SELECT * FROM money 
WHERE parent_kind=? AND parent_id=? AND kind IN ("INSTAL_PAYMENT", "INSTAL_RECEIPT")
ORDER BY due_date, pk;

Execute	SELECT * FROM money 
WHERE parent_kind='SALE' AND parent_id='' AND kind IN ("INSTAL_PAYMENT", "INSTAL_RECEIPT")
ORDER BY due_date, pk;


SELECT MAX(id) FROM invoices WHERE kind = "SALE";

SELECT title FROM 
(SELECT addition1_type AS title, COUNT(*) AS counter 
 FROM invoices 
 WHERE addition1_type <> "" AND addition1_type IS NOT NULL 
 GROUP BY addition1_type 
 ORDER BY counter DESC 
 LIMIT 300
) mostused
ORDER BY title;

SELECT title FROM 
(SELECT expense1_type AS title, COUNT(*) AS counter 
 FROM invoices 
 WHERE expense1_type <> "" AND expense1_type IS NOT NULL 
 GROUP BY expense1_type 
 ORDER BY counter DESC 
 LIMIT 300
) mostused
ORDER BY title;

SELECT title FROM 
(SELECT invoices.status AS title, COUNT(*) AS counter 
 FROM invoices 
 WHERE invoices.status <> "" AND invoices.status IS NOT NULL 
 GROUP BY invoices.status 
 ORDER BY counter DESC 
 LIMIT 300
) mostused
ORDER BY title;

SELECT title FROM 
(SELECT shippedby AS title, COUNT(*) AS counter 
 FROM invoices 
 WHERE shippedby <> "" AND shippedby IS NOT NULL 
 GROUP BY shippedby
 ORDER BY counter DESC 
 LIMIT 300
) mostused
ORDER BY title;

SELECT title FROM 
(SELECT cheque_bank AS title, COUNT(*) AS counter 
 FROM money 
 WHERE cheque_bank <> "" AND cheque_bank IS NOT NULL 
 GROUP BY cheque_bank 
 ORDER BY counter DESC 
 LIMIT 300
) mostused
ORDER BY title
