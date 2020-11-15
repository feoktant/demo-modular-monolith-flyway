CREATE TABLE store.payment
(
    payment_id   UUID,
    customer_id  INTEGER REFERENCES store.customer NOT NULL,
    staff_id     SMALLINT REFERENCES store.staff   NOT NULL,
    rental_id    INTEGER REFERENCES store.rental   NOT NULL,
    amount       NUMERIC(5, 2)               NOT NULL,
    payment_date TIMESTAMPTZ                 NOT NULL,
    PRIMARY KEY (payment_id, payment_date)
) PARTITION BY RANGE (payment_date);

CREATE TABLE store.payment_p2017_01 PARTITION OF store.payment
    FOR VALUES FROM ('2017-01-01 00:00:00+0:00') TO ('2017-02-01 00:00:00+0:00');

CREATE TABLE store.payment_p2017_02 PARTITION OF store.payment
    FOR VALUES FROM ('2017-02-01 00:00:00+0:00') TO ('2017-03-01 00:00:00+0:00');

CREATE TABLE store.payment_p2017_03 PARTITION OF store.payment
    FOR VALUES FROM ('2017-03-01 00:00:00+0:00') TO ('2017-04-01 00:00:00+0:00');

CREATE TABLE store.payment_p2017_04 PARTITION OF store.payment
    FOR VALUES FROM ('2017-04-01 00:00:00+0:00') TO ('2017-05-01 00:00:00+0:00');

CREATE TABLE store.payment_p2017_05 PARTITION OF store.payment
    FOR VALUES FROM ('2017-05-01 00:00:00+0:00') TO ('2017-06-01 00:00:00+0:00');

CREATE TABLE store.payment_p2017_06 PARTITION OF store.payment
    FOR VALUES FROM ('2017-06-01 00:00:00+0:00') TO ('2017-07-01 00:00:00+0:00');
