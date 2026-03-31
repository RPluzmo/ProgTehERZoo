USE pet_shop;
CREATE TABLE pets (
  id INT NOT NULL AUTO_INCREMENT,
  species VARCHAR(50) NOT NULL,
  name VARCHAR(100) NOT NULL,
  birth_date DATE,
   sex ENUM('male', 'female') NOT NULL,
  price DECIMAL(6, 2) NOT NULL,
  PRIMARY KEY (id)
); 