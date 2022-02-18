--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE order_status(
    id    BIGINT AUTO_INCREMENT NOT NULL,
    status VARCHAR(30) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_order_status_orders
        FOREIGN KEY (id) REFERENCES orders (id)
);