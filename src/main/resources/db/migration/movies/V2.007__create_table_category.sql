CREATE TABLE movies.category
(
    category_id SMALLINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name        TEXT                      NOT NULL,
    last_update TIMESTAMPTZ DEFAULT now() NOT NULL
);
