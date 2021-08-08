--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE `users_roles` (
	`users_id` BIGINT NOT NULL,
    `roles` INT DEFAULT NULL,
     CONSTRAINT `fk_users_roles`
    FOREIGN KEY (`users_id`)
    REFERENCES `users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

--liquibase formatted sql
--changeset tegridy:2

-- Grant test user admin
INSERT INTO users_roles VALUES ((SELECT id FROM users WHERE username = 'test'), 2);
