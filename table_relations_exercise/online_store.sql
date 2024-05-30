CREATE TABLE item_types (
    id SERIAL PRIMARY KEY NOT NULL,
    item_type_name VARCHAR(100)
)
;

CREATE TABLE cities (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    city_name VARCHAR(50)
)
;

CREATE TABLE items (
    id SERIAL PRIMARY KEY NOT NULL,
    item_name VARCHAR(50),
    item_type_id INT,
    CONSTRAINT items_item_type_id_fk
        FOREIGN KEY (item_type_id)
            REFERENCES item_types(id)
)
;

CREATE TABLE customers (
    id SERIAL PRIMARY KEY NOT NULL,
    customer_name VARCHAR(50),
    birthday DATE,
    city_id INT,
    CONSTRAINT customers_city_id_fk
        FOREIGN KEY (city_id)
          REFERENCES cities(id)
)
;

CREATE TABLE orders (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_id INT,
    CONSTRAINT orders_customer_id_fk
        FOREIGN KEY (customer_id)
            REFERENCES customers(id)
)
;

CREATE TABLE order_items (
    order_id INT,
    item_id INT,

    CONSTRAINT order_items_order_item_id_pk
        PRIMARY KEY (order_id, item_id),

    CONSTRAINT order_items_order_id_fk
        FOREIGN KEY (order_id)
            REFERENCES orders(id),

    CONSTRAINT order_items_item_id_pk
        FOREIGN KEY (item_id)
            REFERENCES items(id)
)
;
