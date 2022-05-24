--liquibase formatted sql
--changeset tegridy:1

INSERT INTO categories(title, icon_name, parent_id)
VALUES('Laptops', 'laptop-outline', NULL );

INSERT INTO categories(title, icon_name, parent_id)
VALUES('Computers', 'desktop-outline', NULL);

INSERT INTO categories(title, icon_name, parent_id)
VALUES('Smartphones', 'phone-portrait-outline', NULL);

INSERT INTO categories(title, icon_name, parent_id)
VALUES('Build PC', 'hammer-outline', null);

INSERT INTO categories(title, icon_name, parent_id)
VALUES('Computer assets', 'hardware-chip-outline', NULL);

INSERT INTO categories(title, icon_name, parent_id)
VALUES('Peripherals', 'print-outline', NULL);

-- -----------------------------------------------------


INSERT INTO categories(title,parent_id)
VALUES('Laptops/Notebooks/Ultrabooks',1);

INSERT INTO categories(title,parent_id)
VALUES('Laptops 15"',7);

INSERT INTO categories(title,parent_id)
VALUES('Laptops 16"',7);

INSERT INTO categories(title,parent_id)
VALUES('Laptops 17"',7);

-- -----------------------------------------------------

INSERT INTO categories(title,parent_id)
VALUES('Processors',5);

INSERT INTO categories(title,parent_id)
VALUES('Intel',11);

INSERT INTO categories(title,parent_id)
VALUES('AMD',11);

INSERT INTO categories(title,parent_id)
VALUES('Memory RAM',5);

INSERT INTO categories(title,parent_id)
VALUES('Graphic cards',5);

INSERT INTO categories(title,parent_id)
VALUES('NVIDIA',15);

INSERT INTO categories(title,parent_id)
VALUES('AMD',15);

INSERT INTO categories(title,parent_id)
VALUES('Motherboards',5);

INSERT INTO categories(title,parent_id)
VALUES('Hard drives',5);

INSERT INTO categories(title,parent_id)
VALUES('HDD',19);

INSERT INTO categories(title,parent_id)
VALUES('SSD',19);

INSERT INTO categories(title,parent_id)
VALUES('Power supply',5);

INSERT INTO categories(title,parent_id)
VALUES('Cases',5);


-- -----------------------------------------------------


INSERT INTO categories(title,parent_id)
VALUES('Computer mouses',6);

INSERT INTO categories(title,parent_id)
VALUES('Computer keyboards',6);

INSERT INTO categories(title,parent_id)
VALUES('Monitors',6);

-- ---------------------------------------------------------------------
-- ---------------------------------------------------------------------

