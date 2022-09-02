CREATE table if not exists CUSTOMERS(
                          id INTEGER PRIMARY KEY AUTO_INCREMENT,
                          name varchar(255),
                          surname varchar(255),
                          age int check (age > 0),
                          phone_number VARCHAR(255)
);

CREATE table if not exists ORDERS(
                       id INTEGER PRIMARY Key AUTO_INCREMENT,
                       customer_id INTEGER,
                       product_name varchar(255),
                       amount int check (amount > 0),
                       FOREIGN KEY(customer_id) REFERENCES CUSTOMERS(id)
);