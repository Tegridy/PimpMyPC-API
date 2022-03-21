--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE addresses (
  id BIGINT NOT NULL AUTO_INCREMENT,
  street VARCHAR(150) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(150) NOT NULL,
  zip VARCHAR(25) NOT NULL,
  created_at DATETIME NOT NULL,
  modified_at DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (id);
);

ALTER TABLE users ADD CONSTRAINT fk_users_addresses FOREIGN KEY (address_id) REFERENCES addresses(id);