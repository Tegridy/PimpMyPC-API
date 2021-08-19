--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE `users_roles` (
	`users_id` BIGINT NOT NULL,
    `roles` INT DEFAULT NULL,
     CONSTRAINT `fk_users_roles`
    FOREIGN KEY (`users_id`)
    REFERENCES `users` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);