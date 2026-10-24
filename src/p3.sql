SELECT SUM(S.quantity) AS total_quantity_sold,
       AVG(S.quantity) AS average_quantity_sold,
       SUM(S.quantity*I.price) AS total_sales_amount,
       AVG(S.quantity*I.price) AS average_sales_amount
FROM sales S, inventories I
WHERE S.product_id = I.product_id;