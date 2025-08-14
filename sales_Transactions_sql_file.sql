SELECT * FROM sales.transactions;

SELECT *
FROM sales.transactions
WHERE sales_amount <= 0;

SELECT distinct(transactions.currency) 
FROM sales.transactions;
'INR'
'USD'
'INR\r'
'USD\r';

SELECT count(*)
FROM transactions 
WHERE currency = 'INR';

SELECT count(*)
FROM transactions 
WHERE currency = 'INR\r';

SELECT count(*)
FROM transactions
WHERE currency = 'USD' OR currency = 'USD\r';

SELECT * 
FROM transactions
WHERE currency = 'USD\r' OR currency = 'USD';

SELECT sum(t.sales_amount)
FROM sales.transactions t
JOIN sales.date d
	ON t.order_date = d.date
WHERE d.year = 2020 and t.currency = 'INR\r' OR t.currency = 'USD\r';

SELECT sum(t.sales_amount)
FROM sales.transactions t
JOIN sales.date d
	ON d.date = t.order_date
WHERE d.year = 2020 AND 
d.month_name = 'January' AND
(t.currency = 'USD\r' OR t.currency = 'INR\r');

SELECT sum(t.sales_amount)
FROM sales.transactions t
JOIN sales.date d
	ON t.order_date = d.date
WHERE d.year = 2020 AND 
d.month_name = 'February' AND
(t.currency = 'USD\r' OR t.currency = 'INR\r');

SELECT c.custmer_name, sum(t.sales_amount) AS SM
FROM sales.customers c
LEFT JOIN sales.transactions t
	USING (customer_code)
GROUP BY c.custmer_name
ORDER BY SM desc
LIMIT 5;

SELECT t.product_code, sum(t.sales_amount) AS Revenue
FROM sales.transactions t
GROUP BY t.product_code
ORDER BY Revenue desc
LIMIT 5;
