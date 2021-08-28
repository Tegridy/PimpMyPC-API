--liquibase formatted sql
--changeset tegridy:1

INSERT INTO products VALUES (333, "Wired mouse A4Tech P30 PRO RGB sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "A4Tech", "P30 PRO RGB", "https://a.allegroimg.com/original/034bc6/07ff8d2e4e22b8c3790885618142", 161.01, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (333, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (333, 22);
INSERT INTO colors VALUES (333, "BLACK");


INSERT INTO products VALUES (334, "A4Tech XP-50NH RGB mouse pad", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", null, null, "https://7.allegroimg.com/original/03b643/adae915c47d7a0bac8035d9adea7", 182.51, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (334, "Gaming", null, null);
INSERT INTO product_category VALUES (334, 22);

INSERT INTO products VALUES (335, "Wired mouse A4Tech Bloody J95", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "A4Tech", "Bloody J95", "https://a.allegroimg.com/original/11629b/725f12f845b2b7c4b2e00036a4aa", 179.32, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (335, "Gaming", "USB", null);
INSERT INTO product_category VALUES (335, 22);
INSERT INTO colors VALUES (335, "BLACK");


INSERT INTO products VALUES (336, "Wired mouse A4Tech J95 sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "A4Tech", "J95", "https://a.allegroimg.com/original/0560a2/088b5e4d42f8930c23f965c9f7d8", 157.32, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (336, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (336, 22);
INSERT INTO colors VALUES (336, "BLACK");


INSERT INTO products VALUES (337, "Wired mouse A4Tech V3m sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "A4Tech", "V3m", "https://a.allegroimg.com/original/05ed78/9eda7c7c421cb2aa03cef1f29e3c", 197.94, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (337, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (337, 22);
INSERT INTO colors VALUES (337, "BLACK");


INSERT INTO products VALUES (338, "Wired mouse A4 Tech Mysz BLOODY P85 Black RGB Pixart sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "other (A4 Tech)", "Mysz BLOODY P85 Black RGB Pixart", "https://a.allegroimg.com/original/11c7fb/558e45ea4f28a1917ce719f04f9f", 155.84, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (338, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (338, 22);
INSERT INTO colors VALUES (338, "null");


INSERT INTO products VALUES (339, "Wired mouse Logitech G502 Proteus Spectrum RGB sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Logitech", "G502 Proteus Spectrum RGB", "https://a.allegroimg.com/original/035562/64392b644b86ba301e38dced723b", 161.01, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (339, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (339, 22);
INSERT INTO colors VALUES (339, "BLACK");


INSERT INTO products VALUES (340, "wireless mouse Logitech Logitech M558 sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Logitech", "Logitech M558", "https://a.allegroimg.com/original/036132/20bdd3e7480a919cb9f87ebdcef8", 182.51, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (340, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (340, 22);
INSERT INTO colors VALUES (340, "WHITE");


INSERT INTO products VALUES (341, "Wired mouse Logitech G502 Hero sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Logitech", "G502 Hero", "https://a.allegroimg.com/original/11b155/9862577041f69a58ba28ee678de7", 179.32, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (341, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (341, 22);
INSERT INTO colors VALUES (341, "BLACK");


INSERT INTO products VALUES (342, "wireless mouse Logitech G903 sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Logitech", "G903", "https://a.allegroimg.com/original/05d21f/9f800f3045bcb897dae1ee333fe4", 157.32, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (342, "Gaming", "USB (2.4 GHz Radio)", "optical");
INSERT INTO product_category VALUES (342, 22);
INSERT INTO colors VALUES (342, "BLACK");


INSERT INTO products VALUES (343, "Wired mouse Razer Deathadder Elite Chroma RGB sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Razer", "Razer Deathadder Elite Chroma RGB", "https://a.allegroimg.com/original/03812b/3a741cb44097af0a0d36df40d4e4", 161.01, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (343, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (343, 22);
INSERT INTO colors VALUES (343, "BLACK");


INSERT INTO products VALUES (344, "Wired mouse Razer V2", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Razer", "V2", "https://a.allegroimg.com/original/111d52/53a138b44302ab2f6cadb9275ad9", 182.51, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (344, "Gaming", "USB", null);
INSERT INTO product_category VALUES (344, 22);


INSERT INTO products VALUES (361, "Wired mouse Razer Basilisk V2 sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Razer", "Basilisk V2", "https://a.allegroimg.com/original/11f122/ea8b1c064190bd7877936b15c2c4", 159.52, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (361, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (361, 22);
INSERT INTO colors VALUES (361, "BLACK");


INSERT INTO products VALUES (362, "Wired mouse Razer MAMBA ELITE sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Razer", "MAMBA ELITE", "https://a.allegroimg.com/original/11f3b3/f487372e4c16a1e78d2496e2d8c1", 188.22, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (362, "Gaming", "USB", "optical");
INSERT INTO product_category VALUES (362, 22);
INSERT INTO colors VALUES (362, "BLACK");


INSERT INTO products VALUES (363, "wireless mouse Razer Naga Pro sensor optical", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero neque, finibus ac sodales a, elementum in tortor. Praesent in feugiat dolor, vitae porttitor nunc. Nam imperdiet, lectus vitae dignissim rhoncus, ex dui facilisis velit, vel congue mauris nisl ut lorem. Aenean nec finibus odio. Mauris et iaculis nunc, in tincidunt massa. In sed enim cursus, dapibus ante non, scelerisque ex. Suspendisse potenti. Sed vel velit ultricies, euismod massa nec, maximus felis. Suspendisse potenti. Sed in arcu pulvinar, tristique metus quis, maximus velit. Nunc sit amet felis in sapien dictum blandit. Suspendisse elementum mi eget interdum mollis. Proin lacus sapien, commodo ut mattis et, imperdiet vitae sapien. Mauris rhoncus metus sed lorem ultricies rhoncus.

Sed orci lorem, venenatis in lacus non, interdum facilisis augue. Praesent dapibus massa quis urna sodales, id suscipit velit tempus. Fusce ut dapibus ipsum. Ut varius semper nisl nec fringilla. Nunc hendrerit in purus et malesuada. Aenean ornare auctor ante sed faucibus. Ut pulvinar nunc id risus vulputate condimentum. Nullam ante orci, congue eu semper eget, vulputate et est.

Vestibulum nec congue nibh, eget vestibulum nisl. Nam sollicitudin nibh eros, nec dictum ipsum viverra nec. Cras imperdiet lectus dictum nisi malesuada facilisis. Fusce non nisi fermentum, congue odio at, semper ante. Donec volutpat felis mi, quis fringilla orci ullamcorper eu. Aliquam vitae fermentum risus. Integerr velit dolor, feugiat eu felis consequat, elementum convallis neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae", "Razer", "Naga Pro", "https://a.allegroimg.com/original/11deef/dd5108b64b1cb1b280e5cbe6cbb2", 160.88, 9999, NOW(), NOW());
INSERT INTO mouses VALUES (363, "Gaming", "USB (2.4 GHz Radio)", "optical");
INSERT INTO product_category VALUES (363, 22);
INSERT INTO colors VALUES (363, "BLACK");


