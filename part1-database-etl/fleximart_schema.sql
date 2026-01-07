SHOW TABLES;
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);SHOW TABLES;
INSERT INTO orders (customer_id, order_date, total_amount, status)
VALUES (1, '2024-01-15', 45999.00, 'Completed');

DROP TABLE order_items;
DROP TABLE orders;
SHOW TABLES;
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
SHOW TABLES;
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
SHOW TABLES;
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2024-01-15', 'Completed');
DESCRIBE orders;
INSERT INTO orders (customer_id, order_date, total_amount, status)
VALUES (1, '2024-01-15', 45999.00, 'Completed');
SELECT * FROM orders;

INSERT INTO order_items (order_id, product_id, quantity, unit_price, subtotal)
VALUES (1, 1, 1, 45999.00, 45999.00);
SELECT * FROM orders;









