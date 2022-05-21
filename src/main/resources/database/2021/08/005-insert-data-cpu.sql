--liquibase formatted sql
--changeset tegridy:1

INSERT INTO products VALUES (1, "Processor Ryzen 3 1200 AF 4 x 3,4 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 3 1200 AF", "https://a.allegroimg.com/original/1132f1/3fcd237845a1948a9e1305f34ec0", 1527.06, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (2, "cores", "4", 1, NOW(), NOW());
INSERT INTO products_attributes VALUES (3, "baseClock", "3,4 GHz", 1, NOW(), NOW());
INSERT INTO products_attributes VALUES (4, "boostClock", "3,4 GHz", 1, NOW(), NOW());
INSERT INTO products_attributes VALUES (5, "tdp", 65, 1, NOW(), NOW());
INSERT INTO products_attributes VALUES (6, "socket", "AMD Socket AM4", 1, NOW(), NOW());
INSERT INTO products_attributes VALUES (7, "multihreading", true, 1, NOW(), NOW());
INSERT INTO product_category VALUES (1, 11);
INSERT INTO product_category VALUES (1, 13);


INSERT INTO products VALUES (2, "Processor Ryzen 7 5800X 8 x 3,8 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 7 5800X", "https://a.allegroimg.com/original/11d85c/f38c82294ce890dfe2980f70c7e7", 1461.01, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (8, "cores", "8", 2, NOW(), NOW());
INSERT INTO products_attributes VALUES (9, "baseClock", "3,8 GHz", 2, NOW(), NOW());
INSERT INTO products_attributes VALUES (10, "boostClock", "4,7 GHz", 2, NOW(), NOW());
INSERT INTO products_attributes VALUES (11, "tdp", 105, 2, NOW(), NOW());
INSERT INTO products_attributes VALUES (12, "socket", "AMD Socket AM4", 2, NOW(), NOW());
INSERT INTO products_attributes VALUES (13, "multihreading", true, 2, NOW(), NOW());
INSERT INTO product_category VALUES (2, 11);
INSERT INTO product_category VALUES (2, 13);


INSERT INTO products VALUES (3, "Processor Ryzen 5 3600 6 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 5 3600", "https://a.allegroimg.com/original/00046e/5a5b30a84a688902b5137f4476b5", 1501.19, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (14, "cores", "6", 3, NOW(), NOW());
INSERT INTO products_attributes VALUES (15, "baseClock", "3,6 GHz", 3, NOW(), NOW());
INSERT INTO products_attributes VALUES (16, "boostClock", "4,2 GHz", 3, NOW(), NOW());
INSERT INTO products_attributes VALUES (17, "tdp", 65, 3, NOW(), NOW());
INSERT INTO products_attributes VALUES (18, "socket", "AMD Socket AM4", 3, NOW(), NOW());
INSERT INTO products_attributes VALUES (19, "multihreading", true, 3, NOW(), NOW());
INSERT INTO product_category VALUES (3, 11);
INSERT INTO product_category VALUES (3, 13);


INSERT INTO products VALUES (4, "Processor RYZEN 9 5900X 12 x 3,7 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "RYZEN 9 5900X", "https://a.allegroimg.com/original/114f3e/8e3c95de4bd0b3c77fc2d0655f19", 1761.99, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (20, "cores", 12, 4, NOW(), NOW());
INSERT INTO products_attributes VALUES (21, "baseClock", "3,7 GHz", 4, NOW(), NOW());
INSERT INTO products_attributes VALUES (22, "boostClock", "4,8 GHz", 4, NOW(), NOW());
INSERT INTO products_attributes VALUES (23, "tdp", 105, 4, NOW(), NOW());
INSERT INTO products_attributes VALUES (24, "socket", "AMD Socket AM4", 4, NOW(), NOW());
INSERT INTO products_attributes VALUES (25, "multihreading", true, 4, NOW(), NOW());
INSERT INTO product_category VALUES (4, 11);
INSERT INTO product_category VALUES (4, 13);


INSERT INTO products VALUES (5, "AMD Ryzen 5 5600X procesor 3,7 GHz 32 MB L3", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "5600X", "https://a.allegroimg.com/original/114c25/862cc3e24bda82afa6565803d160", 1672.86, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (26, "cores", "6", 5, NOW(), NOW());
INSERT INTO products_attributes VALUES (27, "baseClock", null, 5, NOW(), NOW());
INSERT INTO products_attributes VALUES (28, "boostClock", "4,6 GHz", 5, NOW(), NOW());
INSERT INTO products_attributes VALUES (29, "tdp", 65, 5, NOW(), NOW());
INSERT INTO products_attributes VALUES (30, "socket", "AMD Socket AM4", 5, NOW(), NOW());
INSERT INTO products_attributes VALUES (31, "multihreading", true, 5, NOW(), NOW());
INSERT INTO product_category VALUES (5, 11);
INSERT INTO product_category VALUES (5, 13);


INSERT INTO products VALUES (6, "Processor Ryzen 9 5950X 16 x 4,9 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 9 5950X", "https://a.allegroimg.com/original/113b22/85d910b44f64a121357df9989034", 1464.78, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (32, "cores", "16", 6, NOW(), NOW());
INSERT INTO products_attributes VALUES (33, "baseClock", "4,9 GHz", 6, NOW(), NOW());
INSERT INTO products_attributes VALUES (34, "boostClock", null, 6, NOW(), NOW());
INSERT INTO products_attributes VALUES (35, "tdp", 0, 6, NOW(), NOW());
INSERT INTO products_attributes VALUES (36, "socket", "AMD Socket AM4", 6, NOW(), NOW());
INSERT INTO products_attributes VALUES (37, "multihreading", true, 6, NOW(), NOW());
INSERT INTO product_category VALUES (6, 11);
INSERT INTO product_category VALUES (6, 13);


INSERT INTO products VALUES (7, "AMD Ryzen 7 5800X procesor 3,8 GHz 32 MB L3", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "5800X", "https://a.allegroimg.com/original/11d9ae/e9e22ecd4a85a57cd032c5fb2b82", 1489.80, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (38, "cores", "8", 7, NOW(), NOW());
INSERT INTO products_attributes VALUES (39, "baseClock", null, 7, NOW(), NOW());
INSERT INTO products_attributes VALUES (40, "boostClock", "4,7 GHz", 7, NOW(), NOW());
INSERT INTO products_attributes VALUES (41, "tdp", 105, 7, NOW(), NOW());
INSERT INTO products_attributes VALUES (42, "socket", "AMD Socket AM4", 7, NOW(), NOW());
INSERT INTO products_attributes VALUES (43, "multihreading", true, 7, NOW(), NOW());
INSERT INTO product_category VALUES (7, 11);
INSERT INTO product_category VALUES (7, 13);


INSERT INTO products VALUES (8, "Processor Ryzen 5 3600 6 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 5 3600", "https://a.allegroimg.com/original/11aa25/74ceefbf4b18bb96d46af65241c5", 1546.85, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (44, "cores", "6", 8, NOW(), NOW());
INSERT INTO products_attributes VALUES (45, "baseClock", "3,6 GHz", 8, NOW(), NOW());
INSERT INTO products_attributes VALUES (46, "boostClock", "4,2 GHz", 8, NOW(), NOW());
INSERT INTO products_attributes VALUES (47, "tdp", 65, 8, NOW(), NOW());
INSERT INTO products_attributes VALUES (48, "socket", "AMD Socket AM4", 8, NOW(), NOW());
INSERT INTO products_attributes VALUES (49, "multihreading", false, 8, NOW(), NOW());
INSERT INTO product_category VALUES (8, 11);
INSERT INTO product_category VALUES (8, 13);


INSERT INTO products VALUES (9, "Processor Ryzen 7 5800X3D 8 x 3,4 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 7 5800X3D", "https://a.allegroimg.com/original/117802/1b2542c14d468d9ca63b18c1949b", 1597.63, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (50, "cores", "8", 9, NOW(), NOW());
INSERT INTO products_attributes VALUES (51, "baseClock", "3,4 GHz", 9, NOW(), NOW());
INSERT INTO products_attributes VALUES (52, "boostClock", "4,5 GHz", 9, NOW(), NOW());
INSERT INTO products_attributes VALUES (53, "tdp", 105, 9, NOW(), NOW());
INSERT INTO products_attributes VALUES (54, "socket", "AMD Socket AM4", 9, NOW(), NOW());
INSERT INTO products_attributes VALUES (55, "multihreading", true, 9, NOW(), NOW());
INSERT INTO product_category VALUES (9, 11);
INSERT INTO product_category VALUES (9, 13);


INSERT INTO products VALUES (10, "Processor RYZEN 7 5700G 8 x 3,8 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "RYZEN 7 5700G", "https://a.allegroimg.com/original/114680/5d6d4ec74586be28542bd7e3f2bf", 1629.55, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (56, "cores", "8", 10, NOW(), NOW());
INSERT INTO products_attributes VALUES (57, "baseClock", "3,8 GHz", 10, NOW(), NOW());
INSERT INTO products_attributes VALUES (58, "boostClock", "4,6 GHz", 10, NOW(), NOW());
INSERT INTO products_attributes VALUES (59, "tdp", 65, 10, NOW(), NOW());
INSERT INTO products_attributes VALUES (60, "socket", "AMD Socket AM4", 10, NOW(), NOW());
INSERT INTO products_attributes VALUES (61, "multihreading", false, 10, NOW(), NOW());
INSERT INTO product_category VALUES (10, 11);
INSERT INTO product_category VALUES (10, 13);


INSERT INTO products VALUES (11, "Processor Ryzen 7 3700X 8 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 7 3700X", "https://a.allegroimg.com/original/06c07c/6b2131c8406e950bd1d02a232e56", 1622.84, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (62, "cores", "8", 11, NOW(), NOW());
INSERT INTO products_attributes VALUES (63, "baseClock", "3,6 GHz", 11, NOW(), NOW());
INSERT INTO products_attributes VALUES (64, "boostClock", "4,4 GHz", 11, NOW(), NOW());
INSERT INTO products_attributes VALUES (65, "tdp", 65, 11, NOW(), NOW());
INSERT INTO products_attributes VALUES (66, "socket", "AMD Socket AM4", 11, NOW(), NOW());
INSERT INTO products_attributes VALUES (67, "multihreading", false, 11, NOW(), NOW());
INSERT INTO product_category VALUES (11, 11);
INSERT INTO product_category VALUES (11, 13);


INSERT INTO products VALUES (12, "Processor Ryzen 5 4600G 6 x 3,7 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 5 4600G", "https://a.allegroimg.com/original/11fd73/d681b57a49699f1f064054591118", 1495.05, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (68, "cores", "6", 12, NOW(), NOW());
INSERT INTO products_attributes VALUES (69, "baseClock", "3,7 GHz", 12, NOW(), NOW());
INSERT INTO products_attributes VALUES (70, "boostClock", "4,2 GHz", 12, NOW(), NOW());
INSERT INTO products_attributes VALUES (71, "tdp", 65, 12, NOW(), NOW());
INSERT INTO products_attributes VALUES (72, "socket", "AMD Socket AM4", 12, NOW(), NOW());
INSERT INTO products_attributes VALUES (73, "multihreading", false, 12, NOW(), NOW());
INSERT INTO product_category VALUES (12, 11);
INSERT INTO product_category VALUES (12, 13);


INSERT INTO products VALUES (13, "AMD Ryzen 7 PRO 5750G procesor 3,8 GHz 16 MB L3", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "5750G", "https://a.allegroimg.com/original/117dfe/610289ba459799fdc9e1c1c33626", 1516.61, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (74, "cores", "8", 13, NOW(), NOW());
INSERT INTO products_attributes VALUES (75, "baseClock", null, 13, NOW(), NOW());
INSERT INTO products_attributes VALUES (76, "boostClock", "4,6 GHz", 13, NOW(), NOW());
INSERT INTO products_attributes VALUES (77, "tdp", 65, 13, NOW(), NOW());
INSERT INTO products_attributes VALUES (78, "socket", "AMD Socket AM4", 13, NOW(), NOW());
INSERT INTO products_attributes VALUES (79, "multihreading", true, 13, NOW(), NOW());
INSERT INTO product_category VALUES (13, 11);
INSERT INTO product_category VALUES (13, 13);


INSERT INTO products VALUES (14, "Processor Ryzen 7 2700X 8 x 3,7 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 7 2700X", "https://a.allegroimg.com/original/11cc4a/041810db44e0b66c34a97394900b", 1612.63, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (80, "cores", "8", 14, NOW(), NOW());
INSERT INTO products_attributes VALUES (81, "baseClock", "3,7 GHz", 14, NOW(), NOW());
INSERT INTO products_attributes VALUES (82, "boostClock", "4,3 GHz", 14, NOW(), NOW());
INSERT INTO products_attributes VALUES (83, "tdp", 105, 14, NOW(), NOW());
INSERT INTO products_attributes VALUES (84, "socket", "AMD Socket AM4", 14, NOW(), NOW());
INSERT INTO products_attributes VALUES (85, "multihreading", true, 14, NOW(), NOW());
INSERT INTO product_category VALUES (14, 11);
INSERT INTO product_category VALUES (14, 13);


INSERT INTO products VALUES (15, "Processor Ryzen 3 4100 4 x 3,8 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 3 4100", "https://a.allegroimg.com/original/1121ce/fe1db49749109df83ca95be7fd1f", 1798.20, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (86, "cores", "4", 15, NOW(), NOW());
INSERT INTO products_attributes VALUES (87, "baseClock", "3,8 GHz", 15, NOW(), NOW());
INSERT INTO products_attributes VALUES (88, "boostClock", "4 GHz", 15, NOW(), NOW());
INSERT INTO products_attributes VALUES (89, "tdp", 65, 15, NOW(), NOW());
INSERT INTO products_attributes VALUES (90, "socket", "AMD Socket AM4", 15, NOW(), NOW());
INSERT INTO products_attributes VALUES (91, "multihreading", true, 15, NOW(), NOW());
INSERT INTO product_category VALUES (15, 11);
INSERT INTO product_category VALUES (15, 13);


INSERT INTO products VALUES (16, "Processor Ryzen 5 2600 6 x 3,4 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 5 2600", "https://a.allegroimg.com/original/05ea40/8bd2b876426687678239648f8ae7", 1710.98, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (92, "cores", "6", 16, NOW(), NOW());
INSERT INTO products_attributes VALUES (93, "baseClock", "3,4 GHz", 16, NOW(), NOW());
INSERT INTO products_attributes VALUES (94, "boostClock", "3,9 GHz", 16, NOW(), NOW());
INSERT INTO products_attributes VALUES (95, "tdp", 65, 16, NOW(), NOW());
INSERT INTO products_attributes VALUES (96, "socket", "AMD Socket AM4", 16, NOW(), NOW());
INSERT INTO products_attributes VALUES (97, "multihreading", true, 16, NOW(), NOW());
INSERT INTO product_category VALUES (16, 11);
INSERT INTO product_category VALUES (16, 13);


INSERT INTO products VALUES (17, "Processor Ryzen 5 Pro 3350G 4 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 5 Pro 3350G", "https://a.allegroimg.com/original/1153fd/940bd6f6433c9e2cfebe49d0af39", 1624.62, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (98, "cores", "4", 17, NOW(), NOW());
INSERT INTO products_attributes VALUES (99, "baseClock", "3,6 GHz", 17, NOW(), NOW());
INSERT INTO products_attributes VALUES (100, "boostClock", null, 17, NOW(), NOW());
INSERT INTO products_attributes VALUES (101, "tdp", 0, 17, NOW(), NOW());
INSERT INTO products_attributes VALUES (102, "socket", "AMD Socket AM4", 17, NOW(), NOW());
INSERT INTO products_attributes VALUES (103, "multihreading", true, 17, NOW(), NOW());
INSERT INTO product_category VALUES (17, 11);
INSERT INTO product_category VALUES (17, 13);


INSERT INTO products VALUES (18, "Processor Ryzen 3 3100 4 x 3,9 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 3 3100", "https://a.allegroimg.com/original/1149c1/81b890dd4d849e7f6c9f5aed0353", 1755.41, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (104, "cores", "4", 18, NOW(), NOW());
INSERT INTO products_attributes VALUES (105, "baseClock", "3,9 GHz", 18, NOW(), NOW());
INSERT INTO products_attributes VALUES (106, "boostClock", null, 18, NOW(), NOW());
INSERT INTO products_attributes VALUES (107, "tdp", 0, 18, NOW(), NOW());
INSERT INTO products_attributes VALUES (108, "socket", "AMD Socket AM4", 18, NOW(), NOW());
INSERT INTO products_attributes VALUES (109, "multihreading", true, 18, NOW(), NOW());
INSERT INTO product_category VALUES (18, 11);
INSERT INTO product_category VALUES (18, 13);


INSERT INTO products VALUES (19, "Processor Ryzen 3 3100 4 x 3,9 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "AMD Ryzen 3 3100", "https://a.allegroimg.com/original/11c62c/6a7d74db4508a2c01fe84f267726", 1709.45, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (110, "cores", "4", 19, NOW(), NOW());
INSERT INTO products_attributes VALUES (111, "baseClock", "3,9 GHz", 19, NOW(), NOW());
INSERT INTO products_attributes VALUES (112, "boostClock", null, 19, NOW(), NOW());
INSERT INTO products_attributes VALUES (113, "tdp", 0, 19, NOW(), NOW());
INSERT INTO products_attributes VALUES (114, "socket", "AMD Socket AM4", 19, NOW(), NOW());
INSERT INTO products_attributes VALUES (115, "multihreading", true, 19, NOW(), NOW());
INSERT INTO product_category VALUES (19, 11);
INSERT INTO product_category VALUES (19, 13);


INSERT INTO products VALUES (20, "Processor Ryzen 5 3500 6 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 5 3500", "https://a.allegroimg.com/original/111fb9/4a3f321d4667912700a3d3251634", 1576.52, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (116, "cores", "6", 20, NOW(), NOW());
INSERT INTO products_attributes VALUES (117, "baseClock", "3,6 GHz", 20, NOW(), NOW());
INSERT INTO products_attributes VALUES (118, "boostClock", null, 20, NOW(), NOW());
INSERT INTO products_attributes VALUES (119, "tdp", 0, 20, NOW(), NOW());
INSERT INTO products_attributes VALUES (120, "socket", "AMD Socket AM4", 20, NOW(), NOW());
INSERT INTO products_attributes VALUES (121, "multihreading", false, 20, NOW(), NOW());
INSERT INTO product_category VALUES (20, 11);
INSERT INTO product_category VALUES (20, 13);


INSERT INTO products VALUES (21, "Processor Ryzen 3 4300GE 4 x 3,5 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 3 4300GE", "https://a.allegroimg.com/original/11dfca/52778658423999f59ccc6e13c166", 1475.39, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (122, "cores", "4", 21, NOW(), NOW());
INSERT INTO products_attributes VALUES (123, "baseClock", "3,5 GHz", 21, NOW(), NOW());
INSERT INTO products_attributes VALUES (124, "boostClock", "4 GHz", 21, NOW(), NOW());
INSERT INTO products_attributes VALUES (125, "tdp", 35, 21, NOW(), NOW());
INSERT INTO products_attributes VALUES (126, "socket", "AMD Socket AM4", 21, NOW(), NOW());
INSERT INTO products_attributes VALUES (127, "multihreading", true, 21, NOW(), NOW());
INSERT INTO product_category VALUES (21, 11);
INSERT INTO product_category VALUES (21, 13);


INSERT INTO products VALUES (22, "Processor Ryzen 7 5800X 8 x 3,8 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 7 5800X", "https://a.allegroimg.com/original/114e81/2b0050124dc5baa1befae9542bca", 1490.43, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (128, "cores", "8", 22, NOW(), NOW());
INSERT INTO products_attributes VALUES (129, "baseClock", "3,8 GHz", 22, NOW(), NOW());
INSERT INTO products_attributes VALUES (130, "boostClock", "4,7 GHz", 22, NOW(), NOW());
INSERT INTO products_attributes VALUES (131, "tdp", 105, 22, NOW(), NOW());
INSERT INTO products_attributes VALUES (132, "socket", "AMD Socket AM4", 22, NOW(), NOW());
INSERT INTO products_attributes VALUES (133, "multihreading", false, 22, NOW(), NOW());
INSERT INTO product_category VALUES (22, 11);
INSERT INTO product_category VALUES (22, 13);


INSERT INTO products VALUES (23, "Processor Ryzen 3400G 4 x 3,7 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 3400G", "https://a.allegroimg.com/original/118b9d/6a3b19e84ce9bff80ac1da20379a", 1659.24, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (134, "cores", "4", 23, NOW(), NOW());
INSERT INTO products_attributes VALUES (135, "baseClock", "3,7 GHz", 23, NOW(), NOW());
INSERT INTO products_attributes VALUES (136, "boostClock", "4,2 GHz", 23, NOW(), NOW());
INSERT INTO products_attributes VALUES (137, "tdp", 65, 23, NOW(), NOW());
INSERT INTO products_attributes VALUES (138, "socket", "AMD Socket AM4", 23, NOW(), NOW());
INSERT INTO products_attributes VALUES (139, "multihreading", false, 23, NOW(), NOW());
INSERT INTO product_category VALUES (23, 11);
INSERT INTO product_category VALUES (23, 13);


INSERT INTO products VALUES (24, "Processor Ryzen 9 3900X 12 x 3,8 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 9 3900X", "https://a.allegroimg.com/original/113d54/f914f2be413698ad7bac4af55d79", 1544.68, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (140, "cores", 12, 24, NOW(), NOW());
INSERT INTO products_attributes VALUES (141, "baseClock", "3,8 GHz", 24, NOW(), NOW());
INSERT INTO products_attributes VALUES (142, "boostClock", "4,6 GHz", 24, NOW(), NOW());
INSERT INTO products_attributes VALUES (143, "tdp", 105, 24, NOW(), NOW());
INSERT INTO products_attributes VALUES (144, "socket", "AMD Socket AM4", 24, NOW(), NOW());
INSERT INTO products_attributes VALUES (145, "multihreading", true, 24, NOW(), NOW());
INSERT INTO product_category VALUES (24, 11);
INSERT INTO product_category VALUES (24, 13);


INSERT INTO products VALUES (25, "Processor Ryzen 5 2400G 4 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 5 2400G", "https://a.allegroimg.com/original/053295/abaf46314f5084039f8164af76c0", 1478.55, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (146, "cores", "4", 25, NOW(), NOW());
INSERT INTO products_attributes VALUES (147, "baseClock", "3,6 GHz", 25, NOW(), NOW());
INSERT INTO products_attributes VALUES (148, "boostClock", "3,9 GHz", 25, NOW(), NOW());
INSERT INTO products_attributes VALUES (149, "tdp", 65, 25, NOW(), NOW());
INSERT INTO products_attributes VALUES (150, "socket", "AMD Socket AM4", 25, NOW(), NOW());
INSERT INTO products_attributes VALUES (151, "multihreading", false, 25, NOW(), NOW());
INSERT INTO product_category VALUES (25, 11);
INSERT INTO product_category VALUES (25, 13);


INSERT INTO products VALUES (26, "Processor Ryzen 3 2200G 4 x 3,5 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 3 2200G", "https://a.allegroimg.com/original/11052a/38358d8a4f8084f7499a5784622f", 1650.65, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (152, "cores", "4", 26, NOW(), NOW());
INSERT INTO products_attributes VALUES (153, "baseClock", "3,5 GHz", 26, NOW(), NOW());
INSERT INTO products_attributes VALUES (154, "boostClock", "3,7 GHz", 26, NOW(), NOW());
INSERT INTO products_attributes VALUES (155, "tdp", 65, 26, NOW(), NOW());
INSERT INTO products_attributes VALUES (156, "socket", "AMD Socket AM4", 26, NOW(), NOW());
INSERT INTO products_attributes VALUES (157, "multihreading", false, 26, NOW(), NOW());
INSERT INTO product_category VALUES (26, 11);
INSERT INTO product_category VALUES (26, 13);


INSERT INTO products VALUES (27, "AMD Ryzen 5 5600G procesor 3,9 GHz 16 MB L3", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "5600G", "https://a.allegroimg.com/original/11e42a/c58d49ed4ad49881024e94d7ea4a", 1485.00, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (158, "cores", "6", 27, NOW(), NOW());
INSERT INTO products_attributes VALUES (159, "baseClock", null, 27, NOW(), NOW());
INSERT INTO products_attributes VALUES (160, "boostClock", "4,4 GHz", 27, NOW(), NOW());
INSERT INTO products_attributes VALUES (161, "tdp", 65, 27, NOW(), NOW());
INSERT INTO products_attributes VALUES (162, "socket", "AMD Socket AM4", 27, NOW(), NOW());
INSERT INTO products_attributes VALUES (163, "multihreading", false, 27, NOW(), NOW());
INSERT INTO product_category VALUES (27, 11);
INSERT INTO product_category VALUES (27, 13);


INSERT INTO products VALUES (28, "Processor Ryzen 5 1600 AF 6 x 3,2 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", "Ryzen 5 1600 AF", "https://a.allegroimg.com/original/11c784/8c159a164f4788ffb98a8f3354fd", 1477.64, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (164, "cores", "6", 28, NOW(), NOW());
INSERT INTO products_attributes VALUES (165, "baseClock", "3,2 GHz", 28, NOW(), NOW());
INSERT INTO products_attributes VALUES (166, "boostClock", "3,6 GHz", 28, NOW(), NOW());
INSERT INTO products_attributes VALUES (167, "tdp", 65, 28, NOW(), NOW());
INSERT INTO products_attributes VALUES (168, "socket", "AMD Socket AM4", 28, NOW(), NOW());
INSERT INTO products_attributes VALUES (169, "multihreading", true, 28, NOW(), NOW());
INSERT INTO product_category VALUES (28, 11);
INSERT INTO product_category VALUES (28, 13);


INSERT INTO products VALUES (29, "Processor 2600X, Ryzen 5 2600X MAX 6 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", null, "https://a.allegroimg.com/original/111675/52f876494c7a96df4fac648d5ba7", 1705.45, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (170, "cores", "6", 29, NOW(), NOW());
INSERT INTO products_attributes VALUES (171, "baseClock", "3,6 GHz", 29, NOW(), NOW());
INSERT INTO products_attributes VALUES (172, "boostClock", null, 29, NOW(), NOW());
INSERT INTO products_attributes VALUES (173, "tdp", 95, 29, NOW(), NOW());
INSERT INTO products_attributes VALUES (174, "socket", "AMD Socket AM4", 29, NOW(), NOW());
INSERT INTO products_attributes VALUES (175, "multihreading", true, 29, NOW(), NOW());
INSERT INTO product_category VALUES (29, 11);
INSERT INTO product_category VALUES (29, 13);


INSERT INTO products VALUES (30, "Processor 2500X, Ryzen 5 2500X 4 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "AMD", null, "https://a.allegroimg.com/original/11cf9f/efbce6404b61ab7abb7b4c52fa56", 1689.69, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (176, "cores", "4", 30, NOW(), NOW());
INSERT INTO products_attributes VALUES (177, "baseClock", "3,6 GHz", 30, NOW(), NOW());
INSERT INTO products_attributes VALUES (178, "boostClock", "3,6 GHz", 30, NOW(), NOW());
INSERT INTO products_attributes VALUES (179, "tdp", 65, 30, NOW(), NOW());
INSERT INTO products_attributes VALUES (180, "socket", "AMD Socket AM4", 30, NOW(), NOW());
INSERT INTO products_attributes VALUES (181, "multihreading", true, 30, NOW(), NOW());
INSERT INTO product_category VALUES (30, 11);
INSERT INTO product_category VALUES (30, 13);

INSERT INTO products VALUES (31, "Processor Intel Core i5-9400F, Hexa Core 6 x 2,9 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i5-9400F, Hexa Core", "https://a.allegroimg.com/original/117490/14f6126a4794915170c84bfe14a9", 1527.06, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (183, "cores", "6", 31, NOW(), NOW());
INSERT INTO products_attributes VALUES (184, "baseClock", "2,9 GHz", 31, NOW(), NOW());
INSERT INTO products_attributes VALUES (185, "boostClock", "4,1 GHz", 31, NOW(), NOW());
INSERT INTO products_attributes VALUES (186, "tdp", 65, 31, NOW(), NOW());
INSERT INTO products_attributes VALUES (187, "socket", "Intel Socket 1151", 31, NOW(), NOW());
INSERT INTO products_attributes VALUES (188, "multihreading", true, 31, NOW(), NOW());
INSERT INTO product_category VALUES (31, 11);
INSERT INTO product_category VALUES (31, 12);


INSERT INTO products VALUES (32, "Processor Intel Core i3-6100 2 x 3,7 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i3-6100", "https://a.allegroimg.com/original/113731/1b9f4fa4437589ccc3bd10780fcc", 1461.01, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (189, "cores", 2, 32, NOW(), NOW());
INSERT INTO products_attributes VALUES (190, "baseClock", "3,7 GHz", 32, NOW(), NOW());
INSERT INTO products_attributes VALUES (191, "boostClock", null, 32, NOW(), NOW());
INSERT INTO products_attributes VALUES (192, "tdp", 51, 32, NOW(), NOW());
INSERT INTO products_attributes VALUES (193, "socket", "Intel Socket 1151", 32, NOW(), NOW());
INSERT INTO products_attributes VALUES (194, "multihreading", true, 32, NOW(), NOW());
INSERT INTO product_category VALUES (32, 11);
INSERT INTO product_category VALUES (32, 12);


INSERT INTO products VALUES (33, "Processor Intel Core i5 6 x 2,5 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i5", "https://a.allegroimg.com/original/119f92/a077e08741c098d0e593ebcd3cac", 1501.19, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (195, "cores", "6", 33, NOW(), NOW());
INSERT INTO products_attributes VALUES (196, "baseClock", "2,5 GHz", 33, NOW(), NOW());
INSERT INTO products_attributes VALUES (197, "boostClock", "4,4 GHz", 33, NOW(), NOW());
INSERT INTO products_attributes VALUES (198, "tdp", 65, 33, NOW(), NOW());
INSERT INTO products_attributes VALUES (199, "socket", "pozostałe", 33, NOW(), NOW());
INSERT INTO products_attributes VALUES (200, "multihreading", true, 33, NOW(), NOW());
INSERT INTO product_category VALUES (33, 11);
INSERT INTO product_category VALUES (33, 12);


INSERT INTO products VALUES (34, "Intel Core i7-11700K 3,6 GHz 16 MB Smart Cache", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "i7-11700K", "https://a.allegroimg.com/original/114c13/c51c0dae4783803327ea2af767ae", 1761.99, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (201, "cores", "8", 34, NOW(), NOW());
INSERT INTO products_attributes VALUES (202, "baseClock", null, 34, NOW(), NOW());
INSERT INTO products_attributes VALUES (203, "boostClock", "5 GHz", 34, NOW(), NOW());
INSERT INTO products_attributes VALUES (204, "tdp", 125, 34, NOW(), NOW());
INSERT INTO products_attributes VALUES (205, "socket", "Intel Socket 1200", 34, NOW(), NOW());
INSERT INTO products_attributes VALUES (206, "multihreading", true, 34, NOW(), NOW());
INSERT INTO product_category VALUES (34, 11);
INSERT INTO product_category VALUES (34, 12);


INSERT INTO products VALUES (35, "Processor Intel Core i5-2500K 4 x 3,3 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i5-2500K", "https://a.allegroimg.com/original/114a97/f907b07548618f13a537e643a037", 1672.86, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (207, "cores", "4", 35, NOW(), NOW());
INSERT INTO products_attributes VALUES (208, "baseClock", "3,3 GHz", 35, NOW(), NOW());
INSERT INTO products_attributes VALUES (209, "boostClock", null, 35, NOW(), NOW());
INSERT INTO products_attributes VALUES (210, "tdp", 0, 35, NOW(), NOW());
INSERT INTO products_attributes VALUES (211, "socket", "Intel Socket 1155", 35, NOW(), NOW());
INSERT INTO products_attributes VALUES (212, "multihreading", true, 35, NOW(), NOW());
INSERT INTO product_category VALUES (35, 11);
INSERT INTO product_category VALUES (35, 12);


INSERT INTO products VALUES (36, "Processor Intel Core i7 12 x 2,1 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i7", "https://a.allegroimg.com/original/1114ea/36b068c54d8ca78d0d63fdaf9cbf", 1464.78, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (213, "cores", 12, 36, NOW(), NOW());
INSERT INTO products_attributes VALUES (214, "baseClock", "2,1 GHz", 36, NOW(), NOW());
INSERT INTO products_attributes VALUES (215, "boostClock", "4,9 GHz", 36, NOW(), NOW());
INSERT INTO products_attributes VALUES (216, "tdp", 0, 36, NOW(), NOW());
INSERT INTO products_attributes VALUES (217, "socket", "pozostałe", 36, NOW(), NOW());
INSERT INTO products_attributes VALUES (218, "multihreading", true, 36, NOW(), NOW());
INSERT INTO product_category VALUES (36, 11);
INSERT INTO product_category VALUES (36, 12);


INSERT INTO products VALUES (37, "Processor Intel Core i5-4570 4 x 3,2 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i5-4570", "https://a.allegroimg.com/original/11d700/270f936d4259981fd3b804327a89", 1489.80, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (219, "cores", "4", 37, NOW(), NOW());
INSERT INTO products_attributes VALUES (220, "baseClock", "3,2 GHz", 37, NOW(), NOW());
INSERT INTO products_attributes VALUES (221, "boostClock", "3,6 GHz", 37, NOW(), NOW());
INSERT INTO products_attributes VALUES (222, "tdp", 84, 37, NOW(), NOW());
INSERT INTO products_attributes VALUES (223, "socket", "Intel Socket 1150", 37, NOW(), NOW());
INSERT INTO products_attributes VALUES (224, "multihreading", true, 37, NOW(), NOW());
INSERT INTO product_category VALUES (37, 11);
INSERT INTO product_category VALUES (37, 12);


INSERT INTO products VALUES (38, "Processor Intel Core i3-9100 4 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "CORE i3-9100", "https://a.allegroimg.com/original/11c0d6/c645c1da4c28bcb456989dbc7dfc", 1546.85, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (225, "cores", "4", 38, NOW(), NOW());
INSERT INTO products_attributes VALUES (226, "baseClock", "3,6 GHz", 38, NOW(), NOW());
INSERT INTO products_attributes VALUES (227, "boostClock", "4,2 GHz", 38, NOW(), NOW());
INSERT INTO products_attributes VALUES (228, "tdp", 65, 38, NOW(), NOW());
INSERT INTO products_attributes VALUES (229, "socket", "Intel Socket 1151", 38, NOW(), NOW());
INSERT INTO products_attributes VALUES (230, "multihreading", false, 38, NOW(), NOW());
INSERT INTO product_category VALUES (38, 11);
INSERT INTO product_category VALUES (38, 12);


INSERT INTO products VALUES (39, "Processor Intel Core i5 12 x 3 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i5", "https://a.allegroimg.com/original/11a0a4/5316fb6e4b9d8029751a95a737ca", 1597.63, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (231, "cores", 12, 39, NOW(), NOW());
INSERT INTO products_attributes VALUES (232, "baseClock", "3 GHz", 39, NOW(), NOW());
INSERT INTO products_attributes VALUES (233, "boostClock", "4,6 GHz", 39, NOW(), NOW());
INSERT INTO products_attributes VALUES (234, "tdp", 0, 39, NOW(), NOW());
INSERT INTO products_attributes VALUES (235, "socket", "pozostałe", 39, NOW(), NOW());
INSERT INTO products_attributes VALUES (236, "multihreading", true, 39, NOW(), NOW());
INSERT INTO product_category VALUES (39, 11);
INSERT INTO product_category VALUES (39, 12);


INSERT INTO products VALUES (40, "Processor Intel Core i5 6 x 2,5 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i5", "https://a.allegroimg.com/original/11aab3/b629a20649c285f7911914bd0d10", 1629.55, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (237, "cores", "6", 40, NOW(), NOW());
INSERT INTO products_attributes VALUES (238, "baseClock", "2,5 GHz", 40, NOW(), NOW());
INSERT INTO products_attributes VALUES (239, "boostClock", "4,4 GHz", 40, NOW(), NOW());
INSERT INTO products_attributes VALUES (240, "tdp", 65, 40, NOW(), NOW());
INSERT INTO products_attributes VALUES (241, "socket", "pozostałe", 40, NOW(), NOW());
INSERT INTO products_attributes VALUES (242, "multihreading", false, 40, NOW(), NOW());
INSERT INTO product_category VALUES (40, 11);
INSERT INTO product_category VALUES (40, 12);


INSERT INTO products VALUES (41, "Processor Intel Core i7-4770 4 x 3,4 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i7-4770", "https://a.allegroimg.com/original/112bc7/ae57bab0446cbb09cadc2c7d7d17", 1622.84, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (243, "cores", "4", 41, NOW(), NOW());
INSERT INTO products_attributes VALUES (244, "baseClock", "3,4 GHz", 41, NOW(), NOW());
INSERT INTO products_attributes VALUES (245, "boostClock", null, 41, NOW(), NOW());
INSERT INTO products_attributes VALUES (246, "tdp", 0, 41, NOW(), NOW());
INSERT INTO products_attributes VALUES (247, "socket", "Intel Socket 1150", 41, NOW(), NOW());
INSERT INTO products_attributes VALUES (248, "multihreading", false, 41, NOW(), NOW());
INSERT INTO product_category VALUES (41, 11);
INSERT INTO product_category VALUES (41, 12);


INSERT INTO products VALUES (42, "Processor Intel Core i3 4 x 3,3 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i3", "https://a.allegroimg.com/original/110914/2203b85341e784b14e627eb0d883", 1495.05, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (249, "cores", "4", 42, NOW(), NOW());
INSERT INTO products_attributes VALUES (250, "baseClock", "3,3 GHz", 42, NOW(), NOW());
INSERT INTO products_attributes VALUES (251, "boostClock", "4,3 GHz", 42, NOW(), NOW());
INSERT INTO products_attributes VALUES (252, "tdp", 65, 42, NOW(), NOW());
INSERT INTO products_attributes VALUES (253, "socket", "Intel Socket 1150" , 42, NOW(), NOW());
INSERT INTO products_attributes VALUES (254, "multihreading", false, 42, NOW(), NOW());
INSERT INTO product_category VALUES (42, 11);
INSERT INTO product_category VALUES (42, 12);


INSERT INTO products VALUES (43, "Processor Intel Core i7 i7-3770 4 x 3,4 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "CORE i7 i7-3770", "https://a.allegroimg.com/original/11ab6a/7dde44404ce2a9007f501904aa86", 1516.61, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (255, "cores", "4", 43, NOW(), NOW());
INSERT INTO products_attributes VALUES (256, "baseClock", "3,4 GHz", 43, NOW(), NOW());
INSERT INTO products_attributes VALUES (257, "boostClock", "3,9 GHz", 43, NOW(), NOW());
INSERT INTO products_attributes VALUES (258, "tdp", 0, 43, NOW(), NOW());
INSERT INTO products_attributes VALUES (259, "socket", "Intel Socket 1155", 43, NOW(), NOW());
INSERT INTO products_attributes VALUES (260, "multihreading", true, 43, NOW(), NOW());
INSERT INTO product_category VALUES (43, 11);
INSERT INTO product_category VALUES (43, 12);


INSERT INTO products VALUES (44, "Processor Intel Core i5-8400 6 x 2,8 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i5-8400", "https://a.allegroimg.com/original/0569c4/747bb81f4d51a54b293f064df5b1", 1612.63, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (261, "cores", "6", 44, NOW(), NOW());
INSERT INTO products_attributes VALUES (262, "baseClock", "2,8 GHz", 44, NOW(), NOW());
INSERT INTO products_attributes VALUES (263, "boostClock", "4 GHz", 44, NOW(), NOW());
INSERT INTO products_attributes VALUES (264, "tdp", 0, 44, NOW(), NOW());
INSERT INTO products_attributes VALUES (265, "socket", "Intel Socket 1151", 44, NOW(), NOW());
INSERT INTO products_attributes VALUES (266, "multihreading", true, 44, NOW(), NOW());
INSERT INTO product_category VALUES (44, 11);
INSERT INTO product_category VALUES (44, 12);


INSERT INTO products VALUES (45, "Processor Intel Core i3-2100 2 x 3,1 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i3-2100", "https://a.allegroimg.com/original/03e524/25156a604c8eab11e9c2072dd1a0", 1798.20, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (267, "cores", 2, 45, NOW(), NOW());
INSERT INTO products_attributes VALUES (268, "baseClock", "3,1 GHz", 45, NOW(), NOW());
INSERT INTO products_attributes VALUES (269, "boostClock", "3,1 GHz", 45, NOW(), NOW());
INSERT INTO products_attributes VALUES (270, "tdp", 65, 45, NOW(), NOW());
INSERT INTO products_attributes VALUES (271, "socket", "Intel Socket 1155", 45, NOW(), NOW());
INSERT INTO products_attributes VALUES (272, "multihreading", true, 45, NOW(), NOW());
INSERT INTO product_category VALUES (45, 11);
INSERT INTO product_category VALUES (45, 12);


INSERT INTO products VALUES (46, "Processor Intel Core i5-9400 6 x 2,9 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i5-9400", "https://a.allegroimg.com/original/00c373/d24eed534793aabc9081351cab82", 1710.98, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (273, "cores", "6", 46, NOW(), NOW());
INSERT INTO products_attributes VALUES (274, "baseClock", "2,9 GHz", 46, NOW(), NOW());
INSERT INTO products_attributes VALUES (275, "boostClock", "4 GHz", 46, NOW(), NOW());
INSERT INTO products_attributes VALUES (276, "tdp", 65, 46, NOW(), NOW());
INSERT INTO products_attributes VALUES (277, "socket", "Intel Socket 1151", 46, NOW(), NOW());
INSERT INTO products_attributes VALUES (278, "multihreading", true, 46, NOW(), NOW());
INSERT INTO product_category VALUES (46, 11);
INSERT INTO product_category VALUES (46, 12);


INSERT INTO products VALUES (47, "Processor Intel Core i5-8500 6 x 3 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i5-8500", "https://a.allegroimg.com/original/055f0c/d5a90ac24e41878589d718b614b9", 1624.62, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (279, "cores", "6", 47, NOW(), NOW());
INSERT INTO products_attributes VALUES (280, "baseClock", "3 GHz", 47, NOW(), NOW());
INSERT INTO products_attributes VALUES (281, "boostClock", "4,1 GHz", 47, NOW(), NOW());
INSERT INTO products_attributes VALUES (282, "tdp", 65, 47, NOW(), NOW());
INSERT INTO products_attributes VALUES (283, "socket", "Intel Socket 1151", 47, NOW(), NOW());
INSERT INTO products_attributes VALUES (284, "multihreading", true, 47, NOW(), NOW());
INSERT INTO product_category VALUES (47, 11);
INSERT INTO product_category VALUES (47, 12);


INSERT INTO products VALUES (48, "Processor Intel Core i7-6700 4 x 3,4 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i7-6700", "https://a.allegroimg.com/original/112277/fc9b23364a4187a5811fa6af65d7", 1755.41, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (285, "cores", "4", 48, NOW(), NOW());
INSERT INTO products_attributes VALUES (286, "baseClock", "3,4 GHz", 48, NOW(), NOW());
INSERT INTO products_attributes VALUES (287, "boostClock", "4 GHz", 48, NOW(), NOW());
INSERT INTO products_attributes VALUES (288, "tdp", 0, 48, NOW(), NOW());
INSERT INTO products_attributes VALUES (289, "socket", "Intel Socket 1151", 48, NOW(), NOW());
INSERT INTO products_attributes VALUES (290, "multihreading", true, 48, NOW(), NOW());
INSERT INTO product_category VALUES (48, 11);
INSERT INTO product_category VALUES (48, 12);


INSERT INTO products VALUES (49, "Processor Intel Core i7-9700KF 8 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i7-9700KF", "https://a.allegroimg.com/original/00b70f/2068f85b4bc3be9fd68b60d8ec65", 1709.45, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (291, "cores", "8", 49, NOW(), NOW());
INSERT INTO products_attributes VALUES (292, "baseClock", "3,6 GHz", 49, NOW(), NOW());
INSERT INTO products_attributes VALUES (293, "boostClock", "4,9 GHz", 49, NOW(), NOW());
INSERT INTO products_attributes VALUES (294, "tdp", 95, 49, NOW(), NOW());
INSERT INTO products_attributes VALUES (295, "socket", "Intel Socket 1151", 49, NOW(), NOW());
INSERT INTO products_attributes VALUES (296, "multihreading", true, 49, NOW(), NOW());
INSERT INTO product_category VALUES (49, 11);
INSERT INTO product_category VALUES (49, 12);


INSERT INTO products VALUES (50, "Processor Intel Core i7-8700 6 x 3,2 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i7-8700", "https://a.allegroimg.com/original/110ba7/c680aad7485a823de7ed3d0e21e5", 1576.52, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (297, "cores", "6", 50, NOW(), NOW());
INSERT INTO products_attributes VALUES (298, "baseClock", "3,2 GHz", 50, NOW(), NOW());
INSERT INTO products_attributes VALUES (299, "boostClock", "4,6 GHz", 50, NOW(), NOW());
INSERT INTO products_attributes VALUES (300, "tdp", 0, 50, NOW(), NOW());
INSERT INTO products_attributes VALUES (301, "socket", "Intel Socket 1151", 50, NOW(), NOW());
INSERT INTO products_attributes VALUES (302, "multihreading", false, 50, NOW(), NOW());
INSERT INTO product_category VALUES (50, 11);
INSERT INTO product_category VALUES (50, 12);


INSERT INTO products VALUES (51, "Processor Intel Core i7-7700 4 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i7-7700", "https://a.allegroimg.com/original/11ef4e/e2110038483eaef8b69ecae4a848", 1475.39, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (303, "cores", "4", 51, NOW(), NOW());
INSERT INTO products_attributes VALUES (304, "baseClock", "3,6 GHz", 51, NOW(), NOW());
INSERT INTO products_attributes VALUES (305, "boostClock", "4,2 GHz", 51, NOW(), NOW());
INSERT INTO products_attributes VALUES (306, "tdp", 65, 51, NOW(), NOW());
INSERT INTO products_attributes VALUES (307, "socket", "Intel Socket 1151", 51, NOW(), NOW());
INSERT INTO products_attributes VALUES (308, "multihreading", true, 51, NOW(), NOW());
INSERT INTO product_category VALUES (51, 11);
INSERT INTO product_category VALUES (51, 12);


INSERT INTO products VALUES (52, "Processor Intel Core i3 4 x 3,6 GHz, 4,3 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i3", "https://a.allegroimg.com/original/11a457/dd9ce8f54a9498ae514576fa4d97", 1490.43, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (309, "cores", "4", 52, NOW(), NOW());
INSERT INTO products_attributes VALUES (310, "baseClock", null, 52, NOW(), NOW());
INSERT INTO products_attributes VALUES (311, "boostClock", null, 52, NOW(), NOW());
INSERT INTO products_attributes VALUES (312, "tdp", 65, 52, NOW(), NOW());
INSERT INTO products_attributes VALUES (313, "socket", "Intel Socket 1151", 52, NOW(), NOW());
INSERT INTO products_attributes VALUES (314, "multihreading", false, 52, NOW(), NOW());
INSERT INTO product_category VALUES (52, 11);
INSERT INTO product_category VALUES (52, 12);


INSERT INTO products VALUES (53, "Processor Intel Core i5-8500 6 x 3 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i5-8500", "https://a.allegroimg.com/original/0565fd/d7eb75c942d598d6400dcc210ba5", 1659.24, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (315, "cores", "6", 53, NOW(), NOW());
INSERT INTO products_attributes VALUES (316, "baseClock", "3 GHz", 53, NOW(), NOW());
INSERT INTO products_attributes VALUES (317, "boostClock", "4,1 GHz", 53, NOW(), NOW());
INSERT INTO products_attributes VALUES (318, "tdp", 65, 53, NOW(), NOW());
INSERT INTO products_attributes VALUES (319, "socket", "Intel Socket 1151", 53, NOW(), NOW());
INSERT INTO products_attributes VALUES (320, "multihreading", false, 53, NOW(), NOW());
INSERT INTO product_category VALUES (53, 11);
INSERT INTO product_category VALUES (53, 12);


INSERT INTO products VALUES (54, "Processor Intel Core i3-8100 4 x 3,6 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Intel Core i3-8100", "https://a.allegroimg.com/original/03aea9/163a56b8479f944601b07b811311", 1544.68, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (321, "cores", "4", 54, NOW(), NOW());
INSERT INTO products_attributes VALUES (322, "baseClock", "3,6 GHz", 54, NOW(), NOW());
INSERT INTO products_attributes VALUES (323, "boostClock", null, 54, NOW(), NOW());
INSERT INTO products_attributes VALUES (324, "tdp", 0, 54, NOW(), NOW());
INSERT INTO products_attributes VALUES (325, "socket", "Intel Socket 1151", 54, NOW(), NOW());
INSERT INTO products_attributes VALUES (326, "multihreading", true, 54, NOW(), NOW());
INSERT INTO product_category VALUES (54, 11);
INSERT INTO product_category VALUES (54, 12);


INSERT INTO products VALUES (55, "Processor Intel Core i3-9100 4 x 3600 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i3-9100", "https://a.allegroimg.com/original/115d40/d5ba653144eea29559c53054c61d", 1478.55, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (327, "cores", "4", 55, NOW(), NOW());
INSERT INTO products_attributes VALUES (328, "baseClock", "3600 GHz", 55, NOW(), NOW());
INSERT INTO products_attributes VALUES (329, "boostClock", null, 55, NOW(), NOW());
INSERT INTO products_attributes VALUES (330, "tdp", 0, 55, NOW(), NOW());
INSERT INTO products_attributes VALUES (331, "socket", "Intel Socket 1151", 55, NOW(), NOW());
INSERT INTO products_attributes VALUES (332, "multihreading", false, 55, NOW(), NOW());
INSERT INTO product_category VALUES (55, 11);
INSERT INTO product_category VALUES (55, 12);


INSERT INTO products VALUES (56, "Processor Intel Core i7-8700K 6 x 3,7 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i7-8700K", "https://a.allegroimg.com/original/05232a/8d8296fd4c9d8d86483c7dc5ac19", 1650.65, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (333, "cores", "6", 56, NOW(), NOW());
INSERT INTO products_attributes VALUES (334, "baseClock", "3,7 GHz", 56, NOW(), NOW());
INSERT INTO products_attributes VALUES (335, "boostClock", "4,7 GHz", 56, NOW(), NOW());
INSERT INTO products_attributes VALUES (336, "tdp", 95, 56, NOW(), NOW());
INSERT INTO products_attributes VALUES (337, "socket", "Intel Socket 1151", 56, NOW(), NOW());
INSERT INTO products_attributes VALUES (338, "multihreading", false, 56, NOW(), NOW());
INSERT INTO product_category VALUES (56, 11);
INSERT INTO product_category VALUES (56, 12);


INSERT INTO products VALUES (57, "Processor Intel Core i7-7700T (8M Cache, up to 3.80 GHz) 4 x 2,9 GHz", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Intel", "Core i7-7700T (8M Cache, up to 3.80 GHz)", "https://a.allegroimg.com/original/11a517/ab459e374ab3b59016e58e04a372", 1485.00, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (339, "cores", "4", 57, NOW(), NOW());
INSERT INTO products_attributes VALUES (340, "baseClock", "2,9 GHz", 57, NOW(), NOW());
INSERT INTO products_attributes VALUES (341, "boostClock", "3,8 GHz", 57, NOW(), NOW());
INSERT INTO products_attributes VALUES (342, "tdp", 35, 57, NOW(), NOW());
INSERT INTO products_attributes VALUES (343, "socket", "Intel Socket 1151", 57, NOW(), NOW());
INSERT INTO products_attributes VALUES (344, "multihreading", false, 57, NOW(), NOW());
INSERT INTO product_category VALUES (57, 11);
INSERT INTO product_category VALUES (57, 12);





