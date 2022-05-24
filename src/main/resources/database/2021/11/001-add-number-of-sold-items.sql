--liquibase formatted sql
--changeset tegridy:1

INSERT INTO products VALUES (999, "Samsung Galaxy S22 smartphone 8/128 GB green", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Samsung", "S22", "https://a.allegroimg.com/original/1184bb/b65e0ccc42288c0391da1e0f6ba1", 279.32, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1601, "memory", 128, 999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1602, "displaySize", "6'" , 999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1603, "resolution", "2,400x1,080 pixels", 999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1604, "processor", "Exynos 2200", 999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1605, "cpuSpeed", "2.9 Ghz", 999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1606, "ram", 8, 999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1607, "operatingSystem", "Android", 999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1608, "batteryCapacity", 3700, 999, NOW(), NOW());
INSERT INTO product_category VALUES (999, 3);
INSERT INTO colors VALUES (999, "GREEN");


ALTER TABLE products ADD COLUMN number_of_sold INT DEFAULT 0;


UPDATE  products SET number_of_sold = 99 WHERE products.id = 259;
UPDATE  products SET number_of_sold = 99 WHERE products.id = 333;
UPDATE  products SET number_of_sold = 99 WHERE products.id = 229;
UPDATE  products SET number_of_sold = 99 WHERE products.id = 189;
UPDATE  products SET number_of_sold = 99 WHERE products.id = 299;
UPDATE  products SET number_of_sold = 99 WHERE products.id = 350;

