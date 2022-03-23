--liquibase formatted sql
--changeset tegridy:1
CREATE TABLE cases (
  id BIGINT NOT NULL AUTO_INCREMENT,
  width INT NULL,
  height INT NULL,
  CONSTRAINT cases_pk PRIMARY KEY (id),
  CONSTRAINT cases_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE motherboards (
  id BIGINT NOT NULL AUTO_INCREMENT,
  ram_slots INT NULL,
  max_ram BIGINT NULL,
  memory_type VARCHAR(40) NULL,
  motherboard_format VARCHAR(50) NULL,
  motherboard_socket VARCHAR(100) NULL,
  CONSTRAINT motherboards_pk PRIMARY KEY (id),
  CONSTRAINT motherboards_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE processors (
  id BIGINT AUTO_INCREMENT,
  cores INT NULL,
  base_clock VARCHAR(100) NULL,
  boost_clock VARCHAR(100) NULL,
  tdp INT NULL,
  motherboard_socket VARCHAR(100) NULL,
  integrated_graphic VARCHAR(200) NULL,
  multithreading BOOL NULL,
  CONSTRAINT processors_pk PRIMARY KEY (id),
  CONSTRAINT processors_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE ram_memory (
  id BIGINT NOT NULL AUTO_INCREMENT,
  module_type VARCHAR(100) NULL,
  speed BIGINT NULL,
  number_of_modules INT NULL,
  module_size BIGINT NULL,
  first_word_latency INT NULL,
  cas_timing INT NULL,
  CONSTRAINT ram_memory_pk PRIMARY KEY (id),
  CONSTRAINT ram_memory_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE mouses (
  id BIGINT NOT NULL AUTO_INCREMENT,
  style VARCHAR(100) NULL,
  CONNECTION VARCHAR(100) NULL,
  tracking VARCHAR(100) NULL,
  CONSTRAINT mouses_pk PRIMARY KEY (id),
  CONSTRAINT mouses_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE monitors (
  id BIGINT NOT NULL AUTO_INCREMENT,
  resolution VARCHAR(25) NULL,
  refresh_rate INT NULL,
  screen_size FLOAT NULL,
  response_time INT NULL,
  aspect_ratio VARCHAR(10) NULL,
  panel_type VARCHAR(10) NULL,
  CONSTRAINT monitors_pk PRIMARY KEY (id),
  CONSTRAINT monitors_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE keyboards (
  id BIGINT NOT NULL AUTO_INCREMENT,
  TYPE VARCHAR(100) NULL,
  connection_type VARCHAR(100) NULL,
  CONSTRAINT keyboards_pk PRIMARY KEY (id),
  CONSTRAINT keyboards_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE hard_discs (
  id BIGINT NOT NULL AUTO_INCREMENT,
  capacity INT NULL,
  platter_rpm INT NULL,
  interface VARCHAR(100) NULL,
  storage_type VARCHAR(10) NOT NULL,
  CONSTRAINT hard_discs_pk PRIMARY KEY (id),
  CONSTRAINT hard_discs_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE graphic_cards (
  id BIGINT NOT NULL AUTO_INCREMENT,
  v_ram INT NULL,
  core_clock INT NULL,
  boost_clock INT NULL,
  chipset VARCHAR(100) NULL,
  graphic_card_length int NULL,
  tdp INT NULL,
  CONSTRAINT graphic_cards_pk PRIMARY KEY (id),
  CONSTRAINT graphic_cards_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE power_supplies (
  id BIGINT NOT NULL AUTO_INCREMENT,
  adapter_power INT NOT NULL,
  standard VARCHAR(50) NULL,
  certificate VARCHAR(100) NULL,
  CONSTRAINT power_supplies_pk PRIMARY KEY (id),
  CONSTRAINT power_supplies_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE smartphones (
  id BIGINT NOT NULL AUTO_INCREMENT,
  memory INT NULL,
  display_size VARCHAR(200) NULL,
  resolution VARCHAR(25) NULL,
  processor VARCHAR(150) NULL,
  cpu_speed VARCHAR(200) NULL,
  ram INT NULL,
  operating_system VARCHAR(255) NULL,
  battery_capacity INT NULL,
  CONSTRAINT smartphones_pk PRIMARY KEY (id),
  CONSTRAINT smartphones_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE laptops (
  id BIGINT NOT NULL AUTO_INCREMENT,
  display_size VARCHAR(10) NULL,
  screen_resolution VARCHAR(25) NULL,
  panel_type VARCHAR(15) NULL,
  processor VARCHAR(150) NULL,
  cpu_speed FLOAT NULL,
  ram INT NULL,
  ram_type VARCHAR(15) NULL,
  graphic_card VARCHAR(200) NULL,
  graphic_card_memory INT NULL,
  operating_system VARCHAR(255) NULL,
  hard_disc_type VARCHAR(15) NULL,
  hard_disc_capacity INT NULL,
  weight FLOAT NULL,
  CONSTRAINT laptops_pk PRIMARY KEY (id),
  CONSTRAINT laptops_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE computers (
  id BIGINT NOT NULL AUTO_INCREMENT,
  processor VARCHAR(200) NULL,
  ram VARCHAR(100) NULL,
  motherboard VARCHAR(200) NULL,
  hard_disc VARCHAR(200) NULL,
  power_supply VARCHAR(200) NULL,
  computer_case VARCHAR(200) NULL,
  graphic_card VARCHAR(200) NULL,
  CONSTRAINT computers_pk PRIMARY KEY (id),
  CONSTRAINT computers_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE motherboard_formats (
  id BIGINT AUTO_INCREMENT,
  format VARCHAR(50) NULL,
  KEY (id),
  CONSTRAINT motherboard_formats_cases_id_fk FOREIGN KEY (id) REFERENCES cases (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE motherboard_sockets (
  id BIGINT AUTO_INCREMENT,
  socket VARCHAR(50) NULL,
  CONSTRAINT motherboard_sockets_pk PRIMARY KEY (id),
  CONSTRAINT motherboard_sockets_motherboards_id_fk FOREIGN KEY (id) REFERENCES motherboards (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE colors (
  id BIGINT NOT NULL,
  color VARCHAR(20) NOT NULL,
  KEY (id),
  CONSTRAINT colors_products_id_fk FOREIGN KEY (id) REFERENCES products (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE storage_types (
  id BIGINT AUTO_INCREMENT,
  TYPE VARCHAR(5) NULL,
  CONSTRAINT storage_types_pk PRIMARY KEY (id),
  CONSTRAINT storage_types_hard_discs_id_fk FOREIGN KEY (id) REFERENCES hard_discs (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE monitor_panel_types (
  id BIGINT AUTO_INCREMENT,
  TYPE VARCHAR(10) NULL,
  CONSTRAINT monitor_panel_types_pk PRIMARY KEY (id),
  CONSTRAINT monitor_panel_types_monitors_products_id_fk FOREIGN KEY (id) REFERENCES monitors (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT monitor_panel_types_laptops_id_fk FOREIGN KEY (id) REFERENCES laptops (id) ON DELETE CASCADE ON UPDATE CASCADE
);
