CREATE TABLE employees (
	id		integer,
	name		text,
	position	text,
	department	text,
	salary		numeric,
Primary Key (id)
);

CREATE TABLE customers (
	customer_id	integer,
	customer_name	text,
	city		text,
Primary Key (customer_id)
);

CREATE TABLE orders (
	order_id	integer,
	order_date	date,
	customer_id	integer,
	total_amount	numeric,
Primary Key (order_id), 
Foreign Key (customer_id) references customers(customer_id)
);

CREATE TABLE inventories (
	product_id 	integer,
	product_name	text,
	quantity	integer,
	price		numeric,
Primary Key (product_id)
);

CREATE TABLE sales (
	order_id	integer,
	customer_id	integer,
	product_id	integer,
	quantity	integer,
	sale_date	date,
Foreign Key (order_id) references orders(order_id),
Foreign Key (customer_id) references customers(customer_id),
Foreign Key (product_id) references inventories(product_id)
);

