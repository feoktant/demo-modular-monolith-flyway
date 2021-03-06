CREATE TABLE location.address
(
    address_id  INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    address     TEXT                                                         NOT NULL,
    address2    TEXT,
    district    TEXT                                                         NOT NULL,
    city_id     INTEGER REFERENCES location.city ON UPDATE CASCADE ON DELETE RESTRICT NOT NULL,
    postal_code TEXT,
    phone       TEXT                                                         NOT NULL,
    last_update TIMESTAMPTZ DEFAULT now()                                    NOT NULL
);

CREATE INDEX ON location.address (city_id);
