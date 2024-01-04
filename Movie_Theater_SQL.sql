-- creating table customer
CREATE TABLE IF NOT EXISTS customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR(50) NOT NULL,
	phone_number INTEGER NOT NULL
);


-- create movie table
CREATE TABLE IF NOT EXISTS movie(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR NOT NULL,
	genre VARCHAR(25) NOT NULL,
	release_date DATE NOT NULL,
	director VARCHAR(50) NOT NULL,
	duration INTEGER NOT NULL,
	rating VARCHAR(5) NOT NULL
);


-- create ticket table
CREATE TABLE IF NOT EXISTS ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	movie_showtime DATE NOT NULL,
	price INTEGER NOT NULL
);