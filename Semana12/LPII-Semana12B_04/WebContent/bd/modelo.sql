SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`carrera` (
  `idcarrera` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idcarrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alumno` (
  `idalumno` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `idcarrera` INT NOT NULL,
  PRIMARY KEY (`idalumno`),
  INDEX `fk_alumno_carrera_idx` (`idcarrera` ASC),
  CONSTRAINT `fk_alumno_carrera`
    FOREIGN KEY (`idcarrera`)
    REFERENCES `mydb`.`carrera` (`idcarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`carrera` (`idcarrera`, `nombre`) VALUES ('1', 'Computacion e Informatica');
INSERT INTO `mydb`.`carrera` (`idcarrera`, `nombre`) VALUES ('2', 'Redes');
INSERT INTO `mydb`.`carrera` (`idcarrera`, `nombre`) VALUES ('3', 'Administracion y Negocios');
INSERT INTO `mydb`.`carrera` (`idcarrera`, `nombre`) VALUES ('4', 'Diseño Grafico');


INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('1', 'Miguel', 'Carpio Salazar', '1');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('2', 'Samantha', 'Flores Gomez', '2');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('3', 'Javier', 'Ugarte Torres', '2');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('4', 'Victoria', 'Martinez Yañez', '1');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('5', 'Stephanie', 'Navarro Duarte', '2');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('6', 'Guillermo', 'Vivanco Flores', '4');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('7', 'Alex', 'Gomez Sarmiento', '4');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('8', 'Fernando', 'Gutierrez Vasquez', '3');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('9', 'Paola', 'Jimenez Castro', '1');
INSERT INTO `mydb`.`alumno` (`idalumno`, `nombre`, `apellido`, `idcarrera`) VALUES ('10', 'Saul', 'Zapata Reyes', '1');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
