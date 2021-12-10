--liquibase formatted sql
--changeset tegridy:1

ALTER TABLE products ADD COLUMN number_of_sold INT DEFAULT 0;

UPDATE products SET number_of_sold = 16 WHERE id = 5;
UPDATE products SET number_of_sold = 18 WHERE id = 46;
UPDATE products SET number_of_sold = 7 WHERE id = 74;
UPDATE products SET number_of_sold = 9 WHERE id = 92;
UPDATE products SET number_of_sold = 25 WHERE id = 105;
UPDATE products SET number_of_sold = 68 WHERE id = 40;