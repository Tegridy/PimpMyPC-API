--liquibase formatted sql
--changeset tegridy:1

--ALTER TABLE users ADD CONSTRAINT fk_users_orders FOREIGN KEY (id) REFERENCES orders(user_id);