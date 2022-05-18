--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE products_attributes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
attribute_name VARCHAR(120),
attribute_value VARCHAR(120),
product_id BIGINT,
created_at DATETIME NOT NULL,
modified_at DATETIME NULL DEFAULT NULL,
FOREIGN KEY (product_id) REFERENCES products(id)
);