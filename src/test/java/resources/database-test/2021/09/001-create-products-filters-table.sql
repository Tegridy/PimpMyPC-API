--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE filters_types(
    id BIGINT NOT NULL AUTO_INCREMENT,
    category_id BIGINT NOT NULL,
    filter_type VARCHAR(255) NOT NULL,
    filter_property VARCHAR(100),
    PRIMARY KEY (id),
    CONSTRAINT `fk_categories_filters_types` FOREIGN KEY (category_id)
    REFERENCES categories (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE filters (
    id BIGINT NOT NULL AUTO_INCREMENT,
    filter_type_id BIGINT NOT NULL,
    filter_name VARCHAR(255) NOT NULL,
    value_property VARCHAR(100),
    PRIMARY KEY (id),
    CONSTRAINT fk_filters_filters_types FOREIGN KEY (filter_type_id)
    REFERENCES filters_types (id)
    ON UPDATE CASCADE
);

