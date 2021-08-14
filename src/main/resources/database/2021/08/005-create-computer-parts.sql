--liquibase formatted sql
--changeset tegridy:1



--CREATE TABLE storage_types
--(
--    id   BIGINT AUTO_INCREMENT,
--    type VARCHAR(5) NULL,
--    CONSTRAINT storage_types_pk
--        PRIMARY KEY (id)
--);
--
--CREATE TABLE monitor_panel_types
--(
--    id   BIGINT AUTO_INCREMENT,
--    type VARCHAR(10) NULL,
--    CONSTRAINT monitor_panel_types_pk
--        PRIMARY KEY (id)
--);

-- -----------------------------------------------------


CREATE TABLE motherboards
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    ram_slots INT  NULL,
    max_ram   BIGINT NULL,
    motherboard_socket VARCHAR(100) NULL,
    CONSTRAINT motherboards_pk
        PRIMARY KEY (id),
    CONSTRAINT motherboards_products_id_fk
        FOREIGN KEY (id) REFERENCES products (id)
);

CREATE TABLE motherboard_formats
(
    id     BIGINT AUTO_INCREMENT,
    format VARCHAR(50) NULL,
    KEY (id),
    CONSTRAINT motherboard_formats_motherboards_id_fk
        FOREIGN KEY (id) REFERENCES motherboards (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE motherboard_sockets
(
    id     BIGINT AUTO_INCREMENT,
    socket VARCHAR(50) NULL,
    CONSTRAINT motherboard_sockets_pk
        PRIMARY KEY (id),
    CONSTRAINT motherboard_sockets_motherboards_id_fk
        FOREIGN KEY (id) REFERENCES motherboards (id)
);

CREATE TABLE colors
(
    id    BIGINT NOT NULL,
    color VARCHAR(20) NOT NULL,
    KEY (id),
    CONSTRAINT colors_motherboards_id_fk
        FOREIGN KEY (id) REFERENCES motherboards (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


--CREATE TABLE ram_memory
--(
--    id                 BIGINT AUTO_INCREMENT,
--    module_type        VARCHAR(100) NULL,
--    speed              LONG         NULL,
--    number_of_modules  INT          NULL,
--    module_size        LONG         NULL,
--    first_word_latency FLOAT        NULL,
--    cas_timing         INT          NULL,
--    CONSTRAINT ram_memory_pk
--        PRIMARY KEY (id),
--    CONSTRAINT ram_memory_products_id_fk
--        FOREIGN KEY (id) REFERENCES products (id)
--);
--
--
--
--CREATE TABLE mouses
--(
--    id         BIGINT AUTO_INCREMENT,
--    style      VARCHAR(100) NULL,
--    connection VARCHAR(100) NULL,
--    tracking   VARCHAR(100) NULL,
--    CONSTRAINT mouses_pk
--        PRIMARY KEY (id),
--    CONSTRAINT mouses_products_id_fk
--        FOREIGN KEY (id) REFERENCES products (id)
--);

--CREATE TABLE monitors
--(
--    id            BIGINT AUTO_INCREMENT,
--    resolution    VARCHAR(25) NULL,
--    refresh_rate  INT         NULL,
--    size          FLOAT       NULL,
--    response_time INT         NULL,
--    aspectRatio   VARCHAR(10) NULL,
--    CONSTRAINT monitors_pk
--        PRIMARY KEY (id),
--    CONSTRAINT monitors_products_id_fk
--        FOREIGN KEY (id) REFERENCES products (id)
--);
--
--CREATE TABLE keyboards
--(
--    id         BIGINT AUTO_INCREMENT,
--    style      VARCHAR(100) NULL,
--    connection VARCHAR(100) NULL,
--    CONSTRAINT keyboards_pk
--        PRIMARY KEY (id),
--    CONSTRAINT keyboards_products_id_fk
--        FOREIGN KEY (id) REFERENCES products (id),
--    CONSTRAINT keyboards_colors_id_fk
--        FOREIGN KEY (id) REFERENCES colors (id)
--);
--
--CREATE TABLE hard_drives
--(
--    id          BIGINT AUTO_INCREMENT,
--    capacity    LONG         NULL,
--    platter_rpm INT          NULL,
--    interface   VARCHAR(100) NULL,
--    CONSTRAINT hard_drives_pk
--        PRIMARY KEY (id),
--    CONSTRAINT hard_drives_colors_id_fk
--        FOREIGN KEY (id) REFERENCES colors (id),
--    CONSTRAINT hard_drives_products_id_fk
--        FOREIGN KEY (id) REFERENCES products (id)
--);
--
--create table graphic_cards
--(
--	id BIGINT auto_increment,
--	vram int null,
--	core_clock int null,
--	boost_clock int null,
--	graphic_card_length int null,
--	constraint graphic_cards_pk
--		primary key (id),
--	constraint graphic_cards_colors_id_fk
--		foreign key (id) references colors (id),
--	constraint graphic_cards_products_id_fk
--		foreign key (id) references products (id)
--);
--
--CREATE TABLE cases
--(
--    id       BIGINT AUTO_INCREMENT,
--    motherboard_format VARCHAR(50) NULL,
--    CONSTRAINT cases_pk
--        PRIMARY KEY (id),
--    CONSTRAINT cases_colors_id_fk
--        FOREIGN KEY (id) REFERENCES colors (id),
--    CONSTRAINT cases_motherboard_formats_id_fk
--        FOREIGN KEY (id) REFERENCES motherboard_formats (id),
--    CONSTRAINT cases_products_id_fk
--        FOREIGN KEY (id) REFERENCES products (id)
--);
