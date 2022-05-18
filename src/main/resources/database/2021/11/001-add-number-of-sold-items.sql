--liquibase formatted sql
--changeset tegridy:1

ALTER TABLE products ADD COLUMN number_of_sold INT DEFAULT 0;
