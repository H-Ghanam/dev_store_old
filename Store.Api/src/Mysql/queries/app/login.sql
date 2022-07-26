
Select * FROM users WHERE id = {{id}};
SELECT * FROM stores WHERE active = 1 AND id IN (1)  ORDER BY sn;
SELECT * FROM banks WHERE active = 1 AND id IN (2,1)  ORDER BY sn;
SELECT id, title FROM accounts WHERE kind = 'salesman' ORDER BY title;
SELECT id, title FROM users WHERE active = 1 ORDER BY sn;
SELECT * FROM stores order by sn;
SELECT (SELECT COUNT(*) FROM invoices_items) + (SELECT COUNT(*) FROM money) + (SELECT COUNT(*) FROM installments_parts) AS Records;
SELECT 
(SELECT COUNT(*) FROM items WHERE reorder_qty > 0 AND ( (qty < reorder_qty) OR (qty IS NULL) ) AND dead = 0) AS reorder_items, 
(SELECT COUNT(*) FROM accounts WHERE reminder_date <= '{{date}}' ) AS accounts_reminders, 
(SELECT COUNT(*) FROM money WHERE ( (kind IN ("INSTAL_RECEIPT", "INSTAL_PAYMENT")) OR (kind IN ("RECEIPT", "PAYMENT") AND is_cheque = 1) ) AND due_date <= '{{date}}'  AND is_liquid = 0 AND is_closed = 0) AS due_instals, 
(SELECT COUNT(*) FROM invoices WHERE payment_status IN ("NOT PAID", "PARTIAL") AND due_date <= '{{dateplus2}}' ) AS due_invoices;
