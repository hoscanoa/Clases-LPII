SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema jugueteria
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `jugueteria` ;
CREATE SCHEMA IF NOT EXISTS `jugueteria` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `jugueteria` ;

-- -----------------------------------------------------
-- Table `jugueteria`.`tipo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jugueteria`.`tipo` ;

CREATE TABLE IF NOT EXISTS `jugueteria`.`tipo` (
  `idtipo` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo`),
  UNIQUE INDEX `descripcion_UNIQUE` (`descripcion` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jugueteria`.`marca`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jugueteria`.`marca` ;

CREATE TABLE IF NOT EXISTS `jugueteria`.`marca` (
  `idmarca` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmarca`),
  UNIQUE INDEX `descripcion_UNIQUE` (`descripcion` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jugueteria`.`juguete`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jugueteria`.`juguete` ;

CREATE TABLE IF NOT EXISTS `jugueteria`.`juguete` (
  `idjuguete` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `idtipo` INT NOT NULL,
  `idmarca` INT NOT NULL,
  `precio` DECIMAL(7,2) NOT NULL,
  PRIMARY KEY (`idjuguete`),
  INDEX `fk_juguete_tipo_idx` (`idtipo` ASC),
  INDEX `fk_juguete_marca1_idx` (`idmarca` ASC),
  CONSTRAINT `fk_juguete_tipo`
    FOREIGN KEY (`idtipo`)
    REFERENCES `jugueteria`.`tipo` (`idtipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_juguete_marca1`
    FOREIGN KEY (`idmarca`)
    REFERENCES `jugueteria`.`marca` (`idmarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
