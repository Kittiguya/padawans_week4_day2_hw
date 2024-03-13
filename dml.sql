INSERT INTO customer(
    customer_name,
    email,
    customer_number,
    age
) VALUES(
    'Robin',
    'robinwalk31@gnail.com',
    '9182109433',
    29
);

INSERT INTO concession(
    concession_price,
    concession_amount
) VALUES(
    3.50,
    5

);

INSERT INTO movie(
    movie_price,
    movie_desc,
    amount
) VALUES(
    5.00,
    'Horror from Outer Space! Find out what happens when earth is invaded by alien overlords',
    1
);

INSERT INTO ticket(
    movie_id,
    customer_id,
    concession_id
) VALUES(
    1,
    1,
    1
)