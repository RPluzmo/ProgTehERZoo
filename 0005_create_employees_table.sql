USE pet_shop;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	id INT NOT NULL AUTO_INCREMENT,
	customer_id INT NOT NULL,
	position VARCHAR(100) NOT NULL,
	salary DECIMAL(8, 2) NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_employees_customers FOREIGN KEY (customer_id) REFERENCES customers(id)
);