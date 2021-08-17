--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE `users` (
		`id` BIGINT AUTO_INCREMENT PRIMARY KEY,
		`username` VARCHAR(50) NOT NULL UNIQUE,
        `first_name` VARCHAR(50) NOT NULL,
        `last_name` VARCHAR(50) NOT NULL,
        `phone` VARCHAR(15),
		`password` VARCHAR(155) NOT NULL,
        `email` VARCHAR(50) NOT NULL,
        `created_at` DATETIME NOT NULL,
        `modified_at` DATETIME NULL DEFAULT NULL
);

CREATE TABLE `products` (

  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(150) NOT NULL,
  `description` TEXT,
  `brand` VARCHAR(100) NULL DEFAULT NULL,
  `model` VARCHAR(150),
  `image_url` VARCHAR(255) NULL,
  `price` DECIMAL(13, 4) NOT NULL DEFAULT 0,
  `quantity` INTEGER NOT NULL DEFAULT 0,
  `created_at` DATETIME NOT NULL,
  `modified_at` DATETIME NULL DEFAULT NULL
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION
);
--
--CREATE TABLE PRODUCTS_REVIEW (
--   `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--  `productId` BIGINT NOT NULL,
--  `title` VARCHAR(100) NOT NULL,
--  `rating` SMALLINT NOT NULL DEFAULT 0,
--  `published` TINYINT NOT NULL DEFAULT 0,
--  `createdAt` DATETIME NOT NULL,
--  `publishedAt` DATETIME NULL DEFAULT NULL,
--  `description` TEXT NULL DEFAULT NULL,
--  CONSTRAINT `fk_review_product`
--    FOREIGN KEY (`productId`)
--    REFERENCES `products` (`id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION
--);
--
--
CREATE TABLE `categories` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent_id` BIGINT DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (parent_id) REFERENCES categories (id)
    ON DELETE CASCADE ON UPDATE CASCADE
);


  CREATE TABLE `product_category` (
  `product_id` BIGINT NOT NULL,
  `category_id` BIGINT NOT NULL,
  PRIMARY KEY (`product_id`, `category_id`),
  CONSTRAINT `fk_pc_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pc_categories`
    FOREIGN KEY (`category_id`)
    REFERENCES `categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

--CREATE TABLE `basket` (
--  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--  `userId` BIGINT NULL DEFAULT NULL,
--  `status` SMALLINT NOT NULL DEFAULT 0,
--  `first_name` VARCHAR(50) NULL DEFAULT NULL,
--  `last_name` VARCHAR(50) NULL DEFAULT NULL,
--  `phone` VARCHAR(15) NULL,
--  `email` VARCHAR(50) NULL,
--  `city` VARCHAR(50) NULL DEFAULT NULL,
--  `province` VARCHAR(50) NULL DEFAULT NULL,
--  `createdAt` DATETIME NOT NULL,
--  `updatedAt` DATETIME NULL DEFAULT NULL,
--  CONSTRAINT `fk_basket_user`
--    FOREIGN KEY (`userId`)
--    REFERENCES `users` (`id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION
--);
--
--CREATE TABLE `basket_item` (
--  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--  `productId` BIGINT NOT NULL,
--  `basketId` BIGINT NOT NULL,
--  `price` FLOAT NOT NULL DEFAULT 0,
--  `quantity` SMALLINT NOT NULL DEFAULT 0,
--  `createdAt` DATETIME NOT NULL,
--  `updatedAt` DATETIME NULL DEFAULT NULL,
--  CONSTRAINT `fk_basket_item_product`
--    FOREIGN KEY (`productId`)
--    REFERENCES `products` (`id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION
--);
--
--ALTER TABLE `basket_item`
--ADD CONSTRAINT `fk_basket_item_basket`
--  FOREIGN KEY (`basketId`)
--  REFERENCES `basket` (`id`)
--  ON DELETE NO ACTION
--  ON UPDATE NO ACTION;
--
--
--  CREATE TABLE `orders` (
--  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--  `userId` BIGINT NULL DEFAULT NULL,
--  `status` SMALLINT NOT NULL DEFAULT 0,
--  `tax` FLOAT NOT NULL DEFAULT 0,
--  `shipping` FLOAT NOT NULL DEFAULT 0,
--  `total` FLOAT NOT NULL DEFAULT 0,
--  `first_name` VARCHAR(50) NULL DEFAULT NULL,
--  `last_name` VARCHAR(50) NULL DEFAULT NULL,
--  `phone` VARCHAR(15) NULL,
--  `email` VARCHAR(50) NULL,
--  `city` VARCHAR(50) NULL DEFAULT NULL,
--  `province` VARCHAR(50) NULL DEFAULT NULL,
--  `country` VARCHAR(50) NULL DEFAULT NULL,
--  `createdAt` DATETIME NOT NULL,
--  `updatedAt` DATETIME NULL DEFAULT NULL,
--  CONSTRAINT `fk_orders_user`
--    FOREIGN KEY (`userId`)
--    REFERENCES `users` (`id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION
--);
--
--CREATE TABLE `order_item` (
--  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--  `productId` BIGINT NOT NULL,
--  `orderId` BIGINT NOT NULL,
--  `price` FLOAT NOT NULL DEFAULT 0,
--  `quantity` SMALLINT NOT NULL DEFAULT 0,
--  `createdAt` DATETIME NOT NULL,
--  `updatedAt` DATETIME NULL DEFAULT NULL,
--  CONSTRAINT `fk_order_item_product`
--    FOREIGN KEY (`productId`)
--    REFERENCES `products` (`id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION);
--
--ALTER TABLE `order_item`
--ADD CONSTRAINT `fk_order_item_orders`
--  FOREIGN KEY (`orderId`)
--  REFERENCES `orders` (`id`)
--  ON DELETE NO ACTION
--  ON UPDATE NO ACTION;
--
--
--CREATE TABLE `transactions` (
--  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--  `userId` BIGINT NOT NULL,
--  `orderId` BIGINT NOT NULL,
--  `status` SMALLINT NOT NULL DEFAULT 0,
--  `createdAt` DATETIME NOT NULL,
--  `updatedAt` DATETIME NULL DEFAULT NULL,
--  CONSTRAINT `fk_transactions_users`
--    FOREIGN KEY (`userId`)
--    REFERENCES `users` (`id`)
--    ON DELETE NO ACTION
--    ON UPDATE NO ACTION);
--
--ALTER TABLE `transactions`
--ADD CONSTRAINT `fk_transactions_orders`
--  FOREIGN KEY (`orderId`)
--  REFERENCES `orders` (`id`)
--  ON DELETE NO ACTION
--  ON UPDATE NO ACTION;

