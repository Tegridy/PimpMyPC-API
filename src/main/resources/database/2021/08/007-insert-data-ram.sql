--liquibase formatted sql
--changeset tegridy:1


INSERT INTO products VALUES (103, "Memory RAM Goodram DDR4 32 GB 3200", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Goodram", "IRDM X", "https://a.allegroimg.com/original/110cd6/8a47cce14857badc413d63376afe", 83.03, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (574, "moduleType", "DDR4", 103, NOW(), NOW());
INSERT INTO products_attributes VALUES (575, "speed", 3200, 103, NOW(), NOW());
INSERT INTO products_attributes VALUES (576, "numOfModules", 2, 103, NOW(), NOW());
INSERT INTO products_attributes VALUES (577, "moduleSize", 32, 103, NOW(), NOW());
INSERT INTO products_attributes VALUES (578, "latency", 10, 103, NOW(), NOW());
INSERT INTO products_attributes VALUES (579, "cas", "16", 103, NOW(), NOW());
INSERT INTO product_category VALUES (103, 5);
INSERT INTO product_category VALUES (103, 14);
INSERT INTO colors VALUES (103, "BLUE");
INSERT INTO colors VALUES (103, "RED");


INSERT INTO products VALUES (104, "Memory RAM Goodram DDR4 16 GB 2400", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Goodram", "IR-W2400D464L15S/16GDC", "https://a.allegroimg.com/original/113a7c/d02569cc475da37731471cbd7b94", 147.51, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (580, "moduleType", "DDR4", 104, NOW(), NOW());
INSERT INTO products_attributes VALUES (581, "speed", 2400, 104, NOW(), NOW());
INSERT INTO products_attributes VALUES (582, "numOfModules", 2, 104, NOW(), NOW());
INSERT INTO products_attributes VALUES (583, "moduleSize", 16, 104, NOW(), NOW());
INSERT INTO products_attributes VALUES (584, "latency", 14, 104, NOW(), NOW());
INSERT INTO products_attributes VALUES (585, "cas", "17", 104, NOW(), NOW());
INSERT INTO product_category VALUES (104, 5);
INSERT INTO product_category VALUES (104, 14);
INSERT INTO colors VALUES (104, "BLUE");
INSERT INTO colors VALUES (104, "RED");


INSERT INTO products VALUES (105, "Memory RAM CRUCIAL DDR4 8 GB 3200", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "CRUCIAL", "CT8G4DFRA32A", "https://a.allegroimg.com/original/117a43/c0ed81184388a0aba23d527d2f48", 137.95, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (586, "moduleType", "DDR4", 105, NOW(), NOW());
INSERT INTO products_attributes VALUES (587, "speed", 3200, 105, NOW(), NOW());
INSERT INTO products_attributes VALUES (588, "numOfModules", 1, 105, NOW(), NOW());
INSERT INTO products_attributes VALUES (589, "moduleSize", 8, 105, NOW(), NOW());
INSERT INTO products_attributes VALUES (590, "latency", 13, 105, NOW(), NOW());
INSERT INTO products_attributes VALUES (591, "cas", "22", 105, NOW(), NOW());
INSERT INTO product_category VALUES (105, 5);
INSERT INTO product_category VALUES (105, 14);
INSERT INTO colors VALUES (105, "BLUE");
INSERT INTO colors VALUES (105, "RED");


INSERT INTO products VALUES (106, "Memory RAM Kingston DDR4 32 GB 2666", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Kingston", "KF426S16IBK2/32", "https://a.allegroimg.com/original/111f32/40025dcb4d21af0740bbd7bbb44b", 71.94, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (592, "moduleType", "DDR4", 106, NOW(), NOW());
INSERT INTO products_attributes VALUES (593, "speed", 2666, 106, NOW(), NOW());
INSERT INTO products_attributes VALUES (594, "numOfModules", 2, 106, NOW(), NOW());
INSERT INTO products_attributes VALUES (595, "moduleSize", 32, 106, NOW(), NOW());
INSERT INTO products_attributes VALUES (596, "latency", 12, 106, NOW(), NOW());
INSERT INTO products_attributes VALUES (597, "cas", "16", 106, NOW(), NOW());
INSERT INTO product_category VALUES (106, 5);
INSERT INTO product_category VALUES (106, 14);
INSERT INTO colors VALUES (106, "BLUE");
INSERT INTO colors VALUES (106, "RED");


INSERT INTO products VALUES (107, "Memory RAM Apacer DDR4 8 GB 2400", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Apacer", "EL.08G2T.GFH", "https://a.allegroimg.com/original/11d239/f642bc63457f80b9a70f54dfa82b", 193.81, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (598, "moduleType", "DDR4", 107, NOW(), NOW());
INSERT INTO products_attributes VALUES (599, "speed", 2400, 107, NOW(), NOW());
INSERT INTO products_attributes VALUES (600, "numOfModules", 1, 107, NOW(), NOW());
INSERT INTO products_attributes VALUES (601, "moduleSize", 8, 107, NOW(), NOW());
INSERT INTO products_attributes VALUES (602, "latency", 14, 107, NOW(), NOW());
INSERT INTO products_attributes VALUES (603, "cas", "17", 107, NOW(), NOW());
INSERT INTO product_category VALUES (107, 5);
INSERT INTO product_category VALUES (107, 14);
INSERT INTO colors VALUES (107, "BLUE");
INSERT INTO colors VALUES (107, "RED");


INSERT INTO products VALUES (108, "Memory RAM Kingston DDR4 32 GB 3200", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Kingston", "KF432C16BB1K2/32", "https://a.allegroimg.com/original/118bd0/631194b242d795d121d815306b1d", 67.50, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (604, "moduleType", "DDR4", 108, NOW(), NOW());
INSERT INTO products_attributes VALUES (605, "speed", 3200, 108, NOW(), NOW());
INSERT INTO products_attributes VALUES (606, "numOfModules", 2, 108, NOW(), NOW());
INSERT INTO products_attributes VALUES (607, "moduleSize", 32, 108, NOW(), NOW());
INSERT INTO products_attributes VALUES (608, "latency", 10, 108, NOW(), NOW());
INSERT INTO products_attributes VALUES (609, "cas", "16", 108, NOW(), NOW());
INSERT INTO product_category VALUES (108, 5);
INSERT INTO product_category VALUES (108, 14);
INSERT INTO colors VALUES (108, "BLUE");
INSERT INTO colors VALUES (108, "RED");


INSERT INTO products VALUES (109, "Memory RAM Patriot DDR4 16 GB 4000", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Patriot", "Viper Steel", "https://a.allegroimg.com/original/117cf8/701ae92549e39aa873c40e1e2358", 145.52, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (610, "moduleType", "DDR4", 109, NOW(), NOW());
INSERT INTO products_attributes VALUES (611, "speed", 4000, 109, NOW(), NOW());
INSERT INTO products_attributes VALUES (612, "numOfModules", 2, 109, NOW(), NOW());
INSERT INTO products_attributes VALUES (613, "moduleSize", 16, 109, NOW(), NOW());
INSERT INTO products_attributes VALUES (614, "latency", 8, 109, NOW(), NOW());
INSERT INTO products_attributes VALUES (615, "cas", "16", 109, NOW(), NOW());
INSERT INTO product_category VALUES (109, 5);
INSERT INTO product_category VALUES (109, 14);
INSERT INTO colors VALUES (109, "BLUE");
INSERT INTO colors VALUES (109, "RED");


INSERT INTO products VALUES (110, "Memory RAM Goodram DDR4 16 GB 3600", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Goodram", "IRDM RGB 16GB/3600MHz (2x8GB) CL18", "https://a.allegroimg.com/original/112a72/315551f74422bdf194bf5b528ebb", 131.14, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (616, "moduleType", "DDR4", 110, NOW(), NOW());
INSERT INTO products_attributes VALUES (617, "speed", 3600, 110, NOW(), NOW());
INSERT INTO products_attributes VALUES (618, "numOfModules", 2, 110, NOW(), NOW());
INSERT INTO products_attributes VALUES (619, "moduleSize", 16, 110, NOW(), NOW());
INSERT INTO products_attributes VALUES (620, "latency", 10, 110, NOW(), NOW());
INSERT INTO products_attributes VALUES (621, "cas", "18", 110, NOW(), NOW());
INSERT INTO product_category VALUES (110, 5);
INSERT INTO product_category VALUES (110, 14);
INSERT INTO colors VALUES (110, "BLUE");
INSERT INTO colors VALUES (110, "RED");


INSERT INTO products VALUES (111, "Memory RAM Patriot DDR4 32 GB 2666", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Patriot", "PSP432G2666KH1", "https://a.allegroimg.com/original/119397/0e1a30e24be8ba13b787bda72e39", 153.80, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (622, "moduleType", "DDR4", 111, NOW(), NOW());
INSERT INTO products_attributes VALUES (623, "speed", 2666, 111, NOW(), NOW());
INSERT INTO products_attributes VALUES (624, "numOfModules", 2, 111, NOW(), NOW());
INSERT INTO products_attributes VALUES (625, "moduleSize", 32, 111, NOW(), NOW());
INSERT INTO products_attributes VALUES (626, "latency", 14, 111, NOW(), NOW());
INSERT INTO products_attributes VALUES (627, "cas", "19", 111, NOW(), NOW());
INSERT INTO product_category VALUES (111, 5);
INSERT INTO product_category VALUES (111, 14);
INSERT INTO colors VALUES (111, "BLUE");
INSERT INTO colors VALUES (111, "RED");


INSERT INTO products VALUES (112, "Memory RAM Kingston DDR4 16 GB 3600", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Kingston", "Beast RGB", "https://a.allegroimg.com/original/11e49b/072fb225471188fc6f517d82529c", 67.06, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (628, "moduleType", "DDR4", 112, NOW(), NOW());
INSERT INTO products_attributes VALUES (629, "speed", 3600, 112, NOW(), NOW());
INSERT INTO products_attributes VALUES (630, "numOfModules", 1, 112, NOW(), NOW());
INSERT INTO products_attributes VALUES (631, "moduleSize", 16, 112, NOW(), NOW());
INSERT INTO products_attributes VALUES (632, "latency", 10, 112, NOW(), NOW());
INSERT INTO products_attributes VALUES (633, "cas", "18", 112, NOW(), NOW());
INSERT INTO product_category VALUES (112, 5);
INSERT INTO product_category VALUES (112, 14);
INSERT INTO colors VALUES (112, "BLUE");
INSERT INTO colors VALUES (112, "RED");


INSERT INTO products VALUES (113, "Memory RAM Kingston DDR4 32 GB 3200", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Kingston", "Fury Beast RGB", "https://a.allegroimg.com/original/1133de/1e6fdee64b2fac9642b38e4a2522", 163.82, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (634, "moduleType", "DDR4", 113, NOW(), NOW());
INSERT INTO products_attributes VALUES (635, "speed", 3200, 113, NOW(), NOW());
INSERT INTO products_attributes VALUES (636, "numOfModules", 2, 113, NOW(), NOW());
INSERT INTO products_attributes VALUES (637, "moduleSize", 32, 113, NOW(), NOW());
INSERT INTO products_attributes VALUES (638, "latency", 10, 113, NOW(), NOW());
INSERT INTO products_attributes VALUES (639, "cas", "16", 113, NOW(), NOW());
INSERT INTO product_category VALUES (113, 5);
INSERT INTO product_category VALUES (113, 14);
INSERT INTO colors VALUES (113, "BLUE");
INSERT INTO colors VALUES (113, "RED");


INSERT INTO products VALUES (114, "Memory RAM Corsair DDR4 32 GB 3200", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Corsair", "CMK32GX4M2E3200C16", "https://a.allegroimg.com/original/05d275/b72e8f374104bf38fa858bf0884a", 69.22, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (640, "moduleType", "DDR4", 114, NOW(), NOW());
INSERT INTO products_attributes VALUES (641, "speed", 3200, 114, NOW(), NOW());
INSERT INTO products_attributes VALUES (642, "numOfModules", 2, 114, NOW(), NOW());
INSERT INTO products_attributes VALUES (643, "moduleSize", 32, 114, NOW(), NOW());
INSERT INTO products_attributes VALUES (644, "latency", 10, 114, NOW(), NOW());
INSERT INTO products_attributes VALUES (645, "cas", "16", 114, NOW(), NOW());
INSERT INTO product_category VALUES (114, 5);
INSERT INTO product_category VALUES (114, 14);
INSERT INTO colors VALUES (114, "BLUE");
INSERT INTO colors VALUES (114, "RED");


INSERT INTO products VALUES (115, "Memory RAM Patriot DDR4 32 GB 4000", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Patriot", "PVE2432G400C0K", "https://a.allegroimg.com/original/11ae79/42360283458c9240c7762f029258", 113.27, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (646, "moduleType", "DDR4", 115, NOW(), NOW());
INSERT INTO products_attributes VALUES (647, "speed", 4000, 115, NOW(), NOW());
INSERT INTO products_attributes VALUES (648, "numOfModules", 2, 115, NOW(), NOW());
INSERT INTO products_attributes VALUES (649, "moduleSize", 32, 115, NOW(), NOW());
INSERT INTO products_attributes VALUES (650, "latency", 10, 115, NOW(), NOW());
INSERT INTO products_attributes VALUES (651, "cas", "20", 115, NOW(), NOW());
INSERT INTO product_category VALUES (115, 5);
INSERT INTO product_category VALUES (115, 14);
INSERT INTO colors VALUES (115, "BLUE");
INSERT INTO colors VALUES (115, "RED");


INSERT INTO products VALUES (116, "Memory RAM Apacer DDR4 8 GB 2666", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Apacer", "EL.08G2V.GNH", "https://a.allegroimg.com/original/0568a3/a205c11845b4b2ca0de083c28c43", 162.97, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (652, "moduleType", "DDR4", 116, NOW(), NOW());
INSERT INTO products_attributes VALUES (653, "speed", 2666, 116, NOW(), NOW());
INSERT INTO products_attributes VALUES (654, "numOfModules", 1, 116, NOW(), NOW());
INSERT INTO products_attributes VALUES (655, "moduleSize", 8, 116, NOW(), NOW());
INSERT INTO products_attributes VALUES (656, "latency", 14, 116, NOW(), NOW());
INSERT INTO products_attributes VALUES (657, "cas", "19", 116, NOW(), NOW());
INSERT INTO product_category VALUES (116, 5);
INSERT INTO product_category VALUES (116, 14);
INSERT INTO colors VALUES (116, "BLUE");
INSERT INTO colors VALUES (116, "RED");


INSERT INTO products VALUES (117, "Memory RAM HyperX DDR4 16 GB 3000", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "HyperX", "Beast", "https://a.allegroimg.com/original/11ac74/836dff6c428ebe0dd2be49dac1e3", 149.62, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (658, "moduleType", "DDR4", 117, NOW(), NOW());
INSERT INTO products_attributes VALUES (659, "speed", 3000, 117, NOW(), NOW());
INSERT INTO products_attributes VALUES (660, "numOfModules", 2, 117, NOW(), NOW());
INSERT INTO products_attributes VALUES (661, "moduleSize", 16, 117, NOW(), NOW());
INSERT INTO products_attributes VALUES (662, "latency", 10, 117, NOW(), NOW());
INSERT INTO products_attributes VALUES (663, "cas", "15", 117, NOW(), NOW());
INSERT INTO product_category VALUES (117, 5);
INSERT INTO product_category VALUES (117, 14);
INSERT INTO colors VALUES (117, "BLUE");
INSERT INTO colors VALUES (117, "RED");


INSERT INTO products VALUES (118, "Memory RAM Patriot DDR4 8 GB 2400", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Patriot", "Signature", "https://a.allegroimg.com/original/0583dd/7ca3bfd546a6ac10c808dfd64fbd", 124.08, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (664, "moduleType", "DDR4", 118, NOW(), NOW());
INSERT INTO products_attributes VALUES (665, "speed", 2400, 118, NOW(), NOW());
INSERT INTO products_attributes VALUES (666, "numOfModules", 1, 118, NOW(), NOW());
INSERT INTO products_attributes VALUES (667, "moduleSize", 8, 118, NOW(), NOW());
INSERT INTO products_attributes VALUES (668, "latency", 14, 118, NOW(), NOW());
INSERT INTO products_attributes VALUES (669, "cas", "17", 118, NOW(), NOW());
INSERT INTO product_category VALUES (118, 5);
INSERT INTO product_category VALUES (118, 14);
INSERT INTO colors VALUES (118, "BLUE");
INSERT INTO colors VALUES (118, "RED");


INSERT INTO products VALUES (119, "Memory RAM Kingston DDR4 8 GB 3600", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Kingston", "Beast", "https://a.allegroimg.com/original/1164fe/a2acd9604668a041e4bce784dd44", 114.76, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (670, "moduleType", "DDR4", 119, NOW(), NOW());
INSERT INTO products_attributes VALUES (671, "speed", 3600, 119, NOW(), NOW());
INSERT INTO products_attributes VALUES (672, "numOfModules", 1, 119, NOW(), NOW());
INSERT INTO products_attributes VALUES (673, "moduleSize", 8, 119, NOW(), NOW());
INSERT INTO products_attributes VALUES (674, "latency", 9, 119, NOW(), NOW());
INSERT INTO products_attributes VALUES (675, "cas", "17", 119, NOW(), NOW());
INSERT INTO product_category VALUES (119, 5);
INSERT INTO product_category VALUES (119, 14);
INSERT INTO colors VALUES (119, "BLUE");
INSERT INTO colors VALUES (119, "RED");


INSERT INTO products VALUES (120, "Memory RAM Corsair DDR4 16 GB 3600", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Corsair", "CMN16GX4M2Z3600C16", "https://a.allegroimg.com/original/119639/c2fc148e456d977fdebfef4b4c7c", 63.17, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (676, "moduleType", "DDR4", 120, NOW(), NOW());
INSERT INTO products_attributes VALUES (677, "speed", 3600, 120, NOW(), NOW());
INSERT INTO products_attributes VALUES (678, "numOfModules", 2, 120, NOW(), NOW());
INSERT INTO products_attributes VALUES (679, "moduleSize", 16, 120, NOW(), NOW());
INSERT INTO products_attributes VALUES (680, "latency", 8, 120, NOW(), NOW());
INSERT INTO products_attributes VALUES (681, "cas", "16", 120, NOW(), NOW());
INSERT INTO product_category VALUES (120, 5);
INSERT INTO product_category VALUES (120, 14);
INSERT INTO colors VALUES (120, "BLUE");
INSERT INTO colors VALUES (120, "RED");


INSERT INTO products VALUES (121, "Memory RAM Gigabyte DDR4 16 GB 3733", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "DDR4", "https://a.allegroimg.com/original/11c006/e38833554edb94225ecf0651bcd5", 78.55, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (682, "moduleType", "DDR4", 121, NOW(), NOW());
INSERT INTO products_attributes VALUES (683, "speed", 3733, 121, NOW(), NOW());
INSERT INTO products_attributes VALUES (684, "numOfModules", 2, 121, NOW(), NOW());
INSERT INTO products_attributes VALUES (685, "moduleSize", 16, 121, NOW(), NOW());
INSERT INTO products_attributes VALUES (686, "latency", 10, 121, NOW(), NOW());
INSERT INTO products_attributes VALUES (687, "cas", "19", 121, NOW(), NOW());
INSERT INTO product_category VALUES (121, 5);
INSERT INTO product_category VALUES (121, 14);
INSERT INTO colors VALUES (121, "BLUE");
INSERT INTO colors VALUES (121, "RED");


INSERT INTO products VALUES (122, "Memory RAM Corsair DDR4 8 GB 2400", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Corsair", "Vengeance LPX 8GB DDR4-2400", "https://a.allegroimg.com/original/0542dc/be1123b1440bbf59e5e4017e5f60", 164.65, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (688, "moduleType", "DDR4", 122, NOW(), NOW());
INSERT INTO products_attributes VALUES (689, "speed", 2400, 122, NOW(), NOW());
INSERT INTO products_attributes VALUES (690, "numOfModules", 1, 122, NOW(), NOW());
INSERT INTO products_attributes VALUES (691, "moduleSize", 8, 122, NOW(), NOW());
INSERT INTO products_attributes VALUES (692, "latency", 13, 122, NOW(), NOW());
INSERT INTO products_attributes VALUES (693, "cas", "16", 122, NOW(), NOW());
INSERT INTO product_category VALUES (122, 5);
INSERT INTO product_category VALUES (122, 14);
INSERT INTO colors VALUES (122, "BLUE");
INSERT INTO colors VALUES (122, "RED");


INSERT INTO products VALUES (123, "Memory RAM Kingston DDR4 16 GB 3600", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Kingston", "Renegade RGB", "https://a.allegroimg.com/original/11aae4/08eadf8d45238c40be43bcee3f20", 82.62, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (694, "moduleType", "DDR4", 123, NOW(), NOW());
INSERT INTO products_attributes VALUES (695, "speed", 3600, 123, NOW(), NOW());
INSERT INTO products_attributes VALUES (696, "numOfModules", 2, 123, NOW(), NOW());
INSERT INTO products_attributes VALUES (697, "moduleSize", 16, 123, NOW(), NOW());
INSERT INTO products_attributes VALUES (698, "latency", 8, 123, NOW(), NOW());
INSERT INTO products_attributes VALUES (699, "cas", "16", 123, NOW(), NOW());
INSERT INTO product_category VALUES (123, 5);
INSERT INTO product_category VALUES (123, 14);
INSERT INTO colors VALUES (123, "BLUE");
INSERT INTO colors VALUES (123, "RED");


INSERT INTO products VALUES (124, "Memory RAM HyperX DDR4 8 GB 2666", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "HyperX", "Black 8GB DDR4 2666MHz", "https://a.allegroimg.com/original/003ec9/d344eca047a0897de3ee31871e5c", 199.23, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (700, "moduleType", "DDR4", 124, NOW(), NOW());
INSERT INTO products_attributes VALUES (701, "speed", 2666, 124, NOW(), NOW());
INSERT INTO products_attributes VALUES (702, "numOfModules", 1, 124, NOW(), NOW());
INSERT INTO products_attributes VALUES (703, "moduleSize", 8, 124, NOW(), NOW());
INSERT INTO products_attributes VALUES (704, "latency", 12, 124, NOW(), NOW());
INSERT INTO products_attributes VALUES (705, "cas", "16", 124, NOW(), NOW());
INSERT INTO product_category VALUES (124, 5);
INSERT INTO product_category VALUES (124, 14);
INSERT INTO colors VALUES (124, "BLUE");
INSERT INTO colors VALUES (124, "RED");


INSERT INTO products VALUES (125, "Memory RAM Corsair DDR4 16 GB 3600", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Corsair", "Vengeance RGB Pro SL 16GB 3600MHz", "https://a.allegroimg.com/original/11b5fb/75063b78490bb3482420eec8746d", 189.12, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (706, "moduleType", "DDR4", 125, NOW(), NOW());
INSERT INTO products_attributes VALUES (707, "speed", 3600, 125, NOW(), NOW());
INSERT INTO products_attributes VALUES (708, "numOfModules", 2, 125, NOW(), NOW());
INSERT INTO products_attributes VALUES (709, "moduleSize", 16, 125, NOW(), NOW());
INSERT INTO products_attributes VALUES (710, "latency", 10, 125, NOW(), NOW());
INSERT INTO products_attributes VALUES (711, "cas", "18", 125, NOW(), NOW());
INSERT INTO product_category VALUES (125, 5);
INSERT INTO product_category VALUES (125, 14);
INSERT INTO colors VALUES (125, "BLUE");
INSERT INTO colors VALUES (125, "RED");


INSERT INTO products VALUES (126, "Memory RAM Corsair DDR4 32 GB 3600", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Corsair", "CMW32GX4M2D3600C18", "https://a.allegroimg.com/original/119021/b91f3eca4b0db63c3f87507dec6d", 180.77, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (712, "moduleType", "DDR4", 126, NOW(), NOW());
INSERT INTO products_attributes VALUES (713, "speed", 3600, 126, NOW(), NOW());
INSERT INTO products_attributes VALUES (714, "numOfModules", 2, 126, NOW(), NOW());
INSERT INTO products_attributes VALUES (715, "moduleSize", 32, 126, NOW(), NOW());
INSERT INTO products_attributes VALUES (716, "latency", 10, 126, NOW(), NOW());
INSERT INTO products_attributes VALUES (717, "cas", "18", 126, NOW(), NOW());
INSERT INTO product_category VALUES (126, 5);
INSERT INTO product_category VALUES (126, 14);
INSERT INTO colors VALUES (126, "BLUE");
INSERT INTO colors VALUES (126, "RED");


INSERT INTO products VALUES (127, "Memory RAM Gigabyte DDR4 16 GB 4400", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "AORUS RGB MEMORY", "https://a.allegroimg.com/original/117ca7/fd57bd2c498fbbbe8cb05cb806a0", 124.84, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (718, "moduleType", "DDR4", 127, NOW(), NOW());
INSERT INTO products_attributes VALUES (719, "speed", 4400, 127, NOW(), NOW());
INSERT INTO products_attributes VALUES (720, "numOfModules", 2, 127, NOW(), NOW());
INSERT INTO products_attributes VALUES (721, "moduleSize", 16, 127, NOW(), NOW());
INSERT INTO products_attributes VALUES (722, "latency", 8, 127, NOW(), NOW());
INSERT INTO products_attributes VALUES (723, "cas", "19", 127, NOW(), NOW());
INSERT INTO product_category VALUES (127, 5);
INSERT INTO product_category VALUES (127, 14);
INSERT INTO colors VALUES (127, "BLUE");
INSERT INTO colors VALUES (127, "RED");


INSERT INTO products VALUES (128, "Memory RAM Patriot DDR4 64 GB 3200", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Patriot", "PVS464G320C6K", "https://a.allegroimg.com/original/05417a/cca3cd8a4d16a5e91b759f6c45ae", 133.09, 99, NOW(), NOW());
INSERT INTO products_attributes VALUES (724, "moduleType", "DDR4", 128, NOW(), NOW());
INSERT INTO products_attributes VALUES (725, "speed", 3200, 128, NOW(), NOW());
INSERT INTO products_attributes VALUES (726, "numOfModules", 2, 128, NOW(), NOW());
INSERT INTO products_attributes VALUES (727, "moduleSize", 64, 128, NOW(), NOW());
INSERT INTO products_attributes VALUES (728, "latency", 10, 128, NOW(), NOW());
INSERT INTO products_attributes VALUES (729, "cas", "16", 128, NOW(), NOW());
INSERT INTO product_category VALUES (128, 5);
INSERT INTO product_category VALUES (128, 14);
INSERT INTO colors VALUES (128, "BLUE");
INSERT INTO colors VALUES (128, "RED");


