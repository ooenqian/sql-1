SELECT	C.customer_name,
	O.order_date,
	O.total_amount
FROM customers C, orders O
WHERE C.customer_id = O.customer_id AND C.city = 'New York';

	