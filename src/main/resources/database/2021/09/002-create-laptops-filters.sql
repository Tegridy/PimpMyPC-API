--liquibase formatted sql
--changeset tegridy:1

INSERT INTO filters_types VALUES (
1, 1, "Laptops producers", "title"
);

INSERT INTO filters VALUES(
1, 1, "Acer", "acer"
);

INSERT INTO filters VALUES(
2, 1, "Dell", "dell"
);

INSERT INTO filters VALUES(
3, 1, "Lenovo", "lenovo"
);

INSERT INTO filters VALUES(
4, 1, "Alienware", "alienware"
);

INSERT INTO filters_types VALUES (
2, 1, "Screen size", "screenSize"
);

INSERT INTO filters VALUES (
5, 2, "15 inches", "15.0"
);

INSERT INTO filters VALUES (
6, 2, "16 inches", "16.0"
);

INSERT INTO filters VALUES (
7, 2, "17 inches" , "17.0"
);

INSERT INTO filters_types VALUES (
3, 1, "RAM memory", "ram"
);

INSERT INTO filters VALUES (
8, 3, "4GB" , "4"
);

INSERT INTO filters VALUES (
9, 3, "8GB" , "8"
);

INSERT INTO filters VALUES (
10, 3, "16GB" , "16"
);

INSERT INTO filters_types VALUES (
4, 1, "Monitor panel", "monitorPanelType"
);

INSERT INTO filters VALUES (
11, 4, "IPS" , "IPS"
);

INSERT INTO filters VALUES (
12, 4, "VA" , "VA"
);

INSERT INTO filters VALUES (
13, 4, "TN" , "TN"
);

------------------------------------------------------------------------

INSERT INTO filters_types VALUES (
6, 2, "Computer producer", "title"
);

INSERT INTO filters VALUES(
14, 6, "Asus", "asus"
);

INSERT INTO filters VALUES(
15, 6, "Dell", "dell"
);

INSERT INTO filters VALUES(
16, 6, "HP", "hp"
);

INSERT INTO filters_types VALUES (
7, 2, "RAM memory", "ram"
);

INSERT INTO filters VALUES (
17, 7, "4GB" , "4"
);

INSERT INTO filters VALUES (
18, 7, "8GB" , "8"
);

INSERT INTO filters VALUES (
19, 7, "16GB" , "16"
);

INSERT INTO filters_types VALUES (
8, 2, "Case", "computerCase"
);

INSERT INTO filters VALUES (
20, 8, "Mini Tower" , "Mini+Tower"
);

INSERT INTO filters VALUES (
21, 8, "Midi Tower" , "Midi+Tower"
);

INSERT INTO filters VALUES (
22, 8, "ITX, Nettop" , "ITX+Nettop"
);

INSERT INTO filters VALUES (
23, 8, "Micro Tower" , "Micro+Tower"
);

INSERT INTO filters VALUES (
24, 8, "Big Tower" , "Big+Tower"
);

INSERT INTO filters_types VALUES (
9, 2, "Processor", "processor"
);

INSERT INTO filters VALUES (
25, 9, "Intel" , "intel"
);

INSERT INTO filters VALUES (
26, 9, "AMD" , "amd"
);

INSERT INTO filters_types VALUES (
10, 2, "Hard disc", "hardDisc"
);

INSERT INTO filters VALUES (
27, 10, "HDD" , "hdd"
);

INSERT INTO filters VALUES (
28, 10, "SSD" , "ssd"
);








--INSERT INTO filters_types VALUES (
--5, 1, "Price", "price"
--);