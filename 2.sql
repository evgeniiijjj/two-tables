CREATE TABLE IF NOT EXISTS ORDERS
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INTEGER NOT NULL,
    product_name VARCHAR (100) NOT NULL,
    amount INTEGER,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);

INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES ('01.10.2022', 1, 'headphones', 1),
    ('02.10.2022', 2, 'laptop', 1),
    ('02.11.2022', 3, 'camera', 2),
    ('03.11.2022', 4, 'battery', 3),
    ('03.11.2022', 5, 'flashcard', 5)
