--liquibase formatted sql
--changeset tegridy:1

INSERT INTO products VALUES (129, "Motherboard LGA1200 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "LGA1200", "https://a.allegroimg.com/original/11752f/50f62fc941809afef2e2c4b4ad86", 433.03, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (731, "ramSlots", 2, 129, NOW(), NOW());
INSERT INTO products_attributes VALUES (732, "maxRam: ", 0, 129, NOW(), NOW());
INSERT INTO products_attributes VALUES (733, "ramType", "inna", 129, NOW(), NOW());
INSERT INTO products_attributes VALUES (734, "size", "ATX", 129, NOW(), NOW());
INSERT INTO products_attributes VALUES (735, "motherboardSocket", "Intel Socket 1200", 129, NOW(), NOW());
INSERT INTO product_category VALUES (129, 5);
INSERT INTO product_category VALUES (129, 18);
INSERT INTO colors VALUES (129, "GREEN");
INSERT INTO colors VALUES (129, "BLUE");


INSERT INTO products VALUES (130, "Motherboard MAG Z490 TOMAHAWK ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MAG Z490 TOMAHAWK", "https://a.allegroimg.com/original/113385/ad998e004bd591ede6c3269626fa", 417.50, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (736, "ramSlots", 2, 130, NOW(), NOW());
INSERT INTO products_attributes VALUES (737, "maxRam: ", 4, 130, NOW(), NOW());
INSERT INTO products_attributes VALUES (738, "ramType", "DDR4", 130, NOW(), NOW());
INSERT INTO products_attributes VALUES (739, "size", "ATX", 130, NOW(), NOW());
INSERT INTO products_attributes VALUES (740, "motherboardSocket", "Intel Socket 1200", 130, NOW(), NOW());
INSERT INTO product_category VALUES (130, 5);
INSERT INTO product_category VALUES (130, 18);
INSERT INTO colors VALUES (130, "GREEN");
INSERT INTO colors VALUES (130, "BLUE");


INSERT INTO products VALUES (131, "Motherboard MEG Z490 ACE ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MEG Z490 ACE", "https://a.allegroimg.com/original/112853/3aefe607402ebfabce49c3f60f58", 495.52, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (741, "ramSlots", 2, 131, NOW(), NOW());
INSERT INTO products_attributes VALUES (742, "maxRam: ", 4, 131, NOW(), NOW());
INSERT INTO products_attributes VALUES (743, "ramType", "DDR4", 131, NOW(), NOW());
INSERT INTO products_attributes VALUES (744, "size", "ATX", 131, NOW(), NOW());
INSERT INTO products_attributes VALUES (745, "motherboardSocket", "Intel Socket 1200", 131, NOW(), NOW());
INSERT INTO product_category VALUES (131, 5);
INSERT INTO product_category VALUES (131, 18);
INSERT INTO colors VALUES (131, "GREEN");
INSERT INTO colors VALUES (131, "BLUE");


INSERT INTO products VALUES (132, "Motherboard PRIME B560M-A Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Asus", "PRIME B560M-A", "https://a.allegroimg.com/original/11cda5/41059fce40419ac39ed981978780", 481.14, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (746, "ramSlots", 2, 132, NOW(), NOW());
INSERT INTO products_attributes VALUES (747, "maxRam: ", 4, 132, NOW(), NOW());
INSERT INTO products_attributes VALUES (748, "ramType", "DDR4", 132, NOW(), NOW());
INSERT INTO products_attributes VALUES (749, "size", "Micro ATX", 132, NOW(), NOW());
INSERT INTO products_attributes VALUES (750, "motherboardSocket", "Intel Socket 1200", 132, NOW(), NOW());
INSERT INTO product_category VALUES (132, 5);
INSERT INTO product_category VALUES (132, 18);
INSERT INTO colors VALUES (132, "GREEN");
INSERT INTO colors VALUES (132, "BLUE");


INSERT INTO products VALUES (133, "Motherboard H410M S2H V3", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "H410M S2H V3", "https://a.allegroimg.com/original/115867/9f36d9b44a6c92d8dee18fc6a2ab", 503.80, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (751, "ramSlots", 2, 133, NOW(), NOW());
INSERT INTO products_attributes VALUES (752, "maxRam: ", 2, 133, NOW(), NOW());
INSERT INTO products_attributes VALUES (753, "ramType", "DDR4", 133, NOW(), NOW());
INSERT INTO products_attributes VALUES (754, "size", "Inny", 133, NOW(), NOW());
INSERT INTO products_attributes VALUES (755, "motherboardSocket", "pozostałe", 133, NOW(), NOW());
INSERT INTO product_category VALUES (133, 5);
INSERT INTO product_category VALUES (133, 18);
INSERT INTO colors VALUES (133, "GREEN");
INSERT INTO colors VALUES (133, "BLUE");


INSERT INTO products VALUES (134, "Motherboard B560M DS3H V2 Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "B560M DS3H V2", "https://a.allegroimg.com/original/11b5bb/b5c535b44b5d8ef351168d757747", 417.06, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (756, "ramSlots", 2, 134, NOW(), NOW());
INSERT INTO products_attributes VALUES (757, "maxRam: ", 4, 134, NOW(), NOW());
INSERT INTO products_attributes VALUES (758, "ramType", "DDR4", 134, NOW(), NOW());
INSERT INTO products_attributes VALUES (759, "size", "Micro ATX", 134, NOW(), NOW());
INSERT INTO products_attributes VALUES (760, "motherboardSocket", "Intel Socket 1200", 134, NOW(), NOW());
INSERT INTO product_category VALUES (134, 5);
INSERT INTO product_category VALUES (134, 18);
INSERT INTO colors VALUES (134, "GREEN");
INSERT INTO colors VALUES (134, "BLUE");


INSERT INTO products VALUES (135, "Motherboard Prime B560-Plus ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Asus", "Prime B560-Plus", "https://a.allegroimg.com/original/114386/92c0b10b4357bd24c9aa477ad1ac", 513.82, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (761, "ramSlots", 2, 135, NOW(), NOW());
INSERT INTO products_attributes VALUES (762, "maxRam: ", 4, 135, NOW(), NOW());
INSERT INTO products_attributes VALUES (763, "ramType", "DDR4", 135, NOW(), NOW());
INSERT INTO products_attributes VALUES (764, "size", "ATX", 135, NOW(), NOW());
INSERT INTO products_attributes VALUES (765, "motherboardSocket", "Intel Socket 1200", 135, NOW(), NOW());
INSERT INTO product_category VALUES (135, 5);
INSERT INTO product_category VALUES (135, 18);
INSERT INTO colors VALUES (135, "GREEN");
INSERT INTO colors VALUES (135, "BLUE");


INSERT INTO products VALUES (136, "Motherboard B560M PRO-E Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "B560M PRO-E", "https://a.allegroimg.com/original/116b67/3747acf94c8eb83bdd7dbd528236", 419.22, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (766, "ramSlots", 2, 136, NOW(), NOW());
INSERT INTO products_attributes VALUES (767, "maxRam: ", 2, 136, NOW(), NOW());
INSERT INTO products_attributes VALUES (768, "ramType", "DDR4", 136, NOW(), NOW());
INSERT INTO products_attributes VALUES (769, "size", "Micro ATX", 136, NOW(), NOW());
INSERT INTO products_attributes VALUES (770, "motherboardSocket", "Intel Socket 1200", 136, NOW(), NOW());
INSERT INTO product_category VALUES (136, 5);
INSERT INTO product_category VALUES (136, 18);
INSERT INTO colors VALUES (136, "GREEN");
INSERT INTO colors VALUES (136, "BLUE");


INSERT INTO products VALUES (137, "Motherboard MPG Z590 Gaming Plus ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MPG Z590 Gaming Plus", "https://a.allegroimg.com/original/116b10/f57b71854828ba3b741c1fa3c6e0", 463.27, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (771, "ramSlots", 2, 137, NOW(), NOW());
INSERT INTO products_attributes VALUES (772, "maxRam: ", 4, 137, NOW(), NOW());
INSERT INTO products_attributes VALUES (773, "ramType", "DDR4", 137, NOW(), NOW());
INSERT INTO products_attributes VALUES (774, "size", "ATX", 137, NOW(), NOW());
INSERT INTO products_attributes VALUES (775, "motherboardSocket", "Intel Socket 1200", 137, NOW(), NOW());
INSERT INTO product_category VALUES (137, 5);
INSERT INTO product_category VALUES (137, 18);
INSERT INTO colors VALUES (137, "GREEN");
INSERT INTO colors VALUES (137, "BLUE");


INSERT INTO products VALUES (138, "Motherboard ASRock H510 Pro BTC+", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "ASRock", "H510 Pro BTC+", "https://a.allegroimg.com/original/1142c5/a11bd4b1469bbffdceffea9e50dc", 512.97, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (776, "ramSlots", 2, 138, NOW(), NOW());
INSERT INTO products_attributes VALUES (777, "maxRam: ", 1, 138, NOW(), NOW());
INSERT INTO products_attributes VALUES (778, "ramType", "DDR4", 138, NOW(), NOW());
INSERT INTO products_attributes VALUES (779, "size", "Inny", 138, NOW(), NOW());
INSERT INTO products_attributes VALUES (780, "motherboardSocket", "Intel Socket 1200", 138, NOW(), NOW());
INSERT INTO product_category VALUES (138, 5);
INSERT INTO product_category VALUES (138, 18);
INSERT INTO colors VALUES (138, "GREEN");
INSERT INTO colors VALUES (138, "BLUE");


INSERT INTO products VALUES (139, "Motherboard PRIME H510M-K Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Asus", "PRIME H510M-K", "https://a.allegroimg.com/original/11fb3d/f6bdfa75440a974797971051b33f", 499.62, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (781, "ramSlots", 2, 139, NOW(), NOW());
INSERT INTO products_attributes VALUES (782, "maxRam: ", 2, 139, NOW(), NOW());
INSERT INTO products_attributes VALUES (783, "ramType", "DDR4", 139, NOW(), NOW());
INSERT INTO products_attributes VALUES (784, "size", "Micro ATX", 139, NOW(), NOW());
INSERT INTO products_attributes VALUES (785, "motherboardSocket", "pozostałe", 139, NOW(), NOW());
INSERT INTO product_category VALUES (139, 5);
INSERT INTO product_category VALUES (139, 18);
INSERT INTO colors VALUES (139, "GREEN");
INSERT INTO colors VALUES (139, "BLUE");


INSERT INTO products VALUES (140, "Motherboard PRIME Z590-P ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Asus", "PRIME Z590-P", "https://a.allegroimg.com/original/115089/69e63c6c45d9bdf9e774cdff457d", 474.08, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (786, "ramSlots", 2, 140, NOW(), NOW());
INSERT INTO products_attributes VALUES (787, "maxRam: ", 4, 140, NOW(), NOW());
INSERT INTO products_attributes VALUES (788, "ramType", "DDR4", 140, NOW(), NOW());
INSERT INTO products_attributes VALUES (789, "size", "ATX", 140, NOW(), NOW());
INSERT INTO products_attributes VALUES (790, "motherboardSocket", "Intel Socket 1200", 140, NOW(), NOW());
INSERT INTO product_category VALUES (140, 5);
INSERT INTO product_category VALUES (140, 18);
INSERT INTO colors VALUES (140, "GREEN");
INSERT INTO colors VALUES (140, "BLUE");


INSERT INTO products VALUES (141, "Motherboard MAG Z590 TORPEDO ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MAG Z590 TORPEDO", "https://a.allegroimg.com/original/11598b/198ec36e44f88a0bb0873f442e29", 464.76, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (791, "ramSlots", 2, 141, NOW(), NOW());
INSERT INTO products_attributes VALUES (792, "maxRam: ", 4, 141, NOW(), NOW());
INSERT INTO products_attributes VALUES (793, "ramType", "DDR4", 141, NOW(), NOW());
INSERT INTO products_attributes VALUES (794, "size", "ATX", 141, NOW(), NOW());
INSERT INTO products_attributes VALUES (795, "motherboardSocket", "Intel Socket 1200", 141, NOW(), NOW());
INSERT INTO product_category VALUES (141, 5);
INSERT INTO product_category VALUES (141, 18);
INSERT INTO colors VALUES (141, "GREEN");
INSERT INTO colors VALUES (141, "BLUE");


INSERT INTO products VALUES (142, "Motherboard Z590 UD AC ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "Z590 UD AC", "https://a.allegroimg.com/original/1172c8/ab12fe7f49aa911a8fda0a09a7e4", 413.17, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (796, "ramSlots", 2, 142, NOW(), NOW());
INSERT INTO products_attributes VALUES (797, "maxRam: ", 4, 142, NOW(), NOW());
INSERT INTO products_attributes VALUES (798, "ramType", "DDR4", 142, NOW(), NOW());
INSERT INTO products_attributes VALUES (799, "size", "ATX", 142, NOW(), NOW());
INSERT INTO products_attributes VALUES (800, "motherboardSocket", "Intel Socket 1200", 142, NOW(), NOW());
INSERT INTO product_category VALUES (142, 5);
INSERT INTO product_category VALUES (142, 18);
INSERT INTO colors VALUES (142, "GREEN");
INSERT INTO colors VALUES (142, "BLUE");


INSERT INTO products VALUES (143, "Motherboard B560 HD3 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "B560 HD3", "https://a.allegroimg.com/original/110852/b6bc0e1349e8bf4de159b28d921d", 428.55, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (801, "ramSlots", 2, 143, NOW(), NOW());
INSERT INTO products_attributes VALUES (802, "maxRam: ", 4, 143, NOW(), NOW());
INSERT INTO products_attributes VALUES (803, "ramType", "DDR4", 143, NOW(), NOW());
INSERT INTO products_attributes VALUES (804, "size", "ATX", 143, NOW(), NOW());
INSERT INTO products_attributes VALUES (805, "motherboardSocket", "Intel Socket 1200", 143, NOW(), NOW());
INSERT INTO product_category VALUES (143, 5);
INSERT INTO product_category VALUES (143, 18);
INSERT INTO colors VALUES (143, "GREEN");
INSERT INTO colors VALUES (143, "BLUE");


INSERT INTO products VALUES (144, "Motherboard MPG Z490 GAMING PLUS ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MPG Z490 GAMING PLUS", "https://a.allegroimg.com/original/116268/d6ac39b441838917c43bcdcdbcbe", 514.65, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (806, "ramSlots", 2, 144, NOW(), NOW());
INSERT INTO products_attributes VALUES (807, "maxRam: ", 4, 144, NOW(), NOW());
INSERT INTO products_attributes VALUES (808, "ramType", "DDR4", 144, NOW(), NOW());
INSERT INTO products_attributes VALUES (809, "size", "ATX", 144, NOW(), NOW());
INSERT INTO products_attributes VALUES (810, "motherboardSocket", "Intel Socket 1200", 144, NOW(), NOW());
INSERT INTO product_category VALUES (144, 5);
INSERT INTO product_category VALUES (144, 18);
INSERT INTO colors VALUES (144, "GREEN");
INSERT INTO colors VALUES (144, "BLUE");


INSERT INTO products VALUES (145, "Motherboard B460M-A Pro Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "B460M-A Pro", "https://a.allegroimg.com/original/11db51/fff27a95490cb78efe754f519555", 549.23, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (811, "ramSlots", 2, 145, NOW(), NOW());
INSERT INTO products_attributes VALUES (812, "maxRam: ", 2, 145, NOW(), NOW());
INSERT INTO products_attributes VALUES (813, "ramType", "DDR4", 145, NOW(), NOW());
INSERT INTO products_attributes VALUES (814, "size", "Micro ATX", 145, NOW(), NOW());
INSERT INTO products_attributes VALUES (815, "motherboardSocket", "Intel Socket 1200", 145, NOW(), NOW());
INSERT INTO product_category VALUES (145, 5);
INSERT INTO product_category VALUES (145, 18);
INSERT INTO colors VALUES (145, "GREEN");
INSERT INTO colors VALUES (145, "BLUE");


INSERT INTO products VALUES (146, "Motherboard H510M H Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "H510M H", "https://a.allegroimg.com/original/11a2c4/c75ea461466fa34f5cf886610c38", 539.12, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (816, "ramSlots", 2, 146, NOW(), NOW());
INSERT INTO products_attributes VALUES (817, "maxRam: ", 2, 146, NOW(), NOW());
INSERT INTO products_attributes VALUES (818, "ramType", "DDR4", 146, NOW(), NOW());
INSERT INTO products_attributes VALUES (819, "size", "Micro ATX", 146, NOW(), NOW());
INSERT INTO products_attributes VALUES (820, "motherboardSocket", "pozostałe", 146, NOW(), NOW());
INSERT INTO product_category VALUES (146, 5);
INSERT INTO product_category VALUES (146, 18);
INSERT INTO colors VALUES (146, "GREEN");
INSERT INTO colors VALUES (146, "BLUE");


INSERT INTO products VALUES (147, "Motherboard Z490-A PRO ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "Z490-A PRO", "https://a.allegroimg.com/original/11279c/3d4e91184cb0a9966f106f3446e9", 530.77, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (821, "ramSlots", 2, 147, NOW(), NOW());
INSERT INTO products_attributes VALUES (822, "maxRam: ", 4, 147, NOW(), NOW());
INSERT INTO products_attributes VALUES (823, "ramType", "DDR4", 147, NOW(), NOW());
INSERT INTO products_attributes VALUES (824, "size", "ATX", 147, NOW(), NOW());
INSERT INTO products_attributes VALUES (825, "motherboardSocket", "Intel Socket 1200", 147, NOW(), NOW());
INSERT INTO product_category VALUES (147, 5);
INSERT INTO product_category VALUES (147, 18);
INSERT INTO colors VALUES (147, "GREEN");
INSERT INTO colors VALUES (147, "BLUE");


INSERT INTO products VALUES (148, "Motherboard ASRock B560 Pro4 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "ASRock", "B560 Pro4", "https://a.allegroimg.com/original/1184ed/496f93034a03a207df42198677b3", 474.84, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (826, "ramSlots", 2, 148, NOW(), NOW());
INSERT INTO products_attributes VALUES (827, "maxRam: ", 4, 148, NOW(), NOW());
INSERT INTO products_attributes VALUES (828, "ramType", "DDR4", 148, NOW(), NOW());
INSERT INTO products_attributes VALUES (829, "size", "ATX", 148, NOW(), NOW());
INSERT INTO products_attributes VALUES (830, "motherboardSocket", "Intel Socket 1200", 148, NOW(), NOW());
INSERT INTO product_category VALUES (148, 5);
INSERT INTO product_category VALUES (148, 18);
INSERT INTO colors VALUES (148, "GREEN");
INSERT INTO colors VALUES (148, "BLUE");


INSERT INTO products VALUES (149, "Motherboard B560M-A PRO Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "B560M-A PRO", "https://a.allegroimg.com/original/117ce4/9b7e642b4df1b543d34d11efe1bc", 483.09, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (831, "ramSlots", 2, 149, NOW(), NOW());
INSERT INTO products_attributes VALUES (832, "maxRam: ", 2, 149, NOW(), NOW());
INSERT INTO products_attributes VALUES (833, "ramType", "DDR4", 149, NOW(), NOW());
INSERT INTO products_attributes VALUES (834, "size", "Micro ATX", 149, NOW(), NOW());
INSERT INTO products_attributes VALUES (835, "motherboardSocket", "Intel Socket 1200", 149, NOW(), NOW());
INSERT INTO product_category VALUES (149, 5);
INSERT INTO product_category VALUES (149, 18);
INSERT INTO colors VALUES (149, "GREEN");
INSERT INTO colors VALUES (149, "BLUE");


INSERT INTO products VALUES (150, "Motherboard H410M H V3", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "H410M H V3", "https://a.allegroimg.com/original/112eb0/1732e1cf464e8d1b4ec00a38de57", 476.77, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (836, "ramSlots", 2, 150, NOW(), NOW());
INSERT INTO products_attributes VALUES (837, "maxRam: ", 2, 150, NOW(), NOW());
INSERT INTO products_attributes VALUES (838, "ramType", "DDR4", 150, NOW(), NOW());
INSERT INTO products_attributes VALUES (839, "size", "Inny", 150, NOW(), NOW());
INSERT INTO products_attributes VALUES (840, "motherboardSocket", "pozostałe", 150, NOW(), NOW());
INSERT INTO product_category VALUES (150, 5);
INSERT INTO product_category VALUES (150, 18);
INSERT INTO colors VALUES (150, "GREEN");
INSERT INTO colors VALUES (150, "BLUE");


INSERT INTO products VALUES (151, "Motherboard H510M S2H V2 Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "H510M S2H V2", "https://a.allegroimg.com/original/115901/f8b45ba542f49e5fc6c504f1b703", 511.20, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (841, "ramSlots", 2, 151, NOW(), NOW());
INSERT INTO products_attributes VALUES (842, "maxRam: ", 2, 151, NOW(), NOW());
INSERT INTO products_attributes VALUES (843, "ramType", "DDR4", 151, NOW(), NOW());
INSERT INTO products_attributes VALUES (844, "size", "Micro ATX", 151, NOW(), NOW());
INSERT INTO products_attributes VALUES (845, "motherboardSocket", "pozostałe", 151, NOW(), NOW());
INSERT INTO product_category VALUES (151, 5);
INSERT INTO product_category VALUES (151, 18);
INSERT INTO colors VALUES (151, "GREEN");
INSERT INTO colors VALUES (151, "BLUE");


INSERT INTO products VALUES (152, "Motherboard B560M D3H Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", "B560M D3H", "https://a.allegroimg.com/original/1163a8/4cf51b0f4c7a9f68979d397d6e4f", 524.84, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (846, "ramSlots", 2, 152, NOW(), NOW());
INSERT INTO products_attributes VALUES (847, "maxRam: ", 4, 152, NOW(), NOW());
INSERT INTO products_attributes VALUES (848, "ramType", "DDR4", 152, NOW(), NOW());
INSERT INTO products_attributes VALUES (849, "size", "Micro ATX", 152, NOW(), NOW());
INSERT INTO products_attributes VALUES (850, "motherboardSocket", "Intel Socket 1200", 152, NOW(), NOW());
INSERT INTO product_category VALUES (152, 5);
INSERT INTO product_category VALUES (152, 18);
INSERT INTO colors VALUES (152, "GREEN");
INSERT INTO colors VALUES (152, "BLUE");

-- -----------------------------------------------------

INSERT INTO products VALUES (153, "Motherboard B450M-A PRO MAX, AM4,2 x DDR4, 1 x PCI-Ex16, 1 x M.2 slot, 4 x SATA 6Gb/s Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", null, "https://a.allegroimg.com/original/056efc/5028851c4b99bb650be5e4cfd506", 433.03, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (852, "ramSlots", 2, 153, NOW(), NOW());
INSERT INTO products_attributes VALUES (853, "maxRam: ", 2, 153, NOW(), NOW());
INSERT INTO products_attributes VALUES (854, "ramType", "DDR4", 153, NOW(), NOW());
INSERT INTO products_attributes VALUES (855, "size", "Micro ATX", 153, NOW(), NOW());
INSERT INTO products_attributes VALUES (856, "motherboardSocket", "AMD Socket AM4", 153, NOW(), NOW());
INSERT INTO product_category VALUES (153, 5);
INSERT INTO product_category VALUES (153, 18);
INSERT INTO colors VALUES (153, "GREEN");
INSERT INTO colors VALUES (153, "BLUE");


INSERT INTO products VALUES (154, "Motherboard B450M DS3H B450M DS3H AM4 B450 4DDR4 DVI/HDMI/M.2 uATX Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", null, "https://f.allegroimg.com/original/03df81/5ff09bcc414783c5804921c9090f", 497.51, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (857, "ramSlots", 2, 154, NOW(), NOW());
INSERT INTO products_attributes VALUES (858, "maxRam: ", 4, 154, NOW(), NOW());
INSERT INTO products_attributes VALUES (859, "ramType", "DDR4", 154, NOW(), NOW());
INSERT INTO products_attributes VALUES (860, "size", "Micro ATX", 154, NOW(), NOW());
INSERT INTO products_attributes VALUES (861, "motherboardSocket", "AMD Socket AM4", 154, NOW(), NOW());
INSERT INTO product_category VALUES (154, 5);
INSERT INTO product_category VALUES (154, 18);
INSERT INTO colors VALUES (154, "GREEN");
INSERT INTO colors VALUES (154, "BLUE");


INSERT INTO products VALUES (155, "Motherboard Prime X570-Pro AM4 4DDR4 HDMI/DP ATX, Prime X570-Pro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Asus", null, "https://a.allegroimg.com/original/11fbd5/7e85ecc54121b2746c371b1b95b0", 487.95, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (862, "ramSlots", 2, 155, NOW(), NOW());
INSERT INTO products_attributes VALUES (863, "maxRam: ", 4, 155, NOW(), NOW());
INSERT INTO products_attributes VALUES (864, "ramType", "DDR4", 155, NOW(), NOW());
INSERT INTO products_attributes VALUES (865, "size", "ATX", 155, NOW(), NOW());
INSERT INTO products_attributes VALUES (866, "motherboardSocket", "AMD Socket AM4", 155, NOW(), NOW());
INSERT INTO product_category VALUES (155, 5);
INSERT INTO product_category VALUES (155, 18);
INSERT INTO colors VALUES (155, "GREEN");
INSERT INTO colors VALUES (155, "BLUE");


INSERT INTO products VALUES (156, "Motherboard Prime X570-P AMD AM4 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Asus", "Prime X570-P AMD AM4", "https://a.allegroimg.com/original/051e2a/7a135c98424783f0b7b8002bf84a", 421.94, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (867, "ramSlots", 2, 156, NOW(), NOW());
INSERT INTO products_attributes VALUES (868, "maxRam: ", 4, 156, NOW(), NOW());
INSERT INTO products_attributes VALUES (869, "ramType", "DDR4", 156, NOW(), NOW());
INSERT INTO products_attributes VALUES (870, "size", "ATX", 156, NOW(), NOW());
INSERT INTO products_attributes VALUES (871, "motherboardSocket", "AMD Socket AM4", 156, NOW(), NOW());
INSERT INTO product_category VALUES (156, 5);
INSERT INTO product_category VALUES (156, 18);
INSERT INTO colors VALUES (156, "GREEN");
INSERT INTO colors VALUES (156, "BLUE");


INSERT INTO products VALUES (157, "Motherboard MPG X570 GAMING PLUS, AM4, X570, DDR4, HDMI ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MSI MPG X570 GAMING PLUS, AM4, X570, DDR4, HDMI", "https://a.allegroimg.com/original/053de4/c0b43fe24730891ee7b59a66d358", 543.81, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (872, "ramSlots", 2, 157, NOW(), NOW());
INSERT INTO products_attributes VALUES (873, "maxRam: ", 4, 157, NOW(), NOW());
INSERT INTO products_attributes VALUES (874, "ramType", "DDR4", 157, NOW(), NOW());
INSERT INTO products_attributes VALUES (875, "size", "ATX", 157, NOW(), NOW());
INSERT INTO products_attributes VALUES (876, "motherboardSocket", "AMD Socket AM4", 157, NOW(), NOW());
INSERT INTO product_category VALUES (157, 5);
INSERT INTO product_category VALUES (157, 18);
INSERT INTO colors VALUES (157, "GREEN");
INSERT INTO colors VALUES (157, "BLUE");


INSERT INTO products VALUES (158, "Motherboard B450-A PRO MAX, AM4, DDR4, 1 x M.2 slot, 6 x SATA 6Gb/s, VGA, HDMI, DVI-D ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", null, "https://a.allegroimg.com/original/057e5a/0a76f40f4c60b6687f9b91ecc7d7", 417.50, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (877, "ramSlots", 2, 158, NOW(), NOW());
INSERT INTO products_attributes VALUES (878, "maxRam: ", 4, 158, NOW(), NOW());
INSERT INTO products_attributes VALUES (879, "ramType", "DDR4", 158, NOW(), NOW());
INSERT INTO products_attributes VALUES (880, "size", "ATX", 158, NOW(), NOW());
INSERT INTO products_attributes VALUES (881, "motherboardSocket", "AMD Socket AM4", 158, NOW(), NOW());
INSERT INTO product_category VALUES (158, 5);
INSERT INTO product_category VALUES (158, 18);
INSERT INTO colors VALUES (158, "GREEN");
INSERT INTO colors VALUES (158, "BLUE");


INSERT INTO products VALUES (159, "Motherboard MPG X570 GAMING EDGE WIFI, AM4, X570, DDR4, HDMI ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", null, "https://a.allegroimg.com/original/053ccf/3f61ced746b5bfce4553e1619353", 495.52, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (882, "ramSlots", 2, 159, NOW(), NOW());
INSERT INTO products_attributes VALUES (883, "maxRam: ", 4, 159, NOW(), NOW());
INSERT INTO products_attributes VALUES (884, "ramType", "DDR4", 159, NOW(), NOW());
INSERT INTO products_attributes VALUES (885, "size", "ATX", 159, NOW(), NOW());
INSERT INTO products_attributes VALUES (886, "motherboardSocket", "AMD Socket AM4", 159, NOW(), NOW());
INSERT INTO product_category VALUES (159, 5);
INSERT INTO product_category VALUES (159, 18);
INSERT INTO colors VALUES (159, "GREEN");
INSERT INTO colors VALUES (159, "BLUE");


INSERT INTO products VALUES (160, "Motherboard ROG STRIX B550-A GAMING (ATX, B550, AM4) ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Asus", "ROG STRIX B550-A GAMING (ATX, B550, AM4)", "https://a.allegroimg.com/original/00d64e/0a9706be4236a3f9ff617be7a3f0", 503.80, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (887, "ramSlots", 2, 160, NOW(), NOW());
INSERT INTO products_attributes VALUES (888, "maxRam: ", 4, 160, NOW(), NOW());
INSERT INTO products_attributes VALUES (889, "ramType", "DDR4", 160, NOW(), NOW());
INSERT INTO products_attributes VALUES (890, "size", "ATX", 160, NOW(), NOW());
INSERT INTO products_attributes VALUES (891, "motherboardSocket", "AMD Socket AM4", 160, NOW(), NOW());
INSERT INTO product_category VALUES (160, 5);
INSERT INTO product_category VALUES (160, 18);
INSERT INTO colors VALUES (160, "GREEN");
INSERT INTO colors VALUES (160, "BLUE");


INSERT INTO products VALUES (161, "Motherboard B450M PRO-VDH MAX, AM4, DDR4, 1 x M.2 slot, 4 x SATA 6Gb/s, VGA, HDMI, DVI-D Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", null, "https://a.allegroimg.com/original/05bb22/9ef5775e42c0b1fa9d758ba7e1ee", 417.06, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (892, "ramSlots", 2, 161, NOW(), NOW());
INSERT INTO products_attributes VALUES (893, "maxRam: ", 4, 161, NOW(), NOW());
INSERT INTO products_attributes VALUES (894, "ramType", "DDR4", 161, NOW(), NOW());
INSERT INTO products_attributes VALUES (895, "size", "Micro ATX", 161, NOW(), NOW());
INSERT INTO products_attributes VALUES (896, "motherboardSocket", "AMD Socket AM4", 161, NOW(), NOW());
INSERT INTO product_category VALUES (161, 5);
INSERT INTO product_category VALUES (161, 18);
INSERT INTO colors VALUES (161, "GREEN");
INSERT INTO colors VALUES (161, "BLUE");


INSERT INTO products VALUES (162, "Motherboard ASRock X570 PHANTOM GAMING 4, AMD AM4 X570/4DDR4/8SATA3 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "ASRock", null, "https://a.allegroimg.com/original/053a8b/3d3ccd684650bbf26a5c58f4bf9e", 513.82, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (897, "ramSlots", 2, 162, NOW(), NOW());
INSERT INTO products_attributes VALUES (898, "maxRam: ", 4, 162, NOW(), NOW());
INSERT INTO products_attributes VALUES (899, "ramType", "DDR4", 162, NOW(), NOW());
INSERT INTO products_attributes VALUES (900, "size", "ATX", 162, NOW(), NOW());
INSERT INTO products_attributes VALUES (901, "motherboardSocket", "AMD Socket AM4", 162, NOW(), NOW());
INSERT INTO product_category VALUES (162, 5);
INSERT INTO product_category VALUES (162, 18);
INSERT INTO colors VALUES (162, "GREEN");
INSERT INTO colors VALUES (162, "BLUE");


INSERT INTO products VALUES (163, "Motherboard B450 Gaming X, AM4, DDR4, PCIe Gen3 x4 M.2, HDMI, DVI-D Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", null, "https://a.allegroimg.com/original/055a39/bbfc7eb24a628ed356d06c95db63", 419.22, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (902, "ramSlots", 2, 163, NOW(), NOW());
INSERT INTO products_attributes VALUES (903, "maxRam: ", 4, 163, NOW(), NOW());
INSERT INTO products_attributes VALUES (904, "ramType", "DDR4", 163, NOW(), NOW());
INSERT INTO products_attributes VALUES (905, "size", "Micro ATX", 163, NOW(), NOW());
INSERT INTO products_attributes VALUES (906, "motherboardSocket", "AMD Socket AM4", 163, NOW(), NOW());
INSERT INTO product_category VALUES (163, 5);
INSERT INTO product_category VALUES (163, 18);
INSERT INTO colors VALUES (163, "GREEN");
INSERT INTO colors VALUES (163, "BLUE");


INSERT INTO products VALUES (164, "Motherboard B450 GAMING PRO CARBON AC MSI B450 GAMING PRO CARBON AC, AM4, 4xDDR4, 3 PCI-Ex1, 6xSATA3, 2 M.2, 6xUSB3.1 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", null, "https://a.allegroimg.com/original/11a002/05a6f66f44ffa684972321b9b98e", 463.27, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (907, "ramSlots", 2, 164, NOW(), NOW());
INSERT INTO products_attributes VALUES (908, "maxRam: ", 4, 164, NOW(), NOW());
INSERT INTO products_attributes VALUES (909, "ramType", "DDR4", 164, NOW(), NOW());
INSERT INTO products_attributes VALUES (910, "size", "ATX", 164, NOW(), NOW());
INSERT INTO products_attributes VALUES (911, "motherboardSocket", "AMD Socket AM4", 164, NOW(), NOW());
INSERT INTO product_category VALUES (164, 5);
INSERT INTO product_category VALUES (164, 18);
INSERT INTO colors VALUES (164, "GREEN");
INSERT INTO colors VALUES (164, "BLUE");


INSERT INTO products VALUES (165, "Motherboard B450 AORUS M, AM4, DDR4-3200, USB 3.1, DVI-D/HDMI", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", null, "https://a.allegroimg.com/original/11821b/abe0f1444e55804d7c79e7b7d4e2", 512.97, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (912, "ramSlots", 2, 165, NOW(), NOW());
INSERT INTO products_attributes VALUES (913, "maxRam: ", 4, 165, NOW(), NOW());
INSERT INTO products_attributes VALUES (914, "ramType", "inna", 165, NOW(), NOW());
INSERT INTO products_attributes VALUES (915, "size", "Inny", 165, NOW(), NOW());
INSERT INTO products_attributes VALUES (916, "motherboardSocket", "pozostałe", 165, NOW(), NOW());
INSERT INTO product_category VALUES (165, 5);
INSERT INTO product_category VALUES (165, 18);
INSERT INTO colors VALUES (165, "GREEN");
INSERT INTO colors VALUES (165, "BLUE");


INSERT INTO products VALUES (166, "Motherboard A320M-A PRO, AM4, 2x DDR4, 1PCI-Ex1, 4SATA3, 6USB3.2 Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", null, "https://a.allegroimg.com/original/0589f9/969ba3ff4587956d33b5364c95ae", 499.62, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (917, "ramSlots", 2, 166, NOW(), NOW());
INSERT INTO products_attributes VALUES (918, "maxRam: ", 2, 166, NOW(), NOW());
INSERT INTO products_attributes VALUES (919, "ramType", "DDR4", 166, NOW(), NOW());
INSERT INTO products_attributes VALUES (920, "size", "Micro ATX", 166, NOW(), NOW());
INSERT INTO products_attributes VALUES (921, "motherboardSocket", "AMD Socket AM4", 166, NOW(), NOW());
INSERT INTO product_category VALUES (166, 5);
INSERT INTO product_category VALUES (166, 18);
INSERT INTO colors VALUES (166, "GREEN");
INSERT INTO colors VALUES (166, "BLUE");


INSERT INTO products VALUES (167, "Motherboard ASRock X570 EXTREME4, AMD AM4 X570/4DDR4/8SATA3 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "ASRock", "ASRock X570 EXTREME4, AMD AM4 X570/4DDR4/8SATA3", "https://a.allegroimg.com/original/0548b6/7901eda14d48af0de86f9c6311c9", 474.08, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (922, "ramSlots", 2, 167, NOW(), NOW());
INSERT INTO products_attributes VALUES (923, "maxRam: ", 4, 167, NOW(), NOW());
INSERT INTO products_attributes VALUES (924, "ramType", "DDR4", 167, NOW(), NOW());
INSERT INTO products_attributes VALUES (925, "size", "ATX", 167, NOW(), NOW());
INSERT INTO products_attributes VALUES (926, "motherboardSocket", "AMD Socket AM4", 167, NOW(), NOW());
INSERT INTO product_category VALUES (167, 5);
INSERT INTO product_category VALUES (167, 18);
INSERT INTO colors VALUES (167, "GREEN");
INSERT INTO colors VALUES (167, "BLUE");


INSERT INTO products VALUES (168, "Motherboard GA-A320M-S2H V2, AM4, AMD B350, DDR4, HDMI, DVI-D, D-Sub Micro ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", null, "https://a.allegroimg.com/original/05a8a6/f60b4fd947ca83c0142e9dc10dfe", 464.76, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (927, "ramSlots", 2, 168, NOW(), NOW());
INSERT INTO products_attributes VALUES (928, "maxRam: ", 2, 168, NOW(), NOW());
INSERT INTO products_attributes VALUES (929, "ramType", "DDR4", 168, NOW(), NOW());
INSERT INTO products_attributes VALUES (930, "size", "Micro ATX", 168, NOW(), NOW());
INSERT INTO products_attributes VALUES (931, "motherboardSocket", "AMD Socket AM4", 168, NOW(), NOW());
INSERT INTO product_category VALUES (168, 5);
INSERT INTO product_category VALUES (168, 18);
INSERT INTO colors VALUES (168, "GREEN");
INSERT INTO colors VALUES (168, "BLUE");


INSERT INTO products VALUES (169, "Motherboard X570-A PRO, AM4, X570, DDR4, HDMI ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MSI X570-A PRO, AM4, X570, DDR4, HDMI", "https://a.allegroimg.com/original/11dd38/0d02c0fc4f0bbfa843712c4c98e3", 413.17, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (932, "ramSlots", 2, 169, NOW(), NOW());
INSERT INTO products_attributes VALUES (933, "maxRam: ", 4, 169, NOW(), NOW());
INSERT INTO products_attributes VALUES (934, "ramType", "DDR4", 169, NOW(), NOW());
INSERT INTO products_attributes VALUES (935, "size", "ATX", 169, NOW(), NOW());
INSERT INTO products_attributes VALUES (936, "motherboardSocket", "AMD Socket AM4", 169, NOW(), NOW());
INSERT INTO product_category VALUES (169, 5);
INSERT INTO product_category VALUES (169, 18);
INSERT INTO colors VALUES (169, "GREEN");
INSERT INTO colors VALUES (169, "BLUE");


INSERT INTO products VALUES (170, "Motherboard MEG X570 ACE, AM4, X570, DDR4 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MSI MEG X570 ACE, AM4, X570, DDR4", "https://a.allegroimg.com/original/054aed/5cd885a245d1b75e623c14c72bdc", 428.55, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (937, "ramSlots", 2, 170, NOW(), NOW());
INSERT INTO products_attributes VALUES (938, "maxRam: ", 4, 170, NOW(), NOW());
INSERT INTO products_attributes VALUES (939, "ramType", "DDR4", 170, NOW(), NOW());
INSERT INTO products_attributes VALUES (940, "size", "ATX", 170, NOW(), NOW());
INSERT INTO products_attributes VALUES (941, "motherboardSocket", "AMD Socket AM4", 170, NOW(), NOW());
INSERT INTO product_category VALUES (170, 5);
INSERT INTO product_category VALUES (170, 18);
INSERT INTO colors VALUES (170, "GREEN");
INSERT INTO colors VALUES (170, "BLUE");


INSERT INTO products VALUES (171, "Motherboard X570 I AORUS PRO WIFI, AM4, DDR4, 2xM.2 3, 4xSATA 6Gb/s, HDMI, DP Mini ITX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", null, "https://a.allegroimg.com/original/0500cf/26eda60d4c1a900e32210fd976e2", 514.65, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (942, "ramSlots", 2, 171, NOW(), NOW());
INSERT INTO products_attributes VALUES (943, "maxRam: ", 4, 171, NOW(), NOW());
INSERT INTO products_attributes VALUES (944, "ramType", "DDR4", 171, NOW(), NOW());
INSERT INTO products_attributes VALUES (945, "size", "Mini ITX", 171, NOW(), NOW());
INSERT INTO products_attributes VALUES (946, "motherboardSocket", "AMD Socket AM4", 171, NOW(), NOW());
INSERT INTO product_category VALUES (171, 5);
INSERT INTO product_category VALUES (171, 18);
INSERT INTO colors VALUES (171, "GREEN");
INSERT INTO colors VALUES (171, "BLUE");


INSERT INTO products VALUES (172, "Motherboard X570 AORUS ULTRA, AM4, X570, DDR4, 3xM.2 Socket 3, 6xSATA 6Gb/s, HDMI ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Gigabyte", null, "https://a.allegroimg.com/original/05d1b8/7a5806054077bdad847f899f90e4", 432.62, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (947, "ramSlots", 2, 172, NOW(), NOW());
INSERT INTO products_attributes VALUES (948, "maxRam: ", 4, 172, NOW(), NOW());
INSERT INTO products_attributes VALUES (949, "ramType", "DDR4", 172, NOW(), NOW());
INSERT INTO products_attributes VALUES (950, "size", "ATX", 172, NOW(), NOW());
INSERT INTO products_attributes VALUES (951, "motherboardSocket", "AMD Socket AM4", 172, NOW(), NOW());
INSERT INTO product_category VALUES (172, 5);
INSERT INTO product_category VALUES (172, 18);
INSERT INTO colors VALUES (172, "GREEN");
INSERT INTO colors VALUES (172, "BLUE");


INSERT INTO products VALUES (173, "Motherboard PRESTIGE X570 CREATION, AM4, X570, DDR4 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "MSI", "MSI PRESTIGE X570 CREATION, AM4, X570, DDR4", "https://a.allegroimg.com/original/05cfda/13cb00594156a9f01ee261f68c45", 549.23, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (952, "ramSlots", 2, 173, NOW(), NOW());
INSERT INTO products_attributes VALUES (953, "maxRam: ", 4, 173, NOW(), NOW());
INSERT INTO products_attributes VALUES (954, "ramType", "DDR4", 173, NOW(), NOW());
INSERT INTO products_attributes VALUES (955, "size", "ATX", 173, NOW(), NOW());
INSERT INTO products_attributes VALUES (956, "motherboardSocket", "AMD Socket AM4", 173, NOW(), NOW());
INSERT INTO product_category VALUES (173, 5);
INSERT INTO product_category VALUES (173, 18);
INSERT INTO colors VALUES (173, "GREEN");
INSERT INTO colors VALUES (173, "BLUE");


INSERT INTO products VALUES (174, "Motherboard ASRock X570 STEEL LEGEND, AMD AM4 X570/4DDR4/8SATA3 ATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "ASRock", null, "https://a.allegroimg.com/original/0526b0/daf3c67e4da2a00dee46d35259d5", 530.77, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (957, "ramSlots", 2, 174, NOW(), NOW());
INSERT INTO products_attributes VALUES (958, "maxRam: ", 4, 174, NOW(), NOW());
INSERT INTO products_attributes VALUES (959, "ramType", "DDR4", 174, NOW(), NOW());
INSERT INTO products_attributes VALUES (960, "size", "ATX", 174, NOW(), NOW());
INSERT INTO products_attributes VALUES (961, "motherboardSocket", "AMD Socket AM4", 174, NOW(), NOW());
INSERT INTO product_category VALUES (174, 5);
INSERT INTO product_category VALUES (174, 18);
INSERT INTO colors VALUES (174, "GREEN");
INSERT INTO colors VALUES (174, "BLUE");


INSERT INTO products VALUES (175, "Motherboard ASRock AB350M-HDV R4.0, AM4, DDR4 3200, 4 SATA3, 6 USB 3.1, HDMI, DVI-D, D-Sub Micro ATX, uATX", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "ASRock", null, "https://a.allegroimg.com/original/05ee14/58d3f4a8434ca21f79410695de46", 474.84, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (962, "ramSlots", 2, 175, NOW(), NOW());
INSERT INTO products_attributes VALUES (963, "maxRam: ", 2, 175, NOW(), NOW());
INSERT INTO products_attributes VALUES (964, "ramType", "DDR4", 175, NOW(), NOW());
INSERT INTO products_attributes VALUES (965, "size", null, 175, NOW(), NOW());
INSERT INTO products_attributes VALUES (966, "motherboardSocket", "AMD Socket AM4", 175, NOW(), NOW());
INSERT INTO product_category VALUES (175, 5);
INSERT INTO product_category VALUES (175, 18);
INSERT INTO colors VALUES (175, "GREEN");
INSERT INTO colors VALUES (175, "BLUE");




