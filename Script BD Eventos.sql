DROP SCHEMA IF EXISTS `eventos` ;
CREATE SCHEMA IF NOT EXISTS `eventos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `eventos` ;

-- -----------------------------------------------------
-- Table `eventos`.`local`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `eventos`.`local` ;

CREATE TABLE IF NOT EXISTS `eventos`.`local` (
  `idLocal` INT NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idLocal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`evento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `eventos`.`evento` ;

CREATE TABLE IF NOT EXISTS `eventos`.`evento` (
  `idEvento` INT NOT NULL,
  `idLocal` INT NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `fechaInicio` DATETIME NOT NULL,
  `fechaFin` DATETIME NOT NULL,
  `capacidad` INT NOT NULL,
  `url` VARCHAR(250) NOT NULL,
  `emailContacto` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`idEvento`),
  CONSTRAINT `fk_evento_local`
    FOREIGN KEY (`idLocal`)
    REFERENCES `eventos`.`local` (`idLocal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_evento_local_idx` ON `eventos`.`evento` (`idLocal` ASC);

ALTER TABLE `eventos`.`evento` 
CHANGE COLUMN `idEvento` `idEvento` INT(11) NOT NULL AUTO_INCREMENT ;


-- -----------------------------------------------------
-- Data for table `eventos`.`local`
-- -----------------------------------------------------
START TRANSACTION;
USE `eventos`;
INSERT INTO `eventos`.`local` (`idLocal`, `nombre`) VALUES (1, 'Swissotel Lima');
INSERT INTO `eventos`.`local` (`idLocal`, `nombre`) VALUES (2, 'Centro de Convenciones Real Audiencia');
INSERT INTO `eventos`.`local` (`idLocal`, `nombre`) VALUES (3, 'Centro de Capacitación La Moneda');
INSERT INTO `eventos`.`local` (`idLocal`, `nombre`) VALUES (4, 'Centro de Convenciones Jckey');
INSERT INTO `eventos`.`local` (`idLocal`, `nombre`) VALUES (5, 'Hotel Sheraton');
INSERT INTO `eventos`.`local` (`idLocal`, `nombre`) VALUES (6, 'María Angola');

COMMIT;

