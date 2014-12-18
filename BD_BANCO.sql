SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema BD_BANCO
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `BD_BANCO` ;
CREATE SCHEMA IF NOT EXISTS `BD_BANCO` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `BD_BANCO` ;

-- -----------------------------------------------------
-- Table `BD_BANCO`.`prestamo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_BANCO`.`prestamo` ;

CREATE TABLE IF NOT EXISTS `BD_BANCO`.`prestamo` (
  `idprestamo` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `monto` DOUBLE NOT NULL,
  `cleinte` VARCHAR(45) NOT NULL,
  `fechaPrestamo` DATE NOT NULL,
  `fechaPago` DATE NOT NULL,
  PRIMARY KEY (`idprestamo`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
