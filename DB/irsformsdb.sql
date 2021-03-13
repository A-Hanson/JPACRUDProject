-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema irsformdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `irsformdb` ;

-- -----------------------------------------------------
-- Schema irsformdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `irsformdb` DEFAULT CHARACTER SET utf8 ;
USE `irsformdb` ;

-- -----------------------------------------------------
-- Table `form`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `form` ;

CREATE TABLE IF NOT EXISTS `form` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `form_number` VARCHAR(45) NOT NULL,
  `form_title` VARCHAR(100) NULL,
  `year` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS formuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'formuser'@'localhost' IDENTIFIED BY 'formuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'formuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `form`
-- -----------------------------------------------------
START TRANSACTION;
USE `irsformdb`;
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (1, 'Form Test-1', 'Test Title (English Version)', 2017);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (2, 'Publ 1', 'Your Rights As A Taxpayer', 2017);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (3, 'Publ 1', 'Your Rights As A Taxpayer', 2014);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (4, 'Publ 15-B', 'Employer\'s Tax Guide to Fringe Benefits', 2021);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (5, 'Publ 15-B', 'Employer\'s Tax Guide to Fringe Benefits', 2020);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (6, 'Publ 54', 'Tax Guide for U.S. Citizens and Resident Aliens Abroad', 2020);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (7, 'Publ 54', 'Tax Guide for U.S. Citizens and Resident Aliens Abroad', 2019);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (8, 'Publ 502', 'Medical and Dental Expenses', 2020);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (9, 'Publ 502', 'Medical and Dental Expenses', 2019);
INSERT INTO `form` (`id`, `form_number`, `form_title`, `year`) VALUES (10, 'Publ 502', 'Medical and Dental Expenses', 2018);

COMMIT;

