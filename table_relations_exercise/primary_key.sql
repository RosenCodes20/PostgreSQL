CREATE TABLE products (
    product_name VARCHAR(50)
)
;

INSERT INTO products (product_name)
VALUES ('Broccoli'),
       ('Shampoo'),
       ('Toothpaste'),
       ('Candy');

ALTER TABLE products
ADD COLUMN id SERIAL NOT NULL,
ADD CONSTRAINT id_pk_products
    PRIMARY KEY (id);