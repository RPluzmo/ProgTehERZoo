USE pet_shop;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	phone VARCHAR(20),
	email VARCHAR(100),
	PRIMARY KEY (id)
);