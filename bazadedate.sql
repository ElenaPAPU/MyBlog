CREATE TABLE `myblog`.`users` (`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT , `email` VARCHAR(200) NOT NULL , `nume` VARCHAR(100) NOT NULL , `prenume` VARCHAR(100) NOT NULL , `parola` VARCHAR(300) NOT NULL , `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`), UNIQUE `email` (`email`)) ENGINE = InnoDB;
CREATE TABLE `myblog`.`posts` (`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT , `titlu` VARCHAR(100) NOT NULL , `continut` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , `poza` VARCHAR(80) NULL , `user_id` INT(10) UNSIGNED NOT NULL , `categorie_id` INT(10) UNSIGNED NOT NULL , `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`), INDEX (`user_id`), INDEX (`categorie_id`)) ENGINE = InnoDB;
CREATE TABLE `myblog`.`categorii` (`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT , `nume` VARCHAR(80) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
CREATE TABLE `myblog`.`comments` (`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT , `text` TEXT NOT NULL , `post_id` INT(10) UNSIGNED NOT NULL , `user_id` INT(10) UNSIGNED NOT NULL , PRIMARY KEY (`id`), INDEX (`post_id`), INDEX (`user_id`)) ENGINE = InnoDB;
CREATE TABLE `myblog`.`contact` (`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT , `nume` VARCHAR(100) NOT NULL , `prenume` VARCHAR(100) NOT NULL , `email` VARCHAR(200) NOT NULL , `mesaj` TEXT NOT NULL , `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`)) ENGINE = InnoDB;
INSERT INTO `categorii` (`id`, `nume`) VALUES
(1, 'General'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'JavaScript'),
(5, 'Functions'),
(6, 'Variables'),
(7, 'Forms');
INSERT INTO `users` (`id`, `email`, `nume`, `prenume`, `parola`, `dataadaugare`) VALUES
(8, 'demo@yahoo.com', 'Demo', 'Ion', '$2a$10$ZBAkb.Z2jBTFopxRYFkbp.LeXALQmguACW28lp8CqhbjhcOhC1kj6', '2023-06-19 18:29:07'),
(13, 'demo@demo.com', 'adiaconitei', 'adrian', '$2a$10$Va.KUDITAnEo0i.k.hrfXO9PpvLb8WQLBQPUkzzpzv.c/912.yA6y', '2024-06-18 08:21:08');