--liquibase formatted sql
--changeset tegridy:1

INSERT INTO users VALUES (0, 'test', 'test name', 'test last name', '000-000-000', '$2a$15$zq.wRPr60myNbo7kZtvizum7DBa7Zr3r/wJbHwVtlDqTfh4BgjYG6', 'test@test.com', NOW(), NOW())
