USE pet_shop;

DROP TABLE IF EXISTS purchases;

CREATE TABLE purchases (
	id INT NOT NULL AUTO_INCREMENT,
	customer_id INT NOT NULL,
	employee_id INT NOT NULL,
	purchase_date DATE NOT NULL,
	purchase_time TIME NOT NULL,
	total_amount DECIMAL(8, 2) NOT NULL,
	payment_method VARCHAR(50) NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_purchases_customers FOREIGN KEY (customer_id) REFERENCES customers(id),
	CONSTRAINT fk_purchases_employees FOREIGN KEY (employee_id) REFERENCES employees(id)
);