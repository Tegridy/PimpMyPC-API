--liquibase formatted sql
--changeset tegridy:1


-- Laptops filters


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
2, 1, "Screen size", "displaySize"
);

INSERT INTO filters VALUES (
5, 2, "15 inches", "15"
);

INSERT INTO filters VALUES (
6, 2, "16 inches", "16"
);

INSERT INTO filters VALUES (
7, 2, "17 inches" , "17"
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
-- Computer filters --
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


------------------------------------------------------------------------
-- Smartphones filters --
------------------------------------------------------------------------


INSERT INTO filters_types VALUES (
11, 3, "Smartphone producer", "title"
);

INSERT INTO filters VALUES(
29, 11, "Apple", "apple"
);

INSERT INTO filters VALUES(
30, 11, "Samsung", "samsung"
);

INSERT INTO filters VALUES(
31, 11, "Xiaomi", "xiaomi"
);

INSERT INTO filters_types VALUES (
12, 3, "RAM memory", "ram"
);

INSERT INTO filters VALUES (
32, 12, "4 GB" , "4"
);

INSERT INTO filters VALUES (
33, 12, "6 GB" , "6"
);

INSERT INTO filters VALUES (
34, 12, "8 GB" , "8"
);

INSERT INTO filters VALUES (
35, 12, "12 GB" , "12"
);

INSERT INTO filters_types VALUES (
13, 3, "Memory", "memory"
);

INSERT INTO filters VALUES (
36, 13, "64 GB" , "64"
);

INSERT INTO filters VALUES (
37, 13, "128 GB" , "128"
);

INSERT INTO filters VALUES (
38, 13, "256 GB" , "256"
);

INSERT INTO filters_types VALUES (
14, 3, "Operating system", "operatingSystem"
);

INSERT INTO filters VALUES (
39, 14, "iOS" , "ios"
);

INSERT INTO filters VALUES (
40, 14, "Android" , "android"
);

INSERT INTO filters_types VALUES (
15, 3, "Processor", "processor"
);

INSERT INTO filters VALUES (
41, 15, "Qualcomm" , "qualcomm"
);

INSERT INTO filters VALUES (
42, 15, "Apple Bionic" , "apple"
);

INSERT INTO filters VALUES (
43, 15, "MediaTek" , "mediatek"
);

INSERT INTO filters VALUES (
44, 15, "Samsung Exynos" , "exynos"
);


------------------------------------------------------------------------
-- Processors filters --
------------------------------------------------------------------------


INSERT INTO filters_types VALUES (
16, 13, "Processor producer", "title"
);

INSERT INTO filters VALUES(
45, 16, "Intel", "intel"
);

INSERT INTO filters VALUES(
46, 16, "AMD", "amd"
);

INSERT INTO filters_types VALUES (
19, 13, "Socket", "motherboardSocket"
);

INSERT INTO filters VALUES (
47, 19, "AM4" , "AM4"
);

INSERT INTO filters VALUES (
48, 19, "LGA1200" , "LGA1200"
);

INSERT INTO filters VALUES (
49, 19, "TR4" , "TR4"
);

INSERT INTO filters_types VALUES (
17, 13, "Number of cores", "cores"
);

INSERT INTO filters VALUES (
50, 17, "2 cores" , "2"
);

INSERT INTO filters VALUES (
51, 17, "4 cores" , "4"
);

INSERT INTO filters VALUES (
52, 17, "8 cores" , "8"
);

INSERT INTO filters VALUES (
53, 17, "10 cores" , "10"
);

INSERT INTO filters VALUES (
54, 17, "12 cores" , "12"
);

INSERT INTO filters VALUES (
55, 17, "16 cores" , "16"
);

INSERT INTO filters VALUES (
56, 17, "24 cores" , "24"
);


------------------------------------------------------------------------
-- Ram filters --
------------------------------------------------------------------------


INSERT INTO filters_types VALUES (
18, 14, "Ram producer", "title");

INSERT INTO filters VALUES (
57, 18, "Goodram" , "goodram"
);

INSERT INTO filters VALUES (
58, 18, "Crucial" , "crucial"
);

INSERT INTO filters VALUES (
59, 18, "Kingston" , "kingstone"
);

INSERT INTO filters VALUES (
60, 18, "G.SKILL" , "g.skill"
);

INSERT INTO filters VALUES (
61, 18, "HyperX" , "hyperx"
);

INSERT INTO filters_types VALUES (
20, 14, "Module size", "moduleSize");

INSERT INTO filters VALUES (
62, 20, "4" , "4"
);

INSERT INTO filters VALUES (
63, 20, "8" , "8"
);

INSERT INTO filters VALUES (
64, 20, "16" , "16"
);

INSERT INTO filters VALUES (
65, 20, "32" , "32"
);

INSERT INTO filters_types VALUES (
21, 14, "Cas timing", "casTiming");

INSERT INTO filters VALUES (
66, 21, "15" , "15"
);

INSERT INTO filters VALUES (
67, 21, "16" , "16"
);

INSERT INTO filters VALUES (
68, 21, "17" , "17"
);

INSERT INTO filters VALUES (
69, 21, "18" , "18"
);

INSERT INTO filters VALUES (
70, 21, "19" , "19"
);


------------------------------------------------------------------------
-- Graphic cards filters --
------------------------------------------------------------------------

INSERT INTO filters_types VALUES (
22, 15, "Graphic card producer", "title");

INSERT INTO filters VALUES (
71, 22, "Nvidia" , "nvidia"
);

INSERT INTO filters VALUES (
72, 22, "AMD" , "amd"
);

INSERT INTO filters_types VALUES (
23, 15, "Virtual memory", "vRam");

INSERT INTO filters VALUES (
73, 23, "1 GB" , "1"
);

INSERT INTO filters VALUES (
74, 23, "4 GB" , "4"
);

INSERT INTO filters VALUES (
75, 23, "6 GB" , "6"
);

INSERT INTO filters VALUES (
76, 23, "8 GB" , "8"
);

INSERT INTO filters VALUES (
77, 23, "11 GB" , "11"
);

INSERT INTO filters VALUES (
78, 23, "12 GB" , "12"
);

INSERT INTO filters VALUES (
79, 23, "16 GB" , "16"
);

INSERT INTO filters VALUES (
80, 23, "24 GB" , "24"
);


------------------------------------------------------------------------
-- Motherboards filters --
------------------------------------------------------------------------

INSERT INTO filters_types VALUES (
24, 16, "Motherboard producer", "title");

INSERT INTO filters VALUES (
81, 24, "Asus" , "asus"
);

INSERT INTO filters VALUES (
82, 24, "Msi" , "msi"
);

INSERT INTO filters VALUES (
83, 24, "Gigabyte" , "gigabyte"
);

INSERT INTO filters_types VALUES (
25, 16, "Format", "motherboardFormat");

INSERT INTO filters VALUES (
84, 24, "ATX" , "ATX"
);

INSERT INTO filters VALUES (
85, 24, "Extended ATX" , "Extended_ATX"
);

INSERT INTO filters VALUES (
86, 24, "Micro ATX" , "Micro_ATX"
);

INSERT INTO filters VALUES (
87, 24, "Mini ITX" , "Mini_ITX"
);

INSERT INTO filters_types VALUES (
26, 16, "Socket", "motherboardSocket");

INSERT INTO filters VALUES (
88, 26, "AM4" , "AM4"
);

INSERT INTO filters VALUES (
89, 26, "LGA1151" , "LGA1151"
);

INSERT INTO filters VALUES (
90, 26, "LGA1200" , "LGA1200"
);

INSERT INTO filters VALUES (
91, 26, "LGA2066" , "LGA2066"
);


------------------------------------------------------------------------
-- Hard drives filters --
------------------------------------------------------------------------

INSERT INTO filters_types VALUES (
27, 17, "Hard drive producer", "title");

INSERT INTO filters VALUES (
92, 27, "Origin" , "origin"
);

INSERT INTO filters VALUES (
93, 27, "Western Digital" , "western digital"
);

INSERT INTO filters VALUES (
94, 27, "Crucial" , "crucial"
);

INSERT INTO filters VALUES (
95, 27, "Samsung" , "samsung"
);

INSERT INTO filters_types VALUES (
28, 17, "Type", "storageType");

INSERT INTO filters VALUES (
96, 28, "HDD" , "HDD"
);

INSERT INTO filters VALUES (
97, 28, "SSD" , "SSD"
);

------------------------------------------------------------------------
-- Power supplies filters --
------------------------------------------------------------------------

INSERT INTO filters_types VALUES (
29, 20, "Power supply producer", "title");

INSERT INTO filters VALUES (
98, 29, "Corsair" , "corsair"
);

INSERT INTO filters VALUES (
99, 29, "SilentiumPC" , "silentium"
);

INSERT INTO filters VALUES (
100, 29, "Bequiet!" , "be quiet"
);

INSERT INTO filters_types VALUES (
30, 20, "Certificate", "certificate");

INSERT INTO filters VALUES (
101, 30, "80 PLUS" , "80 plus"
);

INSERT INTO filters VALUES (
102, 30, "80 PLUS Bronze" , "bronze"
);

INSERT INTO filters VALUES (
103, 30, "80 PLUS Platinum" , "platinum"
);

INSERT INTO filters VALUES (
104, 30, "80 PLUS Titanium" , "titanium"
);


------------------------------------------------------------------------
-- Cases filters --
------------------------------------------------------------------------

INSERT INTO filters_types VALUES (
31, 21, "Case producer", "title");

INSERT INTO filters VALUES (
105, 31, "Corsair" , "corsair"
);

INSERT INTO filters VALUES (
106, 31, "SilentiumPC" , "silentium"
);

INSERT INTO filters VALUES (
107, 31, "Bequiet!" , "be quiet"
);

------------------------------------------------------------------------
-- Monitor filters --
------------------------------------------------------------------------

INSERT INTO filters_types VALUES (
32, 24, "Monitor producer", "title");

INSERT INTO filters VALUES (
108, 32, "Asus" , "asus"
);

INSERT INTO filters VALUES (
109, 32, "Acer" , "acer"
);

INSERT INTO filters VALUES (
110, 32, "Iiyama" , "iiyama"
);

INSERT INTO filters_types VALUES (
33, 24, "Resolution", "resolution");

INSERT INTO filters VALUES (
111, 33, "1920 x 1080 px" , "1920 x 1080"
);

INSERT INTO filters VALUES (
112, 33, "2560 x 1440 px" , "2560 x 1440"
);

INSERT INTO filters_types VALUES (
34, 24, "Panel type", "panelType");

INSERT INTO filters VALUES (
113, 34, "IPS" , "IPS"
);

INSERT INTO filters VALUES (
114, 34, "TN" , "TN"
);

INSERT INTO filters VALUES (
115, 34, "VA" , "VA"
);

INSERT INTO filters_types VALUES (
35, 24, "Refresh rate", "refreshRate");

INSERT INTO filters VALUES (
116, 35, "60 Hz" , "60"
);

INSERT INTO filters VALUES (
117, 35, "75 Hz" , "75"
);

INSERT INTO filters VALUES (
118, 35, "75 Hz" , "100"
);

INSERT INTO filters VALUES (
119, 35, "144 Hz" , "144"
);

INSERT INTO filters VALUES (
120, 35, "165 Hz" , "165"
);

INSERT INTO filters VALUES (
121, 35, "170 Hz" , "170"
);

INSERT INTO filters VALUES (
122, 35, "240 Hz" , "240"
);