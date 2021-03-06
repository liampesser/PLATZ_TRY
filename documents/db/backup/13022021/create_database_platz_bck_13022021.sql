-- MySQL Script generated by MySQL Workbench
-- Sat Feb 13 19:03:11 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema platz
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `platz`;

-- -----------------------------------------------------
-- Schema platz
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `platz` DEFAULT CHARACTER SET utf8 ;
USE `platz` ;

-- -----------------------------------------------------
-- Table `platz`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platz`.`authors` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pseudo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `platz`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platz`.`categories` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `sub_category` VARCHAR(45) NULL,
  `picto` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `platz`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platz`.`posts` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `size` INT NULL,
  `resume` VARCHAR(255) NULL,
  `content` TEXT NULL,
  `image` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `download` BLOB NULL,
  `author_id` INT UNSIGNED NOT NULL,
  `categorie_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_posts_authors1_idx` (`author_id` ASC),
  INDEX `fk_posts_categories1_idx` (`categorie_id` ASC),
  CONSTRAINT `fk_posts_authors1`
    FOREIGN KEY (`author_id`)
    REFERENCES `platz`.`authors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_posts_categories1`
    FOREIGN KEY (`categorie_id`)
    REFERENCES `platz`.`categories` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `platz`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `platz`.`comments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pseudo` VARCHAR(45) NOT NULL,
  `content` VARCHAR(255) NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `download` BLOB NULL,
  `post_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comments_posts_idx` (`post_id` ASC),
  CONSTRAINT `fk_comments_posts`
    FOREIGN KEY (`post_id`)
    REFERENCES `platz`.`posts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- INSERTION DES DONNEES
-- -----------------------------------------------------
INSERT INTO authors (id,pseudo)
VALUES
(1,"Graham"),
(2,"Thor"),
(3,"Petra"),
(4,"Jayme"),
(5,"Kiara"),
(6,"Thor"),
(7,"Zena"),
(8,"Gareth"),
(9,"Julian"),
(10,"Lane");


INSERT INTO categories (id,name,sub_category,picto,created_at,updated_at)
VALUES
(1,"Photo","icon-photo.svg","Photo macro","2021-04-04 23:19:47","2020-12-22 14:54:48"),
(2,"Font","icon-font.svg","Free font","2021-07-07 04:43:43","2020-08-19 21:18:51"),
(3,"Theme","icon-theme.svg","Wordpress theme","2021-09-14 00:00:10","2020-05-12 18:42:48"),
(4,"Theme","icon-theme.svg","Wordpress theme","2020-03-28 10:26:00","2020-04-27 00:26:15"),
(5,"Photoshop","icon-psd.svg","PSD Goodies","2020-10-19 14:08:19","2021-03-03 04:00:58"),
(6,"Illustrator","icon-ai.svg","PSD icons","2020-09-21 01:45:18","2021-11-03 17:50:25"),
(7,"Font","icon-font.svg","Free font","2021-12-28 12:53:46","2020-02-14 16:36:51"),
(8,"Photo","icon-photo.svg","Photo portrait","2020-11-19 23:40:04","2021-02-02 21:15:28"),
(9,"Illustrator","icon-ai.svg","Illustrator Freebies","2020-04-29 18:37:09","2020-08-11 09:20:51"),
(10,"Photoshop","icon-psd.svg","PSD mockup","2022-01-14 21:27:52","2021-07-16 07:54:06");


INSERT INTO posts (id,title,size,resume,content,image,created_at,updated_at,download,author_id,categorie_id)
VALUES
(1,"Donec tempor, est ac",23,"Cum sociis natoque","Aliquam erat volestas, urna justo f.eellentesque","pathImage","2020-03-26 14:57:26","2021-04-17 23:13:36","malesuada malesuada. Integer id magna et",1,1),
(2,"sit ame,fyntyntrnt,",25,"eleifendzadzadzadzd","tortor. IntePellenfames ac","pathImage","2020-03-25 00:16:46","2021-11-02 14:25:20","tincidunt. Donec vitae erat vel pede",1,1),
(3,"volutpat ottpiscing",21,"luctus sit as est,","eu nulla at sem molestibero est, congue a, aliquet vel,","pathImage","2022-02-13 17:34:28","2022-01-06 23:23:21","neque non quam. Pellentesque habitant morbi",1,1),
(4,"Nuncheheee pulvinar",35,"dictum eleittpurus","dolor elit, pelibendum.m sodales purus, in molestie","pathImage","2021-07-30 12:59:40","2020-12-21 02:16:25","torquent per conubia nostra, per inceptos hymenaeos.",1,1),
(5,"MorbiMorbiMorbiMorbi",45,"lobortis quam a .","eget metus elerisque sed, sapien. Nunc pulvinar","pathImage","2020-06-02 04:33:15","2020-12-17 05:26:49","egestas, urna justo faucibus lectus, a sollicitudin",1,1),
(6,"elementum purus",15,"fermentum metus. Aenean","vulputate dui, nois a nunc. In at","pathImage","2021-06-25 08:35:50","2021-07-05 14:04:43","at pede. Cras vulputate",1,1),
(7,"Nullam feugiat",32,"metus urna convallis erat,e","molestuet veiquam adipiscin mmy ut,","pathImage","2020-05-10 14:19:33","2022-01-13 21:43:04","mauris blandit mattis. Cras eget",1,1),
(8,"aptent taciti",29,"eu sem. PrDonecstivrsevque","sed sem egbh. Ps. Quisque","pathImage","2020-09-08 22:10:25","2020-09-02 18:00:05","interdum. Nunc sollicitudin commodo ipsum. Suspendisse non",1,1),
(9,"est, congue",35,"semper erat, in coue et nunc.","sempens ornare.","pathImage","2021-09-19 05:14:40","2021-09-23 12:28:16","Proin vel nisl.",1,1),
(10,"ligula. Nullam",23,"odio fr zv, aucbstsbtstor","iaculis quis, pede.","pathImage","2021-08-03 05:07:24","2021-05-10 08:33:58","viverra. Donec tempus, lorem",1,1);


INSERT INTO comments (id,pseudo,content,created_at,updated_at,post_id)
VALUES
(1,"Garth","egestas lacinia. Sed congue, elit","2022-02-02 15:17:24","2020-02-28 02:26:45",3),
(2,"Mohammad","semper rutrum. Fusce dolor","2020-04-24 22:58:41","2020-06-10 19:01:42",9),
(3,"Vladimir","a ultricies","2021-08-15 14:45:09","2021-02-03 17:51:55",1),
(4,"Wylie","urna suscipit nonummy. Fusce","2021-09-07 19:10:04","2020-08-29 07:50:48",10),
(5,"Rajah","rutrum","2021-03-04 14:19:03","2020-05-12 21:04:08",6),
(6,"Alana","blandit","2021-09-03 03:49:58","2020-09-13 16:43:43",3),
(7,"Vernon","nisi. Aenean eget metus. In","2021-06-02 05:03:58","2021-02-18 03:38:56",8),
(8,"Ronan","Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus","2020-06-30 08:45:07","2021-06-02 05:15:35",3),
(9,"Alec","luctus ut, pellentesque eget, dictum","2020-06-15 17:17:48","2020-11-11 03:02:41",5),
(10,"Emma","velit dui, semper et, lacinia vitae, sodales","2020-06-15 04:28:38","2021-05-15 04:08:16",3);
