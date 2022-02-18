--liquibase formatted sql
--changeset tegridy:1

INSERT INTO filters_types VALUES (
36, 22, "Mouse producers", "title"
);

INSERT INTO filters VALUES(
123, 36, "A4Tech", "a4tech"
);

INSERT INTO filters VALUES(
124, 36, "Razer", "razer"
);

INSERT INTO filters VALUES(
125, 36, "Logitech", "logitech"
);
