DROP TABLE customers;
DROP TABLE films;
DROP TABLE tickets;

CREATE TABLE customers(
    id SERIAL4 PRIMARY KEY,
    name VARCHAR(255),
    funds VARCHAR(255)
);

CREATE TABLE films(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  price INT2
);

CREATE TABLE tickets(
  id SERIAL4 PRIMARY KEY,
  customer_id INT4 REFERENCES Customers(id) ON DELETE CASCADE,
  tickets_id INT4 REFERENCES films(id) ON DELETE CASCADE,
)
