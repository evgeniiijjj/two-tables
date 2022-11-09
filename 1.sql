DROP TABLE IF EXISTS CUSTOMERS;

CREATE TABLE CUSTOMERS
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    age INTEGER CHECK(Age > 0 AND Age < 100),
    phone_number VARCHAR(15) UNIQUE
);

INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES ('Alexey', 'Alexiev', 20, 89283654596),
       ('Vasiliy', 'Vasiliev', 31, 89283694536),
       ('alexey', 'Yegorovich', 35, 89283656786),
       ('Dmitriy', 'Dmitrievich', 37, 89383654596),
       ('alexey', 'Mikhailovich', 35, 89283651236);

