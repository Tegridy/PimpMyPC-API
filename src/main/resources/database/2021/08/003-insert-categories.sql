--liquibase formatted sql
--changeset tegridy:1

INSERT INTO categories(title,parent_id)
VALUES('Computers',NULL);

INSERT INTO categories(title,parent_id)
VALUES('Laptops',NULL);

INSERT INTO categories(title,parent_id)
VALUES('Smartphones',NULL);

INSERT INTO categories(title,parent_id)
VALUES('Computer assets',NULL);

INSERT INTO categories(title,parent_id)
VALUES('Peripherals',NULL);

INSERT INTO categories(title,parent_id)
VALUES('Accessories',NULL);

-- ----------------------------------------------------------------------

INSERT INTO categories(title,parent_id)
VALUES('Office computers',1);

INSERT INTO categories(title,parent_id)
VALUES('Gaming computers',1);

INSERT INTO categories(title,parent_id)
VALUES('Servers',1);

INSERT INTO categories(title,parent_id)
VALUES('Software',1);

-- -----------------------------------------------------


INSERT INTO categories(title,parent_id)
VALUES('Laptops/Notebooks/Ultrabooks',2);

INSERT INTO categories(title,parent_id)
VALUES('Laptops 15"',11);
INSERT INTO categories(title,parent_id)
VALUES('Laptops 16"',11);
INSERT INTO categories(title,parent_id)
VALUES('Laptops 17"',11);

INSERT INTO categories(title,parent_id)
VALUES('Laptops 2 in 1',2);

INSERT INTO categories(title,parent_id)
VALUES('Bags and cases',2);


-- -----------------------------------------------------


INSERT INTO categories(title,parent_id)
VALUES('Smartphones and phones',3);

INSERT INTO categories(title,parent_id)
VALUES('Tablets',3);


-- -----------------------------------------------------



INSERT INTO categories(title,parent_id)
VALUES('Processors',4);

INSERT INTO categories(title,parent_id)
VALUES('Memory RAM',4);

INSERT INTO categories(title,parent_id)
VALUES('Graphic cards',4);

INSERT INTO categories(title,parent_id)
VALUES('Motherboards',4);

INSERT INTO categories(title,parent_id)
VALUES('Hard drives',4);

INSERT INTO categories(title,parent_id)
VALUES('HDD',4);

INSERT INTO categories(title,parent_id)
VALUES('SSD',4);

INSERT INTO categories(title,parent_id)
VALUES('Power supply',4);

INSERT INTO categories(title,parent_id)
VALUES('Cases',4);


-- -----------------------------------------------------


INSERT INTO categories(title,parent_id)
VALUES('Computer mouses',5);

INSERT INTO categories(title,parent_id)
VALUES('Computer keyboards',5);

INSERT INTO categories(title,parent_id)
VALUES('Monitors',5);

INSERT INTO categories(title,parent_id)
VALUES('Printers',5);

-- -----------------------------------------------------


INSERT INTO categories(title,parent_id)
VALUES('Adapters',6);

INSERT INTO categories(title,parent_id)
VALUES('Cables',6);

INSERT INTO categories(title,parent_id)
VALUES('Flash memory',6);

-- ---------------------------------------------------------------------
-- ---------------------------------------------------------------------
-- Insert tablets(id 18) subcategory

INSERT INTO categories(title,parent_id)
VALUES('Tablets 10"',18);
INSERT INTO categories(title,parent_id)
VALUES('Tablets 11"',18);
INSERT INTO categories(title,parent_id)
VALUES('Tablets 12"',18);
INSERT INTO categories(title,parent_id)
VALUES('Tablets 13"',18);