CREATE TABLE `Attendance`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `player_id` INT UNSIGNED NOT NULL,
    `training_id` INT UNSIGNED NOT NULL
);

CREATE TABLE `player`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `number` SMALLINT NOT NULL,
    `personal_code` VARCHAR(255) NOT NULL,
    `group_id` INT UNSIGNED NOT NULL
);

CREATE TABLE `groups`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` INT NOT NULL
);

CREATE TABLE `Parent`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL
);

CREATE TABLE `Contact`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `parent_id` INT UNSIGNED NOT NULL,
    `contact_type_id` INT UNSIGNED NOT NULL,
    `value` INT NOT NULL
);

CREATE TABLE `ContactType`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL
);

CREATE TABLE `Payment`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `player_id` INT UNSIGNED NOT NULL,
    `amount` DECIMAL(8, 2) NOT NULL,
    `date` DATETIME NOT NULL
);

CREATE TABLE `Training`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `date` DATETIME NOT NULL,
    `description` TEXT NOT NULL
);

CREATE TABLE `Test`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `player_id` INT UNSIGNED NOT NULL,
    `score` INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `date` DATETIME NOT NULL,
    `desc` TEXT NOT NULL
);

CREATE TABLE `PlayerParent`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `player_id` INT UNSIGNED NOT NULL,
    `parent_id` INT UNSIGNED NOT NULL
);

CREATE TABLE `PlayerDetail`(
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `pikkus` INT NOT NULL,
    `player_id` INT UNSIGNED NOT NULL
);

ALTER TABLE
    `PlayerDetail` ADD CONSTRAINT `playerdetail_player_id_foreign` FOREIGN KEY(`player_id`) REFERENCES `player`(`id`);
ALTER TABLE
    `player` ADD CONSTRAINT `player_group_id_foreign` FOREIGN KEY(`group_id`) REFERENCES `groups`(`id`);
ALTER TABLE
    `Attendance` ADD CONSTRAINT `attendance_player_id_foreign` FOREIGN KEY(`player_id`) REFERENCES `player`(`id`);
ALTER TABLE
    `Contact` ADD CONSTRAINT `contact_parent_id_foreign` FOREIGN KEY(`parent_id`) REFERENCES `Parent`(`id`);
ALTER TABLE
    `Contact` ADD CONSTRAINT `contact_contact_type_id_foreign` FOREIGN KEY(`contact_type_id`) REFERENCES `ContactType`(`id`);
ALTER TABLE
    `Attendance` ADD CONSTRAINT `attendance_training_id_foreign` FOREIGN KEY(`training_id`) REFERENCES `Training`(`id`);
ALTER TABLE
    `Payment` ADD CONSTRAINT `payment_player_id_foreign` FOREIGN KEY(`player_id`) REFERENCES `player`(`id`);
ALTER TABLE
    `Test` ADD CONSTRAINT `test_player_id_foreign` FOREIGN KEY(`player_id`) REFERENCES `player`(`id`);
ALTER TABLE
    `PlayerParent` ADD CONSTRAINT `playerparent_player_id_foreign` FOREIGN KEY(`player_id`) REFERENCES `player`(`id`);
ALTER TABLE
    `PlayerParent` ADD CONSTRAINT `playerparent_parent_id_foreign` FOREIGN KEY(`parent_id`) REFERENCES `Parent`(`id`);