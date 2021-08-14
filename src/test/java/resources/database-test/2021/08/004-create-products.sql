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
