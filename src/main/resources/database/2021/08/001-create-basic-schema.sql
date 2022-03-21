--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE users (
		id BIGINT AUTO_INCREMENT PRIMARY KEY,
		username VARCHAR(50) NOT NULL UNIQUE,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        phone VARCHAR(15),
		password VARCHAR(155) NOT NULL,
        email VARCHAR(50) NOT NULL,
         address_id BIGINT,
        created_at DATETIME NOT NULL,
        modified_at DATETIME NULL DEFAULT NULL
);

CREATE TABLE products (

  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  description TEXT,
  brand VARCHAR(100) NULL DEFAULT NULL,
  model VARCHAR(150) NOT NULL,
  image_url VARCHAR(255) NULL,
  price DECIMAL(13, 4) NOT NULL,
  quantity INTEGER NOT NULL DEFAULT 0,
  created_at DATETIME NOT NULL,
  modified_at DATETIME NULL DEFAULT NULL
);

CREATE TABLE categories (
  id BIGINT NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  icon_name varchar(100) DEFAULT NULL,
  parent_id BIGINT DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (parent_id) REFERENCES categories (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


  CREATE TABLE product_category (
  product_id BIGINT NOT NULL,
  category_id BIGINT NOT NULL,
  PRIMARY KEY (product_id, category_id),
  CONSTRAINT fk_product_category_product
    FOREIGN KEY (product_id)
    REFERENCES products (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_product_category_categories
    FOREIGN KEY (category_id)
    REFERENCES categories (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


