--liquibase formatted sql
--changeset tegridy:1


CREATE TABLE processors
         (
             id                 BIGINT AUTO_INCREMENT,
             cores              INT          NULL,
             base_clock         INT          NULL,
             boost_clock        INT          NULL,
             tdp                INT          NULL,
             integrated_graphic VARCHAR(200) NULL,
             multithreading     BOOL         NULL,
             CONSTRAINT processors_pk
                 PRIMARY KEY (id),
             CONSTRAINT processors_products_id_fk
                 FOREIGN KEY (id) REFERENCES products (id)
         );

INSERT INTO products (user_id, title, description, type, price, quantity, created_at, modified_at) VALUES (1, 'intel i5', 'this is a processor', '????', 222.2200, 15, '2021-08-10 18:53:07', '2021-08-10 18:53:05');
INSERT INTO processors (id, cores, base_clock, boost_clock, tdp, integrated_graphic, multithreading) VALUES (1, 4, 444444, 444444, 43, 'no', 1);
