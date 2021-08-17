--liquibase formatted sql
--changeset tegridy:1


CREATE TABLE processors
         (
             id                 BIGINT AUTO_INCREMENT,
             cores              INT          NULL,
             base_clock         VARCHAR(100) NULL,
             boost_clock        VARCHAR(100) NULL,
             tdp                INT          NULL,
             motherboard_socket VARCHAR(100) NULL,
             integrated_graphic VARCHAR(200) NULL,
             multithreading     BOOL         NULL,
             CONSTRAINT processors_pk
                 PRIMARY KEY (id),
             CONSTRAINT processors_products_id_fk
                 FOREIGN KEY (id) REFERENCES products (id)
         );
