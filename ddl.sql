CREATE TABLE customer( 
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(75),
    customer_number VARCHAR(20),
    age INTEGER
);

CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    concession_price NUMERIC(8,2),
    concession_amount INTEGER
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_price NUMERIC(8,2),
    movie_desc VARCHAR,
    amount INTEGER
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
);

ALTER TABLE ticket
ADD COLUMN movie_id INTEGER,
ADD CONSTRAINT f_movie_id FOREIGN KEY (movie_id) REFERENCES movie(movie_id); 

ALTER TABLE ticket
ADD COLUMN customer_id INTEGER,
ADD CONSTRAINT f_customer_id FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
ADD COLUMN concession_id INTEGER,
ADD CONSTRAINT f_concession_id FOREIGN KEY (concession_id) REFERENCES concession(concession_id);

-- I'll be honest i got really confused and lost trying to reference the amount 
-- from the movie table so i could have the amount of tickets in the ticket table.
-- not sure why i started struggling but i kept getting the error message of:
-- relation "amount" does not exist. WUT. Brain hurt. Will work on DML to check
-- if information stores in this database. Will update on line below. 