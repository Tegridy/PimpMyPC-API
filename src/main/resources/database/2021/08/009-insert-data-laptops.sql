--liquibase formatted sql
--changeset tegridy:1


INSERT INTO products VALUES (176, "Lenovo laptop IdeaPad Gaming 3 15IHU6 17' Intel Core i5 8 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "IdeaPad Gaming 3 15IHU6", "http://a.allegroimg.com/original/11d273/2a8cb3b642b6ab5d303057360c36", 876.14, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (968, "displaySize", 17, 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (969, "resolution", "1920 x 1080", 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (970, "monitorPanelType", "IPS", 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (971, "processor", "Intel Core i5", 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (972, "cpuSpeed", 0.0, 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (973, "ram", 8, 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (974, "ramType", "DDR4", 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (975, "gpu", null, 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (976, "gpuMem", 8, 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (977, "os", "Windows 10 64-bit", 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (978, "hddType", "SSD", 176, NOW(), NOW());
INSERT INTO products_attributes VALUES (979, "capacity", 512, 176, NOW(), NOW());
INSERT INTO product_category VALUES (176, 1);
INSERT INTO product_category VALUES (176, 7);
INSERT INTO product_category VALUES (176, 10);

INSERT INTO colors VALUES (176, "BLACK");


INSERT INTO products VALUES (177, "Lenovo laptop IdeaPad Gaming 3 15ACH6 17 ' AMD Ryzen 5 4 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "IdeaPad Gaming 3 15ACH6", "http://a.allegroimg.com/original/11b0c6/7dd402d14db8bd758d40e2db266a", 1220.06, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (980, "displaySize", "16.0", 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (981, "resolution", "1920 x 1080", 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (982, "monitorPanelType", "IPS", 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (983, "processor", "AMD Ryzen 5", 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (984, "cpuSpeed", 0.0, 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (985, "ram", 4, 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (986, "ramType", "DDR4", 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (987, "gpu", null, 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (988, "gpuMem", 16, 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (989, "os", "Windows 10 64-bit", 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (990, "hddType", "SSD", 177, NOW(), NOW());
INSERT INTO products_attributes VALUES (991, "capacity", 512, 177, NOW(), NOW());
INSERT INTO product_category VALUES (177, 1);
INSERT INTO product_category VALUES (177, 7);
INSERT INTO product_category VALUES (177, 10);

INSERT INTO colors VALUES (177, "BLACK");


INSERT INTO products VALUES (178, "Lenovo laptop IdeaPad Gaming 3-15 15,6 ' Intel Core i5 8 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "IdeaPad Gaming 3-15", "http://a.allegroimg.com/original/11e94c/8deba03f4c479fee10d63f8f4612", 1169.02, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (992, "displaySize", 15.6, 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (993, "resolution", "1920 x 1080", 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (994, "monitorPanelType", "IPS", 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (995, "processor", "Intel Core i5", 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (996, "cpuSpeed", 0.0, 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (997, "ram", 8, 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (998, "ramType", "DDR4", 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (999, "gpu", null, 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (1000, "gpuMem", 8, 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (1001, "os", "Windows 10 64-bit", 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (1002, "hddType", "SSD", 178, NOW(), NOW());
INSERT INTO products_attributes VALUES (1003, "capacity", 512, 178, NOW(), NOW());
INSERT INTO product_category VALUES (178, 1);
INSERT INTO product_category VALUES (178, 7);
INSERT INTO product_category VALUES (178, 8);

INSERT INTO colors VALUES (178, "BLACK");


INSERT INTO products VALUES (179, "Laptop Lenovo IdeaPad Gaming 3 16 ' Intel Core i5 16 GB / 512 GB" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "IdeaPad Gaming 3", "http://a.allegroimg.com/original/111770/81bed27d4ec4a4323336353b5f4a", 816.99, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1004, "displaySize", "16.0", 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1005, "resolution", "1920 x 1080", 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1006, "monitorPanelType", "IPS", 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1007, "processor", "Intel Core i5", 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1008, "cpuSpeed", 0.0, 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1009, "ram", 16, 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1010, "ramType", "DDR4", 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1011, "gpu", null, 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1012, "gpuMem", 32, 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1013, "os", "Windows 10 64-bit", 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1014, "hddType", "SSD", 179, NOW(), NOW());
INSERT INTO products_attributes VALUES (1015, "capacity", 512, 179, NOW(), NOW());
INSERT INTO product_category VALUES (179, 1);
INSERT INTO product_category VALUES (179, 7);
INSERT INTO product_category VALUES (179, 9);

INSERT INTO colors VALUES (179, "BLACK");


INSERT INTO products VALUES (180, "Lenovo laptop Lenovo IdeaPad Gaming 3 15ACH6 15,6 ' AMD Ryzen 5 8 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "Lenovo IdeaPad Gaming 3 15ACH6", "http://a.allegroimg.com/original/115630/161a23924422b5f7aabef5b79c86", 1466.98, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1016, "displaySize", 15.6, 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1017, "resolution", "1920 x 1080", 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1018, "monitorPanelType", "TN", 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1019, "processor", "AMD Ryzen 5", 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1020, "cpuSpeed", 0.0, 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1021, "ram", 8, 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1022, "ramType", "DDR4", 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1023, "gpu", null, 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1024, "gpuMem", 8, 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1025, "os", "Windows 10 64-bit", 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1026, "hddType", "SSD", 180, NOW(), NOW());
INSERT INTO products_attributes VALUES (1027, "capacity", 512, 180, NOW(), NOW());
INSERT INTO product_category VALUES (180, 1);
INSERT INTO product_category VALUES (180, 7);
INSERT INTO product_category VALUES (180, 8);

INSERT INTO colors VALUES (180, "BLACK");



INSERT INTO products VALUES (181, "Lenovo laptop IdeaPad Gaming 3 15IHU6 15,6 ' Intel Core i5 8 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "IdeaPad Gaming 3 15IHU6", "http://a.allegroimg.com/original/11d273/2a8cb3b642b6ab5d303057360c36", 876.14, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1029, "displaySize", 15.6, 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1030, "resolution", "1920 x 1080", 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1031, "monitorPanelType", "IPS", 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1032, "processor", "Intel Core i5", 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1033, "cpuSpeed", 0.0, 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1034, "ram", 4, 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1035, "ramType", "DDR4", 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1036, "gpu", null, 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1037, "gpuMem", 8, 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1038, "os", "Windows 10 64-bit", 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1039, "hddType", "SSD", 181, NOW(), NOW());
INSERT INTO products_attributes VALUES (1040, "capacity", 512, 181, NOW(), NOW());
INSERT INTO product_category VALUES (181, 1);
INSERT INTO product_category VALUES (181, 7);
INSERT INTO product_category VALUES (181, 8);

INSERT INTO colors VALUES (181, "BLACK");


INSERT INTO products VALUES (182, "Lenovo laptop IdeaPad Gaming 3 15ACH6 15,6 ' AMD Ryzen 5 16 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "IdeaPad Gaming 3 15ACH6", "http://a.allegroimg.com/original/11b0c6/7dd402d14db8bd758d40e2db266a", 1220.06, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1041, "displaySize", "15.6", 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1042, "resolution", "1920 x 1080", 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1043, "monitorPanelType", "VA", 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1044, "processor", "AMD Ryzen 5", 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1045, "cpuSpeed", 0.0, 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1046, "ram", 16, 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1047, "ramType", "DDR4", 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1048, "gpu", null, 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1049, "gpuMem", 16, 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1050, "os", "Windows 10 64-bit", 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1051, "hddType", "SSD", 182, NOW(), NOW());
INSERT INTO products_attributes VALUES (1052, "capacity", 512, 182, NOW(), NOW());
INSERT INTO product_category VALUES (182, 1);
INSERT INTO product_category VALUES (182, 7);
INSERT INTO product_category VALUES (182, 8);

INSERT INTO colors VALUES (182, "BLACK");


INSERT INTO products VALUES (183, "Lenovo laptop IdeaPad Gaming 3-15 15,6 ' Intel Core i5 8 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "IdeaPad Gaming 3-15", "http://a.allegroimg.com/original/11e94c/8deba03f4c479fee10d63f8f4612", 1169.02, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1053, "displaySize", "15.6", 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1054, "resolution", "1920 x 1080", 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1055, "monitorPanelType", "IPS", 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1056, "processor", "Intel Core i5", 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1057, "cpuSpeed", 0.0, 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1058, "ram", 8, 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1059, "ramType", "DDR4", 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1060, "gpu", null, 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1061, "gpuMem", 8, 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1062, "os", "Windows 10 64-bit", 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1063, "hddType", "SSD", 183, NOW(), NOW());
INSERT INTO products_attributes VALUES (1064, "capacity", 512, 183, NOW(), NOW());
INSERT INTO product_category VALUES (183, 1);
INSERT INTO product_category VALUES (183, 7);
INSERT INTO product_category VALUES (183, 8);

INSERT INTO colors VALUES (183, "BLACK");


INSERT INTO products VALUES (184, "Lenovo laptop IdeaPad Gaming 3 15,6 ' Intel Core i5 32 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "IdeaPad Gaming 3", "http://a.allegroimg.com/original/111770/81bed27d4ec4a4323336353b5f4a", 816.99, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1065, "displaySize", "15.6", 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1066, "resolution", "1920 x 1080", 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1067, "monitorPanelType", "TN", 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1068, "processor", "Intel Core i5", 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1069, "cpuSpeed", 0.0, 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1070, "ram", 16, 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1071, "ramType", "DDR4", 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1072, "gpu", null, 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1073, "gpuMem", 32, 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1074, "os", "Windows 10 64-bit", 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1075, "hddType", "SSD", 184, NOW(), NOW());
INSERT INTO products_attributes VALUES (1076, "capacity", 512, 184, NOW(), NOW());
INSERT INTO product_category VALUES (184, 1);
INSERT INTO product_category VALUES (184, 7);
INSERT INTO product_category VALUES (184, 8);

INSERT INTO colors VALUES (184, "BLACK");


INSERT INTO products VALUES (185, "Lenovo laptop Lenovo IdeaPad Gaming 3 15ACH6 15,6 ' AMD Ryzen 5 8 GB / 512 GB black" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Lenovo", "Lenovo IdeaPad Gaming 3 15ACH6", "http://a.allegroimg.com/original/115630/161a23924422b5f7aabef5b79c86", 1466.98, 9999, NOW(), NOW());
INSERT INTO products_attributes VALUES (1077, "displaySize", "15.6", 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1078, "resolution", "1920 x 1080", 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1079, "monitorPanelType", "VA", 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1080, "processor", "AMD Ryzen 5", 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1081, "cpuSpeed", 0.0, 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1082, "ram", 8, 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1083, "ramType", "DDR4", 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1084, "gpu", null, 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1085, "gpuMem", 8, 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1086, "os", "Windows 10 64-bit", 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1087, "hddType", "SSD", 185, NOW(), NOW());
INSERT INTO products_attributes VALUES (1088, "capacity", 512, 185, NOW(), NOW());
INSERT INTO product_category VALUES (185, 1);
INSERT INTO product_category VALUES (185, 7);
INSERT INTO product_category VALUES (185, 8);

INSERT INTO colors VALUES (185, "BLACK");










