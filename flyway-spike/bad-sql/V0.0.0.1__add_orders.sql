CREATE TABLE orders (
    id                bigserial     PRIMARY KEY,
    order_id          varchar(36),
    created           timestamptz
);