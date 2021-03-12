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
  `id` INT NOT NULL,
  `form_number` VARCHAR(20) NOT NULL,
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
INSERT INTO `form` (`id`, `form_number`) VALUES (1, 'Form Test-1');

COMMIT;

