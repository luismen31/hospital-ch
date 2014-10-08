-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.17


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hospitalch
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ hospitalch;
USE hospitalch;

--
-- Table structure for table `hospitalch`.`areas_aplicacion`
--

DROP TABLE IF EXISTS `areas_aplicacion`;
CREATE TABLE `areas_aplicacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_aplicacion` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`areas_aplicacion`
--

/*!40000 ALTER TABLE `areas_aplicacion` DISABLE KEYS */;
INSERT INTO `areas_aplicacion` (`id`,`area_aplicacion`) VALUES 
 (1,'CONTABILIDAD'),
 (2,'ENFERMERIA'),
 (3,'ADMINISTRACION'),
 (4,'RAYOS X'),
 (5,'LABORATORIO'),
 (6,'SEGURIDAD'),
 (7,'INFORMATICA'),
 (8,'URGENCIAS'),
 (9,'MERCADEO'),
 (10,'RECURSOS HUMANOS'),
 (11,'SERVICIOS MULTIPLES');
/*!40000 ALTER TABLE `areas_aplicacion` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
CREATE TABLE `colaboradores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cedula` varchar(45) NOT NULL DEFAULT '',
  `seguro_social` varchar(45) DEFAULT NULL,
  `primer_nombre` varchar(45) NOT NULL DEFAULT '',
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) NOT NULL DEFAULT '',
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` varchar(45) DEFAULT NULL,
  `femenino` tinyint(3) unsigned DEFAULT NULL,
  `id_tipo_sangre` int(10) unsigned NOT NULL DEFAULT '0',
  `telefono_residencia` varchar(45) DEFAULT NULL,
  `telefono_oficina` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `direccion` text,
  `id_nacionalidad` int(10) unsigned NOT NULL DEFAULT '0',
  `id_estado_civil` int(10) unsigned NOT NULL DEFAULT '0',
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `presion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `licencia` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_area_aplicacion` int(10) unsigned NOT NULL DEFAULT '0',
  `id_estudio` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` varchar(45) NOT NULL DEFAULT '',
  `created_at` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`colaboradores`
--

/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`estados_civiles`
--

DROP TABLE IF EXISTS `estados_civiles`;
CREATE TABLE `estados_civiles` (
  `id_estado_civil` int(11) NOT NULL DEFAULT '0',
  `estado_civil` varchar(15) NOT NULL DEFAULT 'POR DEFINIR',
  PRIMARY KEY (`id_estado_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospitalch`.`estados_civiles`
--

/*!40000 ALTER TABLE `estados_civiles` DISABLE KEYS */;
INSERT INTO `estados_civiles` (`id_estado_civil`,`estado_civil`) VALUES 
 (1,'CASADO'),
 (2,'SOLTERO'),
 (3,'DIVORCIADO'),
 (4,'UNIDO'),
 (5,'VIUDO');
/*!40000 ALTER TABLE `estados_civiles` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`estudios`
--

DROP TABLE IF EXISTS `estudios`;
CREATE TABLE `estudios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estudio` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`estudios`
--

/*!40000 ALTER TABLE `estudios` DISABLE KEYS */;
INSERT INTO `estudios` (`id`,`estudio`) VALUES 
 (1,'PRIMARIA'),
 (2,'SECUNDARIA'),
 (3,'LICENCIATURA'),
 (4,'POST-GRADO'),
 (5,'MAESTRIA'),
 (6,'DOCTORADO');
/*!40000 ALTER TABLE `estudios` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`estudios_colaborador`
--

DROP TABLE IF EXISTS `estudios_colaborador`;
CREATE TABLE `estudios_colaborador` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_colaborador` int(10) unsigned NOT NULL DEFAULT '0',
  `estudio` text NOT NULL,
  `created_at` varchar(45) NOT NULL DEFAULT '',
  `updated_at` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`estudios_colaborador`
--

/*!40000 ALTER TABLE `estudios_colaborador` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudios_colaborador` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`experiencias_colaborador`
--

DROP TABLE IF EXISTS `experiencias_colaborador`;
CREATE TABLE `experiencias_colaborador` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_colaborador` int(10) unsigned NOT NULL DEFAULT '0',
  `experiencia` text NOT NULL,
  `created_at` varchar(45) NOT NULL DEFAULT '',
  `updated_at` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`experiencias_colaborador`
--

/*!40000 ALTER TABLE `experiencias_colaborador` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencias_colaborador` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`idiomas`
--

DROP TABLE IF EXISTS `idiomas`;
CREATE TABLE `idiomas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idioma` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`idiomas`
--

/*!40000 ALTER TABLE `idiomas` DISABLE KEYS */;
INSERT INTO `idiomas` (`id`,`idioma`) VALUES 
 (1,'ESPAÑOL'),
 (2,'INGLES'),
 (3,'MANDARIN'),
 (4,'HOLANDES'),
 (5,'FRANCES'),
 (6,'ITALIANO'),
 (7,'ARABE'),
 (8,'PORTUGUES'),
 (9,'HEBREO');
/*!40000 ALTER TABLE `idiomas` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`idiomas_colaborador`
--

DROP TABLE IF EXISTS `idiomas_colaborador`;
CREATE TABLE `idiomas_colaborador` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_colaborador` int(10) unsigned NOT NULL DEFAULT '0',
  `id_idioma` int(10) unsigned NOT NULL DEFAULT '0',
  `id_nivel` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`idiomas_colaborador`
--

/*!40000 ALTER TABLE `idiomas_colaborador` DISABLE KEYS */;
/*!40000 ALTER TABLE `idiomas_colaborador` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`nacionalidades`
--

DROP TABLE IF EXISTS `nacionalidades`;
CREATE TABLE `nacionalidades` (
  `id_nacionalidad` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(130) NOT NULL DEFAULT 'POR DEFINIR',
  PRIMARY KEY (`id_nacionalidad`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospitalch`.`nacionalidades`
--

/*!40000 ALTER TABLE `nacionalidades` DISABLE KEYS */;
INSERT INTO `nacionalidades` (`id_nacionalidad`,`nacionalidad`) VALUES 
 (1,'ALBANESA'),
 (2,'ALEMANA'),
 (3,'ARGELINA'),
 (4,'ARGENTINA'),
 (5,'ARMENIA'),
 (6,'AUSTRALIANA'),
 (7,'AUSTRÍACA'),
 (8,'BELGA'),
 (9,'BIELORRUSA'),
 (10,'BOLIVIANA'),
 (11,'BOSNIA'),
 (12,'BRASILEÑA'),
 (13,'BÚLGARA'),
 (14,'CANADIENSE'),
 (15,'CHECA'),
 (16,'CHILENA'),
 (17,'CHINA'),
 (18,'CHIPRIOTA'),
 (19,'COLOMBIANA'),
 (20,'COSTARRICENSE'),
 (21,'CUBANA'),
 (22,'DANESA'),
 (23,'DOMINICANA'),
 (24,'ECUATOGUINEANA'),
 (25,'ECUATORIANA'),
 (26,'ESCOCESA'),
 (27,'ESLOVACA'),
 (28,'ESLOVENA'),
 (29,'ESPAÑOLA'),
 (30,'ESTADOUNIDENSE'),
 (31,'ESTONIA'),
 (32,'FILIPINA'),
 (33,'FINLANDESA'),
 (34,'FRANCESA'),
 (35,'GRIEGA'),
 (36,'GUATEMALTECA'),
 (37,'HAITIANA'),
 (38,'HINDÚ'),
 (39,'HOLANDESA'),
 (40,'HONDUREÑA'),
 (41,'HÚNGARA'),
 (42,'INDONESIA'),
 (43,'INGLESA'),
 (44,'IRLANDESA'),
 (45,'ISRAELÍ'),
 (46,'ITALIANA'),
 (47,'JAMAIQUINA'),
 (48,'JAPONESA'),
 (49,'LETONA'),
 (50,'LIBANESA'),
 (51,'LITUANA'),
 (52,'LUXEMBURGUESA');
INSERT INTO `nacionalidades` (`id_nacionalidad`,`nacionalidad`) VALUES 
 (53,'MALTESA'),
 (54,'MEXICANA'),
 (55,'MOLDAVA'),
 (56,'MONEGASCA'),
 (57,'MONTENEGRINA'),
 (58,'NEOZELANDESA'),
 (59,'NICARAGÜENSE'),
 (60,'NORCOREANA'),
 (61,'NORUEGA'),
 (62,'PANAMEÑA'),
 (63,'PARAGUAYA'),
 (64,'PERUANA'),
 (65,'POLACA'),
 (66,'PORTUGUESA'),
 (67,'PUERTORRIQUEÑA'),
 (68,'RUMANA'),
 (69,'RUSA'),
 (70,'SAHARAUI'),
 (71,'SALVADOREÑA'),
 (72,'SERBIA'),
 (73,'SIRIA'),
 (74,'SUDAFRICANA'),
 (75,'SUECA'),
 (76,'SUIZA'),
 (77,'SURCOREANA'),
 (78,'TURCA'),
 (79,'UCRANIANA'),
 (80,'URUGUAYA'),
 (81,'VENEZOLANA'),
 (82,'VIETNAMITA');
/*!40000 ALTER TABLE `nacionalidades` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`niveles`
--

DROP TABLE IF EXISTS `niveles`;
CREATE TABLE `niveles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nivel` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`niveles`
--

/*!40000 ALTER TABLE `niveles` DISABLE KEYS */;
INSERT INTO `niveles` (`id`,`nivel`) VALUES 
 (1,'BASICO'),
 (2,'INTERMEDIO'),
 (3,'AVANZADO');
/*!40000 ALTER TABLE `niveles` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rol` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`,`rol`) VALUES 
 (1,'Administrador'),
 (2,'Administrativo'),
 (3,'Colaborador');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`sugerencias`
--

DROP TABLE IF EXISTS `sugerencias`;
CREATE TABLE `sugerencias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `telefono` varchar(45) NOT NULL DEFAULT '',
  `ciudad` varchar(45) NOT NULL DEFAULT '',
  `mensaje` text NOT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`sugerencias`
--

/*!40000 ALTER TABLE `sugerencias` DISABLE KEYS */;
INSERT INTO `sugerencias` (`id`,`nombre`,`email`,`telefono`,`ciudad`,`mensaje`,`created_at`,`updated_at`) VALUES 
 (1,'Edgardo','ed_joel28@Hotmail.com','7743095','Panama','Me gusta su mujer','2014-10-07 20:13:22','2014-10-07 20:13:22'),
 (2,'Edgardo','ed_joel28@Hotmail.com','7743095','Panama','Me gusta su mujer','2014-10-07 20:13:59','2014-10-07 20:13:59');
/*!40000 ALTER TABLE `sugerencias` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL DEFAULT '',
  `pass` varchar(100) NOT NULL DEFAULT '',
  `id_rol` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` varchar(45) NOT NULL DEFAULT '',
  `updated_at` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
