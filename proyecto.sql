/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.41 : Database - proyecto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyecto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proyecto`;

/*Table structure for table `asignadas` */

DROP TABLE IF EXISTS `asignadas`;

CREATE TABLE `asignadas` (
  `idasigna` int(11) NOT NULL AUTO_INCREMENT,
  `idmaestro` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL,
  PRIMARY KEY (`idasigna`),
  KEY `idmateria` (`idmateria`),
  KEY `idmaestro` (`idmaestro`),
  CONSTRAINT `asignadas_ibfk_1` FOREIGN KEY (`idmateria`) REFERENCES `materias` (`idmateria`),
  CONSTRAINT `asignadas_ibfk_2` FOREIGN KEY (`idmaestro`) REFERENCES `personascontrol` (`IdPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `asignadas` */

insert  into `asignadas`(`idasigna`,`idmaestro`,`idmateria`) values (1,1,7),(4,1,1),(5,1,6),(6,10,5);

/*Table structure for table `asignagrupos` */

DROP TABLE IF EXISTS `asignagrupos`;

CREATE TABLE `asignagrupos` (
  `idgrupos` int(11) NOT NULL AUTO_INCREMENT,
  `idalumno` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idgrupos`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `asignagrupos` */

insert  into `asignagrupos`(`idgrupos`,`idalumno`,`idgrupo`) values (5,6,5),(9,5,4);

/*Table structure for table `grupos` */

DROP TABLE IF EXISTS `grupos`;

CREATE TABLE `grupos` (
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `orden` varchar(100) DEFAULT NULL,
  `estatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `grupos` */

insert  into `grupos`(`idgrupo`,`nombre`,`avatar`,`orden`,`estatus`) values (1,'primero','ejemplo','1','1'),(2,'segundo','ejemplo','1','1'),(3,'tercero','ejemplo','1','1'),(4,'cuarto','ejemplo','1','1'),(5,'quinto','ejemplo','1','1');

/*Table structure for table `materias` */

DROP TABLE IF EXISTS `materias`;

CREATE TABLE `materias` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `orden` varchar(100) DEFAULT NULL,
  `estatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idmateria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `materias` */

insert  into `materias`(`idmateria`,`nombre`,`avatar`,`orden`,`estatus`) values (1,'ciencias','ejemplo','9','1'),(2,'matematicas','ejemplo','8','1'),(3,'geografia','ejemplo','7','1'),(4,'historia','ejemplo','6','1'),(5,'espanol','ejemplo','5','1'),(6,'dibujo','ejemplo','8','1'),(7,'atlas de mexico','ejemplo','9','1');

/*Table structure for table `personascontrol` */

DROP TABLE IF EXISTS `personascontrol`;

CREATE TABLE `personascontrol` (
  `IdPersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `Apat` varchar(100) DEFAULT NULL,
  `Amat` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `NumExterior` int(10) DEFAULT NULL,
  `NumInterior` int(10) DEFAULT NULL,
  `colonia` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `correoe` varchar(100) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nivel` varchar(100) DEFAULT NULL,
  `estatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `personascontrol` */

insert  into `personascontrol`(`IdPersona`,`nombre`,`Apat`,`Amat`,`telefono`,`calle`,`NumExterior`,`NumInterior`,`colonia`,`municipio`,`estado`,`cp`,`correoe`,`usuario`,`password`,`nivel`,`estatus`) values (1,'Jhovanny','Cuadros','Hernandez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2','1'),(2,'Carlos','Cruz','Delgado',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2','1'),(3,'Marco','Garcia','Hernandez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'marco','marcoa','1','1'),(4,'Areli','Almeyda','Montoya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1'),(5,'Juan','Mejia','Alva',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1'),(6,'Juan','Mejia','Alva',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1'),(7,'Juan','Mejia','Alva',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1'),(9,'Admin','ad','ad',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Admin','Admina','1','1'),(10,'maestro','mae','mae',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maestro','maestrom','2','1'),(11,'Administrador','adm','adm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Administrador','Administradora','1','1'),(12,'alumno','alu','alu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'alumno','alumnoa','3','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
