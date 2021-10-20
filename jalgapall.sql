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
    
    
    
    
    
    
    
    
    
   
    
    INSERT INTO `group`  VALUES ('P2020'), ('P2019'), ('T2020'), ('T2019');
INSERT INTO PlayerParent (player_id, parent_id) VALUES (1,1)
INSERT INTO players (firstName, lastName, group_id) VALUES
INSERT INTO parent (firstName, lastName, group_id) VALUES ('Homeri paps', 'Garner')
('Homer','Garner',2),
('Alex','Ayers',2),
('Elbert','Zamora',2),
('Isiah','Burgess',2),
('Robby','Nunez',2),
('Antwan','Stark',2),
('Damion','Fowler',2),
('Fidel','Bryant',2),
('Leopoldo','Travis',2),
('Brett','Peterson',2),
('Jeremiah','Cortez',2),
('Keneth','Mercado',2),
('Jarod','Sawyer',2),
('Antone','Carney',2),
('Jarred','Hanson',2),
('Alejandro','Sanchez',2),
('Millard','Jensen',2),
('Alden','Mays',2),
('Douglas','Mercado',2),
('Filiberto','Livingston',2),

('Lester','Ochoa',1),
('Philip','Mcpherson',1),
('Leonel','Acevedo',1),
('Hung','Dean',1),
('Clifford','Carson',1),
('Horace','Osborne',1),
('Rashad','Walton',1),
('Irvin','Martinez',1),
('Jarod','Mcclain',1),
('Brian','Mcknight',1),
('Abram','Henson',1),
('Donnell','Schultz',1),
('Hunter','Blanchard',1),
('Arnold','Dickson',1),
('Casey','Mcgee',1),
('Dominique','Graves',1),
('Duncan','Matthews',1),
('Erasmo','Grant',1),
('Darryl','Kemp',1),
('Giovanni','Cotton',1),

('Rosetta','Robbins',3),
('Maude','Bruce',3),
('Marisa','Guerrero',3),
('Juanita','Douglas',3),
('Ruth','Burgess',3),
('Eve','Duran',3),
('Maryellen','Wright',3),
('Natalie','Haley',3),
('Ruthie','Mcintyre',3),
('Tricia','Martin',3),
('Shari','Shaffer',3),
('Chris','Rogers',3),
('Harriet','Gilmore',3),
('Melody','Kane',3),
('Mari','Campos',3),
('Karina','Mccray',3),
('Melisa','Wall',3),

('Merle','Burke',4),
('Malinda','Wall',4),
('Leslie','Martinez',4),
('Liz','Ramsey',4),
('Sally','Valencia',4),
('Lupe','Ford',4),
('Petra','Porter',4),
('Angie','Hale',4),
('Petra','Macias',4),
('Chandra','Rogers',4),
('Lucy','Olsen',4),
('Guadalupe','Page',4),
('Katheryn','Wooten',4),
('Karina','Harding',4);
    
    
    
    
    
    INSERT INTO `group`(name) VALUES ('P2020'), ('P2019'), ('T2020'), ('T2019');
INSERT INTO parent (firstName, lastName, group_id) VALUES ('Homeri paps', 'Garner')
INSERT INTO PlayerParent (player_id, parent_id) VALUES (1,1)
INSERT INTO players (firstName, lastName, group_id) VALUES

('Homer','Garner',2),
('Alex','Ayers',2),
('Elbert','Zamora',2),
('Isiah','Burgess',2),
('Robby','Nunez',2),
('Antwan','Stark',2),
('Damion','Fowler',2),
('Fidel','Bryant',2),
('Leopoldo','Travis',2),
('Brett','Peterson',2),
('Jeremiah','Cortez',2),
('Keneth','Mercado',2),
('Jarod','Sawyer',2),
('Antone','Carney',2),
('Jarred','Hanson',2),
('Alejandro','Sanchez',2),
('Millard','Jensen',2),
('Alden','Mays',2),
('Douglas','Mercado',2),
('Filiberto','Livingston',2),

('Lester','Ochoa',1),
('Philip','Mcpherson',1),
('Leonel','Acevedo',1),
('Hung','Dean',1),
('Clifford','Carson',1),
('Horace','Osborne',1),
('Rashad','Walton',1),
('Irvin','Martinez',1),
('Jarod','Mcclain',1),
('Brian','Mcknight',1),
('Abram','Henson',1),
('Donnell','Schultz',1),
('Hunter','Blanchard',1),
('Arnold','Dickson',1),
('Casey','Mcgee',1),
('Dominique','Graves',1),
('Duncan','Matthews',1),
('Erasmo','Grant',1),
('Darryl','Kemp',1),
('Giovanni','Cotton',1),

('Rosetta','Robbins',3),
('Maude','Bruce',3),
('Marisa','Guerrero',3),
('Juanita','Douglas',3),
('Ruth','Burgess',3),
('Eve','Duran',3),
('Maryellen','Wright',3),
('Natalie','Haley',3),
('Ruthie','Mcintyre',3),
('Tricia','Martin',3),
('Shari','Shaffer',3),
('Chris','Rogers',3),
('Harriet','Gilmore',3),
('Melody','Kane',3),
('Mari','Campos',3),
('Karina','Mccray',3),
('Melisa','Wall',3),

('Merle','Burke',4),
('Malinda','Wall',4),
('Leslie','Martinez',4),
('Liz','Ramsey',4),
('Sally','Valencia',4),
('Lupe','Ford',4),
('Petra','Porter',4),
('Angie','Hale',4),
('Petra','Macias',4),
('Chandra','Rogers',4),
('Lucy','Olsen',4),
('Guadalupe','Page',4),
('Katheryn','Wooten',4),
('Karina','Harding',4);
    
    
    
    
    
    
    sql seadistamine
    
    
    
    
    SELECT firstname,  lastname, `groups`.name 
FROM `player`
LEFT JOIN `groups` ON player.group_id = `groups`.id
WHERE group_id = 4
