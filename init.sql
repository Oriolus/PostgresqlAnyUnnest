-- Table: bookings.bookings

-- DROP TABLE bookings.bookings;

CREATE TABLE bookings.bookings
(
    book_ref character(6) COLLATE pg_catalog."default" NOT NULL,
    book_date timestamp with time zone NOT NULL,
    total_amount numeric(10,2) NOT NULL,
    CONSTRAINT bookings_pkey PRIMARY KEY (book_ref)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE bookings.bookings
    OWNER to postgres;
COMMENT ON TABLE bookings.bookings
    IS 'Bookings';

COMMENT ON COLUMN bookings.bookings.book_ref
    IS 'Booking number';

COMMENT ON COLUMN bookings.bookings.book_date
    IS 'Booking date';

COMMENT ON COLUMN bookings.bookings.total_amount
    IS 'Total booking cost';



create type bookings.bookings_v1 as
(
	book_ref character(6) COLLATE pg_catalog."default",
    book_date timestamp with time zone,
    total_amount numeric(10,2)
);