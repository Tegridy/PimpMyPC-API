--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE orders(
    id BIGINT AUTO_INCREMENT NOT NULL,
    delivery_address_id BIGINT,
    user_id BIGINT,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    order_status VARCHAR(100) NOT NULL,
    customer_email VARCHAR(150) NOT NULL,
    customer_phone VARCHAR(25) NOT NULL,
    total_price DECIMAL(13, 4) NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NULL DEFAULT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_orders_addresses FOREIGN KEY (delivery_address_id) REFERENCES addresses(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT fk_orders_users FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE orders_products(
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    CONSTRAINT fk_order_product FOREIGN KEY (order_id) REFERENCES orders(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT fk_product_order FOREIGN KEY (product_id) REFERENCES products(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);