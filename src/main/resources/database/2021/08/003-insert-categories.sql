--liquibase formatted sql
--changeset tegridy:1

INSERT INTO categories(title,parent_id)
VALUES('Laptops',NULL);

INSERT INTO categories(title,parent_id)
VALUES('Computers',NULL);

INSERT INTO categories(title,parent_id)
VALUES('Smartphones',NULL);

INSERT INTO categories(title, parent_id)
VALUES('Build PC', null);

INSERT INTO categories(title,parent_id)
VALUES('Computer assets',NULL);

INSERT INTO categories(title,parent_id)
VALUES('Peripherals',NULL);

-- ----------------------------------------------------------------------

INSERT INTO categories(title,parent_id)
VALUES('Office computers',2);

INSERT INTO categories(title,parent_id)
VALUES('Gaming computers',2);

-- -----------------------------------------------------


INSERT INTO categories(title,parent_id)
VALUES('Laptops/Notebooks/Ultrabooks',1);

INSERT INTO categories(title,parent_id)
VALUES('Laptops 15"',9);
INSERT INTO categories(title,parent_id)
VALUES('Laptops 16"',9);
INSERT INTO categories(title,parent_id)
VALUES('Laptops 17"',9);

-- -----------------------------------------------------

INSERT INTO categories(title,parent_id)
VALUES('Processors',5);

INSERT INTO categories(title,parent_id)
VALUES('Memory RAM',5);

INSERT INTO categories(title,parent_id)
VALUES('Graphic cards',5);

INSERT INTO categories(title,parent_id)
VALUES('Motherboards',5);

INSERT INTO categories(title,parent_id)
VALUES('Hard drives',5);

INSERT INTO categories(title,parent_id)
VALUES('HDD',17);

INSERT INTO categories(title,parent_id)
VALUES('SSD',17);

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

