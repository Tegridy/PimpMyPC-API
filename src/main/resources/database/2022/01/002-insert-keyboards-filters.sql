--liquibase formatted sql
--changeset tegridy:1

INSERT INTO filters_types VALUES (
37, 23, "Keyboard producers", "title"
);

INSERT INTO filters VALUES(
126, 37, "Logitech", "logitech"
);

INSERT INTO filters VALUES(
127, 37, "Razer", "razer"
);