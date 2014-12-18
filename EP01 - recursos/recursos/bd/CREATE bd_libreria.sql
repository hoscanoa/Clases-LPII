--
-- Create schema bd_libreria
--

CREATE DATABASE IF NOT EXISTS bd_libreria;
USE bd_libreria;

--
-- Definition of table `tb_libro`
--

DROP TABLE IF EXISTS `tb_libro`;
CREATE TABLE `tb_libro` (
  `idlibro` int NOT NULL auto_increment,
  `titulo` varchar(200) NOT NULL,
  `autor` varchar(200) NULL,
  `editor` varchar(200) NULL,
  `idioma` char(1) NOT NULL,
  `paginas` int NOT NULL,
  `isbn` varchar(14) NULL,
  `precio` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`idlibro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

