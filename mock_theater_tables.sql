-- CUSTOMER TABLE
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
);

-- CONCESSIONS TABLE
CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	worker_id INTEGER NOT NULL,
	quantity_sold INTEGER NOT NULL,
	profit NUMERIC(8,2)
);

-- THEATER
CREATE TABLE theater(
	theater_id SERIAL PRIMARY KEY,
	theater_num INTEGER NOT NULL,
	seats INTEGER NOT NULL
);

-- MOVIE TABLE
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_date DATE DEFAULT CURRENT_DATE,
	rating VARCHAR(20),
	genre VARCHAR(20),
	movie_name VARCHAR(100),
	FOREIGN KEY(theater_id) REFERENCES theater(theater_id)
);

-- TICKET TABLE
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_cost NUMERIC(8,2),
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);


