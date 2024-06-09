CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
)
;

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1) CHECK ( gender = 'F' or gender = 'M' ),
    age INT NOT NULL CHECK ( age > 0 ),
    phone_number CHAR(10) NOT NULL,
    country_id INT NOT NULL REFERENCES countries ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    description VARCHAR(250),
    recipe TEXT,
    price numeric(10, 2) NOT NULL CHECK ( price > 0 )
)
;

CREATE TABLE feedbacks (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255),
    rate numeric(4, 2) CHECK ( rate >= 0 AND rate <= 10 ),
    product_id INT NOT NULL REFERENCES products ON DELETE CASCADE ON UPDATE CASCADE,
    customer_id INT NOT NULL REFERENCES customers ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE distributors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(25) NOT NULL UNIQUE,
    address VARCHAR(30) NOT NULL,
    summary VARCHAR(200) NOT NULL,
    country_id INT NOT NULL REFERENCES countries ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE ingredients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(200),
    country_id INT NOT NULL REFERENCES countries ON DELETE CASCADE ON UPDATE CASCADE,
    distributor_id INT NOT NULL REFERENCES distributors ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE products_ingredients (
    product_id INT REFERENCES products ON DELETE CASCADE ON UPDATE CASCADE,
    ingredient_id INT REFERENCES ingredients ON DELETE CASCADE ON UPDATE CASCADE
)
;
