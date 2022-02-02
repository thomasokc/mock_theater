INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	billing_info
) VALUES (
	1,
	'Thomas',
	'Morris',
	'4242-4242-4242-4242 666 06/01'
);

SELECT *
FROM customer;

INSERT INTO concessions(
	concession_id,
	worker_id,
	quantity_sold,
	profit
) VALUES (
	1,
	1,
	42,
	150.00
);

SELECT *
FROM concessions;

INSERT INTO theater(
	theater_id,
	theater_num,
	seats
) VALUES (
	1,
	1,
	52
);

SELECT *
FROM theater;

INSERT INTO movie(
	movie_id,
	rating,
	genre,
	movie_name
) VALUES (
	1,	
	'R',
	'Horror',
	'Toy Story 7'
);

SELECT *
FROM movie;

INSERT INTO tickets(
	ticket_id,
	ticket_cost
) VALUES (
	1,	
	15.00
);