CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL CHECK ( gender = 'F' OR gender = 'M' ),
    age INT NOT NULL,
    job_title VARCHAR(40) NOT NULL,
    ip VARCHAR(30) NOT NULL
)
;

CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    street VARCHAR(30) NOT NULL,
    town VARCHAR(30) NOT NULL,
    country VARCHAR(30) NOT NULL,
    account_id INT NOT NULL REFERENCES accounts ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    description TEXT,
    capture_date TIMESTAMP NOT NULL,
    views INT NOT NULL CHECK ( views >= 0 ) DEFAULT 0
)
;

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    content VARCHAR(255) NOT NULL,
    published_on TIMESTAMP NOT NULL,
    photo_id INT NOT NULL REFERENCES photos ON DELETE CASCADE ON UPDATE CASCADE
)
;

CREATE TABLE accounts_photos (
    account_id INT NOT NULL REFERENCES accounts ON DELETE CASCADE ON UPDATE CASCADE,
    photo_id INT NOT NULL REFERENCES photos ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(account_id, photo_id)
)
;

CREATE TABLE likes (
    id SERIAL PRIMARY KEY,
    photo_id INT NOT NULL REFERENCES photos ON DELETE CASCADE ON UPDATE CASCADE,
    account_id INT NOT NULL REFERENCES accounts ON DELETE CASCADE ON UPDATE CASCADE
)
;