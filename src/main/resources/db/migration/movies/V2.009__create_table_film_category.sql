CREATE TABLE movies.film_category
(
    film_id     INTEGER REFERENCES movies.film ON UPDATE CASCADE ON DELETE RESTRICT,
    category_id SMALLINT REFERENCES movies.category ON UPDATE CASCADE ON DELETE RESTRICT,
    last_update TIMESTAMPTZ DEFAULT now() NOT NULL,
    PRIMARY KEY (film_id, category_id)
);
