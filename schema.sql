CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE customers(
	customer_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (customer_id),
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone INT
);
CREATE TABLE products(
	product_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (product_id),
    product VARCHAR(255),
    quantity INT,
    price INT
);
CREATE TABLE orders(
	order_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (order_id),
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    date_ordered DATE,
    shipping_address VARCHAR(255),
    quantity INT
);
