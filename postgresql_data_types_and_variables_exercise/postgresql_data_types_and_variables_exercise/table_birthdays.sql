CREATE TABLE minions_birthdays (
	id SERIAL UNIQUE,
	name VARCHAR(50),
	date_of_birth DATE,
	age INTEGER,
	present VARCHAR(50),
	party timestamptz
);