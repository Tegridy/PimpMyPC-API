--liquibase formatted sql
--changeset tegridy:1

CREATE TABLE `user_roles` (
	`userId` BIGINT NOT NULL,
    `roles` INT DEFAULT NULL,
     CONSTRAINT `fk_user_roles`
    FOREIGN KEY (`userId`)
    REFERENCES `users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);