1. SELECT * FROM customers
JOIN addresses
ON customers.id = addresses.id

2. SELECT * FROM orders
JOIN line_items
ON orders.id = line_items.order_id

3.SELECT warehouse.warehouse, products.description FROM products JOIN warehouse_product ON products.id = warehouse_product.product_id JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'cheetos';

4. SELECT warehouse.warehouse, products.description FROM products JOIN warehouse_product ON products.id = warehouse_product.product_id JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'diet pepsi';

5. SELECT customers.first_name, customers.last_name, count(orders.*)
  FROM customers JOIN addresses ON customers.id = addresses.id
  JOIN orders ON addresses.id = orders.adress_id
  GROUP BY customers.first_name, customers.last_name;

  6. SELECT count(customers.id) FROM customers;

  7.SELECT count(products.id) FROM products;

  8. SELECT sum(warehouse_product.on_hand) FROM warehouse_product
    JOIN products ON products.id = warehouse_product.product_id
    WHERE products.description = 'diet pepsi';
