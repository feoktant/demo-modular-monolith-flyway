CREATE TABLE movies.actor
(
    actor_id    INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    first_name  TEXT                      NOT NULL,
    last_name   TEXT                      NOT NULL,
    last_update TIMESTAMPTZ DEFAULT now() NOT NULL
);

CREATE INDEX ON movies.actor (last_name);
