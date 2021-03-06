-- MySQL Script generated by MySQL Workbench
-- Thu Feb 20 12:01:10 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Les vainqueurs de la Ligue des Champions
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Les vainqueurs de la Ligue des Champions
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Les vainqueurs de la Ligue des Champions` DEFAULT CHARACTER SET utf8 ;
USE `Les vainqueurs de la Ligue des Champions` ;

-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`Clubs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`Clubs` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Surnom` VARCHAR(45) NULL,
  `Fondation` DATETIME NULL,
  `Couleur` VARCHAR(45) NULL,
  `Pays` VARCHAR(45) NULL,
  FULLTEXT INDEX () INVISIBLE,
  FULLTEXT INDEX () INVISIBLE,
  FULLTEXT INDEX () INVISIBLE,
  INDEX () INVISIBLE,
  INDEX () VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`Ligue des Champions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`Ligue des Champions` (
  `id` INT NOT NULL,
  `Edition` DATETIME NULL,
  `Match finale` VARCHAR(45) NULL,
  `Score` VARCHAR(45) NULL,
  `Lieu de la finale` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`qui ont gagné`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`qui ont gagné` (
  `Clubs_id` INT NOT NULL,
  `Ligue des Champions_id` INT NOT NULL,
  PRIMARY KEY (`Clubs_id`, `Ligue des Champions_id`),
  INDEX `fk_Clubs_has_Ligue des Champions_Ligue des Champions1_idx` (`Ligue des Champions_id` ASC) VISIBLE,
  INDEX `fk_Clubs_has_Ligue des Champions_Clubs_idx` (`Clubs_id` ASC) VISIBLE,
  CONSTRAINT `fk_Clubs_has_Ligue des Champions_Clubs`
    FOREIGN KEY (`Clubs_id`)
    REFERENCES `Les vainqueurs de la Ligue des Champions`.`Clubs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Clubs_has_Ligue des Champions_Ligue des Champions1`
    FOREIGN KEY (`Ligue des Champions_id`)
    REFERENCES `Les vainqueurs de la Ligue des Champions`.`Ligue des Champions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
