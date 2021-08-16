--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE laptops
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    processor VARCHAR(100) NULL,
    ram INT NULL,
    hard_drive VARCHAR(100) NULL,
    panel_type VARCHAR(100) NULL,
    screen_resolution VARCHAR(10) NULL,
    graphic_card VARCHAR (100) NULL,
    weight FLOAT NULL,
    operating_system VARCHAR(50) NULL,
    CONSTRAINT laptops_pk
        PRIMARY KEY (id)
);

CREATE TABLE cases
(
    id       BIGINT NOT NULL AUTO_INCREMENT,
    width    INT NULL,
    height   INT NULL,
    motherboard_format VARCHAR(50) NULL,
    CONSTRAINT cases_pk
        PRIMARY KEY (id),
    CONSTRAINT cases_products_id_fk
        FOREIGN KEY (id) REFERENCES products (id)
);


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


CREATE TABLE ram_memory
(
    id                 BIGINT NOT NULL AUTO_INCREMENT,
    module_type        VARCHAR(100) NULL,
    speed              BIGINT         NULL,
    number_of_modules  INT          NULL,
    module_size        BIGINT         NULL,
    first_word_latency FLOAT        NULL,
    cas_timing         INT          NULL,
    CONSTRAINT ram_memory_pk
        PRIMARY KEY (id),
    CONSTRAINT ram_memory_products_id_fk
        FOREIGN KEY (id) REFERENCES products (id)
);



CREATE TABLE mouses
(
    id         BIGINT NOT NULL AUTO_INCREMENT,
    style      VARCHAR(100) NULL,
    connection VARCHAR(100) NULL,
    tracking   VARCHAR(100) NULL,
    CONSTRAINT mouses_pk
        PRIMARY KEY (id),
    CONSTRAINT mouses_products_id_fk
        FOREIGN KEY (id) REFERENCES products (id)
);

CREATE TABLE monitors
(
    id            BIGINT NOT NULL AUTO_INCREMENT,
    resolution    VARCHAR(25) NULL,
    refresh_rate  INT         NULL,
    screen_size          FLOAT       NULL,
    response_time INT         NULL,
    aspect_ratio   VARCHAR(10) NULL,
    panel_type VARCHAR(10) NULL,
    CONSTRAINT monitors_pk
        PRIMARY KEY (id),
    CONSTRAINT monitors_products_id_fk
        FOREIGN KEY (id) REFERENCES products (id)
);

CREATE TABLE keyboards
(
    id         BIGINT NOT NULL AUTO_INCREMENT,
    type      VARCHAR(100) NULL,
    connection_type VARCHAR(100) NULL,
    CONSTRAINT keyboards_pk
        PRIMARY KEY (id),
    CONSTRAINT keyboards_products_id_fk
        FOREIGN KEY (id) REFERENCES products (id)
);

CREATE TABLE hard_drives
(
    id          BIGINT NOT NULL AUTO_INCREMENT,
    capacity    BIGINT       NULL,
    platter_rpm INT          NULL,
    interface   VARCHAR(100) NULL,
    storage_type VARCHAR(10) NOT NULL,
    CONSTRAINT hard_drives_pk
        PRIMARY KEY (id),
    CONSTRAINT hard_drives_products_id_fk
        FOREIGN KEY (id) REFERENCES products (id)
);

create table graphic_cards
(
	id BIGINT NOT NULL auto_increment,
	vram int null,
	core_clock int null,
	boost_clock int null,
	chipset VARCHAR(100) NULL,
	graphic_card_length int null,
	constraint graphic_cards_pk
		primary key (id),
	constraint graphic_cards_products_id_fk
		foreign key (id) references products (id)
);

CREATE TABLE motherboard_formats
(
    id     BIGINT AUTO_INCREMENT,
    format VARCHAR(50) NULL,
    KEY (id),
    CONSTRAINT motherboard_formats_motherboards_id_fk
        FOREIGN KEY (id) REFERENCES motherboards (id),
    CONSTRAINT motherboard_formats_cases_id_fk
        FOREIGN KEY (id) REFERENCES cases (id)
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
        FOREIGN KEY (id) REFERENCES motherboards (id),
    CONSTRAINT colors_cases_id_fk
        FOREIGN KEY (id) REFERENCES cases (id),
    CONSTRAINT colors_graphic_cards_id_fk
        FOREIGN KEY (id) REFERENCES graphic_cards (id),
    CONSTRAINT colors_keyboards_id_fk
            FOREIGN KEY (id) REFERENCES keyboards (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE storage_types
(
    id   BIGINT AUTO_INCREMENT,
    type VARCHAR(5) NULL,
    CONSTRAINT storage_types_pk
        PRIMARY KEY (id),
    CONSTRAINT storage_types_hard_drives_id_fk
        FOREIGN KEY (id) REFERENCES hard_drives (id)
);

CREATE TABLE monitor_panel_types
(
    id   BIGINT AUTO_INCREMENT,
    type VARCHAR(10) NULL,
    CONSTRAINT monitor_panel_types_pk
        PRIMARY KEY (id),
    CONSTRAINT monitor_panel_types_monitors_products_id_fk
        FOREIGN KEY (id) REFERENCES monitors (id),
    CONSTRAINT monitor_panel_types_laptops_id_fk
        FOREIGN KEY (id) REFERENCES laptops (id)
);

