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
-- Table structure for table `hospitalch`.`clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(45) NOT NULL,
  `seguro_social` varchar(45) DEFAULT NULL,
  `primer_nombre` varchar(45) DEFAULT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) DEFAULT NULL,
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` varchar(45) DEFAULT NULL,
  `femenino` tinyint(4) DEFAULT NULL,
  `id_tipo_sangre` int(11) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `telefono_residencia` varchar(45) DEFAULT NULL,
  `telefono_oficina` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `direccion` text,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`direccion`,`created_at`,`updated_at`) VALUES 
 (1,'4-759-372','','Edgardo','','Pitti','','2014-10-09',1,1,'62510254','7743095','','ed_joel28@hotmail.com','San Cristobal','2014-10-09 15:54:45','2014-10-09 16:00:20'),
 (2,'4-760-768','','lUISA','','Mendoza','','',0,4,'','','','','','2014-10-09 16:23:04','2014-10-09 16:23:11');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`colaborador`
--

DROP TABLE IF EXISTS `colaborador`;
CREATE TABLE `colaborador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workerid` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `socialnumber` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondlastname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bloodtype` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homephone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workphone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellphone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maritalstatus` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept1` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degreelevel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exp1` longtext COLLATE utf8_unicode_ci,
  `exp2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exp3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language3` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level3` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stress` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licence` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=797 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospitalch`.`colaborador`
--

/*!40000 ALTER TABLE `colaborador` DISABLE KEYS */;
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (3,'4-729-2360','','Juan','Jose','Saldaña','Barrios','1','1983-07-22','3','50763794222','50763794223','50763794221','Los Anastacios Rincon Largo Dolega','saldana8387@yahoo.es','62','0','face','prueba','saldana83','1234','7','6','Rochester                                         ','LATINA   y UDDI                                   ','UTP                                               ','UTP                                                                                                                                                            ','CABLE                                             ','MI EMPRESA                                        ','1','2','5','3','3','2','1','1'),
 (4,'4738-853','','Fanny ','Estela ','Batista ','Castillo','0','1985-11-19','3','','','65-28-10-88','Boquerón','alys.mbb-06@hotmail.com','62','1','alys.mbb-06@hotmail.com','','fanny batista ','benicio','3','3','Bachiller en Letras Col. Daniel Octavio Crespo    ','    Técnico                                       ','Licenciatura \r\n\r\nSecretariado Ejecutivo Administra','     Entrevistadora                      Pronat                                           2008-2009 ',' Asesora                                \r\nCompañía','  Secretaria                           \r\nAgencia d','1','2','','2','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (22,'4-720-990','4720990','Carlos','Alexis','Gonzalez','Baules','1','1980-12-19','1','7224642','','65872381','varital de boqueron via panamericana una casa ante','cgonzalez2919@hotmail.com','62','1','','','carlos gonzalez','carlosgonzalezbaules','11','3','      Licenciatura en Administracion de Empresa. I','      Bachiller en Ciencias. Colegio Felix Olivare','         Escuela Primaria de Belen en La Concepcio','      Tiendas ELEKTRA DAVID CHIRIQUI. CARGO DESEMPEÑADO VENDEDOR EN TIENDA.                  ','    INDUSTRIAL ARROCERA DE CHIRIQUI S.A CARGO DEMP','    GRUPO REY/SUPERMERCADO ROMERO SAN MATEO. CARGO','1','2','','3','2','','1','1'),
 (14,'2-718-2449','','Dayra','Azucena','Beltrán','Soto','0','1986-11-19','1','730-52-17','','6852-7937','Altos del Lago David','dayrabel1991@hotmail.com','62','0','','','Dayra Beltran ','daniela0770','3','2','Licenciatura en Francés 2 año Universidad         ','Licenciatura en Fisioterapia 4 año Universidad Lat','Bachiller en Ciencias con Énfasis en Salud y Sanea','Asistente en Fisioterapia en el Policentro Medico Especializado David-Chiriquí     ','Asistente en el Salón de Belleza Blindage Progresi','                              ','1','2','5','3','1','1','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (16,'4-755-685','','Diana','','Araúz','Rodriguez','0','1983-12-09','4','','','65282995','rio sereno','dianaarauzr@gmail.com','62','0','diana.arauz.14@faceb&#820','','diana arauz r','123456','2','3','      escuela primaria de altamira      ','          colegio secundario de renacimiento bachi','          licenciatura en enfermeria universidad s','      Centro medico LAIN. SAN JOSE COSTA RICA      ','          CLINICA BIBLICA, SAN JOSE COSTA RICA.   ','          HOSPITAL SAN VITO, SAN JOSE COSTA RICA  ','2','','','1','','','1','0'),
 (231,'4-738-504','4-738-504','Arianni','Massiel','Guerra','Morales','0','1985-11-23','3','774-5388','','6720-6104','Barrio Universitario','arianni_tcd@hotmail.com','62','2','','','arianni','sakura','3','3','  •	Bachiller en Comercio con énfasis en  Contabil',' •	Título obtenido: Lic. Banca y finanzas. \r\nEntid',' •	Seminario “Etiqueta y Protocolo en el servicio ',' •	Asistente de compras  y labores de oficinista en general.\r\nEntidad: Promotora Anajula S.A.\r\nInicio 12 de julio de 2012.\r\n                 ','•	Asistente de Administración y labores de oficini','•	Practica Profesional  para el titulo de Bachille','1','2','','3','1','','1','0'),
 (232,'4-760-391','4760391','Stephanie','Kristell','Gonzalez','Ruiloba','0','1992-01-20','1','730-4368','','6249-1240','Urb. Nazareth','stephys_kriss20@hotmail.c','62','2','','','sgonzalez','phannie20','11','3','2013. Universidad Latina de Panamá- Licenciatura e','2012. Universidad Latina de Panamá- Facultad de De','2009. Bachiller en Ciencias con Énfasis en Informá','2012-2013 ASSA Compañía de Seguros, Oficial de Atención al Cliente.','2011-2012 ASSA Compañía de Seguros, S.A Casa Matri','2011-2012 ASSA Compañía de Seguros, S.A  Casa Matr','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (233,'4-740-640','','Maryuri','Alexandra','Guerra','Jaramillo','0','1986-06-20','4','','','6391-83-39','ciudad acuario 4ta etapa casa 203','vinan1414@hotmail.com','62','1','yuri alexandra guerra','','maryuri','vinandecor14','3','3','     2008 Universidad Latina                      ','      1998-2003  Instituto David                  ','        Cursos realizados:\r\nCongreso latino de com','      Abril  y Diciembre 2010(de manera eventual)\r\nSúper deportes sammy David \r\n*Cajera, recepcionista, atención al cliente, área de archivos \r\n\r\nReferencias\r\nJefe inmediato: Sr. Eduardo Bardayan  \r\nTel: 774-00-48\r\n\r\n      ','         Mayo2008  – Diciembre 2009\r\nEmpresa Multi','      Marzo2006–Abril2007                         ','1','2','','3','1','','1','0'),
 (27,'8-762-1128','8-762-1128','Javier ','Alexander','Marino','Gonzales','1','1983-01-01','1','','','62491686','','marino.javier@hotmail.com','62','4','','','jamarino','estaesparavos','7','7',' Bosco\r\n1989-1994 Escuela Particular Osiris\r\nEduca','1995 Primer Ciclo\r\nInstituto Técnico Don Bosco    ','2006 Bachiller Industrial con énfasis en informáti','2005-2006 Happy Shop\r\nCargo: Técnico en reparación de Computadoras\r\nFunción: Ensamblaje, reparación y mantenimiento de equipos\r\ninformáticos.      ','2006-2008 Advanced Communication Network\r\nCargo: T','2008-2012 Alcatel-Lucent\r\nCargo: Supervisor de Cam','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (28,'9-151-478','2613414','Miguel','Antonio','Rodriguez','Cruz','1','1967-11-19','1','7707294','','66044477','San Pablo Viejo','mrodriguez191167@hotmail.','62','1','','','miguel','m77975','11','3','      Sexto grado Escuela San vicente      ','       Bachiller en Ciencia               \r\n      ','       Licenciatura en Informatica Educativa\r\n    ','    2008- 2012  Jefe de Trasporte TRADECA\r\nExperiencia en Logistica, Supervisor de Personal, Mantenimientos de Equipos,Cobros, Mensajeria, Oficinista, PLanilla, Depositos y Retiros      ','  2003-2008 Supervisor de Taller COOSEMUPAR   \r\n  ','   1985-2003 Supervisor de Taller CHIQUITA\r\n      ','1','2','','3','1','','1','1'),
 (30,'4-745-744','','Kelvin','','Guerra','','1','1988-01-01','0','60588485','','61546892','','kg77d@hotmail.com','62','4','','','','123456','2','2','            ','                    ','                    ','            ','                    ','                    ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (32,'Pe 14-1590','','Jennifer','','Rodríguez','Guerrero','0','1985-02-25','1','','','64318955','Feria de David','jenniferrodriguezg@hotmai','20','2','calle blancos panamá','','Jennifer','1000253000000','9','3','     * Bachiller en comercio\r\nCol. Francisco Moraz','         * Licenciatura en Mercadeo y Publicidad\r\n','                    ','      *Mosto Bistro\r\nAdministración y mercadeo      ','          *Sofa & Plumas\r\nEncargada y ventas      ','          *Transportes Ferguson S.A\r\nOficina y ate','2','','','1','','','1','0'),
 (45,'4-770-144','','Sergio','Anel','Tejada','Baules','1','1993-12-15','1','no','no','64531838','Santa Lucia de Bagala, Boquerón','sergiot-15@hotmail.com','62','2','sergio anel tejada b','','satb15','samsung15','11','2','   Bachiller en ciencias y letras con enfasís en i',' curso de ingles                                  ','                                                  ','   Vendedor en Papagallo David                                                         ','   Dicarina Panamá como experiencia propia        ','                                                  ','2','','','1','','','1','0'),
 (289,'4-721-2419','4-721-2419','Damarys','','Saldaña','Villarreal','0','2014-03-28','3','64-33-5293','774-2424','64-33-5293','Dolega Los algarrobos','damaryys@hotmail.com','62','1','damaryys@hotmail.com','','Damarys SaldaÃ±a Villarre','1234','3','3','    Administracion En Cooperativa\r\nUNACHI  ','       BACHILLER EN COMERCIO\r\nCOLEG.BEATRIZ M. CAV','          ESCUELA PRIMARIA\r\nESCUELA DE LAS CAÃ‘AS-','ASOCIACION DE PRODUCTORES DE CHIRIQUI\r\nASISTENTE ADMINISTRATIVA      ','   MULTI SERVICIOS\r\nRECEPCION\r\n\r\n       ','         JUNTA COMUNAL DE LOS ALGORROOBOS\r\nSECRETA','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (290,'4-770-1719','','Nilka','Alejandra','Guerra','Gomez','0','2014-01-26','1','775-5796','','4-770-1719','Corozal via querevalo','nilka26@hotmail.com','62','2','nilka alejandra guerra go','','nilka','47701719','11','2','      colegio. i.p.t la concecion\r\nBachiller en co','  tÃ©cnicas de cocina profesional. Inadeh\r\nprevenc','Servicio de bares y bebidas\r\n-the panama internati','Asiste de Chef. Cesar Urriola\r\nCel 6550-3494',' Practica profecional Rest. Mosto Bistro. Chef fui','Practica profecional Hotel Ciudad David. Lic. Vict','1','','','1','','','1','0'),
 (291,'4-259-151','4259151','Leydi','Liriam','Fuentes','Alvarado','0','2014-10-14','3','','788-8010        774-6574','67457532','David-Nuevo San Carlitos','leydil2012@hotmail.com','62','1','','','leydif2012@hotmail.com','josuebebe','1','3','      LIc. en Contabilidad            ','                              ','                              ',' Fabrica de Helados Jackelita s.a.                 ','                              ','                              ','1','','','3','','','1','0'),
 (292,'4-724-997','4-724-997','Katherine','Mabeth','Pandiella','Acosta','0','1982-02-22','5','776-9807','774-9071','6783-3266','LAS LOMAS, DAVID','katpand@hotmail.com','62','4','KATHERINE PANDIELLA','','kathy','48621798','9','5',' LIC. EN RELACIONES PÃšBLICAS','  ACTUALMENTE EN EL TERCER AÃ‘O DE LIC. EN DERECHO','         MAESTRÃA EN DOCENCIA SUPERIOR ','      ASOCIACIÃ“N DE PERIODISTAS DE CHIRIQUÃ- ORGANIZADORA DE CONGRESO INTERNACIONAL','        ANALISTA DE DATOS- SUPERMERCADOS S.A. (ROM',' ENCARGADA DE EVENTOS Y PROTOCOLO- Universidad Tec','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (293,'8-760-2342','8-760-2342','Aida','Kristhina','Aguilar','Moreno','0','1982-11-02','1','775-2012','','6495-2659','urb. santa lucia','akristy02@yahoo.com.mx','62','1','','','aida','thomas','3','3','      licenciatura en mercadeo y publicidad con en','          ','          ','      departamento administracion hotel Puerta del Sol','          ','          ','1','2','','3','1','','1','0'),
 (294,'4-755-1522','','Georgina','Vanessa','Gallardo','Fuentes','0','1990-11-27','1','','','62343580','Prosperidad','georgy-vane-11@hotmail.co','62','2','','','Georgy','GeorgyK11','7','3','Universidad Del Istmo \r\n     Actualmente curso el ','  Colegio Dr. Arnulfo Arias Madrid\r\n Bachiller Ind','   FlexSim 6.0.0\r\nUniversidad Del Istmo\r\n2012\r\n   ','      Operador de fotocopiadora \r\nVacaciones por un mes\r\nUniversidad Latina\r\nNoviembre - diciembre 2008.\r\n','          ','          ','1','2','','3','2','','1','0'),
 (295,'4-744-1127','4-744-1127','Eliana','Joselin','Fuentes','Chavarria','0','2014-09-09','1','7211703','','69823838','david bda san jose','joselin_0987@hotmail.com','62','2','','','eliana ','64245110','7','3','      bachiller en ciencias en el colegio secundar','          tÃ©cnico en programaciÃ³n empresarial en','     licenciatura en gestiÃ³n de tecnologÃ­as de l','      finca VAFLOREVA  atenciÃ³n a clientes','          ','          ','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (296,'4-717-713','4-717-713','Jesualda','','Sanchez','Montes','0','1980-01-03','1','775-1657','','6681-9625','david-nuevo varital','jesualdasanchez03@gmail.c','62','2','','','jesualdasanchez03@gmail.c','gilbertoygrace','11','2','   ESC. ANTONIO JOSE DE SUCRE','          INSTITUTO COMPUTACIONAL Y LABORAL DE CHI','          TERCER AÃ‘O DE ECONOMIA','      CAJERA ATENCION AL CLIENTE\r\nSERVICIOS DE AGUA POTABLE','          ALDEAS INFANTILES','          CAJERA\r\nCIBER CAFE EL EXPLORADOR','1','','','3','','','1','0'),
 (297,'8-736-439','8736439','Ruth','Betzaida','Delgado','CedeÃ±o','0','2014-04-16','3','','','61232063','San CristÃ³bal, David','ruthbdelgado@gmail.com','62','2','','','RuthX11','tototito11','3','3','      Tecnico en Educacion Especial en el Area de ','      Tecnico en Asistencia de Famacia\r\nUniversida','          ','      Equivel Abogado & Asociados\r\nSecretaria\r\nDiciembre 2012 - Junio 2013','       La Tienda del Celular y Algo mas\r\nSuperviso','          Celulares Nanda, S.A.\r\nSupervisora de Re','1','2','','3','2','','1','0'),
 (210,'4-281-237','4-281-237','Belkis','Aneth','Vásquez','Atencio','0','1974-10-18','3','','','64401546','David','bavasqueza@hotmail.com','62','0','bavasqueza@hotmail.com','','Belkis  Vásquez ','guadalupe01','3','7','Licenciatura en Biologia, UNACHI, \"No concluida\"','Tecnico Asistente de Laboratorio Clínico Sanitario','          ','MEDUCA, Colegio San Agustin de Kankintu, Comarca Gnobe-Bugle, Profesora de Biologia 2003 y 2009','MEDUCA, CEBG El Norteño Comarca Gnobe-Bugle, Profe','Colegio San Antonio, Puerto Armuelles, Barú, Chiri','1','','','2','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (211,'4-278-607','4-278-607','Elsa','Esther','Castillo','Espinosa','0','1974-10-09','1','64685956','','64685956','Nuevo San Carlitos','elsacas-09@hotmail.com','62','2','','','elsa castillo','erickameth','11','3','   Profesorado en educaciòn primaria\r\n   Tecnico e','    Profesorado en educacion preescolar      ','   Licenciatura en educaciòn       ','  Maestra de grado    ','      atenciòn al cliente    ','          ','1','','','3','','','1','1'),
 (212,'1-721-1259','1-721-1259','Angelike','Arlett','Rivera','Goff','0','1989-07-25','1','','','6919-0956','','','62','2','ariveragoff','','Angelike Rivera','luciaximena','8','3','      tercer año completo de la licenciatura en ur','          ','          ','      ','          ','          ','1','2','','3','2','','1','0'),
 (213,'4-744-906','','Leisy','Mabelis','Caballero','Gomez','0','1987-08-25','3','775-7585','6382-5497','6534-5644','David','campanita25877@hotmail.co','62','2','Leisy Milena Caballero','','CaballeroLeisy','nuestroamor','3','3',' Bachiller en Comercio con énfasis en Finanzas y B',' Profesorado en Educación Primaria.  2010       ',' Licenciatura en Educación con énfasis en Primaria',' Atención al cliente y cajera en Café Kotowa, Plaza Real.  2011   ',' Atención al cliente, inventarios y cajera en Comp','          ','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (214,'4-752-297','4-752-297','Kenia','Gisela','Cortez','Montes','0','1988-10-22','1','','','62657882','Jardines de la Riviera','kcortezm@hotmail.com','62','0','','','Kenia Cortez','kenia2220','11','7','      ','          ','          ','      ','          ','          ','','','','','','','0','0'),
 (215,'4-755-685','','Diana','','Araúz','Rodriguez','0','1983-09-12','0','','','65282995','','dianaarauzr@gmail.com','62','0','','','','123456','2','3','      ','          ','          ','      ','          ','          ','','','','','','','0','0'),
 (216,'4-744-1440','4-744-1440','Janisellys ','Jeanette','Serrud','Vasquez','0','1987-10-02','3','774-3127','','6223-9678','San Mateo','jeanethe2502@hotmail.com','62','2','Janisellys Serrud','jany0225','Janisellys ','pandalila02','3','3','      Certificado de Escuela Primaria','          Certificado de Bachiller en Comercio ','          Actualmente Cursando 3año de Lic. Admini','      Asistente Departamente de Avaluos Cetsa. ','          Encargada de Sucursal Esti Games.','          ','1','2','','3','2','','1','1'),
 (217,'PE-14-745','','Kattia','','Franco','Santamaria','0','1984-07-03','1','','68374831','65986253','Los Abanicos','kafranco-07@live.com','20','2','kafranco-07@live.com','','kafranco-07@live.com','bella','10','2','      Primaria Completa','   Secundaria Completa       \r\n','          ','   limpieza en Hospitales','    Limpieza en oficinas      ','     mensajeria     ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (218,'4-727-1999','47271999','Henry','','Rodriguez','Rodriguez','1','1980-10-14','1','','','64465222','Los Abanicos','Henry.r0782@live.com','62','0','Henry.r0782@hotmail.com','','Henry.r0782@hotmail.com','mostruo','10','2','     Primaria Completa ','     Secundaria 5to  año     ','          ','     Agente municipal','         guardia seguridad ','     Mensajeria     \r\n','1','','','3','','','1','0'),
 (219,'4-758-1302','','Nuris','Johana','Quintero','Morales','0','1991-09-14','0','','','69765430','Brisas del Rio','johanaquintero2011@hotmai','62','2','Johana Quintero','','Nuris Quintero','2121','11','2','Bachiller en Comercio, con Enfasis en Contabilidad','Curso de Atencion al cliente\r\nMiniaterio de Trabaj','          ',' Recopilacion de datos\r\n Censo Agropecuario  \r\n Contraloria General de la Republica.  ','  MC Pato David\r\n  Atencion al cliente\r\n  Lic.Kenn','Entrega de volantes\r\nProfesional services.        ','1','','','3','','','1','0'),
 (220,'4-736-1118','','Lisseth','Francia','Batista','Palacios','0','1982-07-02','1','67125874','no ','67125874-69400118','bugaba','lissethbatista@hoymail.co','62','4','lissethbatista@hotmail.co','no tengo','Lisseth Francia Batista P','47361118','2','2','     \r\nEscuela:justo abel castillo  \r\n','\r\nSexto;instito laboraol adventista panañena      ','\r\n tecnico en enfermeria :intituto superior nueva ',' \r\nSecretaria de la corregiduria de aserrio     ',' \r\n servicios Multiples de salud (encargado de la ','          ','1','','','1','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (221,'4-740-2162','47402162','Virginia','Del Carmen','Rivera','Chavez','0','1986-05-21','1','7750233','','66096626','LA FERIA ','virgicr-8@hotmail,com','62','0','','','VIRGINIA ','2186','10','3','      LICENCIATURA EN PSICOLOGIA UNIVERSIDAD AUTON','       BACHILLER EN CIENCIAS INSTITUTO CHIRIQUI   ','          ','      AYUDANTE GENERAL DRA GLADYS NOVOA','          ASISTENCIA PSICOLOGICA GRUPO REY AREA RE','          ASISTENCIA PSICOLOGICA COLEGIO FRANSISCO','1','','','3','','','1','0'),
 (222,'8-753-1101','8-753-1101','Edisa','Yannette','Fournier','Fuentes','0','1982-01-25','1','774-6785','','6517-8477','David','edisayannette@hotmail.com','62','2','edisa fournier','','edisa25','mikaela23','10','7','      Banca y finanzas  -  actual','Tec. en informatica - Incompleto          ','          ','      Empresas Romero - Cajera','Banco Delta- Documentadora','Estadistica y Censo- Digitadora          ','2','','','1','','','1','1'),
 (223,'4-740-2161','','Ladys','Diana','Serrano','Montenegro','0','1985-04-27','5','','','69254919','David,Chiriqui','dark-angel_mt@hotmail.es','62','1','','','Ladys Serrano','mercury','2','7','Escuela de Doleguita,estudios primarios,año 1996 ','Colegio Félix Olivares Contreras,bachiller en Cien','Centro Tecnológico Superior,Técnico Superior en En','Cuidados de niños (Niñera)      ','          ','          ','1','2','','3','2','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (224,'4-717-2131','4-717-2131','Sara','Itzel','Castillo','Santamaria','0','1980-03-01','1','6759-4467','6803-0892','6568-3581','Nuevo Vedado, David','saracastillo0119@hotmail.','62','1','','','sara','nilka0119','11','2','escuela primaria La Primavera de primero a sexto a','escuela secundaria Pablo Emilio Corse septimo grad','                    ',' hospital regional de david, inicio laboral del 21 junio - al 22 de septiembre de 2011 (trabajadora manual)          ','hospital ovaldia de chiriqui inicio laboral 23 de ','                    ','1','','','3','','','1','0'),
 (225,'4-718-195','4718195','Cinthia','Cecilia','Samudio','Castillo','0','1980-03-25','0','','774-3752','6457-8304','Cochea Arriba','Sofiaariadna06@hotmail.co','62','1','Cinthia Samudio de Gaitan','','csamudio','ceciliagaitan','3','3','      Licenciatura en Administracion de Empresas','       Profesorado en Media Diversificada   ','          ','      Asistente Administrativa\r\nDiverlandia, S.A. junio 2011-actualmente','       Ejecutiva de Ventas\r\nMental Tech marzo 2010','          Encargada de departamento de entrega de ','2','1','','1','3','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (226,'4-755-322','4-755-322','Diana','Lisbeth','Lezcano','Castillo','0','1990-11-27','1','','','','','Lezcano14@gmail.com','62','0','','','diana lezcano','alanis','11','7','      ','          ','          ','      ','          ','          ','','','','','','','0','0'),
 (227,'4-713-1651','4-7169-1651','Laura','Verónica','Pérez','Navarro','0','1978-11-29','7','','775-0773 ext.111','6620-0512','Anastacios, Dolega','laura_p2978@hotmail.com','62','1','','','LAURA PEREZ','AMATISTA ','3','3','Profesorado en Educación Primaria. UNACHI. 2 AÑOS ','Técnico en Programación y Estadística. UNACHI.    ','Licenciatura en Informática Empresarial. UNACHI.  ','Maestra de Informática, Escuela de Caimito, Dolega, 2008, 2009. 2 años. Por contratación de la Alcaldía de Dolega.                 ','Cyber Café. Levantamiento de texto, Administración','Digitadora de Datos. Super Barú Interamericano. Fa','1','','','3','','','1','0'),
 (228,'4-738-885','4738885','Eugenio','Jesus','Montilla','Serrano','1','','3','7754321','','64805007','san pablo nuevo','eugeniomontilla12@gmail.c','62','4','eugenio4ever@hotmail.com','','eugenio','12121285','11','2','      universidad autonoma de chiriqui primer seme','         Colegio felix olivares contreras bachille','          escuela antonio jose de sucre primaria c','      Conway store david encargado de seguridad 2009-2013','          super baru interamericano ayudante gener','          fiesta casinos operador de camaras de vi','1','','','2','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (72,'4-756-809','4-756-809','Efraín','Caleb','Espinosa','Contreras','1','1991-02-22','1','0','0','6500 2324','Boquete','ecect22@hotmail.com','62','2','Efraín Caleb Espinosa Con','','kleb1991','alekhine','1','3','      Estudiante de Contabilidad y Auditoria \r\n(38','      Bachiller en Gestión Empresarial,  Colegio F','       Estudios básico general, escuela Josefa M. ','         Asistente de contabilidad en ACAEM S.A.\r\nTuve en un contrato de 3 meses, del 01 de Mayo de 2012 al 30 de Julio de 2012; donde me desempeñe en diferentes tareas como: Ciclo contable completo, conciliaciones bancarias, cuentas por pagar y por cobrar, planilla.     \r\n                                                                                          ','      Asistente de Contabilidad en Super Barú S.A.','    Asistente Contable Banco Nacional de Panamá  \r','1','2','','3','2','','1','0'),
 (192,'4-726-1565','4-726-1565','Maria','Elena','','Moreno','0','1980-10-28','1','XXXXXXXXXXXXXXXXX','XXXXXXXXXXXXXXX','6699-4295**6967-7588','DAVID CHIRIQUI','LEOMAR823@HOTMAIL.COM','62','4','MARIA ELENA MORENO','','MARIA MORENO','082328','7','2','      ESUDIOS PRIMARIOS\r\nCERTIFICADO DE SEXTO GRAD','          ESTUDIOS SECUNDARIOS\r\nDIPLOMA DE BACHILL','          ESTUDIOS UNIVERSITARIOS\r\nTECNICO EN INFO','      LABORATORIO BIO MEDICA\r\nSECRETARIA-RECEPCIONISTA      ','          MINISTERIO DE SALUD\r\nDEPTO D CONTROL DE ','        JOALSA, S.A.\r\nDEP. DE COMPUTO\r\n(ORDENES DE','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (166,'PE14745','','Kattia','','Franco','SantaMaria','0','1984-07-03','1','','','65986253','DAVID','KFRANCO-07@LIVE.COM','62','0','KATTIA FRANCO','','KFRANCO','PELUCHE','10','2','      PRIMARIA                        ','    SECUNDARIA                                    ','                                                  ','LIMPIESA Y ASEO                        ','         MENSAJERIA                               ','          ATENCION AL CLIENTE                     ','','','','','','','1','0'),
 (75,'4-220-788','308-4764','Magda','Estela','Gonzalez','Delgado','0','2012-07-30','1','7750890','','65849778','david','gonzalezdelgado.magdaeste','62','4','','','magda','750890','11','3','       licencitura en administracion de empresas  ','              licenciatura en informatica en oteim','                              ','            Administradora de Cranes pomarosa panama y finca pomarosa      ','    Asistente contable de lic rene herrera        ','     encargada de bodega de tasty food insdustries','1','2','','3','1','','1','1'),
 (288,'4745492','4745492','Gladys','Alicia','Del Rosario','Stanziola','0','1987-12-25','1','7757403','','66262381','san juan del tejar david chiriqui','always15254@hotmail.com','62','4','','','gladys1987','66262381jp','10','2','      reparacion en computadoras','       programacion   ','          ','      en reparar computadoras','          limpieza ','          sistema computarizado o programas por ac','1','2','','3','1','','0','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (286,'8-732-348','8-732-348','Marileen','Jovanny','Berrio','Martinez','0','2014-11-02','3','7303438','','67011124','DAVID VILLA AURA','marileen.berriom@gmail.co','62','1','marileen.berriom@gmail.co','','MARILEEN','MARY0213','1','3','            ','                    ','                    ','    FERRETERIA ENRIQUE\r\nASISTENTE DE CONTABILIDAD      ','          AGRIMENSURA INTEGRAL. SECRETARIA Y ASIST','         SERVICIOS PORFESIONALES DE CONTABILIDAD. ','1','','','3','','','1','0'),
 (287,'4-714-348','4-714-348','Basilio','','Olabe','Cianca','1','1979-01-17','3','721-0026','','6571-8757','Barriada San Jose','basilio-17@hotmail.com','62','0','','','basilio','kianolabe17','6','2','      ','          ','          ','      ','          ','          ','1','','','3','','','1','0'),
 (284,'4-752-2086','4-752-2086','Arlettis','Binah','Beckwith','Lizondro','0','2014-05-25','1','771-5214','','63998075','David','arlettis_4@hotmail.com','62','2','arlettis_4@hotmail.com','','Arlettis ','sebastian','8','7','      TÃ©cnico en Urgencias Medicas','          ','          ','      Sistema Ãšnico Manejo de emergencias medicas, SUME 911','          COMPAÃ‘IA CHIRICANA DE CONSTRUCCION, ENC','          ','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (285,'41537912G','0710 1036263412','Maria','Magdalena','Bonnin','Lliteras','0','1986-06-27','3','','','+34636183119','CAMÃ PASSATEMPS 93-A','magda_bonnin@hotmail.com','29','2','','','MBO','0612','2','7','      DIPLOMADA EN ENFERMERÃA','    TÃ‰CNICO SUPERIOR EN DIETÃ‰TICA   ','          TÃ‰CNICO EN CURAS AUXILIARES DE ENFERMER','Enfermera en la Residencia de la Bonanova, del 4 de julio de 2011 al 15\r\nde agosto de 2011. Enfermera en ClÃ­nica Rotger en Ã¡rea de hospitalizaciÃ³n de medicina\r\ninterna, oncologÃ­a, neurocirugÃ­a y especialmente traumatologÃ­a, inicio el\r\n22 de agosto de 2011 y trabajando en la actualidad.','Dietista en el Hospital de Manacor, del 12 de mayo','Auxiliar de enfermerÃ­a en la Residencia de Felani','1','2','','3','2','','1','1'),
 (283,'1-39-5','133-0282','Lorena','Raquel','Lizondro','Esquivel','0','1971-12-12','1','730-0324','','6550-2558','Villa del Sol','lorena.lizondro@gmail.com','62','1','','','1221','dodiale','3','3','      Secretariado Ejecutivo- Univ.Nacional de Pan','          Lic. Adm. de Negocios con Gerencia en Re','          ','      Banistmo- Asistente de Plataforma y Operaciones','          Academia Hebrea de PanamÃ¡- Asistente  A','          ','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (282,'4-724-497','4-724-497','Rafael','Ricardo','VÃ¡squez','Gonzalez','1','2014-11-12','1','770-5650','395-3334','65505883','Mata de Bugaba, David, ChiriquÃ­','prof.rvasquez@gmail.com','62','2','Rafael VÃ¡squez','@rafavago1','rvasquez','rafa1281','3','5','      Licenciatura en AdministraciÃ³n de Empresas ','          MaestrÃ­a en AdministraciÃ³n de Empresas','          MaestrÃ­a en FormulaciÃ³n y EvaluaciÃ³n ','      CÃ¡ritas Internacional','                 IPSOS ','             FETV Canal 5 ','1','2','','3','1','','1','1'),
 (281,'4-717-2297','4-717-2297','Naira','Raquel','Arauz','Pinto','0','1980-02-27','1','','','64631260','Las Moras, Brisas Del Rio, David','naruz80@hotmail.es','62','2','naruz80@hotmail.es','','naruz80@hotmail.es','fiszgerald','3','3','     Tecnico en Informatica \r\nOTEIMA','    Tecnico en Recursos Humanos   \r\nTIB   ','    Licenciatura en Informatica    \r\n   I.S.A.E. U','      Asistente de Laboratorio de Informatica \r\nOTEIMA','      Asistente de Contabilidad  \r\nP.C.P.A.  ','      Secretaria, asistente, recepcionista.\r\nDRECH','1','2','','3','1','','1','0'),
 (280,'4-154-625','','Greta','Patricia','Sanjur','Gomez','0','2014-06-29','1','','','6719-4143','Barriada San Cristobal','gretasanjur@ymail.com','62','1','gretasanjur@hotmail.com','','gretasanjur@ymail.com','66Reinventar','3','3','    Bachiller en comercio\r\nColegio secundario Beat','   Profesorado en EducaciÃ³n Primaria U.C.A  -Lice','        Primer aÃ±o AdministraciÃ³n PÃºblica U.N.A','PROFESORA EN U.C.A por 3 aÃ±os.',' vice presidenta asociaciÃ³n carismÃ¡tica multivid','          ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (264,'4-745-1692','4-745-1692','Arianis','Mabel','Santamaria','Concepcion','0','1987-11-19','1','722-4895','','6654-8611','Tijeras-Boqueron','Sinaira-1911@hotmail:com','62','2','Arianis Santamaria Concep','','Sinaira1911@hotmail.com','192208','2','7',' Bachiller en Ciencias',' Tecnico Superior en Enfermeria  ','          ','   Fundacion Athenas como Tecnica de Enfermeria   ','      Cuidado Especial de Adulto Mayor    ','          ','','','','','','','1','0'),
 (265,'4-746-1','4-746-1','Diego ','Emilio','Del Cid','Rios','1','1988-08-04','1','','','6458-2172','La Concepcion, Bugaba','mela_caro2122@hotmail.com','62','2','Diego E\' milio Del Cid','edelcid_22','diego emilio','ddc2208','3','2','* Universitaria: Curso Actualmente Vº Año de la Li','* Secundaria: 2000-2005. Colegio Daniel Octavio Cr','* Primarios: 1993-1999. Escuela Primaria de El Por','* Año 2012 – Cyber Netway (Encargado)\r\n\r\n* Año 2013 – Applus Corporation (Contratista de Gas Natural)','* Año 2009-2011 – Administrador del Cyber Café MER','* Año 2006 – Gondolero en el Supermercado El Descu','','','','','','','1','0'),
 (263,'4-785-2276','22087-h','Thanya','Yerineth','','Gonzalez','0','1994-06-20','2','7204577','','68763019','Alto boquete , villa la paz','thanya_g20@hotmail.com','62','2','Thanya Gonzalez','ThanyaG20','Thanya','Thanya02','9','2','*Escuela Parroquial Pio12\r\n*Escuela Octavio Lopez ','Instituto Guadalupano - Pre media\r\nLiceo Santa Mar','*Universidad Latina                ','   *Vimori - Recepsionista\r\n       ','   *Hotel Fundadores - Recepsionista              ','   *Hotel Ladera - Mesonera ,Bartender            ','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (86,'8-707-2195','','Isabel','Milagros','Ortiz','Miranda','0','1977-03-14','1','66578136','','66578136','boquete','Isa_14142011@hotmail.com','62','1','Isa_14142011@hotmail.com','','','yarineth23','2','7','    Primer ciclo,año 1994\r\ninstitucion,Victoriano ','  Bachiller en letras,año 2007\r\ninstitucion,Instit',' Tecnico Superior en Enfermeria,año,2010\r\ninstituc','  Certificado de servicio estudiantil,año 2027                ','       Practica profesional en el Hospital Materno','    Practica profesional en la policlinica de la b','1','2','','3','1','','1','0'),
 (279,'4-758-2436','4-244-547-H','Evelyn','Michelle','','Olmos','0','2014-04-16','1','7723400','','65942019','Alanje Guarumal','evelyn423@live.com','62','2','http://facebook.com/evely','eviiolmos','evelyn423@live.com','xoxo-xoxo','10','3','      universidad  autÃ³noma de Chiriqui estudiant','          Colegio Francisco Morazan Bachiller en L','          Colegio instituto Profesional y TÃ©cnico',' 2013   Vendedora de Almacen el Costo empresas Kadima ','       2009 Practica Profesional Empresas Garrido ','          ','1','','','','','','0','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (278,'4-729-1032','4-716-1755','Aneth','Yuliana','Cedeño','Sánchez ','0','1983-05-23','5','774-8105','','67457299','Bda. El retorno','Karey1983@hotmail.com','62','4','Karey83@facebook.com','@karey83','Karey83','23082305','3','2','      Arnulfo Arias Madrid (primer ciclo de david)','          Colegio Francisco Morazan\r\n          Bac','          Universidad Autónoma de Chiriqui\r\n      ','     Almacén Shoping Center\r\n     Atención al cliente y \r\n     Ventas\r\n      2008-2010','          Manejo de equipos como:\r\nFotocopiadoras,','          ','1','2','','3','1','','1','0'),
 (277,'4-770-2140','4-147-499-H','Lisdabeth','Bellays','Matus','Hernández','0','1994-02-20','1','','','68614694','La Concepcion, Bugaba','lysda_20@hotmail.com','62','2','','','Lisdabeth','281720','11','2','      Bachiller en ciencias 2012 colegio Daniel Oc','          ','          ','      Vendedora en la farmacia yady en Bugaba','      recepcionista en CHT, Semi-vacaciones de 2 s','          ','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (276,'8-7072195','','Isabel','Milagros','Ortiz','Miranda','0','1977-03-14','1','66578136  64729351','','64729351','boquete jaramillo arriba','Isa_14142011@hotmail.com','62','1','isaortiz','','Isa_14142011@hotmail.com','milagritos','2','7','     Estudios primarios año 1989 Escuela llano gra','   Primer ciclo, año 1994,Primer ciclo Victoriano ','       Tecnico Superior En Enfermeria,año 2010,Ins','      Practica profesional en el Hospital Jose Domingo de Obaldia','       Autorizacion actualizada para ejercer como ','          Inscripcion actualizada de la asociasion','1','2','','3','1','','1','0'),
 (274,'4-740-241','4-740-241','Lizmaireen','Suely','Gutiérrez','Reyes','0','2013-05-26','1','','','6553-43-01','Doleguita','lizsg26@hotmail.com','62','2','','','liz26','4740241','2','7','Técnico Superior de Enfermería\r\nTítulo obtenido en','          ','          ','Desde el año 2007 laboro como mesera-cajera en la marca Pizza Hut David perteneciente a la compañía internacional de Franquicias Panameñas S.A.','          ','          ','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (275,'4-736-729','4-736-729','Vanessa','Lorena','Gonzalez','Caballero','0','2013-10-05','1','66650280','','67705539','LOS ALGARROBOS','vane_lore_13@outlook.com','62','0','','','VANESSA','eliecerdaniel13','3','3','   ACTUALMENTE ESTOY EN ADMINISTRACION DE EMPRESA ','          ','          ',' EN LA ACTUALIDAD LABORO COMO SECRETARIA DE LA COORDINACION DE SALUD ANIMAL R-9 DEL MINISTERIO DE DESARROLLO AGROPECUARIO BOCAS DEL TORO (2 ANOS Y MEDIO).  BUSCO TRABAJO EN CHIRIQUI YA QUE ES ACA DONDE RESIDO Y TENGO MI FAMILIA     ','          ','          ','1','','','3','','','1','0'),
 (93,'4-763-236','4-763-236','Michelle','','Espinoza','Espinosa','0','1991-10-16','3','64065727','69760969','69760969','Boquete','elyneth_16@hotmail.com','62','2','michelle.e.espinoza','','Michelle','1620michelle','3','3','      2012 Universidad Autónoma de Chiriquí\r\n·  Li','         2009 Colegio Beatriz Miranda de Cabal\r\n· ','          2006 Colegio Benigno Tomás Argote\r\n·  Ce','      2009 Practica Profesional Global Bank Corp.\r\n2010 Inventarios Melo Boquete                                    ','          2011 Cajera (Vacaciones) Melo Boquete   ','     2010-2012 Operadora de Ciber - Cafe Hastor Co','2','1','','2','3','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (273,'4-752-297','4752297','Kenia','Gisela','Cortez','Montes','0','1988-10-22','1','','','62657882','Jardines de la Riviera','kcm221988@gmail.com','62','2','','','Kenia','2022','3','7','      Tecnico en Mercadeo y publicidad','       Estudiante de Lic.Mercadeo y Publicidad   ','          ','      Departamento de Mercadeo/Ejecutiva de Mercadeo y Ventas\r\n\r\n\r\n•	Diagramación y elaboración de Catálogos de diversas marcas de calzados.\r\n•	Manejo de material POP para distribución en Panamá, centro y Sur América.\r\n•	Mercadeo y Visual Merchandising en tiendas en Panamá.\r\n•	Cotizaciones y coordinación con proveedores de material publicitario.\r\n•	Asistencia en la organización y cobertura de exposiciones en ferias.\r\n•	Asistencia a ejecutivos de ventas con material POP (material publicitario en puestos de venta), Catálogos y apoyo a clientes con fotos de productos, visual en tiendas.\r\n•	Seguimiento a temas varios y en general del departamento de mercadeo.\r\n•	Seguimiento y Coordinación con medios para pautas y participación  de publicidad en general de las marcas.\r\n•	Coordinación con clientes de Panamá, Centro y Sur América para la entrega de artes para pautas, revistas y vallas o material publicitario.\r\n•	Seguimiento de Presupuesto para elaboración de material Publicitario y promocional de las marcas, en ausencias de la Gerencia de Mercadeo.\r\n•	Coordinación para montaje de vitrinas en Showrooms y tiendas.\r\n•	Manejo de Proveedores en General.\r\n•	Atención a clientes\r\n•	Ejecutar ventas en ausencia a vendedores\r\n\r\n\r\n','          Asistente de Gerencia\r\n\r\n•	Llevar agenda','          Secretaría Administrativa (Departamento ','2','','','2','','','1','0'),
 (271,'4-760-188','4760188','Astrid','Xiomara','Samudio','Miranda','0','1992-01-13','1','68999965','','68999965','Elisa Chiari','astridxiomara0213@gmail.c','62','4','astrid.xiomarasamudio@fac','','Astrid Xiomara Samudio Mi','astridkarolina','1','3','      Actualmente estudiando Licenciatura de Conta','          Bachiller en Comercio con especializació','          Colegio Instituto David Educación  Pre-M','      Como operadora de internet, servicios multiples como desde cubrir caja de cobros, supervisora de los alumnos y atención al cliente. En el Colegio ICED','          Agencia de Seguridad Industrial Como asi','          KARDY Como ayudante general haciendo una','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (270,'8-757-570','8-757-570','José','Silvio','Rangel','De Salas','1','1982-04-07','3','261-7831','','65210454','bugaba','j.rangel0418@gmail.com','62','1','','','jr04','sarl2012','8','7','  \r\n  1994- 1997	Primer Ciclo  Belisario Billar Pé','1998- 2000  Instituto Profesional y Técnico de Ver','1997 Instituto Superior de  Panamá\r\nEstudio Superi',' 1995 a la fecha Cruz Roja Panameña. Jefe de servicios Pre-hospitalarios David, paramédico  atención de emergencias y eventos, atención en situaciones de desastre y rescate .voluntario    ',' Proyecto Hidroeléctrico Dos Mares. Paramédico res',' Julio 2011 a 31 de marzo 2013\r\nAsistencia Médica ','1','','','3','','','1','1'),
 (269,'8-762-1128','','Javier ','','Marino','','1','','0','','','','','','0','0','','','marino.javier','estaesparavos','7','2',' Escuela Particular Osiris Panama\r\nPrimaria','Instituto Tecnico Don Bosco \r\nSecundaria','Instituto Panasystem \r\nBachiller Industrial con en','Happy Shop (2005-2006)\r\nTecnico en reparacion y emsamblajes de equipos informaticos.','Advanced Communication Network (2006-2008)\r\nTecnic','Alcatel-Lucent (2008-2012)\r\nTecnico De Campo, inst','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (99,'4-754-1945','4-754-1945','Mitzi','Stefany','Arauz','Caballero','0','1990-10-17','1','','','6797-78-20','David','www.stefanyarauz1970@hotm','62','2','mitziarauzcaballero','','Mitzi Stefany Arauz','urgencias17','8','3','    Tecnico en Urgencias Medicas. Columbus Univers','  Bachiller en ciencias con enfasis en informatica','  Certificado de Sexto Grado. Escuela El Banco. 19',' Labore como paramedico en la constructora del Istmo. en el Proyecto Veggie Fresh. alrededor de 8 meses.                 ',' Realice mis Practicas en el Sistema de Emergencia','  Realice mis practicas en el Centro de Salud de S','1','2','','1','2','','1','1'),
 (101,'9-730-836','9 730 836','Edilsa ','Del Carmen','Vasquez','Morales','0','1988-12-29','3','721 2659','','6415 4768','','edydelcarmen29@hotmail.co','62','2','Edilsa Vasquez','','Edilsa Vasquez','123456','8','3','      TECNICO URGENCIAS MEDICAS Y DESASTRES      ','      LIC.URGENCIAS MEDICAS Y DESASTRES          ','                    ','          COLEGIO SAN FRANCISCO DE ASIS      ','               CLINICA CATTAN                ','EMPRESA COBRA PROYECTO HIDRAULICA DEL CHIRIQUI    ','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (268,'4-757-1570','4-147-1452H','Yenifer','Itzania','Rodríguez','Chávez','0','1991-03-07','3','','','6950-7230','Los Algarrobos/Nvo Horizonte','yirch3791@hotmail.com','62','2','Yenifer Rodríguez','','yirch','jesucristo','2','7','      Bachiller en Ciencias. Colegio Félix Olivare','     Asistente de Clínica. Centro Tecnológico de P','    Estudiante de Técnico en Enfermería. Centro Te','      Cuidado Especial a la tercera Edad. Casa de Familia.','          ','          ','2','1','','1','3','','1','0'),
 (267,'4-720-1153','47201153','Silka','Yariseth','Pittí','Atencio','0','1981-12-01','1','7741363','7305300 ext 1301','67890276','Doleguita','silka.jimenez12@gmail.com','62','1','','','silka.pitti12@gmail.com','davidjimenez','3','3',' Licenciatura em Inglés, En la Universidad Autónom','          ','          ','   Universidad Autonoma de Chiriquí- Secretaria Administrativa en al Dirección de Extensión y en el Tribunal Superior de Elecciones.   ','         Hotel Decamerón Resort, en Rio Hato Faral','          ','2','','','3','','','1','1'),
 (266,'4-729-1819','','Jose','Antonio','Moreno','Miranda','1','1983-09-06','1','730-7853','','64615979','LA PROSPERIDAD, DAVID','','62','2','','','TONY','0990','11','2','      EDUCACION PRIMARIA','         ESTUDIOS EN IPTN TECNICO EN ELECTRONICA','          ','      BOBBYS BAR, SAN MATEO DAVID','        BAR Y MARISQUERIA ISABEL, SAN MATEO DAVID ','       BAR EDUARDO, ALTAMIRA DAVID   ','1','','','2','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (229,'4-738-885','4738885','Eugenio','Jesus','Montilla','Serrano','1','','3','7754321','','64805007','san pablo nuevo','eugeniomontilla12@gmail.c','62','4','eugenio4ever@hotmail.com','','eugenio','12121285','11','2','      universidad autonoma de chiriqui primer seme','         Colegio felix olivares contreras bachille','          escuela antonio jose de sucre primaria c','      Conway store david encargado de seguridad 2009-2013      ','          super baru interamericano ayudante gener','          fiesta casinos operador de camaras de vi','1','','','2','','','1','1'),
 (230,'4-743-2345','4-743-2345','Fátima','Minerva','Moreira','De Gracia','0','1987-05-13','1','','','6495-3391','Los Algarrobos','faty_1307@hotmail.com','62','1','Fatima Moreira','','Fatima','bally1307','1','3','Universidad Autónoma de Chiriquí                \r\n','Colegio Francisco Morazán\r\n“Bachiller en Comercio ','          ','Práctica supervisada Universitaria en la Firma de Contabilidad Hurtado & Hurtado, S.A. Año 2009     ','Hotel Los Rivera, S. A.\r\nCargo: Contadora Interna\r','          ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (206,'4-728-2431','4-728-2431','Julissa','Johaisa','Cordoba','Gonzalez','0','1983-04-25','1','','720-2454 EXT 100','6963-4131','Boquete','johaissa25@hotmail.com','62','0','','','johissa25','sunju','11','3','      UNIVERSIDAD AUTÓNOMA DE CHIRIQUI, TERCER ANO','         INSTITUTO GUADALUPANO DE BOQUETE \r\nBACHIL','          ',' De Octubre 2010 a 19 de Diciembre 2012, Agente de Reservaciones, Recepcionista, Valle Escondido Resort, Golf, & Spa. Atención al Cliente.','          \r\nDe Enero 2010 a Octubre 2010, Cajera y','         \r\nDe Junio 2009 a Enero 2010, Agente de R','1','2','','3','2','','1','0'),
 (108,'4-220-83','1330805','Omar','Enrique','Ledezma','Ledezma','1','1970-02-05','1','65180895','','65180895','david ','','62','4','','','omar enrrique ledezma','anderson19','11','2','   escuela leopoldina field 1976-1982             ','   colegio beatriz miranda de cabal 1983-1989     ','                              ','   Empresa valle escondido boquete 2002-2010               ','    Empresa Avicola Atenas 2000-2002              ','      empresa pro seguro 1999-2000                ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (112,'4-740-2162','4740-2162','Virgina','Del Carmen','Rivera ','Chavez','0','1986-05-21','1','7750233','','6609-6626','urbanizacion la feria','virgicr-8@hotmail.com','62','0','','','virginia','2186','10','3','      licenciatura en psicologia universidad auton','       bachiller en ciencias   colegio instituto c','     educacion primaria escuela cabecera de cohea.','      asistencia psicologica grupo rey desarrollo organizacional reclutamiento.practica supervisada      ','          asistencia psicologia colegio fransisco ','          ayudante general sra raquel miranda.    ','1','','','3','','','1','0'),
 (261,'4-738-783','04-738.783','Geovanna','Lisbeth','Sánchez','Pimentel','0','2013-04-26','3','772-1819','','6689-0505','Los Algarrobos,Villa Celin','lisbeth2682@hotmail.com','62','4','Lisbeth Pimentel','','lisbeth2682@hotmail.com','bobi0724','10','3','      Lic. Secretariado Ejecutivo Administrativo, ','    Certificado de Bachiller en Comercio, Colegio ','     Certificado de Primer Ciclo, Colegio Victoria','      Almacén ,El Campeón. Puesto de vendedora y empacadora.','       Bananera Santa Cecilia, de Puesto de Secret','          ','2','','','1','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (262,'8-371-577','8-371-577','Laura ','Lucía','Huertas','De León','0','1971-04-29','1','770-5721','','6670-4745','Vía principal de Boqueron, cerca del Oleoducto.','llhuertas@hotmail.com','62','1','','','lhuertas','2246','3','3','      Estudios Universitarios en la Universidad Sa','          ','          ','  Kam y Asociados Panamá, S.A. (Corredores de Seguros)- Trabajé 9 años en diferentes departamentos, detallo: 2010 - Marzo 2013 - Administrador de la Sucursal de David: Coordinar la conservaci{on de cartera, coordinar la gesti{on de cobros, coordinar los pagos a proveedores, administrar la caja menuda.\r\n2008-2010 -Supervisor del departamento de Administración: - Supervisar los departamentos de Recepci{on, Servicios Generales y Mantenimiento, Coordinar el inventario de útiles y equipos de la empresa, Coordinar la logística de entrega de la mensajería, Asistir al gerente Administrativo en diferentes asignaciones.\r\n2005 -2008 - Asistente de la Gerencia General: - Coordinar la agenda del gerente, Coordinar los viajes, atención de llamadas, atención a clientes.\r\n2004-2005 Supervisor del Departamento de Servicio al clientes de Daños: - Coordinar la conservaci{on de cartera de clientes, coordinar los registros de las pólizas en el sistema de corretaje.  ','          ','          ','1','','','2','','','1','1'),
 (260,'4-756-595','','Máxima','Enith','Martínez','Jurado','0','1991-01-31','3','774-9145','','66429070','Nuevo San Carlitos','maxi3191@hotmail.com','62','0','','','Máxima','******','5','7','*2002\r\n - Escuela de Santa Cruz','*2008\r\n - Bachiller en Ciencias.\r\n   Colegio Félix','*2012\r\n- Técnico Asistente de Laboratorio  Clínico','*2011\r\n Policentro de salud de la Barriada san josé.   \r\nPráctica de la profesión. Flebotomía, manejo y procesamiento de las muestras.','*2012\r\nHospital Materno infantil José Domingo de O','* 2012-2013\r\nCentro Gendiagnostik S.A    \r\nAsisten','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (259,'4-234-920','435-0161-E','Betzy','Itzel','Espinosa','Miranda','0','1971-09-20','1','730-40-64','','65139312','Valle Bonito','betzi.espinosa20@gmail.co','62','1','betsi.espinoza20@gmail.co','','Betzy Espinosa ','kim+15-20','11','2',' ESCUELA  SAN FRANCISCO DE ASIS     ',' COLEGIO INSTITUTO DAVID  \r\n BACHILLER EN LETRAS  ','          ','  Almacen 5 Y 10\r\n    Vendedora   ',' \r\nPlaza Chiriqui                                 ','   Almacen 123   \r\n    Vendedora    ','1','','','3','','','1','0'),
 (257,'4-749-821','','Mariel','','Gutiérrez','Vega','0','1989-03-25','3','','','66855500','Los algarrobos','marigvega25@gmail.com','62','0','Mariel Gutiérrez','@marielg1989','MarielG','mariel25','3','3','   Bachiller en Comercio con enfasis en Banca y Fi','   Licenciatura en Economia con enfasis en Teoria ','          ','      No tengo experiencia','          ','          ','1','2','','3','1','','1','0'),
 (258,'4-703-867','4-703-867','Bella','Alicia','Chavarria','Nuñez','0','1977-06-03','2','','7758917','69516271','BUGABA','bellalicia06@hotmail.com','62','0','','','bellalicia','nataly','11','2','   PRIMER CICLO COLEGIO OFICIAL NOCTURNO LA CONCEP',' BACHILLER EL CIENCIAS    COLEGIO OFICIAL NOCTURNO','ME GUSTARÍA TRABAJAR COMO CAJERA O RECEPCIONISTA P','EN EL ÁREA DE ADMINISTRADORA  EN UNA BIBLIOTECA PUBLICA ','COMO CAJERA EN SUPERMERCADO EL REY ','CAJERA PROMOTORA EN COBROS EN TARJETAS DE CRÉDITOS','1','2','','1','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (256,'4-750-837','4-750-837','Odalys','Yamileth','','Mojica','0','2013-03-23','1','','','67325870- 68008061','LAS LOMAS DAVID','odymor@hotmail.com','62','1','','','ODALYS','MOJICA','1','2','UNIVERSIDAD TECNOLOGICA DE PANAMA\r\nTECNICO EN INFO','ESCUELA SECUNDARIA DE ASERRIO\r\nBACHILLER EN COMERC','          ',' SUPERMERCADO REY - DAVID  \r\n CAJERA Y  AUXILIAR DE ARQUEO      \r\n SEPTIEMBRE 2011 - MARZO 2013',' SUPERMERCADO EL EXTRA - PANAMA   \r\n SUPERVISORA D',' CURIOSIDADES PITTYOL      \r\n CAPTADORA DE DATOS\r\n','1','','','2','','','1','0'),
 (255,'4-731-671','','Lourdes','Margarita','Concepcion','Taylor','0','1983-11-30','1','770-0822','','64779615','BUGABA','lourdesconcepcion29@yahoo','62','1','','','','123456','3','7','TECNICO EN REGISTROS MEDICOS Y ESTADISTICAS DE SAL','          ','          ','CALL CENTER DE LA CAJA DE SEGURO SOCIAL, TRAMITE DE CITAS, CIUDAD DE PANAMA.      ','          ','          ','1','','','3','','','1','0'),
 (119,'4-754-1945','4-754-1945','Mitzi','Stefany','Arauz','Caballero','0','1990-10-17','1','','','6796-78-20 o 6408-86-33','David','www.stefanyarauz1970@hotm','62','2','mitzi arauz caballero','','mitziarauz','emergencias10','8','3','    Técnico. en Urgencias Medicas. Columbus Univer','  Bachiller en ciencias con énfasis, en informátic','   Certificado de Sexto Año.  Escuela el Banco de ','    Labore como Paramedica en la Constructora Desarrollo e Inversiones del Istmo.   En el proyecto  VEGGIE FRESH. Alrededor de 8 meses.(2012)                              ',' Labore como paramedica en el Sistema de emergenci','   Labore como paramedica en el Centro de Salud de','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (254,'4-758-1510','4-758-1510','Katherina','Alessandra','Mattos','Rivera','0','1991-09-24','2','','','6794-7149','Riviera, reparto universal, David','katherinea9109@gmail.com','62','2','kathy mattos','','katherina','cristopher','3','3','      Escuela Republica de Francia, 6to grado 2003','Colegio Felix Olivares Contreras, Bachiller en cie','Unversidad Latina de Panamá, Sede David.\r\nLicencia','Ventas Kathy\r\n-Atencion al cliente y administración de ventas','Clinica Medico Estética\r\n-Confeccion de fichas méd','Ministerio de desarrollo social,\r\n-coodinadora log','1','2','','3','2','','1','0'),
 (253,'4-741-223','','Yoisy','Atenas','Saldaña','Sanchez','0','1986-07-22','1','','','62698211','Urb. zia Elena','yoisy22@hotmail.com','62','2','yoisy22@hotmail.com','','Yoisy','jesucristo','3','3','Licenciatura en Administración de Empresas con Dir','Bachiller en Comercio con Especialización en Merca','Estudios Primarios en La Escuela Adventista Biling','  AVICOLA  ATHENAS: Asistente de Mercadeo en Avicolas Athenas, Control de personal, demostradoras de productos y fijar horarios, realización de estadísticas por vendedor y por proveedores dándole así un resultado de ventas por mes. Fanosof software utilizado por mi persona para ingresar los pedidos para las diferentes cadenas de supermercados. Rotación y supervisión de productos en las diferentes cadenas minisúper y supermercados, promover y abrir mercados de los productos de la Empresa. (2012)\r\n\r\n    ','AUDIOFOTO INTERNACIONAL, S.A.: Asesoramiento y ven','COMPAÑÍA PINZON, S.A.: Secretaria, llevar a cabo e','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (252,'4-725-2047','4-725-2047','Fatima','Iveth','Rios','Murillo','0','1982-07-29','3','','775-0773','6630-3776','LOS ALGARROBOS-DOLEGA','fatirm2907@hotmail.com','62','1','','','','123456','3','3','    ESCUELA VICTORIANO LORENZO SEXTO GRADO  ','       COLEGIO FRANSISCO MORAZAN-BACHILLER EN COME','      UNACHI-LICENCIATURA SECRETARIADO ADMINISTRAT','   PRODUCTOS IBIS-AYUDANTE ADMINISTRATIVA\r\nTEL.775-8919 2005 (LICENCIA)   ','      PANAMOTOR*SECRETARIA VENTAS-CAJERA\r\n775-7560','      SUPER BARU S.A. RECEPCIONISTA, CUENTAS POR C','1','','','3','','','1','0'),
 (251,'1-715-518','1-715-518','Lorena','Joanne','Manzo','Cedeño','0','1985-01-11','1','','','6793-0262','barrio universitario','lorearon@hotmail.com','62','0','lorena.manzo.906','','lorena.manzo','paolajoanne2405','8','7','      Técnico en emergencias médicas','          Bachiller en ciencias','          ','      Clínica hospital Cattán, paramédico en el área de urgencias y ambulancia. Entrenamientos de primeros auxilios.','          Alstom Panamá S.A. paramédico de proyect','          ','7','','','1','','','1','1'),
 (250,'4-749-2042','4-749-2042','Katiushka','Yesabel','Castillo','Sánchez','0','1989-04-22','5','774-2280','','6567-8065','San Pablo Viejo','k.castillo_22@hotmail.com','62','1','k.castillo_22@hotmail.com','','Katiushka','172207KR','11','3','      Bachiller en Letras con énfasis en Idiomas\r\n','      Técnico en Francés','      Último año. Licenciatura en Francés','     Secretaria / Recepcionista. Alianza Francesa\r\n','     Dependiente de ventas / Farmacias Arrocha S.A','     ','2','5','','2','2','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (126,'4 750 923','4-750-923','Nefi ','','Aguirre','Escamilla','1','2012-07-17','3','721-09-94','','6937-2705','David, chiriqui','nephy17@hotmail.com','62','2','Nfi Aguirre Escamilla','','nefia','trabajo ','11','3','     Actualmente Lic. Ingles con Enfasis en TRducc','          Bachiller en ciencias                   ','          Taller de comunicación a base se señas  ','   Actualmente tutor de ingles                            ','                                                  ','                                                  ','2','','','3','','','1','0'),
 (128,'4-254-389','4-254-389','Armando','Anel','Paternina','Castro','1','1972-08-15','1','-','-','68621468','ALTOS DEL RÍO, DAVID','armanpaterc@hotmail.com','62','2','-','','jack218','a15l31','11','2','COLEGIO FÉLIX OLIVARES CONTRERAS\r\nBACHILLER EN CIE','                    ','                    ','Franklin Jurado, S.A.\r\n-Funciones realizadas: operador de volquete, chofer repartidor.\r\n-Año 2011 – 2009\r\n       ','Price Smart Panamá, S. A. (Almacén David)   \r\n-Fun','Tagarópulos, S. A. Sucursal David\r\n-Funciones real','2','','','2','','','1','1'),
 (248,'4-735-2450','4-735-2450','Jassiel','Omaira','Sánchez','Gómez','0','1985-03-27','1','722-2531','','6241-0331','bágala','yassiel27@hotmail.com','62','0','Jassiel Sanchez (jass)','','Jassiel','jass1627','1','3','      Culminación de estudios en columbus universi','    Bachillerato en Comercio con énfasis en contab','          Primer ciclo colegio instituto david','Asistente Administrativa - Probachi','Asistente administrativa - ULDI Comercial         ','Secretaria - Shopping Center','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (247,'110480572','','Glinnys','','Porras','Lopez','0','1979-07-08','3','2776732','','66804412','VOLCAN PANAMA','ATENCIONTEMPRANA07@GMAIL.','20','0','','','GLYPO','GLYPO','11','5','MASTER EN ESTIMULACION TEMPRANA. UNIVERSIDAD SANTA','          POSTGRADO EN VALORACION DEL COMPORTAMIEN','        POSTGRADO  DETECCION Y REHABILIDACION DE A','      SERVICIO DE ATENCION PRIVADA','          ','          ','1','2','','3','3','','1','1'),
 (246,'4-739-488','4-739-488','Yoselin','Vanessa','Lara','Montero','0','1986-01-03','4','','770-6900','6028-9132','Los Algarrobos','jocelyne.lara@gmail.com','62','1','http://www.facebook.com/J','@jocelynelara','JocelyneLara','abuelahabibi','11','3','      Licenciatura en Nutrición y Dietética\r\nUnive','          Diplomado de metodología de la Investiga','          Cursando Maestria en Docencia Superior U','      •	Nutricionista-Dietista Policlínica Pablo Espinosa Caja de seguro Social 17 de septiembre 2012 hasta la actualidad            ','     •	Nutricionista-Dietista: Ministerio de Salud','     •	Nutricionista-Dietista: Empresa Atenas. Est','2','','','2','','','1','1'),
 (245,'PE92480','pe92480','Elida','Maria','Solis','Aviles','0','1982-08-29','3','775-3877','','6981-1915','Doleguita','elimarisolis@gmail.com','62','2','','','Elida','2213058','3','2','\r\n\r\nLicenciatura en Administración de Empresas Ini','Lic. Administración de Empresas (sin concluir)\r\n','Instituto David                    ','Agro Pro Panamá, S.A.\r\nAsistente de Gerencia\r\nManejo de la central telefónica\r\nRegistro y entrega de cheques\r\nReportes y asistencia a la gerencia\r\nManejo de Inventarios y útiles de oficina\r\nReportes de llamadas\r\nBrindar excelente atención y seguimiento a los clientes\r\nBuenas relaciones interpersonales y capacidad de comunicación\r\nen todos los niveles\r\nRegistro de llamadas para departamento de ventas\r\nManejo de la mensajería de la empresa tanto interna como externa      ','Casa Gala Sucursal David\r\nPromotora de Tarjetas Vi','Konzerta\r\nRecepcionista\r\nControl de agendas de eva','1','','','3','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (244,'4-705-1411','4-705-1411','Zoraya','Yanela','Castillo','Alvarez','0','1977-10-02','1','720-2351','no','6908-3467','boquete-Los Naranjos','yalvarez-07@hotmail.com','62','4','yalavarez-07@hotmail.com','no','zca','romaya0715','11','7','      colegio Secundario Benigno Tomas Argote\r\n   ','      ','          ','      Clinica Hospital San Fernando Asistente Adm. Sala desde 1999 hasta Diciembre del 2010','          Cámara de Comercio Industria y Agricultu','          ','1','2','','3','1','','1','0'),
 (135,'4-285-763','4-285-763','Karin','Matbeth','González','Tercero','0','1975-11-07','1','---------------','---------------','6949-2634','Urbanización Valle de la Luna','gkaryn@hotmail.com','62','4','','','Karin','111021','3','3','  Licenciatuta en Publicidad          ','                    ','                    ',' Inversiones Nuevo Luzon, Oficinista - Ejecutiva de Ventas           ',' Arte Gráfico Impresores, Ejecuriva de Ventas     ','                    ','1','','','3','','','0','0'),
 (168,'4-272-517','4-272-517','Pedro','Erick','Madrid','espinosa','1','1974-05-04','1','','','64004018','los algarrobos chiriqui','pedromadrid40@gmail.com','62','1','','','pedro madrid','pmadrid','3','3','Universidad Autónoma de Chiriquí\r\nLicenciatura en ',' Bachiller en Comercio con especialización en Cont','                    ',' Empresa: Riegos de Chiriquí S.A. (mayo 2011-Octubre 2012)\r\nPosición: Jefe de Recursos Humanos-Administrador\r\nJefe Inmediato: Lic. Sielka Gonzalez Tel: 722-2009           ','  Empresa: Cruz del Sur Duwest S.A. (abril 2000-ab','                    ','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (138,'4-731-1140','4-741-1140','Rebeca','Elena','Caballero','quiroz','0','2012-08-10','1','','','64620370','gualaca, chiriqui','rcwil7@gmail.com','62','2','rebeca caballero','','rebeca','elimey','11','3','Escuela Primaria de Gualaca \r\nEducación Primaria  ','Colegio Francisco Morazán\r\nBachiller en Comercio c','Universidad Autonoma de Chiriqui\r\nActualmente ulti','Distribuidora caballero- vendedora            ','Grupo Corporativo Saret de Panamá- Administradora ','Agropecuaria Los Cangilones - Administradora      ','1','','','3','','','1','1'),
 (207,'4-759-1754','4-759-1759','Greta','Betzaida','Gutierrez','De Gracia','0','1981-12-28','1','776-9342','','6664-2171','Las Lomas, Llano Grande Arriba','gretbet28@hotmail.com','62','4','','','gretbet28@hotmail.com','2812jesus','1','3','Bachiller en Comercio con enfasis en COntabilidad ',' Licenciatura en Contabilidad, con enfasis en Audi',' Postgrado en Docencia Superior, realizado en la U',' Practica Central Agricola de Romero (1999)      ','Centro medico Mae Lewis (2006-2012)\r\nFunciones rea','  Central Azucarero de Alanje, (abril-sept.2012)  ','1','2','','3','1','','1','0'),
 (176,'4-718-195','4-718-195','Cinthia','Cecilia','Samudio','Castillo','0','1980-03-25','5','','774-3752','6457-8304','Cochea Arriba','Sofiaariadna06@hotmail.co','62','0','Cinthia Samudio de Gaitan','','Cinthia','isabella','3','3',' Universidad Autonoma de Chiriqui\r\nLicenciatura en','    Universidad Autonoma de Chiriqui\r\nProfesorado ','                    ','   Diverlandia, S.A.\r\nAsistente Administrativa         ','  Mental Tech\r\nEjecutiva de Ventas                ','  Municipio de David\r\nDepartamento de Tesoreria; e','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (208,'4-748-1601','4-748-1601','Maryorie','Steffanie','Pitti','Villarreal','0','1989-01-11','1','','64727821','65471896','caimito Dolega','yuri_pitti@yahoo.com','62','2','steffanie1989_@hotmail.co','','maryorie','lagatita','2','7','  Beatriz Miranda de Cabal. Sexto año    ',' Centro Tecnologico. Tecnica en Enfermeria        ','          ','      Clinica Gabriel: Asistente de medico','   Fundacion Atenas. Gras medicas Tecnico en enfer','          ','1','','','3','','','1','0'),
 (174,'4-710-2290','47102290','Ekaterine','Yamileth','Miranda','Ortiz','0','1978-05-04','3','no','','6521 3595 67632327','las lomas','ekaterine05@hotmail.com','0','0','kathy-7808@hotmail.com','','ekaterine','1415211822','11','2',' escuela loma colorada secto grado           ','  instituto laboral nocturno de las lomas ilan sec','   instituto superior nueva vision curso el tercer','    hospital jose domingo de obaldia colaboradora manual        ',' hotel ciudad de david departamento de ama de llav',' coleguio victoriano lorenzo fondo de invercion so','1','','','1','','','1','0'),
 (143,'4-758-2434','','Yarianis','Yaneen','Pinto','Atencio','0','1991-05-09','1','','','6823-8995','boqueron','daniela-0525@hotmail.com','62','2','yarianis yaneen pinto ate','','yarianis','danielburene','2','7','      Tecnico en enfermeria      ','                    ','                    ','      Practicas Profesionales en el hospital regional, obaldia y en centro de salud      ','                    ','                    ','1','','','3','','','0','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (172,'4-240-174','375-2184','Joixa ','Haydee','','Morante','0','1971-05-30','1','721-0582 Mama','','6513 7540','Los Llanos. Las Lomas','chiquitita_338@hotmail.co','62','0','','','','123456','11','2','Bachiller en ciencias                  ','Udelas, 3er ano Gerontologia Social               ','UNACHI, 1ER ANO. Psicologia                       ','Minsa- Panama      1991-1998\r\n            ','           Farmacias Rey David 2004-2010          ','SERVICIOS fermaceuticos de Chiriqui 2010\' octubre ','1','','','3','','','1','0'),
 (188,'8-732-2237','87322237','Cristina','Vanessa','Miranda','DePuy','0','1979-10-30','1','','','62121149','','','0','0','','','cvmiranda','65352210','11','7','      ','          ','          ','      ','          ','          ','','','','','','','0','0'),
 (189,'4-191-36','248-3553','Lourdes','Marcela','Gonzalez','De Gracia','0','1968-03-09','1','','','6516-8582','Dolega','marcela09_2@hotmail.com','62','1','','','lourdes','esperanza','3','3','Licenciada en contabilidad por sistemas      ','Un año de posgrado en alta gerencia          ','Tecnica de Registros Medicos y Estadisticas de Sal','Asistente de contabilidad Panam construccion     ','Asistente alcalde.    Alcaldia de Dolega          ','          ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (149,'4-755-685','','Diana','','Araúz','Rodriguez','0','1983-09-12','3','no','no','65282995','rio sereno','dianaarauzr@gmail.com','62','1','Diana Arauz','','diana arauz r','123456','2','3','      bachiller en ciencias                       ','       licenciatura en en enfermeria universidad s','                                                  ','      centro medico LAIN . C.R                              ','          Hospital San Vito.                      ','                                                  ','1','2','','3','1','','1','0'),
 (243,'4-705-1','8-463-151','Mixza','Yariela','Gonzalez','Espinosa','0','1977-09-25','1','774-57-80','','6659-4540','david,altos del lago','mixzagonzalez@gmail.com','62','2','mixza gonzalez','','mixza gonzalez','aleshkadaniela','10','3','Licenciatura en Administracion con enfasis en gest','          ','          ','secretaria : Taller Carlos G.','secretaria: Impresos Del Cid','Mercaderista: Grupo solid    ','2','','','2','','','1','0'),
 (242,'6-702-1476','6-702-1476','Eliecer','Enrique','Rios','Samudio','1','1978-09-05','1','730-7759','','68958942','ciudad acuario david, chiriqui','erya04@hotmail.com','62','0','erya04@hotmail.com','','eliecer2409','margab24','11','2','      bachiller en ciencias. Colegio Rodolfo Chiar','      estudio actualmente en la universidad tecnol','          ','      Transportes Santamaria, en cargado de bodega y dristribucion de mercancía.','     Grupo Silaba Panama, ,emsajeria administrativ','         Grupo Rds Panama Encargado de compras y d','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (240,'4-751-320','','Jhonny','Ricardo','Murillo','Gonzalez','1','1988-11-05','5','','','69-02-28-12','la concepcion bugaba','jricardo911@hotmail.es','62','0','jhonny murillo','','','123456','2','7','TECNICO SUPERIOR EN ENFERMERIA','ASISTENTE DE CLINICA    ','BACHILLER EN CIENCIAS','CUIDADO DEL GERONTE INDEPENDIENTEMENTE DURANTE 1 AÑO','          ','          ','2','','','1','','','1','1'),
 (241,'4-736-1118','','Lisseth','Francia','Batista','Palacios','0','1982-07-02','1','','','67125874','','','62','2','lissethbatista@hotmail.co','@lisseth61201379','','47361118','2','2','      Escuela : justo abel castillo (certificado d','  Sexto ano : instituto laboral adventista panameñ','   Técnicos en enfermería : instituto. Superior nu','    Secretaria d la corregiduria d aserrio','          Asistente clínica (en bugaba) viaje volc','          ','1','','','1','','','1','1'),
 (239,'8-732-2237','87322237','Cristina','Vanessa','Miranda','DePuy','0','1979-10-30','1','','','62121149','Panama','cvmiranda_1114yo@hotmail.','62','0','','','cvmiranda','65352210','3','3','      ISAE UNIVERSIDAD','          ','          ','    Secretaria  ','          Cajera','          Maestra','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (238,'PE-12-1143','PE-12-1143','Vielka','Aeleen','Gutiérrez','González','0','1989-07-08','5','7301381','','65854556','Santa Cruz, David','vielkagutierrez1989@hotma','62','0','www.facebook.com/NELEEA','','Vielka ','akleiv890807','2','3','      Licenciatura en ciencias de la Enfermeria/ U','          ','          ','      Giras Integrales de Salud PAISS+N Comarca ngabe Bugle','          ','          ','1','2','','3','1','','1','0'),
 (237,'4-721-238','4-721-283','Keyla','Karina','Vergara','Ortega','0','1981-03-23','1','-','','6538-3998','BAGALA','kvergara84@hotmail.com','62','0','','','keyla ','samirabdel','3','4','    ESPECIALIDAD EN DOCENCIA SUPERIOR\r\n    CERTIFI','    LIC. EN ECONOMIA CON ENFASIS EMPRESARIAL\r\n    ','    BACHILLER EN COMERCIO \r\n    INSTITUTO PROFESIO','      CAJA ACTUALMENTE EN LA UNIVERSIDAD DEL ISTMO\r\n      Y ATENCION AL CLIENTE  ','      SUPER OPCIONES BUGABA 770-5300\r\n      CAJA L','       SUPER ROMERO POLICLINICA BUGABA\r\n       CAJ','1','','','2','','','1','0'),
 (235,'4-745-744','','Kelvin','','Guerra','','1','','0','','266-3258','60588485','Chiriqui,','','0','0','','','','123456','2','2','   Bachiller en Ciencia   ','   Tecnico en enfermeria y cursos recibidos       ','          ','    Experincias adquirida durante el tecnico en  enfermeria en la Css. en diferentes areas.  ','          ','          ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (236,'4-126-2178','','Senobia','','Guerra','Villareal','0','1959-01-02','1','','','69113819','','guerra59_@hotmail.com','62','0','','yilianisguerra','senobia guerra villareal','123456','10','2','promotora de salud','          primeros auxilios','          apoyo en lactancia materna infantil real','      ','          ','          ','','','','','','','0','0'),
 (234,'4-721-235','4-721-238','Keyla','Karina','Vergara','Ortega','0','1981-03-23','1','--','775-2535 EXT  26','6538-3998','BAGALA','kvergara84@hotmail.com','62','4','','','kEYLA VERGARA','123456','3','4','     ESPECIALIZACION EN DOCENCIA SUPERIOR\r\nCERTIFI','     lIC. EN ECONOMIA \r\nUNACHI     ','        BACHILLER EN COMERCIO\r\nINSTITUTO PROFESION','      AREA DE CAJA ACTUALMENTE EN LA UNIVERSIDAD DEL ISTMO\r\n\r\n\r\n','    CAJA EN OPCIONES BUGABA  770-5300   2008\r\n    ','     CAJA EN SUPER MERCADOS ROMERO 2007-2006','1','','','3','','','1','0'),
 (159,'4-760-231','4-760-231','Yusbeika','Lineth','SantaMaria','Montero','0','1987-10-02','3','2559088','0000','6861-5904','Las Lomas,David,Chiriqui','shanty1017@hotmail.com','62','2','yusbeikalineth.santamaria','','yusbesan','kelineth','2','7','Escuela Primaria Los Angeles Certificadode VI Grad','Escuela Secundaria de Puerto Armuelles Certificado','Instituto Tecnico Superior (INTECSU)Certificado de','Practicas profecionales en el Hospital General del Oriente Chiricano.                        ','2009: Giras integrales PAIS + N (programa ampliado','2011: Giras integrales Consorcio Global Fundesco R','1','','','1','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (298,'4-733-1687','4-733-1687','Iris','Mariela','Moreno','Crespo','0','1984-07-19','1','774/1956','','6204-5556','david chiriqui','irismoreno_19@hotmail.com','62','1','','','irismoreno','198426','3','3','      Licenciatura en EconomÃ­a       ','      Licenciatura en Contabilidad y Auditoria    ','                    ','   Oficinista de Arqueo         ','          Encargada del Departamento de Compras   ','          Asistente Contable          ','2','','','2','','','1','1'),
 (299,'4-753-1283','','Lourdes','Del Carmen','Perez','Olivo','0','2014-10-28','1','730-3513','','6609-4876','URBANIZACIÃ“N LA FERIA','lulu-4ever_28@hotmail.com','62','2','','','LOURDES PEREZ','lugen2828','3','3','     UNIVERSIDAD TECNOLÃ“GICA OTEIMA, LICENCIADA E','          COLEGIO NUESTRA SEÃ‘ORA DE LOS ANGELES, ','         COLEGIO SAN FRANCISCO DE ASIS, CERTIFICAD','      EMPRESAS ROMERO S.A. (PARQUE), PERIODO NAVIDEÃ‘O, 2007','          ','          ','1','2','','3','3','','1','0'),
 (300,'4-726-1472','4-726-1472','Yanelys','Del Carmen','Castillo','Samudio','0','1982-09-05','1','7304706','','64307983','Villa Roca','yanelysc@hotmail.com','62','1','','','yanecascas','noteimpor24','3','3','      Lic. en InglÃ©s','          Liceo Santa MarÃ­a\r\nBachiller en Comerci','          ','      Claro Panama\r\nRepresentante de Ventas','          Capital Wealth Fund\r\nAdministradora','          Hospital Mae Lewis\r\nCajera y RecepciÃ³n','2','7','','3','3','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (301,'4-713-570','4-713-570','Ikeila','Janice','Morales','Arauz','0','1978-09-20','5','','','69506522','','ikeilamorales_20@hotmail.','62','0','','','ikeila','2002','1','3','      Licenciatura en Contabilidad','          Bachiller Comercio','          ','     Ronella Enterprises, S.A.\r\nciclo completo, admon, planilla, recurso humano, cuenta por cobrar y cuentas por pagar, conciliaciones ','      central Southen Construction\r\nCiclo completo','         Profesionales Asociados\r\nContador  ','2','','','3','','','0','1'),
 (302,'4-729-83','4-729-83','Giordy','Aximar','Gómez','Arosemena','1','2014-05-09','5','721-2824','','6730-2929','San JosÃ©, David','ggomez09@hotmail.com','62','0','https://www.facebook.com/','@giordygomez','ggomez09','ulphednar','3','5','      Post-grado y MaestrÃ­a Parcial en Administra','       Licenciatura en InformÃ¡tica Empresarial.','     TÃ©cnico en ProgramaciÃ³n y EstadÃ­stica Empr','      Gestor de Cobros Master Cocina Kitchen Fair','          Consultores Alamar atenciÃ³n al Cliente,','          CorporaciÃ³n Educativa ChiriquÃ­. Instit','1','2','','3','2','','1','0'),
 (303,'4-721-578','4721578','Alejandro','','Aguirre','Cubilla','1','1981-03-25','1','','','67726174','concepcion, bugaba','mineros90@yahoo.com','62','4','','','Alejandro','huesos','8','3','      Escuela de Belen','          Bachiller en ciencias\r\n','          Licenciatura en tecnologÃ­a ortopedica','      fundaciÃ³n Atenas \r\nconductor','      proyecto hidroelÃ©ctrico\r\noperador de equipo','          proyecto hidroelÃ©ctrico\r\nminero','2','','','2','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (304,'4-743-2350','','Caridad','Vanessa','','Biebarach','0','2014-10-15','2','7745309','','68393473','Ivu Dos Pinos','vanessa_biebarach15@hotma','62','2','vanessa Biebarach','','Caridad','Carlos@,','10','3','   Licenciatura en Banca y Finanzas, cursando Ãºlt','   Bachiller en CIENCIAS Colegio FELIX OLIVARES C ','          ','  Cajera en el supermercado Romero    ','   Cajera de Felipe Rodriguez       ','          ','1','2','','2','1','','1','0'),
 (305,'4-747-2455','47472455','Melissa','','De Roux','Ponce','0','2014-11-06','1','','','66893068','Montilla','bceline2@hotmail.com','62','2','Melissa De Roux','','Melissa','brithany','3','3','      Licenciatura en EconomÃ­a','          ','          ','      Restaurante La Avenida','      AlmacÃ©n Punto Poderoso    ','     Banco CITIBANK     ','2','','','1','','','1','0'),
 (306,'4-750-1681','4-750-1681','Paola','Lineth','Morales','Caballero','0','2014-07-06','1','','','6902-94-32','DAVID, CALLE 8TA NUEVO VEDADO','pao-0689@hotmail.com','62','2','','@morals06','paola morales','paolamc','9','3','3 aÃ±o en licenciatura de mercadeo con Ã©nfasis en','3 aÃ±o en licenciatura de administraciÃ³n de empre','bachiller en contabilidad con Ã©nfasis en bancas y','coordinadora de mercadeo      ','anfitriona     ','practica profesional secretaria de la administraci','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (307,'4-720-1004','4-720-1004','Cintya','Ballet','Levy','De Gracia','0','1980-12-12','1','','','6797-8019','panama','ninilevy@gmail.com','62','0','','','cintyalevy','carolla','9','3','      licenciatura de publicidad      ','                    ','                    ','      ejecutiva de mercadeo, manejo de mercadeo de 20 tiendas a nivel nacional.     ','          analista de mercadeo ','          asistente de mercadeo y ventas          ','1','2','','3','1','','1','0'),
 (308,'4-772-236','4-772-236','Alejandra','María','Saldaña','Mendoza','0','2014-05-30','1','730-0151','','6460-1291','La ConcepciÃ³n, Bugaba','alejandra_30_05_94@hotmai','62','2','Alejandra SaldaÃ±a','@ale3022','AlejandraM','camila','3','2','      Bachiller en Comercio con enfasis en Ingles,','          Licenciatura en Gerencia Financiera y Ba','          ','      Vendedora\r\nBoutique 3.00 Fashion Store','          ','          ','1','2','','3','1','','1','0'),
 (309,'4-763-312','4-763-312','Jessica','Yurieth','','Saldaña','0','2014-09-16','1','775-1041','','6520-5116','URB. VILLA DEL SOL','jess.16s@hotmail.com','62','2','','','yadira','augusto','3','3','      BACHILLER EN CIENCIAS  FELIX OLIVARES C. 201','  II SEMESTRE OPTOMETRIA  UAA- AGUASCALIENTES MEXI','   I CUATRIMESTRE LIC. EN PSICOLOGIA UNIVERSIDAD L','      EMPADRONADORA CENSOS NACIONALES','          PROTOCOLO PATRONATO  (FERIA INT. DE DAVI','          ','2','','','2','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (311,'8-853-1062','8-853-1062','katherine ','Isabel','Nuñez','Sanjur ','0','1991-10-11','3','6884-0406','6884-0406','6884-0406','david dolega ','katy28n@hotmail.com','62','2','katherine isabel nuÃ±ez s','katherine nuÃ±ez ','katherine  nuÃ±ez','trixy20','5','2','      Bachiller en comercio con Ã©nfasis en contab','          ','          ','      ','          Laboratorios raly admitir paciente prueb','          ','1','','','2','','','1','0'),
 (312,'4-760-52','4-760-52','Luz ','Yariela','Rivera','Cocheran','0','2014-12-09','1','7744297','7202198','6676-2562','Urbanizacion Nazareth','luzyrivera09@hotmail.es','62','2','luz rivera','','luzyariela','luzyariela','3','3','      Licenciatura en Gerencia Financiera Bancaria','          ','          ','      Global Bank \r\nRecepciÃ³n, cheques de gerencia, transferencias internacionales, chequeras, atenciÃ³n al cliente central telefÃ³nica.','          Transporte y Turismo PanamÃ¡\r\natenciÃ³n ','          ','2','','','2','','','1','0'),
 (313,'4-738-783','4-738-783','Geovanna','Lisbeth','Sánchez','Pimentel','0','2014-07-26','3','772-1819','','6689-0505','Los Algarrobos,Villa Celin','lisbeth2682@hotmail.com','62','0','Lisbeth Pimentel','','lisbeth2682@hotmail.com','bobi0724','10','3','      Actualmente Curso el Profesorado En media Di','        Bachiller en Comercio  ','          ','      Actualmente Encargada del departamento de Archivo en La Universidad del Istmo Sede Chiriqui','        Vendedora Almacen El CampeÃ³n  ','          Secretaria. Oficina de Bananera Santa ce','2','','','2','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (795,'4-736-2246','4-736-2246','Karen','Daneth','Morales','Saldaña','0','2014-07-05','1','','','6671-8537','Los Valles de Algarrobos, Dolega','daneth-5@hotmail.com','62','1','','','daneth05','053021km','3','3','      licenciatura en AdministraciÃ³n PÃºblica con','          curso de ingles bÃ¡sico','          ','      Asistente administrativa Empresa de Equipos pesado, preparar estados de cuentas, cuentas por pagar y cobrar, confecciÃ³n de planillas de C.S.S. cotizaciÃ³n, orden de comprar, ','    secretaria de consultorio medico, confecciÃ³n ','          ','2','','','1','','','1','1'),
 (792,'4-7306-263','4-730-263','Alexis','','Ríos','Rovira','1','1983-03-12','1','','','6678-1100','Brisas del Golf Arraijan','alegraj507@gmail.com','62','1','','','arios','taliTakumi514','7','3','      Bachiller en Ciencias - Colegio Daniel Octav','         IngenierÃ­a en Sistemas Computacionales -','          ','      Jefe de DistribuciÃ³n - CervecerÃ­a BarÃº PanamÃ¡','          Gerente de Territorio - ECOLAB','       Administrador Senior de TecnologÃ­a en la a','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (793,'4-733-2275','4-733-2275','Yasselyne','Yalitza','Castillo','Espinoza','0','2014-08-12','1','','','6235-8827','Bda. San Jose','ylitzaespinoza@hotmail.co','62','2','','','ylespinoza','zwagassy1212lyne','3','3','      Licenciatura en Periodismo','          Bachiller en Comercio','          ','      Secretaria Contable','         Supervisora de Grupo','          Inspectora de CSS en el área de Construc','1','','','3','','','1','0'),
 (794,'4-735-2426','47352426','Ana','Lorena','Metzner','Gonzalez','0','2014-04-03','2','7759886','','62931852','Doleguita ','ana.metzner40@gmail.com','62','2','ana metzner ','','AnaMetzner','betun03','3','3','      Bachiller en Comercio con especializacion en','          Licenciatura en Turismo. Universidad Aut','          ','      CARBONDALE S.A.  Recepcionista, Cajera, Supervisora encargada de turno.  Ciudad de Panama ','      Centrum Tower Suites Hotel. Recepcionista. C','     LUCESMARLIA S.A. / ATOMICO 0826  Asistente Ad','1','2','','3','2','','1','0'),
 (675,'4-721-241','4-721-241','Suleika','Crisol','Valdes','Espinosa','0','1981-03-27','3','7769118','','64416067','LAS LOMAS MATA DEL NANCE','suleikavaldes@gmail.com','62','2','','','suleikavaldes@gmail.com','angelie1226','10','3','  BACHILLER EN CIENCIAS      ','LICDA. EN ADMINISTRACION CON ENFASIS EN R.H.      ','          PROFESORADO EN EDUCACION MEDIA          ','      ASISTENTE ADMINISTRATIVA EN A. VERGARA & CO      ','     CAJERA Y SECRETARIA EN BAHIA MOTORS, SA.     ','    HIDRAULICAS INFRAESTRUCTURAS\r\n ASISTENTE DE PL','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (676,'4-750-2287','47502287','Ginette','Raquel','Contreras','Montenegro','0','1989-07-24','1','7221161','-','66010092','la arboleda san pablo nuevo','grc2489@gmail.com','62','2','ginette contreras','@GINETTERAQUEL','ginetteraquel','ginetteraquel','10','2','      ESTUDIOS PRIMARIOS REPUBLICA DE FRANCIA 1996','          ESTUDIOS SECUNDARIOS COLEGIO FELIX OLIVA','   ACTUALMENTE ESTUDIO EN LA UNIVERSIDAD AUTONOMA ','      FERTITEC DE OFICINISTA LICENCIA DE CONTRATO DEFINIDO  SEPT 07 2011 A ENERO 07 2012            ','          ST. GEORGES BANK EJECUTIVA DE VENTA AGOS','                              ','1','','','3','','','1','0'),
 (678,'47192058','47192058','Priscila','Milagros','Castillo ','Alvarez','0','2014-09-17','2','7202351','','62028198','Boquete','prisi_alvarez@hotmail.com','62','4','prisyalvarez','','Prisy08','kennyboa','3','3','      Estudiante de Licenciatura en Derecho ','          ','          ','      Fundacion Hope - Valle Escondido Coordinadora - Actualidad','          Valle Escondido -Asiente de Gerencia Gen','   Hospotal Paitilla -Panama - Recepcionista de La','2','','','1','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (679,'4742215','4742215','Mirla','Yamila','Rovira','Ibarra','0','1986-12-15','1','7745369','','6641/9357','David','mirlarovira@gmail.com','62','2','','','mirlarovira ','constructora','3','2','            ','                    ','                    ','Asistente administrativa\r\nEmpresa Aes PanamÃ¡\r\n      ','Asistente administrativa \r\nEmpresa Cafisa Construc','Supervisora\r\nEmpresa Cirsa panamÃ¡             ','1','','','2','','','0','0'),
 (680,'811401274','','Nohelia','','Salazar','Marciaga','0','1987-02-03','1','','','6656 7281','Betania, PanamÃ¡','nsmarciaga@gmail.com','62','2','','','Nohelia','marciaga','11','3','      Licenciada en Fisioterapia','          Cursando AdministraciÃ³n de Servicios de','          ','    â€¢	De mayo de 2013 a la actualidad: Asistente de nutriciÃ³n en Lâ€™Atelier Gourmet Servicio de AlimentaciÃ³n para Hospital Punta PacÃ­fica.   ','          â€¢	De 2011 a 2013 atenciÃ³n en consulto','          ','2','','','2','','','1','0'),
 (681,'4-763-2016','4-763-2016','Clara ','Yakelin','Bonilla','Jimenez','0','1992-10-28','1','','775-9944','6279-1537','David','yacky1092@hotmail.com','62','0','','','cbonilla','cbonilla28','1','2','      Bachiller en Comercio con Ã‰nfasis en Inform','          ','          ','      Hidraulica del ChiriquÃ­ S.A','          ','          ','','','','','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (682,'4-731-671','4-731-671','Lourdes','Margarita','Concepcion','Taylor','0','1983-11-30','1','770-0822','64929759','64779615','David, Chiriqui','lourdesconcepcion29@yahoo','62','1','no','no','lourdesconcepcion29@yahoo','salud','3','7','      TÃ©cnico en Registros MÃ©dicos y EstadÃ­stic','          ','          ','      2 aÃ±os en el Centro de Citas MÃ©dicas de la Caja del Seguro Social.','          ','          ','1','','','3','','','1','0'),
 (683,'4-732-315','4-732-315','Natalia','Marian','Pineda','Pinto','0','2014-01-29','1','','','69589164','el alba','mibb1009@hotmail.com','62','2','mibb1009@facebook.com','','Natalia ','nathalyanais','3','3','      actual licenciatura en administracion public','          tecnico superior  informatica empresaria','          ','      secretaria centro naturista, modas intimas','          secretaria, ruth shipping, y aero servic','          practica profesional secretaria aeropuer','1','2','','3','1','','1','0'),
 (684,'1-720-2085','1202085','Nadhir','Veroska','','Robinson','0','2014-03-12','1','7583915','','69730662','bocas del toro','nadhir_robinson@hotmail.c','62','2','nadhir robinson','','nadhir robinson','68122035','11','7','tecnico superior de enfermeria',' asistente de clinica      ','      licenciatura en trabajadora social    ','      escuela publica de almirante','      colegio secundario de almirante    ','       bocas fruit company   ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (685,'4-756-940','4-756-940','Tania','Lirieth','Concepción','Gómez','0','1991-03-17','3','770-59-13','','6478-4532','Bugaba','tany_1791@hotmail.com','62','2','Tania Lirieth ConcepciÃ³n','tanylili','tanylili','t17l03c19g91','11','3','      Lic. Seguridad y Salud Ocupacional      ','          TÃ©cnico Seguridad y Salud Ocupacional  ','          Bachillerato en Ciencias          ','He trabajado como seguridad ocupacional administrativa para  el Grupo Cobra : HidrÃ¡ulica del ChiriquÃ­, HidrÃ¡ulica de Alto, HidrÃ¡ulica de San JosÃ©, HidrÃ¡ulica de Cochea, HidrÃ¡ulica de Mendre, HidrÃ¡ulica de Pedregalito. Donde he desempeÃ±ado funciones como elaboraciones de planes de emergencia y planes de seguridad, conocimiento en formularios de riesgos profesionales en la caja del seguro social, elaboraciÃ³n de informes de accidentes,  asistencia en salud ocupacional, procedimientos de ejecuciÃ³n, coordinaciÃ³n para elaboraciÃ³n de exÃ¡menes mÃ©dicos al personal, elaboraciÃ³n de estadÃ­sticas de siniestralidad. AdemÃ¡s tengo conocimientos bÃ¡sicos en recursos humanos.      ','                    ','                    ','1','','','3','','','1','0'),
 (686,'4-721-167','4-721-167','Luis','Guillermo','Rivera','Otero','1','1981-03-12','1','6696-8670','','6733-8722','los algarrobos, chiriqui','luis.rivera1203@outlook.c','62','1','luis rivera','','lrivera','30010012','1','4','post-grado en contabilidad gerencial      ',' licenciatura en contabilidad         ','          ',' departamento de contabilidad maquinaria suadi, s a      ','      departamento de auditoria interna cooperativ','    departamento de operaciones cooperativa el edu','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (687,'8-853-1062','8-853-1062','Katherine ','Isabel','Nuñez ','Sanjur','0','1991-10-11','3','6884-0406','6884-0406','6884-0406','david chiriqui a un costado de l feria de david ','katy28n@hotmail.com','62','2','katherine nuÃ±ez ','','katherine','edma17','5','2','      Bachiller en educaciÃ³n para el hogar y bach','          Bachiller en comercio con Ã©nfasis en co','                    __--------_-------------------','      Ejecutiva de atenciÃ³n al cliente en laboratorios raly cheroquis y PanamÃ¡       ','                   ************---****************','                    ******************************','1','','','1','','','1','0'),
 (688,'4 704 2434','4 704 2434','Yazmin ','Yohana ','Ledezma ','Rios','0','2014-09-13','1','770 3922 ','','67099718','barriada los Ã¡ngeles ConcepciÃ³n Bugaba','yazminderuiz@hotmail.com ','62','1','','','Yazmin13','jose02','11','2','      Actualemnte 1er aÃ±o licenciatura en contabi','          ','          ','      Distribuidora Moreno:  encargada de cuentas x cobrar y cuentas x cobrar, planilla. ','          Farmacias Arrocha cajera recepciÃ³nista.','          Cines Moderno cajera supervisora ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (689,'4-770-1719','','Nilka','Alejandra','Guerra','Gomez','0','2014-01-26','1','775-5796','','6681-2706','','nilka26@hotmail.com','62','2','','','nilka','guerra','11','2','    diplomado de tecnicas de cocina profesional','       diplomado de cocteleria','          diplomado de procesamiento de pescados y','      Chef Cesar Urriola\r\n6550-3494','          lic. Pablo Othon Suester\r\n6754-4137','          ','1','','','1','','','1','0'),
 (690,'8478251','1758971','Lisbeth','Julissa','Valdes','Espinosa','0','2014-08-25','1','64066175','67019986','67019986','BARRIADA EL CARMEN, DAVID','lisbethvaldes@hotmail.com','62','0','','','lisbethvaldes','lisbethvaldes','3','3','      ESCUELA FELIX A. LARA , POTREILLOS - CHIRIQU','          COLEGIO RODOLFO CHIARI - AGUADULCE COCLÃ','      UNIVERSIDAD TECNOLÃ“GICA OTEIMA    ','      INGETEC, S.A 2006 - 2009\r\nDAVID - CHIRIQUÃ (SECRETARIA DE GERENCIA)','          INGETEC, S.A. 2009 -2011 El Salvador\r\n(A','          INGETEC, S.A. 2011 -2013 DAVID - CHIRIQU','2','','','1','','','1','0'),
 (691,'114010348','114010348','Damian','Alfonso','Badilla','Elizondo','1','2014-08-31','1','506+(22490263)','','506+(83231048)','Costa Rica, San Jose. Ciudad Colon,  50m Sur Banco','dbelizondo@gmail.com','20','0','https://www.facebook.com/','','TerapeutaRespiratorio','melones','8','3','Terapeuta Respiratorio','          ','          ','Experiencia en Estudios de,SueÃ±o Calibracion de CPAP BIPAP','Experiencia en Manejo de Pacientes a domcilio','','2','','','1','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (692,'1-1028-0773','110280773','Andrey','Emilio','Araya','Rodriguez','1','1979-03-08','1','506-87755870','','506-83184895','San Jose, Costa Rica Hatillo 8.','andreyear@hotmail.com','20','0','Andrey Araya','','Andrey Araya','123456','8','3','      Licenciatura en Terapia Respiratoria','          ','          ','    3 aÃ±os  ','          ','          ','1','','','3','','','1','1'),
 (693,'4-739-2067','4-739-2067','Karol','Yaralis','Birmingham','Chacon','0','1986-04-12','3','775-4740','','6232-3050','Urb. La Princesa','birminghamkrol@hotmail.co','62','2','','','karolb12','12karolb','3','7','  Lic. en Contabilidad(sin culminar)          ','          TÃ©cnico en Servicios para Aerolineas   ',' Bachiller en Comercio          ',' Agente de Servicio a Pasajeros (Copa Airlines)           ','Ejecutiva de ventas (Agencia de viajes Gloria MÃ©n','                    ','1','2','','3','2','','1','1'),
 (694,'4-740-1633','4-740-1633','Isabella','del Carmen','Samudio','Martinez','0','2014-07-24','1','7746314','7750839','67144771','Barrii Bolivar','vampiria23_01@live.com','62','4','','','Issa ','allebasivampixand','10','3','      Licenciada en Biologia','          ','          ','      Impulsadora de ventas y atencional cliente','          ','          ','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (695,'4-754-848','4-754-848','Yuliana','Cristina','Quiel','Sanchez','0','1990-08-24','3','','','6538-4167','arboleda','yuli24_21@hotmail.com','62','4','','','Yuliana','240990','1','3','      ','          ','          ','      ','          ','          ','2','','','1','','','1','0'),
 (696,'8-813-317','8-813-317','Itzel','Aurora','Quintero','Guardia','0','2014-02-16','1','','','66836490','david, cuidad acuario','q-itzel16@hotmail.com','62','2','','','itzelquintero','icheivan','8','3','Universidad de PanamÃ¡\r\nTÃ©cnico en Urgencias Medi','          ','          ','Sistema Unico de Manejo de Emergencia 9-1-1','Grupo Vive S.A.     ','          ','2','','','1','','','1','1'),
 (697,'4-758-1976','','July','','Cerrud','Espinosa','0','1988-09-30','2','','','66274535','Santa cruz, David Panama','julycerrud@hotmail.com','62','0','july cerrud','','julycerrud','celindion','3','2','      Bachiller en Comercio con especialidad en co','        TÃ©cnico en ingles; Ministerio de EducaciÃ','        Curso avanzado de office, MITRADEL; 2010  ','      Oficinista, recepcionista en Servicios Secretariales S,A.\r\n2008.','          Asistente legal; Oficina jurÃ­dica; 2011','          Asistente Legal; oficina jurÃ­dica, 2012','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (698,'4-736-729','4-736-729','Vanessa','Lorena','Gonzalez','Caballero','0','1985-05-10','1','66650280','67705539','','','vane_lore_13@outlook.com','62','0','vanessa lorenna','','Vanessa','eliecerdaniel13','3','3','Actualmente curso 3er ano en finanzas y negocios i','          ','          ','      ','    Secretaria de la coordinacion Regional de Salu','          ','1','2','','3','1','','0','0'),
 (699,'4-738-885','4738885','Eugenio','Jesus','Montilla','Serrano','1','2014-12-12','3','7754321','','64805007','david','eugeniomontilla12@gmail.c','62','4','eugenio4ever@hotmail.com','','eugenio','12121285','11','7','      actualmente estudiando tecnico superiror en ','primer semestre de segundo aÃ±o de la licenciatura','          ','     vendedor en premier universe ','          jefe de seguridad de conway david','       asistente de supervisor en super bau intera','','','','','','','1','1'),
 (700,'4-731-671','4-731-671','Lourdes','Margarita','Concepcion','Taylor','0','1983-11-30','1','770-0822','','64779615','BUGABA','','62','1','','','lourdesconcepcion29@yahoo','salud','3','7','      TÃ©cnico superior en Registros MÃ©dicos y Es','          ','          ','      ','          ','          ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (701,'4-752-260','4-752-260 ','Jian ','Kiarelis','Pineda ','Pineda ','0','2014-04-29','1','','','6829 18 80 ','Los abanicos ','larissa2989@hotmail.com','62','2','','','Jkpineda','caballo1989','3','3','      Licenciatura en Inadaptados sociales E Infra','          TÃ©cnico en Inadaptados Sociales E Infra','          Licenciatura en Contabilidad y Auditoria','      Secretaria Recepcionista en Universidad Latina de PanamÃ¡ \r\n(15 de septiembre hasta el 1 de Diciembre del 2102 )            ','  Mercadeo y Publicidad \r\nUniversidad Latina de Pa','          Cajera en Multicines \r\nNacionales \r\n( En','1','','','3','','','1','0'),
 (702,'4-754-848','4-754-848','Yuliana','Cristina','Quiel','Sanchez','0','1990-08-24','3','','','6538-4167','','yuli24_21@hotmail.com','62','4','','','Yuliana','240990','1','3','      Unachi, Licenciatura en contabilidad con Ã©n','  Colegio Francisco MorazÃ¡n',' Colegio Instituto David',' Fuegos artificiales de PanamÃ¡\r\nAsistente contable',' Transfernan\r\nSecretaria\r\n         ','Rodelag\r\nVendedora      ','2','','','1','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (703,'4-733-1462','','Yolly','Yariela','Villarreal','Correa','0','2014-07-19','2','721-1106','','62589070','Urb. Las Sabanas','yollyari19@gmail.co','62','3','','','yolly','yollyari','3','3','      Adm. Empresas TurÃ­sticas Ã©nfasis Hoteleria','          ','          ','      S.i.e.m.e.c. secretaria','          Grupo Rey cajera','          Emisora La Exitosa secretaria','2','','','1','','','1','0'),
 (704,'4-750-1376','4-750-1376','Karol','Del Carmen','Rojas','Miranda','0','1989-07-29','1','','','63950042','Urb. Los Andes Loma Colorada','kary04nenita@hotmail.com','62','0','','','Kary','230429','10','2','Bachiller en letras con enfÃ¡sis en Idiomas.','Unachi 3 mese en ingles   ','universidad latina 1 aÃ±o en ingles con enfasis en','Sprago Store en 2006 - 2008','Terminales David PanamÃ¡ 1 aÃ±o    y tres meses.','Digicel promotora de ventas','2','','','2','','','1','0'),
 (705,'4-713-1651','4-713-1651','Laura','Veronica','Perez','Navarro','0','2014-11-29','7','','775-0773','6620-0512','Anastacios, Dolega','laura_p2978@hotmail.com','62','0','','','Laura VerÃ³nica PÃ©rez Na','tendresuerte29','3','3','      TÃ©cnico en programacion','          Licenciada en Informatica Empresarial','          ','    Cyber CafÃ©  ','        FacturaciÃ³n  ','          Secretaria Dept.Compras','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (706,'8-244-490','2784872','Orlando','','Guadamuz','Pino','1','1960-11-30','2','7753987','','60096905','Ivu Pueblo nuevo','guadamuz30@yahoo.com','62','1','','','GUADAMUZ','dayra31','3','5','      Ing Industrial','          Master en Servicios Aeroportuarios','          ','      ','          ','          ','1','2','7','3','3','1','1','1'),
 (707,'4-738-231','4-738-231','Itzel','Lisbeth','Torres','Jimenez','0','1985-11-06','1','','','6713-9211','Aguacatal, David','itzel_torres@rocketmail.c','62','2','','','itorres','198506','7','5','Bachiller en Contabilidad','TÃ©cnico en ProgramaciÃ³n \r\nLicenciatura en GestiÃ',' Postgrado en Docencia Superior.\r\n MaestrÃ­a en Do','INADEH- Administrador Virtual',' INADEH- Tutor Virtual       ','Barreiro & Barreiro   Abogados-\r\nSecretaria','2','','','2','','','1','0'),
 (708,'4-742-2182','','Guadalupe','Guadalupe','','Jimenez','0','','0','','','67500998','','','0','0','','','ELVIA','0827','10','5','  ','        ','          ','      ','          ','          ','','','','','','','0','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (709,'4-745-1611','4-745-1611','Maryelis','Andrea','','DELCID','0','2014-01-08','3','66930345','','67098603','NUEVO SAN CARLITOS','taty_08evans@hotmail.com','62','2','Maryelis Del Cid','','taty_08evans@hotmail.com','felicito','10','7',' ESCUELA SANTA CRUZ\r\nDIPLOMA DE SEXTO GRADO','FELIZ OLIVARES CONTRERAS\r\nDIPLOMA DE SEXTO AÃ‘O ','UNACHI\r\n- LICENCIATURA EN PUBLICIDAD\r\n-PROFESORADO','IGLESIA SAN JUAN MARÃA VIANEY\r\n-OFICINISTA','KENDAL ELECTRONICS\r\n- ADMINISTRACIÃ“N DE LA SUCURS','GLOBAL INDUSTRIAL\r\n-ADMINISTRACIÃ“N DE LA SUCURSAL','1','','','3','','','1','0'),
 (710,'47591','47591','Joselyn ','Liseth','Avendaño','Valdes','0','1991-10-10','1','','','67192915','Residencial Aqualina, David, Chiriqui','jocelyn1017@hotmail.com','62','2','','','Joselyn AvendaÃ±o ','eduardo10','3','3','     Bachiller en ciencias y letras. ','      Cursando - Licenciatura en AdministraciÃ³n d','          ','      Asistencia de Gerencia General (Duero latina, S.A) ','          Oficinista, registro y control de docume','          Ejecutiva de Venta y atenciÃ³n al client','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (711,'4-184-987','66-0134','Diana','Durvin','Espinoza','Hernandez','0','2014-12-05','5','777-2370','','6509-5421','UrbanizaciÃ³n Acuario','despinoza15@hotmail.com','62','1','','','despinoza','deh1915','1','3','      Licenciada en Contabilidad      ','        Profesora de EducaciÃ³n Media con especial','                    ','      CHK IngenierÃ­a, S. A.\r\n      Contador      ','          Candanedo y Candanedo. Auditora         ','       Guerra y CÃ­a., S. A.\r\nJefe de Contabilidad','1','','','1','','','1','0'),
 (712,'4-732-1908','','Leyla ','','Rueda','','0','2014-12-09','1','7773293','','','','r.linethj-19-09@hotmail.c','62','0','Lineth Rueda ','','Leyla Rueda ','123456','11','3','    Cursando Ãºltimo aÃ±o Turismo Hotelero y resta','          Escuela San Mateo ','          Colegio FÃ‰lix Olivares Contreras\r\nBachi','      Digicel Panama\r\nEjecutiva de ventas ','          Universidad Latina \r\nAtenciÃ³n al Client','          Celnan Internacional \r\nSupervisor de Per','1','2','','3','1','','1','0'),
 (713,'8-783-1220','8-783-1220','Jubilier','Alberto','De Leon','Calderon','1','1980-02-10','1','974-4802','','6903-9595','','reilibuj@gmail.com','62','2','','','reilibuj','10jdl1985.','2','3','      Licenciatura en Ciencias de EnfermerÃ­a\r\nUni','          TÃ©cnico de EnfermerÃ­a\r\nUniversidad de ','          ','Hospital Punta PacÃ­fica\r\nPanamÃ¡, Ciudad de PanamÃ¡\r\njunio 2010-diciembre 2013      ','          ','          ','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (714,'4-730-208','4-730-208','Ambar','Antonia','Arcia','Acosta','0','1982-07-16','0','7304308','','67189604','David, La Prosperidad','ambar_1682@hotmail.com','62','1','ambaryjairo@hotmail.com','@AmbarArcia','ambar_1682@hotmail.com','16julio1982','1','3','     Lic. en Contabilidad con Enfasis en Contabili','          ','          ','      4 1/2 aÃ±os Tropical Fruit Company, S. A.  Febrero de 2009 a Noviembre 2013','Doger Technology Development, S. A.  2014        ','          Candanedo y Candanedo.  PrÃ¡ctica Profes','1','2','','3','1','','1','0'),
 (715,'4-763-1152','2731294','Gabriela','Del Carmen','Pitti','Cortez','0','1992-10-24','1','','','6576-8093','Santo Domingo','josegaby-1024@hotmail.com','62','2','gabriela.p.cortez@faceboo','','gabypitti','10241992gp','7','2',' Bachiller en Ciencias y Letras con Enfasis en Inf','Curso la Licenciatura en EnfermerÃ­a en la Faculta','Seminario de desechos sÃ³lidos y hospitalarios; MI','Inventarista, Empresa Repusa, 2014','          ','          ','1','2','','2','1','','1','0'),
 (716,'4-753-280','4-753-280','Carmen','Gabriela','De La Torre','Vargas','0','1989-05-24','1','----','-----','6456-3388','San Vicente Bugaba','carmendelatorre89@gmail.c','62','2','','','Carmen','12345678','3','3','      Licenciatura en IngenierÃ­a BiomÃ©dica. UDEL','          Diplomado en GestiÃ³n de Calidad, por No','          ','      PrÃ¡cticas ClÃ­nicas  Supervisadas Hospital San Fernando, Hospital Santo TomÃ¡s y  BiomÃ©dica Nacional MINSA.\r\n','          Fast, Delivery Fastmedic S.A. Ventas de ','          Servilab S.A., Asistente de Ventas y de ','2','','','2','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (717,'4-746-377','4-746-377','Cinthia','Mayelis','Cisneros','Moreno','0','2014-02-22','1','','','6755-8694 / 6947-1728','Brisas del Rio','cyn22cisneros@gmail.com','62','0','','','Cyncisne','pinkonion','3','3','      Cursando estudios universitarios en Administ','          ','          ','      AtenciÃ³n cliente, cajera, relaciones al consumidor en Video Store.','          Inventarios y encuestas con Epica Consul','          ','2','','','2','','','1','0'),
 (718,'8-837-2162','8-837-2162','Genesis','Llabel','Quiroz','Hernandez','0','1990-07-19','1','720-4657','','6783-8108','Boquete','gvlld_1924@hotmail.com','62','2','','','gvlld_1924@hotmail.com','lovemickey','11','3','  tÃ©cnica en terapia respiratoria','          ','          ','      hospital materno infantil josÃ© domingo de obaldia','          ','          ','2','','','2','','','0','1'),
 (719,'4-757-1053','4-757-1053','Juan ','Andres','Vega','Vega','1','2014-06-01','1','','','64933433','La Arboleda David Chiriqui','juan_andres_vega@hotmail.','62','2','Jab_1991@hotmail.com','','Juan Andres Vega','19911091','11','3','      Escuela Primaria Bet-thel Baru, Chiriqui.','Colegio Latino de Costa Rica Zona Sur Costa Rica. ','Columbus University David, Chiriqui Licenciatura e','      Asilo de Ancianos Barrio Bolivar.','          ','          ','2','','','1','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (720,'4-762-288','4-762-288','Ilian','Lizeth','Gonzalez','Sanjur','0','1991-11-10','1','','','6461-6177','las lomas,llano grande abajo','lissi1091@hotmail.com','62','2','','','ilian gonzalez','lizeth','7','3','primer ano en licenciatura en adm. de empresas tur','bachiller en comercio. contabilidad computarizada.','primer ciclo victoriano lorenzo                   ','cajera en premier universe s,a       ',' cajera y ayudante general winebago de panama     ','                    ','1','','','3','','','1','0'),
 (721,'4-743-998','4-743-998','Melvin','Samuel','Camaño','Flores','1','1987-01-01','1','709-0014','','67219884','VILLA MERCEDES','','62','2','MELVIN CAMAÃ‘O','','MelvinC  ','Trabajo-1','9','3','Licenciatura en Mercadeo y Comercio Internacional.','Centro De Lenguas De La Universidad TecnolÃ³gica d','\r\n','BOMBA S.A.\r\nEstudio de factibilidad internacional                                                        Sept. 2012- Feb. 2013\r\n(Nicaragua, Honduras, El Salvador y Guatemala).\r\nCreaciÃ³n de catÃ¡logo virtual para pÃ¡gina web e impresiÃ³n            Sept. 2013- enero- 2014\r\nCreaciÃ³n de material POP y \r\nVideo de presentaciÃ³n de productos\r\n','PERFORA PANAMÃ S.A. \r\ncreaciÃ³n y posicionamiento','ING.MARVIN RÃOS                                  ','1','2','','3','1','','1','1'),
 (722,'4-267-526','4-267-526','Maria','Isabel ','Alvarado','Abrego','0','1973-09-01','1','0','0','6550-1557','Villa Adriana Los Algarrobos','alvaradoabrego@gmail.com','62','1','','','mialvarado','nancito01','3','6','Doctorado en AdministraciÃ³n de Negocios          ','MaestrÃ­a en AdministraciÃ³n de Empresas  con Espe',' Post Grado en Alta Gerencia                      ','Patronato del Sistema Ãšnico de Manejo de Emergencias\r\n 9-1-1 / Secretaria General /Directora Ejecutiva Encargada\r\n              ','  Caja de Seguro Social  /Supervisora,\r\nAsesora y ','                              ','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (723,'4-745-421','','Mariam','Yarictza','Abrego','Gomez','0','1987-05-21','1','7743936','','67624420','david','maryag2128@gmail.com','62','1','mariam yarictza abrego go','','mariam','215878','11','2','     Bachiller en ciencias\r\ncolegio secundario de ','       II aÃ±o de administracion publica con enfas','          curso de Informatica y curso de relacion','      cajera del super 99 david','          secretaria asistente de almacen xtop dav','          ','1','2','','3','1','','1','0'),
 (724,'4-777-1878','4-777-1878','Evelyn ','Mileyka','Castillo','Moreno','0','2014-10-01','0','','0','68214727','el veladero ','vjpp_25@live.com','62','0','','','Evelyn Castillo','jenniferguerrero19','1','2','     SEGUNDO AÃ‘O DE LA LICENCIATURA EN CONTABILID','        COLEGIO FRANCISCO MORAZAN  (BACHILLER EN C','          COLEGIO JESÃšS MARÃA PILA(PRIMER CICLO)','     HERMANOS SAMUDIO, S.A (ASISTENTE DE CONTABILIDAD)','          CAJA DE AHORROS (PRACTICA SUPERVISADA)','          ','1','','','3','','','1','0'),
 (725,'4-755-1928','4-755-1928','Carlos','Enrique','Peñalba','Pineda','1','2014-01-01','1','721-3581','7213581','64152520','los abanicos','carlosjs01@gmail.com','62','1','','','carlos0129','carlos0129','11','2','      Primaria escuela de pedregal titulo obtenido','          Colegio pablo emilio corsen titulo obten','          Colegio francisco morazan titulo obtenid','   Grupo rey ayudante general gerente erika montilla tel: 775-5911 ','Super baru ayudante general y atencion al cliente ',' Power club encargado de mantenimiento y aseo gere','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (791,'4-758-1747','4-758-1747','Ligia','Elena','Guerrerro','Castillo','0','1991-08-08','3','772-9207','','68810184','CORREGIMIENTO DE CHIRIQUI ','','62','2','','','LIGIA ','AF020708','3','7','     TÉC. BILINGUE EN CALL CENTER\r\nUNIVERSIDAD DEL','          CENTRO EDUCATIVO LABORAL\r\nBACHILLER EN C','          COLEGIO FELIX OLIVARES CONTRERAS\r\nPRIMER','      AUTO SERVICIOS MARCONELA\r\nCAJERA, SERVICIO AL CLIENTE ','          SERVIAUTO MARQ \r\nSERVICIO AL CLIENTE, CA','          ','1','2','','3','3','','1','0'),
 (728,'4-737-1687','4-737-1687','Odilis','Aribeth','De Leon','Cubilla','0','1985-09-29','3','66534500','67750561','66892484','san juan del tejar /san pablo viejo/david','aribeth29@hotmail.com','62','2','odilis de leon','','Tecnica de Enfermeria','29091985','2','7','Colegio FÃ©lix Olivares Contreras bachiller en let','tÃ©cnico en enfermerÃ­a \r\nINTECSU','          ','Giras medicas con empresa privada Liga de la Salud ','Giras medicas pspv con minsa regiÃ³n de ChiriquÃ­','giras medicas regiÃ³n de la comarca ngabe bugle','1','2','','3','1','','1','1'),
 (729,'4-750-1759','4-750-1759','Jorge','Daniel','Herrera','Castillo','1','2014-08-04','1','7745586','','68197230','David-La Prosperidad','ingjdherrera@hotmail.com','62','2','','','47501759','esternocleidomastoideo','11','3','      Estudiante Universitario, IngenierÃ­a en Man','     Seminario, taller de capacitaciÃ³n en manejo ','           Curso, PlomerÃ­a General â€“ Plomero Id','      Contratista en instalaciÃ³n de plomerÃ­a en general en barriadas','          seguridad  privado-PROCOSE ','          Ayudante general en Super Mercado Altami','2','1','','2','3','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (730,'4-721-241','4-721-241','Suleika','Crisol','Valdes','Espinosa','0','1981-03-27','3','7769118','','64416067','las lomas mata del nance','suleikavaldes@gmail.com','62','2','','','SULEIKA','angelie1226','10','3','      ','          ','          ','      ','          ','          ','','','','','','','1','0'),
 (731,'47421905','8751803','Carolina','Aracely','Sanchez','Perez','0','2014-03-28','1','','','64476753','La Concpcion, Bugaba','jesusesmisenor@outlook.co','62','1','Carolina Sanchez','','carolinaspm','carolinaspm47421905','10','3','      Licenciatura en Informatica','          Licenciatura en Ingles (en curso)','          ','      Secretaria de Planilla en el Municipio de Bugaba','          Asistente de Departamento de Compras','          ','1','2','','3','2','','1','0'),
 (732,'4-759-2462','N','Ivette','Del Carmen','Guerra','Pitti','0','1991-12-11','1','','','6684-6075','DOLEGA, CHIRIQUI','ivette-guerra@hotmail.com','62','4','IVETTE GUERRA','','IDGUERRA','171121','1','3','      GERENCIA FINANCIERA, BANCARIA Y NEGOCIOS INT','                    ','                    ','      RENÃ‰ & ASOCIADOS \r\nAUXILIAR CONTABLE.      ','                    ','                    ','1','2','','3','2','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (733,'4 727 1793','4 727 1793','Mirtha','Michelle','Miranda','Caballero','0','1982-11-12','1','730 0051','','6697 8385','concepciÃ³n, Bugaba','misebas11@hotmail.com','62','0','mirtha miranda','','misebas11@hotmail.com','sebastian11','2','7','      tÃ©cnico en enfermeria      ','                    ','                    ','            ','                    ','                    ','1','','','3','','','1','1'),
 (734,'1-725-111','3155613','Alvaro','Marlon','Montenegro','Miranda','1','1991-07-15','3','','','64157459','zoonde,David, Chiriqui','nolramtel@gmail.com','62','2','https://www.facebook.com/','','alvaro','155119','7','3','Licenciatura en informÃ¡tica con Ã©nfasis en Redes','          ','          ','16 de abril al 15 de agosto de 2013 (4 meses)\r\nFertilizantes de Centro AmÃ©rica [PanamÃ¡], S.A.\r\nPrÃ¡cticas en el Departamento de InformÃ¡tica y Sistemas\r\nFunciones:\r\nïƒ˜ Brindar mantenimiento y soporte tÃ©cnico a las diferentes oficinas de la empresa, que garantice el buen funcionamiento del equipo, de los programas y de los sistemas para el proceso de la informaciÃ³n.\r\nïƒ˜ Encargado del cableado estructurado de la red (UTP, Fibra Ã“ptica) ïƒ˜ IntegraciÃ³n de equipo activo para redes (concentradores, routers, bridges, etc).\r\nïƒ˜ Soporte a la infraestructura de redes inalÃ¡mbricas','          ','          ','1','2','','3','1','','1','1'),
 (736,'4-746-1','4-746-1','Diego','Emilio','Del Cid','Rios','1','1988-04-08','1','','','6897-0839','La Concepcion, Bugaba','mela_caro2122@hotmail.com','62','2','Diego Emilio Del Cid Rios','@edelcid_22','diego_21','dc2208','7','3','      2013. Universidad AutÃ³noma de ChiriquÃ­\r\n  ','          2013. Universidad AutÃ³noma de ChiriquÃ­','          ','      ï¶	Conocimientos avanzados en office (Word, Excel, Power Point, Publisher. \r\nï¶	Conocimientos bÃ¡sicos  de Software De ProgramaciÃ³n â€œconocimientos bÃ¡sicosâ€ (Microsoft Visual Basic 6, C, C++).\r\nï¶	Conocimientos bÃ¡sicos en Programa de Bases de Datos (Access, Mysql, Mysql Workbench).\r\nï¶	Conocimientos en DiseÃ±o de PÃ¡ginas Web.\r\nï¶	Conocimientos en Sistemas Operativos.\r\nï¶	Conocimientos en redes.\r\nï¶	Conocimientos del manejo de planilla y horas de trabajo de personal. (Insolp Inc.)\r\n','          ','          ','','','','','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (737,'4-293-36','133-2514','Melissa','Edith','Ledezma','Fuentes','0','1975-11-11','4','67887175','','68667065','david, san mateo','amelysse@hotmail.com','62','3','','','amelysse','perroroky1975','3','3','Escuela Parroquial Pio XII\r\nCertificado de sexto g','Colegio Francisco MorazÃ¡n\r\nCertificado de Bachill','      Unachi\r\nUn aÃ±o de licenciatura de Administr','      Labore en el Municipio de David\r\nAlcaldÃ­a, secretaria en Juzgado de TrÃ¡nsito','       Labore en Price -Smart\r\nDepartamento de Fro','   Labore en Cerveceria Nacional\r\nSecretaria en De','1','2','','3','1','','1','0'),
 (738,'4-724-177','4-724-177','Wendy','Xaviera','Sanchez','Rios','0','1981-11-26','3','69806817','','69806817','david ','lokities@hotmail.com','62','2','','','wendy','2626','3','7','      4 aÃ±o de Contabilidad','          ','          ','      En area administrativa compras Constructora Odebrech. Atencion al  clinte por   4 aÃ±os david y panama.','      Estudie y trabaje 3 aÃ±os en Estados unidos ','          ','2','','','3','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (739,'4-744-414','4-744-414','Mayslin','Del Carmen','Rodriguez','Moreno','0','1987-08-01','1','','','62038466','','mayslinrodriguez@gmail.co','62','1','','','Mayslin','mafer18','5','3','      Licenciatura en tecnologÃ­a medica','          ','          ','      Clinica Hospital San Fernando','          Instituto Conmemorativo Gorgas de Estudi','          ','1','2','','3','1','','1','0'),
 (740,'4-248-771','4-248-771','Eric','Faustino','Staff','Soto','1','1973-06-26','0','7763009','','69725805','dolega','magno2579@hotmail.com','62','0','','','ERIC','escorpio1','7','4','     POST GRADO EN ALTA GERENCIA','          LICENCIATURA EN  SISTEMAS','          ','      EJECUTIVO DE VENTAS ','          ENCARGADO DE LOGISTICA','          ENCARGADO DE  LOGISTICA','2','1','','2','3','','1','1'),
 (741,'4-211-12','95-1553','Mitzi','Yaneth','Diaz','Peña','0','2014-12-11','1','2573210','','66987466/ 67602625','PanamÃ¡ y la Ciudad de David Chiriqui ambas resido','mdiazp5@hotmail.com','62','2','','','mdiazp5@hotmail.com','adrian2520','10','3','      Colegio MoisÃ©s Castillo OcaÃ±a Bachiller en','          Columbus University Licenciatura en Gere','          ','   Experiencia Laboral:\r\nCIMESA, Agosto 2005 hasta Marzo 2014.\r\nDepto. de Recursos Humanos, Supervisora de Personal, Ãrea Administrativa Auxiliar Depto. de Contabilidad Laboral en Recursos Humanos,  AtenciÃ³n al Cliente Ã¡rea operativa.\r\nSupervisora en la SecciÃ²n de Personal de Recursos Humanos\r\nFunciones: confecciÃ³n de cartas, Mutuo Acuerdos de Trabajo, Reporte de Incidencia de los colaboradores en conjunto con el Depto. de AsesorÃ­a Laboral, Autorizaciones de Descuentos Bancarios y otras Instituciones, ConfecciÃ³n de contratos a Colaboradores en los Sistemas APPX, SIGMRE, KRONOS,  ConfecciÃ³n de Riesgos Profesionales Conocimientos de Planilla, Registro de Kronos, AtenciÃ³n de Clientes Internos y Externos, Detalles de Informes Contables, Manejo de Caja Menuda.\r\n\r\n   ','          Constructora Dr. Luis Arias (David, Chir','          ','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (743,'4-752-1430','','Joyce','Johany','De Gracia','Gonzalez','0','1990-03-08','1','7768424','','69041092','las lomas davis chiriqui','joycedegracia@gmail.com','62','0','','','JoyceDG','johann04','8','7','      Técnico en emergencias medicas - UNACHI','          bachiller en ciencias . Instituto David','          ','      SUME 911 - David\r\n   Bomberos - David','cuarto de urgencia del hospital Regional Rafael He','cuarto de urgencia del Hospital materno  infantil ','1','2','','3','1','','1','0'),
 (744,'4-749-461','4749461','Keitlyn','Zuleima','Lezcano','Cubilla','0','1989-02-09','1','','','69593422','Apartamentos SaldaÃ±a NÂº4, Avenida Francisco Clar','keylez1605@hotmail.com','62','0','','','Keylez09','16abril2005','3','3','Licenciatura en AdministraciÃ³n de Empresas con Ã©','          ','          ','Tower\'s & Ram\'s, S.A.\r\nAsistente Administrativa\r\nUn aÃ±o de experiencia','          ','          ','2','','','1','','','1','0'),
 (745,'4-742-32','474232','Milena','Paulet','Lopez','Rodriguez','0','1985-12-18','1','7750354','','68616099','San Mateo casa 3558','rlmilene@hotmail.com','62','4','','','milena ','231823','11','3','      II AÑO de Licenciatura en Contabilidad Con é','          Diploma de Bachiller en Comercio con enf','          Certificado de Primaria','      Almacen Picadilly Store David, mi función en esta empresa era la de CAJERA,  manejaba caja registradora, caja computarizada y fiscal, efectivo, tarjetas de crédito, detección de billetes falsos, clubes de mercancía y brindaba atencion al cliente donde este se sintiera satisfecho del servicio brindado; trabaje un año en esta empresa.','          Conway Store David,en esta empresa me de','         SUPERMERCADO ROMERO S.A.. labore como caj','1','2','','3','1','','0','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (746,'4-739-673','4-739-673','Rotsary','','Villavicencio','Santamaria','0','2014-03-06','1','','','6946-2856','barriada el alba','rotzavillavicencio@yahoo.','62','4','','','rotsary','eiki2005','2','7','      TÃ©cnica Superior en EnfermerÃ­a','          Bachiller en Ciencias','          Primaria Completa','      Gira integrales de salud como tÃ©cnica en enfermerÃ­a.','        Aplafa- tÃ©cnica en enfermerÃ­a.  ','          ','1','2','','1','1','','1','0'),
 (747,'4-772-2271','','Kritzia','Katerine','Pineda','Calvo','0','1990-05-05','1','','','64078817','David-Aguacatal','kritziapineda@hotmail.com','62','4','Kritzia Pineda','@kritziapineda','kritziapineda@hotmail.com','5demayodel90','10','3','      Licenciatura en Periodismo con Ã©nfasis en d','          ','          ','      Secretaria en Ondas Chiricanas','          ','          ','1','','','3','','','1','0'),
 (748,'4-757-873','4-757-873','Michelle','Paola','Quiroz','Samudio','0','2014-09-04','3','730-3106','','6215-5674','DAVID','michellepaolaquiroz@gmail','62','4','','','mquiroz','1234michelle','3','3','Licenciatura en Ingles con énfasis en traducción  ',' Profesorado Superior en curso         ','          ','     Star Contac Servicio al Cliente ','  Hotel Puertas del Sol        ','Centro Medico Mae lewis          ','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (749,'47581374','','Sherlys','Ibeth','Gonzalez','Gonzalez','0','1991-09-21','3','7756344','','67697879','urbanizacion aeropuerto NÂ°2','sherlysg@hotmail.com','62','0','','','Sher','21091991','3','3','      Bachiller en Ciencias, Instituto Superior Pa','          Actualmente cursando el segundo aÃ±o de ','          ','      Asistente administrativa.\r\nIron City Park S,A\r\nRepresentante legal: Esteban SolÃ³rzano 6662-5557','          Cajera.\r\nCorporaciÃ³n de Inversiones Alf','          Promotora de ventas de inmobiliarios.\r\nI','','','','','','','1','1'),
 (750,'4-766 435','','Kenia','Cecilia','Concepcion','Pimentel','0','2014-07-11','1','67461541','','67461541','','ceci_kya_ceci@hotmail.com','62','2','kenia de espinosa aragon','','kenia','123456789ceci','2','3','   Creditos odtenidos en la universidad la paz com','          Estudios en Ipca.  Sede en la universida','          Bachiller en secretariado ejecutivo. Sec','      Trabaje como asistente dental en la clinica laser,  en DAvid,con el doctor jorge cordova. Con otra clinica con el doctor wadinger Gerra.','          ','          ','1','','','3','','','1','0'),
 (751,'4-758-1686','','Lourdes','Yoselis','Pérez','Aguirre','0','1991-09-27','1','770-3677','','6282-2576','La Victoria de Boquerón','lourdes270890@gmail.com','62','2','','','lourdes27','2717','3','3','      Certificado de Sexto Grado','          Bachiller en Letras con énfasis en Turis','          Licenciatura en Mercadeo y Relaciones Pu','      Asistente Administrativa en Diamonds Clean','          ','          ','1','2','','3','2','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (752,'4-721-241','4-721-241','Suleika','Crisol','Valdes','Espinosa','0','1981-03-27','3','7769118','','64416067','las lomas','suleikavaldes@gmail.com','62','0','','','suleika ','angelie1226','10','3','      licenciada en administración publica con énf','          bachiller en ciencias','         primaria  ','     cobra infraestructuras hidráulicas, asistente de planilla, manejo de PAYDAY,  encargada de facturación y maquinaria.','         bahia motors, sa. cajera, asistente de bo','     A. VERGARA & CONTADORES, asistente administra','1','2','','3','1','','1','0'),
 (753,'9-735-2268','37352268','José','Alberto','Rodríguez','Ureña','1','1991-08-31','1','9986074','','69483162','santiago de veraguas','josealbertru@gmail.com','62','2','https://www.facebook.com/','https://twitter.com/josea','josechepealberto','panama','11','3','      LICENCIATURA EN NUTRICIÓN Y DIETÉTICA\r\nUnive',' BACHILLER EN CIENCIAS\r\nInstituto Urracá\r\n2009\r\n','          ','practica profesional de 2 meses en el hospital santo tomas','practica profesional en el riba smith  ','practica profesional en la estrella azul','1','2','','3','2','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (754,'4-242-805','4-242-805','Francia','Elena','Gonzalez','','0','1973-09-26','1','7204071','','66569359','Chiriqui, distrito de Boquete','frelena55@hotmail.com','62','2','','','francia ','anthony','3','3','      Actualmente.  Licenciatura en Negocio Maríti','          Técnico en Administracion informatica','          ','   Seguros la Floresta    ','Uniseguros , (corredores de seguros )          ','          L.R. ducruet e hijos ','1','2','','3','2','','1','0'),
 (755,'1-703-2008','1-703-2008','adolfo','','Cruz','Amador','1','1978-12-31','1','7751369','','66674915','loma colorada','adolfo.cruz1978@gmail.com','62','1','','','adolfo cruz','empalme','11','3','Licenciatura en contabilidad ','          ','          ','      he obtenido experiencia en el área contable, asistencia en compras, atenciaon al cliente, supervisión de grupo, inventarios, proceso producción, ','          oficios generares, licencia de conducir.','          ','2','','','1','','','1','1'),
 (757,'4-220-504','4-220-504','Elena','María','Castillo','Perez','0','1970-06-26','1','','774-4711','67322798/66224708','David-Los Abanicos','cshellen-70@hotmail.com','62','2','','','Elena María Castillo Pere','elena1970','2','7','      Primaria Sangrillo Arriba.','          Colegio Instituto Chiriquí','          Instituto Superior Nueva Visión','      Atención al Cliente (Almacén)','          Clinica Santareza','          Clinica Orión','1','','','3','','','null','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (758,'4-235-866','308-7072','Ilia','Melina','Garuz','Brugiati','0','1971-07-13','1','775-5849','','6647-6696','Calle C, sur San Mateo','giliab@hotmail.com','62','1','','','giliab','im130771gb','3','3','Estudios en la carrera de BiologÃ­a / inconclusa\r\n','Bachiller en Ciencias\r\nColegio Francisco MorazÃ¡n','Primer ciclo\r\nCentro escolar Antonio JosÃ© de Sucr','Alternative Healt Center\r\nSecretaria recepcionista\r\nSeptiembre 2011 a Enero 2013\r\n','Metales Panamericanos, S.A\r\nOficinista\r\nDiciembre ','Megabyte Center\r\nSupervisora de cobros\r\nAsistente ','1','2','','3','1','','1','1'),
 (759,'4-715-1120','47151120','Jose','Daniel','Vasquez','Garcia','1','2014-05-31','1','62443758','','62443758','Brisas del Rio','voltio-31@hotmail.com','62','0','','','jose danie vasquez','24073121','8','7','      técnico en emergencias medicas','          ','          ','      ','          ','          ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (760,'8-843-2050','8-843-2050','Sofia','Estefany','Rodriguez','Acosta','0','1990-12-02','1','776 70 21','','6491 24 96','Las Lomas','sofia_0290@hotmail.com','62','2','','','sofia','azul','2','3','      Licenciatura en Ciencias de EnfermerÃ­a \r\n  ','          ','          ','      ','          ','          ','','','','','','','1','1'),
 (761,'4-758-1302','','Nuris','Johana','Quintero','Morales','0','2014-09-14','0','','','6976-5430','Monte Fresco','johanaquintero2011@hotmai','62','2','Johana Quintero','no tengo','Nuris Johana Quintero','pelotin91','11','3','      Universidad Latina \r\nLicensiatura en Psicolo','          Colegio Francisco Morazan\r\nBachiller en ','          Escuela Loma Colorada\r\nSexto grado','      Recepcionista\r\nServicio Domestico Integral\r\nSra. Hilda de trujillo\r\n','      Secretaria\r\nLic. Roger Lezcano    ','          ','1','','','3','','','1','0'),
 (762,'4-774-55','4-774-55','Edin','Leonel','Pinzon','Rodriguez','1','2014-08-09','2','','','6390-1558','Villa Clara','edinpinzon@gmail.com','62','2','','','edinpinzon','theone','1','3','UNIVERSIDAD AUTONOMA DE CHIRIQUI - LICENCIATURA EN','          ','          ','      ','          ','          ','1','2','','3','2','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (763,'8-732-24','8-732-24','Kristi','Michelle','Dickson','Espinosa','0','1979-10-31','1','7748583','','66897237','Residencial Acuario Casa #22','kittydickson@hotmail.com','62','1','','','Kristi Dickson Espinosa','TORY0331','3','3','     Licenciatura Ingeniería Industrial\r\nUniversid','Bachillerato en Ingeniería Industrial     \r\nUniver','          ','Agrocom\r\nAsistencia Administrativa  - Noviembre 2013 a la fecha\r\nFunciones del puesto: facturación, ingreso de nuevos clientes y recibos en casos de cxc al sistema.  Coordinar todos los procesos de consignación.  Coordinar las importaciones.  Tener control de las entradas y salidas de bodega.   Administrar la documentación de los clientes.','Corporación Datatell  S.A. \r\nEncargada de Importac','Todo Motor S.A.\r\nEncargada de Importaciones.  Octu','2','','','2','','','1','0'),
 (764,'4-718-1148','4-718-1148','Milton','Esau','Silvera','Santamaria','1','1980-02-22','1','','','6674-0256','David','miltonesilveras@gmail.com','62','4','','','milton','miltone','7','3','      GestiÃ³n de TecnologÃ­a de la InformaciÃ³n\r\n','      TÃ©cnico en ProgramaciÃ³n y EstadÃ­stica    ','          Bachiller en Letras\r\n          Colegio I','      Operador de Circuito\r\n       Venetto Casino','          Captador de datos en Peachtree\r\n        ','          Cajero\r\n          Ministerio de Salud','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (765,'4-282-148','4-282-148','Zoila','Nieves','Cubilla','Gonzalez','0','1975-02-09','1','','','63983858','david','zoila_cubilla09@hotmail.c','62','5','zoilacubilla','','zoila','cubilla09','11','2','      educacion intermedia','          secundaria completa','          ','      cajera 10 años de experiencia','          atencion al cliente','         manejo de caja menuda, arqueos de cajas y','1','2','','3','1','','1','0'),
 (766,'47391015','47391015','Abel','Antonio','Lewis','Espinosa','1','2014-03-27','1','66553051','66553051','66553051','Urb. La Florida','abel.lewis27@hotmail.com','62','2','Abel Lewis','','newyork','a12345','3','7','      scuela Primaria Jose Maria Roy','          Escuela Secundaria Instituto David','          Universidad Latina Primer Nivel Banka y ','      Fiestas Casinos','          Mar Caribe','          Claro Panama','2','','','1','','','1','1'),
 (767,'4-758-1686','','Lourdes','Yoselis','Pérez','Aguirre','0','1991-09-27','1','770-3677','','6282-2576','La Victoria de Boquerón','lourdes270890@gmail.com','62','2','','','lourdes2717','NAHELNAHEL','3','3','      Licenciatura en Mercadeo Y Relaciones Public','          Bachiller en Letras y Turismo','          ','      Secretaria en Diamodns Clean','          Encuestador de Campo','    Azafata      ','1','','','3','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (768,'5-764-716','','Yarelys','Jiham','Santamaria','Miranda','0','2014-10-03','1','7712796','','69072654','David','yare03_j@hotmail.com','62','2','','yare_j','Yre','lamariposa','2','3','Técnico en Instrumentación quirúrgica ','          ','          ','      ','          ','          ','2','','','2','','','1','1'),
 (769,'4-714-1082','4-714-1082','Dayra','Lisneth','Quiroz','Gonzalez','0','2014-02-02','1','774-1056','774-3890','6789-5226','Brisas del Rio','dayra.quiroz@outlook.com','62','1','','','dayra','4-714-1082','1','3','      Licenciatura en Contabilidad con Ã‰nfasis en','          Diploma de Sexto aÃ±o. Colegio Francisco','          Diploma de sexto grado. Escuela de Santa','      Nombre de la empresa: CorporaciÃ³n de Vigilancia\r\nActividad: Agencia de Seguridad\r\nJefe Inmediato: Julio GonzÃ¡lez\r\nTelÃ©fono: 774-3890\r\nCargo: Asistente contable. Marzo de 2014 a la fecha.\r\nFunciones:\r\n*ConfecciÃ³n de Planilla\r\n*Sipe\r\n*PreparaciÃ³n de conciliaciÃ³n bancaria\r\n*FacturaciÃ³n\r\n*Cuentas por cobrar\r\n*Entre otras\r\n','          Nombre de la empresa: Panaplast\r\nActivid','          Nombre de la empresa: Movicard, S.A.\r\nAc','1','2','','3','1','','1','0'),
 (770,'4-754-1005','47541005','Aimee ','Catalina','Almengor','Alvarado','0','1990-04-27','3','7744121','','65375590','Doleguita','a_lmengor27@hotmail.com','62','2','Aimee Almengor','','aimee2790','47541005','11','3','Bachiller  en Ciencias','Certificado Comercial         ','Licenciada  en Derecho y Ciencias  PolÃ¬ticas',' Organo   Judicial\r\nJuzgado Primero de  Circuito  Civil de   ChiriquÃ­\r\n Encaragada de   dar  el trÃ mite a los   procesos  ordinarios, sumarios, orales  y algunos no Contenciosos, tomar declaraciones.',' Pasante de abogado          ','          ','1','','','3','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (771,'4753-411','4753411','Zurkerin','Arleen','Ruiz','Vega','0','2014-05-15','1','6418-5910','','6418-5910','','zulk1520@hotmail.com','62','1','zuly ruiz','','zulkerin ruiz ','47471264','3','3','      Facultad de Ciencias y Tecnología\r\n 	Técnico','          ','          ','      Restaurante El poto\r\ncaja','          ','          ','1','2','','2','2','','1','0'),
 (772,'4-715-384','4715384','Sandra','Yerixa','Madrid','Gomez','0','2014-05-10','3','7300085','','63893741','Bugaba','sanyexa29@hotmail.com','62','3','sanyexa29@hotmail.com','','Sandra','corazon','11','2','    Ãšltimo aÃ±o de la Licenciatura en Derecho y C','          Bachiller en Comercio con EspecializaciÃ','          Bachiller en Letras','      IPACOOP','          CAJA','          16','1','','','','','','1','0'),
 (773,'8-756-680','8-756-680','Laritzel','Lizneth','Nieto','Camargo','0','1982-04-22','5','','','6724-2543','El Higo de Cochea','larynieto@gmail.com','62','2','Laritzel Nieto','','larynieto22','eviandaled0618','11','3','Universidad Especializada de las Americas\r\nLicenci','          ','          ','28 de Febrero â€“ 13 de Mayo	Mercaderista\r\nProdima S.A\r\nResponsabilidades: Recibir, colocar y mantener los productos en las estanterÃ­as de los supermercados, manteniendo en todo momento el orden y el aseo; asÃ­ como tambiÃ©n asistir al vendedor cuando lo amerite, como por ejemplo realizar pedidos entre otros.\r\n','    2007 â€“ 2009			Analista Junior de Reclamos de','2000 â€“ 2007			Asistente del Adulto Mayor\r\nHogar ','2','','','2','','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (774,'4-732-1855','4-732-1855','Jackeline','Ruth','Samudio','Rivera','0','1984-03-24','3','775-8997','','66611875','DAVID','Jackelinetuth@gmail.com','62','4','JACKELINETUTH@GMAIL.COM','','jackeline','2402','10','3','      ESC.REPUBLICA DE FRANCIA','          COL. ADVENTISTA DE DAVID','          POR TERMINAR LIC.EN RELACIONES PUBLICAS ','      ALMACENES ROMERO ATENCION AL PUBLICO PERIODO DE DICIEMBRES.','          MERCADERISTA DE BONLAC CON LA AGENCIA DA','          PRODUCTOS IBIS MERCADERISTA ,AYUDANTE GN','','','','','','','1','0'),
 (775,'4-752-1914','','Nadia','Ibelis','Delgado','Correa','0','1990-04-01','1','776-9347','','6679-1375','David ','she_01princess@hotmail.co','62','0','','','NadiaDelgado','hospitalchiriqui','10','7','Nivel Universitario (tercer año) Lic en Biología U','Bachiller en Ciencias Colegio Felix Olivares Contr','          ','Servicio de atención al Cliente y Ventas en Movistar Panamá (Soluciones Móviles) agente autorizado, 2 años','          ','          ','1','2','','3','1','','1','1'),
 (776,'4-756-416','4-756-416','Udslery ','Suriel','Navarro ','Avila ','0','2014-02-17','1','7755418','','69559917','Avenida Francisco Clarck','lery_17@live.com','62','2','','','unavarro ','lery1791','9','3',' Actualmente Curso el Tercer AÃ±o de Licenciatura ','          ','          ',' 2012-2014 Ejecutiva de Mercadeo â€“ Universidad CatÃ³lica Santa MarÃ­a la Antigua    ','2011-2012 Grupo Suadi  Asistente Administrativa ',' 2009- 2011 Promotora de Ventas Residenciales en T','','','','','','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (777,'9-736-1519','9124509','Milagros','Del Carmen','Rodriguez','Veroy','0','1991-11-24','1','','','64135905','BarÃº','mil_y24@hotmail.com','62','2','','','Milagrosveroy','072421','11','3','      Lic. educaciÃ³n primaria cursando 4to aÃ±o','          curso: AdaptaciÃ³n a la vida rural, disc','          TÃ©cnico en didÃ¡ctica y tecnologÃ­a edu','      ','          ','          ','1','','','3','','','1','0'),
 (778,'04-785-2260','04-785-2260','Iris ','Indira','Ibarra','Santos','0','1995-01-29','1','','','63657358','Las lomas Mata del nance','iriss29ibarra@hotmail.es','62','4','','','iris','danny2012','3','2','      Esc. Elifenia Staff\r\nPrimaria','          Col. Francisco Morazan\r\nBachiller en com','          ','      PLACE s,a\r\nAsistente administrativa\r\n3 meses\r\n3 meses practica profesional\r\n775-5505','          ','          ','1','2','','3','1','','1','1'),
 (779,'4-145-609','278-2768','Nitza','Imelda','Gonzalez','Rosas','0','2014-04-14','1','770-8732','','6696-6481','David, Doleguita','nza38@hotmail.com','62','1','','','nitzagonzalez','4145609','3','3','      Universidad Santa Maria La Antigua (1988)\r\nL','      Universidad de Panamá-Centro Reg. Univ. de  ','         Colegio San Antonio (1983) Bachiller en C','     Petroterminal de Panamá, S.A. \r\n     Secretaria - Recepcionista','          Fernie, Puerto Armuelles, S.A.\r\n        ','          Productores Asociados, S.A.\r\n          S','1','2','','3','1','','1','0');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (780,'4-740-356','4-740-356','Nadia','Kathiana','Evans','Vargas','0','2014-01-04','1','776-8889','','6565-6739','Las Lomas-San José','kathiana40@hotmail.com','62','2','','','NadiaEvans','bus23ivier','11','7','      Técnica Ingeniera en electricidad, Universid','      Licenciatura en Mercadeo y Comercio Internac','          Cursos de Informática, INADE','      Secretaria Administrativa en la Junta Comunal de Las Lomas. ','        Secretaria y atención al publico en la Inf','         Asistente de secretaría en la finca El To','1','','','','','','1','0'),
 (781,'4-757-561','4-757-561','Orissa','Lymor','Wald','Espino','0','2014-05-28','5','','','62197235','David, Nuevo Vedado','orissawald@hotmaol.com','62','2','Orissa Wald Espino','orissaw','owald','orilywald','3','3','primaria culminada',' secundaria culminada','cursando tercer aÃ±o de psicologÃ­a en la Universi','luluÂ´s accesories, encargada','ingenieros de alimentos y consultores, asistente a','Ministerio de Obras PÃºblicas, asistente administr','1','2','','3','1','','1','0'),
 (782,'4-727-1937','4-727-1937','Urania','Urania','Simone','','0','1982-11-27','1','','','6493-6112','Recidencial Dorado Los abanicos david','ury2782@hotmail.com','62','2','','','urania','urania','1','4','      Postgrado en Docencia Superior en Columbus U','          Post Grado en Alta Gerencia en Columbus ','          Licenciada en Contabilidad-Unachi CPA 00','      Hotel Finca LÃ©rida, Boquete- ChiriquÃ­ Contador encargado de Finanzas de la empresa','          Grupo Rey (empresas Romero) David -Chiri','    Empresas Romero David ChiriquÃ­ Asistente de C','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (783,'4-728-2367','4-728-2367','Hanna','Milagros','Ayala','Coba','0','1983-03-30','1','0000','000','6245-8138','LA CONCEPCION BUGABA','hannaayala30@hotmail.com','62','0','hannaayala@hotmail.com','','Hanna30','H30J07AB07AE27','11','7','      ','          ','          ','      ','          ','          ','','','','','','','0','0'),
 (784,'8-810-457','8810457','Jennifer','Mabel','Russo','Valdes','0','2014-07-25','1','7276612','','67940173','David, San Pablo','jenniru21@hotmail.com','62','0','Jennife Russo','@jenniferu25','russo','ernesto','3','3','Universidad de PanamÃ \r\nLicenciatura en Finanzas y',' Instituto Bilingue Virgen de Guadalape    \r\nBachi','          ',' Inversiones La Teca PanamÃ¡, S.A.\r\nAsistente Administrativa\r\nTel: 2402102',' Caja de Seguro Social  \r\nSecretaria Judicial con ',' Transporte de Carga Tejada, S.A. \r\nAsistente Admi','1','2','','3','1','','1','0'),
 (785,'PE-12-2119','PE-12-2119','Myriam','Lisseth','Chong','Ibarra','0','1976-01-05','1','770-6594','','6843-5200','Bugaba, Barriada 20 de Enero','chong1431@hotmail.com','62','4','','','mchong','chikita','2','7','Tecnico en Enfermeria autorizado por el ComitÃ© de','Universidad de PanamÃ¡, Titulo: Tecnico en Enferme','Estudios Secundarios, Colegio Daniel Octavio Cresp','','          ','          ','1','2','','3','1','','1','1');
INSERT INTO `colaborador` (`id`,`workerid`,`socialnumber`,`firstname`,`secondname`,`lastname`,`secondlastname`,`sex`,`birthdate`,`bloodtype`,`homephone`,`workphone`,`cellphone`,`address`,`email`,`nationality`,`maritalstatus`,`facebook`,`picture`,`user`,`pass`,`dept1`,`degreelevel`,`degree1`,`degree2`,`degree3`,`exp1`,`exp2`,`exp3`,`language1`,`language2`,`language3`,`level1`,`level2`,`level3`,`stress`,`licence`) VALUES 
 (788,'8-853-1062','8-853-1062','Katherine','Isabel ','Nuñez','Sanjur','0','1991-11-10','3','6884-0406','6884-0406','8-853-1062','david chiriqui riviera ','katy28n@hotmail.com','62','2','katherine isabel nunez sa','','katherine nuñez','trixy20','3','2','      Bachiller en comercio con enfasis en contabi','          Bachiller industrial en educacion para e','          Curso de ingles elemental conversacional','      Laboratorio raly ejecutiva de atencion al cliente ','          Picadilly s.a vendedora ','          Picadilly s.a cajera ','2','1','','1','2','1','1','0'),
 (789,'67022034','67022034','Giselle','','Bultron','Mendoza','0','','0','','','6117-2414','DAVID, CHIRIQUI','PANUSA2014@GMAIL.COM','62','0','','','hoosier','jedisurfer14','11','7','2004\r\nHARRISON COLLEGE â€“ Lafayette, IN USA\r\nAdmi','2001\r\nAlliance FranÃ§aise de Panamaâ€“ PanamÃ¡, Pa','1997\r\nIVY TECH STATE COLLEGE â€“ Lafayette, IN USA','C&S America (LG)\r\nMayo 2013-Noviembre 2013\r\nPanamÃ¡, PanamÃ¡\r\nAgente de AtenciÃ³n al Cliente de Live-Chat\r\nResponsable de atender a clientes de LG mediante Live Chat.','Hotel Boutique Villa Camilla\r\nJunio 2012-Diciembre','Platinum Care Services\r\nSeptiembre 2011-Diciembre ','1','2','5','2','3','1','0','1');
/*!40000 ALTER TABLE `colaborador` ENABLE KEYS */;


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
  `celular` varchar(45) NOT NULL DEFAULT '',
  `telefono_residencia` varchar(45) DEFAULT NULL,
  `telefono_oficina` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `lugar_residencia` varchar(45) NOT NULL DEFAULT '',
  `direccion` text,
  `id_nacionalidad` int(10) unsigned NOT NULL DEFAULT '0',
  `id_estado_civil` int(10) unsigned NOT NULL DEFAULT '0',
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `presion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `licencia` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_area_aplicacion` int(10) unsigned NOT NULL DEFAULT '0',
  `id_estudio` int(10) unsigned NOT NULL DEFAULT '0',
  `pass_encriptado` varchar(250) DEFAULT NULL,
  `updated_at` varchar(45) NOT NULL DEFAULT '',
  `created_at` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`colaboradores`
--

/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (1,'4-729-2360','','Juan','Jose','Saldaña','Barrios','1983-07-22',1,3,'50763794221','50763794222','50763794223','saldana8387@yahoo.es','','Los Anastacios Rincon Largo Dolega',62,0,'face','',1,1,7,6,'eyJpdiI6Iis4SHZtbHdLMkhERUFBN1JaTzJMU2E3bTJMWDcyTGVIeHVMT1c2NDRPUEk9IiwidmFsdWUiOiI1S1JrdnpcL1ZWYzNsbzhPM1F1TzZoQWdYbjhBWWxLaG5tTTM3dG4zcGUzUT0iLCJtYWMiOiI1MjgyNTc4N2Y2NjYwN2ZlM2Q3ZGNiMDU3OGRjMTdlMGYzNmJmZTkwMjUzZjA3MTgzZjIwYTA3NTU3NzBjNTQ1In0=','2014-10-11 23:04:21','2014-10-11 23:04:21'),
 (2,'4738-853','','Fanny ','Estela ','Batista ','Castillo','1985-11-19',0,3,'65-28-10-88','','','alys.mbb-06@hotmail.com','','Boquerón',62,1,'alys.mbb-06@hotmail.com','',1,0,3,3,'eyJpdiI6ImJ5cGU5dEVKQ0k3TDd3QWU1b1hFVVozWVFMZjJhWlJuM0VSVUw3QnNLcGc9IiwidmFsdWUiOiIrandObzl4Mnh1U0czMUplYXJFeEJaQVpyR21VTzZWU3VJOUxzeFozeFBJPSIsIm1hYyI6IjhlZTY0OTNiYWE3NjdmY2ZkZmI4YzE4NDJmMWNmYzA2YjM3YjI1OTQ1YTM2ZThmMGQ0MDIzNTBjNTdjYWI2Y2EifQ==','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (3,'2-718-2449','','Dayra','Azucena','Beltrán','Soto','1986-11-19',0,1,'6852-7937','730-52-17','','dayrabel1991@hotmail.com','','Altos del Lago David',62,0,'','',1,0,3,2,'eyJpdiI6Ikp4dHQ2dGtpRWtsTUhPeHhHMEVYZURORzNHdTNaOHA4dUpzOElsWDg4cUE9IiwidmFsdWUiOiI1dUYwN0YyUlwvcDlRTjFSRVlaWWVXbnNCQmJ4YWFNK3F1alBBdHd5MG1ITT0iLCJtYWMiOiI1MWJmNWNkYTliZDJkMzkwNDJiZWVhOWMwYTU3NjJhNTNiNTRkZTcyYmJkYWVjYjU0MGFkMmNlYjBlMTYwMmU3In0=','2014-10-11 23:04:22','2014-10-11 23:04:22');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (4,'4-755-685','','Diana','','Araúz','Rodriguez','1983-12-09',0,4,'65282995','','','dianaarauzr@gmail.com','','rio sereno',62,0,'diana.arauz.14@faceb&#820','',1,0,2,3,'eyJpdiI6IitxZFNsYlZOY3pHcHNLaFNLUjhnYzlmOEYzVlZIbm1kWWRvM0QxR002Y1U9IiwidmFsdWUiOiJ2eTlwdHhZNWxEblhwU3dLeGM5SmdRb0s1YmlhWUJ4ckFmRjBjb2tCOXpzPSIsIm1hYyI6ImIxYWI3YzBiMjdjZTZjNzg3M2E2ZmMyMGE0MzliOTFmOWZmY2ViYzI3N2ViNmJkYWY3NzEzNTNhZDNhOTlkNzUifQ==','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (5,'4-720-990','4720990','Carlos','Alexis','Gonzalez','Baules','1980-12-19',1,1,'65872381','7224642','','cgonzalez2919@hotmail.com','','varital de boqueron via panamericana una casa ante',62,1,'','',1,1,11,3,'eyJpdiI6Imt6T1ZXeFZ4bG13YTAzUTJBWUJTTHFCZFFcL0ZuRFZPeU1EOVwvbVwvb1lCWHM9IiwidmFsdWUiOiJRaGJlN3dxZ1l6S2h5dTdsKys0T3BtZHBZYUcyMHVuZlFKUldzZmlwYlAwPSIsIm1hYyI6IjVkNzQwYWY0N2Q1YzUyMGI2ODZjMDc3N2M3NDk4MDVmYjU4NDQzYTY4NzMzNzNhOTNkNWFiN2I2ZWYwNmY2ZDkifQ==','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (6,'8-762-1128','8-762-1128','Javier ','Alexander','Marino','Gonzales','1983-01-01',1,1,'62491686','','','marino.javier@hotmail.com','','',62,4,'','',1,1,7,7,'eyJpdiI6IlkwY09OQjJUVysxa29QamdXeWZiRlBuSEVEN3hEUGM4YzR3QnVCVlwvcndFPSIsInZhbHVlIjoia2VKXC9wUWNncDM3VXE4SUFBXC93d0ZkZGxmK2d5MDJuM2ZDMkZ4V1g4WHRzPSIsIm1hYyI6ImM5ZDIzZDQ5YmRkMzVjZDk4MjBmNTUyMmQ2ODFjOWVkMGRlMTc0ZDI2NjVlMmE2ZWRmZTZlYzg3ZGY5ZDViNGUifQ==','2014-10-11 23:04:24','2014-10-11 23:04:24');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (7,'9-151-478','2613414','Miguel','Antonio','Rodriguez','Cruz','1967-11-19',1,1,'66044477','7707294','','mrodriguez191167@hotmail.','','San Pablo Viejo',62,1,'','',1,1,11,3,'eyJpdiI6ImkydTE3UTYrM2g3NXhlWmRhdlJZWTNocFNPUmFTdHhOMmpVZVwvdWJiN0pjPSIsInZhbHVlIjoiRVwvYWFaNnhDM2NvbU5vNXJNNDM4YkhSc1RBWktocnRyV0grU3oyVlUrUkE9IiwibWFjIjoiYjcyMjRhMmFlNTM1NWQzMzIxOTQxMWVhNmM3YmY2NWZkMGY3NzVkOTAzMzQ2Mjg0MjllMmZhOWM2ZjVlMzYxYSJ9','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (8,'4-745-744','','Kelvin','','Guerra','','1988-01-01',1,0,'61546892','60588485','','kg77d@hotmail.com','','',62,4,'','',1,0,2,2,'eyJpdiI6IlZROWo3aHh0MGtmR2dDRm1ZY1RSbml6cXFhOVJHXC8wNHRwU0pxOXk3am1zPSIsInZhbHVlIjoiUWpwOEVqODF1eXNlVjZpbUJnNElXeUY5RVQ2WkZjNUNxRUtBM0ZnNTdhQT0iLCJtYWMiOiI2MGI1NDhiMWJjNjRmYjQ2YjhmOTdlZDk2NjMwNmU0NTQwOGMxOGRjY2NiZDIwOGJiMThmOGE4OTliYWVkZjM0In0=','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (9,'Pe 14-1590','','Jennifer','','Rodríguez','Guerrero','1985-02-25',0,1,'64318955','','','jenniferrodriguezg@hotmai','','Feria de David',20,2,'calle blancos panamá','',1,0,9,3,'eyJpdiI6Ik1OZnd2bWxJbGowQjcrN3lGeCtwNjByTG1FU0ZWa0liNmN1eHR6MVUwV3c9IiwidmFsdWUiOiJjY2h0Vks2RElMY3FQMEVVUjE0ZFNKaXgwYktYSWd6NWRIM1QzME1kYzB3PSIsIm1hYyI6ImEzZGQwMjY1MzQ0YjYzN2UwNjJlOWFiZWQzN2MxZmMxZTQwMjRmOTI4ZDMzZjA5MmUwOGMyNjYxMmYxNzQwZTMifQ==','2014-10-11 23:04:25','2014-10-11 23:04:25');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (10,'4-770-144','','Sergio','Anel','Tejada','Baules','1993-12-15',1,1,'64531838','no','no','sergiot-15@hotmail.com','','Santa Lucia de Bagala, Boquerón',62,2,'sergio anel tejada b','',1,0,11,2,'eyJpdiI6InYwRCttMFptSitmMkdjczRcL21KblVNeTUxYWl3a3VXRVhjZUZPa3ZIT3NRPSIsInZhbHVlIjoiU1I0bzVBa2Zrd0RiRktpT3VVRTNnQ3FhR1ZmXC9yQjBlMjU1SmdQaWRDY3c9IiwibWFjIjoiY2Y3ZDNhYjhhZmRhNTQwYjI4ZjY1NTY2MDIwMDY1YjJkN2Q0MzJhNzdiZmNkNjRmMDliZGQxMTkzOWMwZmFmOSJ9','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (11,'4-756-809','4-756-809','Efraín','Caleb','Espinosa','Contreras','1991-02-22',1,1,'6500 2324','0','0','ecect22@hotmail.com','','Boquete',62,2,'Efraín Caleb Espinosa Con','',1,0,1,3,'eyJpdiI6Inhvbk1MYjF3b29NUm15Ymx4TGpwb01jTmFDT1wvcm9wcnBQb3hCQ2tndk5VPSIsInZhbHVlIjoiNjFtWXBIa3FwZFcwSThcL0p4KzhVbzFIR3lYeXJrbUozK0lpcm1IbEkrZ1E9IiwibWFjIjoiM2JmMGYzOGExZmExYjQ4OWM0ZGQwY2FlN2JhZjJiZmE1NzNkMzYyNWQ0YWM2ZmNiMmE4YWU2ZDRkMTg5ZTljYSJ9','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (12,'4-220-788','308-4764','Magda','Estela','Gonzalez','Delgado','2012-07-30',0,1,'65849778','7750890','','gonzalezdelgado.magdaeste','','david',62,4,'','',1,1,11,3,'eyJpdiI6InBpTmtZUEExU3lvblwvR2xuUUtBbnU4Z3NtMWRuSWYyWUVQRXgxbnRDb1dJPSIsInZhbHVlIjoiVXpDR3NpUG5MdzVBamRWZjR6ODhjQnkzVTBUUUNlXC9ESUhTRFU0TGJSRm89IiwibWFjIjoiMGYwY2U4ZGIyODY0ZGU0ZDE1MjAxYzFhZDkwYjBlZGMwY2NlMWNlMWFhNDQyOGMwZTE1NmZhYzcxYTI4MTBmOSJ9','2014-10-11 23:04:26','2014-10-11 23:04:26');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (13,'8-707-2195','','Isabel','Milagros','Ortiz','Miranda','1977-03-14',0,1,'66578136','66578136','','Isa_14142011@hotmail.com','','boquete',62,1,'Isa_14142011@hotmail.com','',1,0,2,7,'eyJpdiI6IlBJemVOMWtmaUQyVEI1U1dMXC9WbG90eUMyRjZBWWJwYlpKMFwvdmJxeEJGYz0iLCJ2YWx1ZSI6IklGMW5zWEM5cTN0SkVmdFYxY3piNXVtWkdYbUdlanp0TXNBRHhBd1NOVFE9IiwibWFjIjoiOTI1Y2RhNGUyN2I3NWIwNGU3ZDE5MzYyZTY2NTI0ZmExMjVmNTAyZWQ2NzU5NzIxZDA5NWExZjJkMDYwYjg0MSJ9','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (14,'4-763-236','4-763-236','Michelle','','Espinoza','Espinosa','1991-10-16',0,3,'69760969','64065727','69760969','elyneth_16@hotmail.com','','Boquete',62,2,'michelle.e.espinoza','',1,0,3,3,'eyJpdiI6IkVIdllmM0Q2TTZleDhqM3VsQ00yRldIa3ltOG9LYWFLeUpZVDM2UWRscHM9IiwidmFsdWUiOiJiS09VUUU4aHBOMFdKeFlKMVpEd2N6WWpDSlNnWStsRHVzUk1POHBqXC9qWT0iLCJtYWMiOiJkYWE2MGUxM2I3MTA3OTA5N2E2Yjg1OWIyZDg5NWZkYzlkNzFkZmQyOWE4NWZhMWQ2ZjM4YmM5ZjUyMWZiN2E4In0=','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (15,'4-754-1945','4-754-1945','Mitzi','Stefany','Arauz','Caballero','1990-10-17',0,1,'6797-78-20','','','www.stefanyarauz1970@hotm','','David',62,2,'mitziarauzcaballero','',1,1,8,3,'eyJpdiI6IjFsS3V3ZXU5cW10TVpjZkdpbjN2S05rN3h3dDVXbTdlOUY0VXEwVk1PTVk9IiwidmFsdWUiOiJ0QlwvUUMwaXcwQnpqaFFTaEdKMHJZQ3lRaDE5Y1NuQ0ZmSE5aY2xYSmluST0iLCJtYWMiOiI0Y2RkNzIzZGYxNWZiNjdhNzMyYTI2NGNjYTI3ODA1MWFiYTI5MjkxY2NjODM5ZmZhYmMyNmM1NTY3NDA0MGJkIn0=','2014-10-11 23:04:28','2014-10-11 23:04:28');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (16,'9-730-836','9 730 836','Edilsa ','Del Carmen','Vasquez','Morales','1988-12-29',0,3,'6415 4768','721 2659','','edydelcarmen29@hotmail.co','','',62,2,'Edilsa Vasquez','',1,1,8,3,'eyJpdiI6IkR4VXBRQVhVNjdFbVUxc0JqZElLZExzQ1lQY1F2ZkdFNnphWkRNUStURGc9IiwidmFsdWUiOiI5YkswR2RYc0tJbU9lOTFWSndUZ09pWGVBaEtqbUorKzFDazJtcXVHQWx3PSIsIm1hYyI6IjkzOTg5ZGY1MWNkNzlmOWY1OTM4MzFkMGU4MjI5ZjRlYjQzNjllYzZjZDhiNDk1ZDc1MDY4YTQyNjQxZDA4MTYifQ==','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (17,'4-220-83','1330805','Omar','Enrique','Ledezma','Ledezma','1970-02-05',1,1,'65180895','65180895','','','','david ',62,4,'','',1,0,11,2,'eyJpdiI6Ik9JVWdWa3FRVGJqQlRWZVNpOFBiRVdsUVZWMmZqd3BMKzl5bFA1MDJHczQ9IiwidmFsdWUiOiJUbFc0MlZEZWNEdkwzTWx3ditWUk9QUmVkTThVMUF0SGxNZnVBMHliTytjPSIsIm1hYyI6ImQzNzMwMDJhYmIyMDNmYTllYzgzOTM2MmE2ZTE3NjEwM2I4NjQ1ODMyYjk0Njg3YzIwYjUwMTJjMDMxYmEwODkifQ==','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (18,'4-740-2162','4740-2162','Virgina','Del Carmen','Rivera ','Chavez','1986-05-21',0,1,'6609-6626','7750233','','virgicr-8@hotmail.com','','urbanizacion la feria',62,0,'','',1,0,10,3,'eyJpdiI6InR2amJ0T1czeWxcL0ErUDJIREhiZ0V4djNWNklpbFVyS2J6VytrOTEydnY4PSIsInZhbHVlIjoiVERTSHd4SjVucmdaRXJPMHJ1TEhCS0JaZnQxNHkzd3J4QmNySmd5RU9sRT0iLCJtYWMiOiIwZWU5NjE4YmE3YzY3NmE2OWQ5YmQyM2QwMThiNzlmMWJlN2Y2Yzg4NTQ1YTMyNDJhZWZlZDFlODkwNjk4NWY2In0=','2014-10-11 23:04:29','2014-10-11 23:04:29');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (19,'4-754-1945','4-754-1945','Mitzi','Stefany','Arauz','Caballero','1990-10-17',0,1,'6796-78-20 o 6408-86-33','','','www.stefanyarauz1970@hotm','','David',62,2,'mitzi arauz caballero','',1,1,8,3,'eyJpdiI6ImRJaWxJZnBcL0tYcExockxBOFNHWnI4MjdBemF6ZE15blp4SjBXSEltcWtnPSIsInZhbHVlIjoiQmdlakxMTkpyaVhneFBQMWxpcytiSklCYzBGSDM0dDhab2toKzBcL2xZdlU9IiwibWFjIjoiNmZmNWNlNjg2NGVmMGZmN2IzN2U0NzQ0MTMxNmZmMGE0ZmM2ZWU0Yzg4NTk5MDRiZDM5MjY0NjdhZDkyZGJmMyJ9','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (20,'4 750 923','4-750-923','Nefi ','','Aguirre','Escamilla','2012-07-17',1,3,'6937-2705','721-09-94','','nephy17@hotmail.com','','David, chiriqui',62,2,'Nfi Aguirre Escamilla','',1,0,11,3,'eyJpdiI6IlZMZW15VXo1MEZXUGY3ZThCbURGWW5MaDgxSW1YclFjcGE0XC9TcHJnbUZZPSIsInZhbHVlIjoiekJ2SlpxYzRRMzhWbytNTWxpKzYzWUFSVnJRNXVjbFwvTUJBREZreDBzdTQ9IiwibWFjIjoiYmQ0ODI3NDYxOWExM2E5Y2NiMWU3Nzc1NjQ5YzFmMDYwYzc3MGJjYTVmZTc4M2NkZWE3MGM4YzMzNDJhY2I1YSJ9','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (21,'4-254-389','4-254-389','Armando','Anel','Paternina','Castro','1972-08-15',1,1,'68621468','-','-','armanpaterc@hotmail.com','','ALTOS DEL RÍO, DAVID',62,2,'-','',1,1,11,2,'eyJpdiI6InBza1VvaFN1T1V0c0xGbmRWSUo2RVZJd0crRTBaeVVMRTAzckFieU9sRFk9IiwidmFsdWUiOiJhQUY3eXJsbjZKWWM3bnp2ZVRcL210NGE3bnhsK0IxMGtHenljVzd2UVVaOD0iLCJtYWMiOiI2M2VhYTY4ZTRjZjU4MWQ2ODZjNzNkZjU4NWU1NDZhNjU4MTk2OWRkM2Q0NGFiZmIzODE1NjM1YjMzM2M2MmQxIn0=','2014-10-11 23:04:31','2014-10-11 23:04:31');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (22,'4-285-763','4-285-763','Karin','Matbeth','González','Tercero','1975-11-07',0,1,'6949-2634','---------------','---------------','gkaryn@hotmail.com','','Urbanización Valle de la Luna',62,4,'','',0,0,3,3,'eyJpdiI6ImkxdkdDRjQrdzdlVmZqTmFWQm1lcUQrNlRQSWM4XC8xdHE4Rm8rR2I1eUtNPSIsInZhbHVlIjoiQVhaZmwzUnZ5QXNqTkJIdGg4OExLaXFQQmpDQ0h1dzhUUG5yWDA1VU54QT0iLCJtYWMiOiI0MDlhN2FmMTAzYzcwYzA3NjcxYzQ0OGM5MWQwMTRkZGYyMjA0NGRlODc0YzJlYjJkN2I1NmM2MjIxNjUyYjY1In0=','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (23,'4-731-1140','4-741-1140','Rebeca','Elena','Caballero','quiroz','2012-08-10',0,1,'64620370','','','rcwil7@gmail.com','','gualaca, chiriqui',62,2,'rebeca caballero','',1,1,11,3,'eyJpdiI6IitUdklEVkFKMkJaQ0JPZmpGaVpRbXRJblwvT0RndTBnWjc0U2lHKzZxUzZNPSIsInZhbHVlIjoiYkJBemFEd045WFNxSVY0RXlsZlR0Ymk5S250UklZeUdLWjNhZjBhNlVCaz0iLCJtYWMiOiI5NGU2YTU5ZDQ1ODNiOWE4OGFlNmNjMTA0NDk1M2RjNzgzYWNjOTBhNGIyMDI1YjQ1NmRjYTFkYTFmNzQxMzRhIn0=','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (24,'4-758-2434','','Yarianis','Yaneen','Pinto','Atencio','1991-05-09',0,1,'6823-8995','','','daniela-0525@hotmail.com','','boqueron',62,2,'yarianis yaneen pinto ate','',0,0,2,7,'eyJpdiI6InJLRTNxK1p3OE8xUjBvVnd5aG9OdWlKNityZWt6eTVWdDROUk44MitmZG89IiwidmFsdWUiOiJicEFPWG1IN0hQcUc5UWZuRVhHV1lZc09PcGhhMjg0RldudmVOZ3lFSVE4PSIsIm1hYyI6IjlmNGM3NGY1MmEzZjcwNWQ3Njk2MjIyN2U4M2E1MjYxNjA0MzY0ZjJhMjU4YjM0NzBiMGJiMjZmM2VjOTcxODQifQ==','2014-10-11 23:04:32','2014-10-11 23:04:32');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (25,'4-755-685','','Diana','','Araúz','Rodriguez','1983-09-12',0,3,'65282995','no','no','dianaarauzr@gmail.com','','rio sereno',62,1,'Diana Arauz','',1,0,2,3,'eyJpdiI6IlM3YTN1RDZXeE5hT3RKYVVZRTdQOTRIWG9ZdzdFb1M5WUdKcXlMUGF1RWc9IiwidmFsdWUiOiJWQU1FdWsySTZWd3NDdmpaOTliNlVIeFpkXC9iYzlGN2RkQ1JVZTZ5Mk10RT0iLCJtYWMiOiIzODE2NjBlNzQxZjNhZjAyNjgyNmEyOWUwM2I1Mjc3OGU4NGU4NGI2Mzc3OTUyNjc5MGRkOWRkOTkxYTliZWNmIn0=','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (26,'4-760-231','4-760-231','Yusbeika','Lineth','SantaMaria','Montero','1987-10-02',0,3,'6861-5904','2559088','0000','shanty1017@hotmail.com','','Las Lomas,David,Chiriqui',62,2,'yusbeikalineth.santamaria','',1,1,2,7,'eyJpdiI6Ik5Fa2RmZWxUT09jUjZrd3RsUzZNVHNrQTZzYmhPVGNpcDloZVR2QkRxMDA9IiwidmFsdWUiOiJYYndVNXlpWVpWTVNZenk1RzdWeEhBTEJVRGJ5d1V0ZCtCeXhaSEM0MmE0PSIsIm1hYyI6ImM0ZmM5NzUwMmZkODc4ZjIzYjM3NGIwNTQ5Y2E2NTdlM2MzYTdhNGZlYTU4ZDUzMDQxOGNkMjYzOTFiZDQ0N2IifQ==','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (27,'PE14745','','Kattia','','Franco','SantaMaria','1984-07-03',0,1,'65986253','','','KFRANCO-07@LIVE.COM','','DAVID',62,0,'KATTIA FRANCO','',1,0,10,2,'eyJpdiI6IkVkQVROMHd4Wk42ZVJxeDVkWVZVeXdkQXZVYVhiVDdjRXQ2Tko3eFJ5dnc9IiwidmFsdWUiOiI5b3ZTMmJ0eW53OHE5Z08zZVRmQ3FrYlFEN1Z4N0ZEWjdRYVBKcUVKMjhJPSIsIm1hYyI6ImYxMTg5Zjg3MWJlMTIxNmVjMTdiNDMwZjMwZmJkMmQxOWM1YWM3MGNlOTZlNTBkNWRiYjM5OWUyODA1ZGVkY2QifQ==','2014-10-11 23:04:33','2014-10-11 23:04:33');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (28,'4-272-517','4-272-517','Pedro','Erick','Madrid','espinosa','1974-05-04',1,1,'64004018','','','pedromadrid40@gmail.com','','los algarrobos chiriqui',62,1,'','',1,1,3,3,'eyJpdiI6IlJDbHRPeWtZWXh4N2VqUjBzM1pQdWRuWUFld2lKMFpiVFljcTY1M1pncE09IiwidmFsdWUiOiI5eGRUTVdqT1J1TFk0RWpTbDBITGJkdXVNbTZSbEhROEhSUlZ2SVkyOCtRPSIsIm1hYyI6IjFhZWZmNDZhYjk0NWU2OTQ5NGM5OGVhYTQ1YjI4ZDA5ZDlmNTExMmIwYzg5ZmZjZjA1NjdlNzNhN2YxMjlmYWIifQ==','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (29,'4-240-174','375-2184','Joixa ','Haydee','','Morante','1971-05-30',0,1,'6513 7540','721-0582 Mama','','chiquitita_338@hotmail.co','','Los Llanos. Las Lomas',62,0,'','',1,0,11,2,'eyJpdiI6IkhPeDl6VUlFcm9lVHBLTExXbnVBYTdlNis4OWhLWnNiYUk3d3ZXYWlCVlU9IiwidmFsdWUiOiJMSXA4dkdpV3hBTktkZ043SjZZNnpGRUpYNTF0OHNqbHVodllOWTZ5OG40PSIsIm1hYyI6ImRkNWM0NjM2NTdlN2YwNzdlZWQyN2NmYmVhMGQ2NTQxZGI2MzUxZTVkMDQyZDg1YzBjY2VkNjQxZDc3NjU4ZDMifQ==','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (30,'4-710-2290','47102290','Ekaterine','Yamileth','Miranda','Ortiz','1978-05-04',0,3,'6521 3595 67632327','no','','ekaterine05@hotmail.com','','las lomas',0,0,'kathy-7808@hotmail.com','',1,0,11,2,'eyJpdiI6InArclpkaHVKRElNUG1YTVFhU00weTE0dVhkTlwvUjNPdmh3VFJzVlNcL3ZZdz0iLCJ2YWx1ZSI6IjVDanp0bk9XYUZ0VXEzQlNkRHRZRnRtcUpOQmptYVB1dDZJTmRPWWpUV3c9IiwibWFjIjoiZjZmZTNmNmJmMzM4ZDcxZmVjNTE4Yjc4MGQwNjU1YmFkYmM0MzMwYzg5MmUyYWU0MmMzOWI3M2RjZDk4ZjRiZSJ9','2014-10-11 23:04:35','2014-10-11 23:04:35');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (31,'4-718-195','4-718-195','Cinthia','Cecilia','Samudio','Castillo','1980-03-25',0,5,'6457-8304','','774-3752','Sofiaariadna06@hotmail.co','','Cochea Arriba',62,0,'Cinthia Samudio de Gaitan','',1,0,3,3,'eyJpdiI6ImFyc200V3JFMDRUM28yZ01HQVora0oxWXRPNU9ITmU1YkpXcm94TVFveTg9IiwidmFsdWUiOiJCM2JRWDdVazlza1lUeHVxUVUwOTYwZ2Y4MnpUN0cxM0Rkb1VzdVNHZHJNPSIsIm1hYyI6ImM2MjdjMGE0Y2E4MzEwOGQwY2NmMWE4MjUwYTRhOTE0Zjg1MWRiZGYxMDYwM2FkYTliOWY3MmI3NGExYjZlYWIifQ==','2014-10-11 23:06:54','2014-10-11 23:06:54'),
 (32,'8-732-2237','87322237','Cristina','Vanessa','Miranda','DePuy','1979-10-30',0,1,'62121149','','','','','',0,0,'','',0,0,11,7,'eyJpdiI6ImJPbktBZzBFVnhwVzYyVk1Sa1F6Skp5NmJTUHhnbGV0bk1rVERUVnFDS009IiwidmFsdWUiOiJDNyt4NVpYdU9zZm9SQ3ZrZ3YrZ2JQOXN0ZFpoY1pPaWxMb0MrTUkzUlBNPSIsIm1hYyI6ImI4YjI3YWMyODhjNDc5MTEwMzcwZDkzYmFmNWNjNmRiMDBhMjVjMjIwMWJkN2Q2OTc1YWRhMDY2ZGFmNjYwZTUifQ==','2014-10-11 23:06:54','2014-10-11 23:06:54'),
 (33,'4-191-36','248-3553','Lourdes','Marcela','Gonzalez','De Gracia','1968-03-09',0,1,'6516-8582','','','marcela09_2@hotmail.com','','Dolega',62,1,'','',1,0,3,3,'eyJpdiI6IjFNaWsrMFpETm15VXR1YWtveWRTYWxRdmRtNTVSYmFqekRzOWs3Wm5EK0E9IiwidmFsdWUiOiJBRWlTWG1cL3lhRnRkVnBZXC9Ea1FWcUwxRmlJYzVRaHUwa3JcL0E0d29Gd2lrPSIsIm1hYyI6ImVjYjRkZjA4ZWQwNTg3YTA3M2IwYjY1MjYzN2FiNWYxMmY1MzY2ZjVhNjk4NWVlNTE1MjNjMjc5YjFiODcyZTUifQ==','2014-10-11 23:06:55','2014-10-11 23:06:55');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (34,'4-726-1565','4-726-1565','Maria','Elena','','Moreno','1980-10-28',0,1,'6699-4295**6967-7588','XXXXXXXXXXXXXXXXX','XXXXXXXXXXXXXXX','LEOMAR823@HOTMAIL.COM','','DAVID CHIRIQUI',62,4,'MARIA ELENA MORENO','',1,0,7,2,'eyJpdiI6InpVMlgwQ1RTVllucjQ3RTNUWndkeU1jUUxMVlMzSWluQWlpekZmUlQxWlk9IiwidmFsdWUiOiJhN2Q5NHJaS2lsMHVBREh0bjFQZXByYmt1VGtSVHVsQ0E3UFp4S1wvSVNWdz0iLCJtYWMiOiI2NzljNmJmYWZmNzdmZjRiNmRiM2UzODIxMTQyMzhlZWEyZGE4OGMyOTIwYzQ1NzQzNmVkZDViZTIyMGQ1ODg1In0=','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (35,'4-728-2431','4-728-2431','Julissa','Johaisa','Cordoba','Gonzalez','1983-04-25',0,1,'6963-4131','','720-2454 EXT 100','johaissa25@hotmail.com','','Boquete',62,0,'','',1,0,11,3,'eyJpdiI6IlNxMFVyXC94RWhsclRBbFwvSGgzdmd6cWFLU1hYdTBvTXczNTB4U3NZYUtsOD0iLCJ2YWx1ZSI6Iks2Y0FhVk9Da3NKS2ErQVZRMUJSSVdkWEtcL0pjQnN3ZjRVSU4zbFdpdUo0PSIsIm1hYyI6IjJiMTYzNjk0ZjkxNzNhY2EzMzQ2OTY5NWVhNzI2MmFkZTE5YjRhM2YzMTMwOTZiZDA1ZjlmZjJkNGZlYTcxZWIifQ==','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (36,'4-759-1754','4-759-1759','Greta','Betzaida','Gutierrez','De Gracia','1981-12-28',0,1,'6664-2171','776-9342','','gretbet28@hotmail.com','','Las Lomas, Llano Grande Arriba',62,4,'','',1,0,1,3,'eyJpdiI6IndGWlwvTGt0T0k5NTlqVzNVUXEydjEyV3ZkWEZTNmpBNk5aUk9lS3NIbm9NPSIsInZhbHVlIjoiZEF3VmpzNVFGZVwveFJ5ZlJWRnpHM1wvRXlKSkxDM1VTN1B4d2h1MGU0VmJ3PSIsIm1hYyI6IjVkNjdmZTRmOTViMzVjNjQ5MzQ5ZDQ2NTY1MWJkNzM4NWRlMGM5NDNjZDNkMjc0NzNlYjRmOGYxNmUzYmM3MGYifQ==','2014-10-11 23:06:57','2014-10-11 23:06:57');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (37,'4-748-1601','4-748-1601','Maryorie','Steffanie','Pitti','Villarreal','1989-01-11',0,1,'65471896','','64727821','yuri_pitti@yahoo.com','','caimito Dolega',62,2,'steffanie1989_@hotmail.co','',1,0,2,7,'eyJpdiI6Ik1Nd1F6QklsVjU0RGpOdTM0a0l4QllcL2NZNVNmd1BPVCt6YmZLUks4ZkNFPSIsInZhbHVlIjoiWnQ4NVY2RTBlRldPXC9OWjZcLzFuMHdjVEhFcWJOTEdyK01rd2U1MXF4OUU4PSIsIm1hYyI6IjJmOTZiNjQ1MzE1MDYyZjYxMDA2MmY1ZTRmNDU0YTdhZTBkYmFlOWZiZGMyNWZhMWRlYzJhNWMzZDUzZmQzYTEifQ==','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (38,'4-281-237','4-281-237','Belkis','Aneth','Vásquez','Atencio','1974-10-18',0,3,'64401546','','','bavasqueza@hotmail.com','','David',62,0,'bavasqueza@hotmail.com','',1,0,3,7,'eyJpdiI6IkYwMzdsN3NGUURFQXBvUjBkZkJURmloWklaSnZXOTZTNkd0NVVveUN2Z1E9IiwidmFsdWUiOiJBakVJQjdBU013RDRVM2FuNG85YkdEYlQ4UnVXeloxdFdhY2E4S2VcL0Y0RT0iLCJtYWMiOiI1NGI1MDhhOWE3YWFkN2MwNDIwOTI5ZTcyMGE1NzBkZGY3YWZhMzUzYTA3MWJjMjQ5YzkxMjJhNzk5MTE3NTg5In0=','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (39,'4-278-607','4-278-607','Elsa','Esther','Castillo','Espinosa','1974-10-09',0,1,'64685956','64685956','','elsacas-09@hotmail.com','','Nuevo San Carlitos',62,2,'','',1,1,11,3,'eyJpdiI6ImdFMlV6WWh3a0lhSUxmdlN2ZG16VFJrYzBTSVRuWnRtemJNcE8yNW5oVTg9IiwidmFsdWUiOiJoaCtKT1hjR1dTUGFhbXhZTVZwbGN4SU54K0RpWXVBVEduYnpkM3NyUmpRPSIsIm1hYyI6IjMzYThiYzUzMDZlMzUyNTQ5OWVlOTYwZmM3ZWI3NjQ2ZjljOTc0NTdiNjU0ODAwNjMzYWU2ZTZhM2YyNmUzZDMifQ==','2014-10-11 23:06:58','2014-10-11 23:06:58');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (40,'1-721-1259','1-721-1259','Angelike','Arlett','Rivera','Goff','1989-07-25',0,1,'6919-0956','','','','','',62,2,'ariveragoff','',1,0,8,3,'eyJpdiI6IkY0N0Y2V0xcLzFMS2pWMHVkdmI0K3NqeE5VXC9ycmlpblwvMUsybVVuTG5HdUU9IiwidmFsdWUiOiIzM0dHMjNsc3RQSG02RHpXd002XC85U2xlNlNJbDhQSnlZXC83TzhWS3JtWTQ9IiwibWFjIjoiOTg3M2JjODUwMmJhYmFjMTQ2MDMzNjJjNWE4NTQ4MTVhMTRmYTFlNzdkMzNkOTUxZDk3ZmM4ZmMzNThlNjljZSJ9','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (41,'4-744-906','','Leisy','Mabelis','Caballero','Gomez','1987-08-25',0,3,'6534-5644','775-7585','6382-5497','campanita25877@hotmail.co','','David',62,2,'Leisy Milena Caballero','',1,0,3,3,'eyJpdiI6IlpvOHV5M2swWlRWXC9zbDhncTVcL3RPXC9UN0ZhQXBTSkpIMzFaZm5RbmFFRXc9IiwidmFsdWUiOiJ6QUZtUVV6R0VPZldFeUh3XC9SMlloZ3B4MFwvMlZRXC9QXC9qeWhudVl1UkIwST0iLCJtYWMiOiIyNDM0MzU0ZmRhZjJkZDU3NTlkZGQzNmNmMmFjMjE4N2YyMTE0MmZhNGExOWI3ZGY1NDMyZTk2Yzk5YTIwYTM2In','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (42,'4-752-297','4-752-297','Kenia','Gisela','Cortez','Montes','1988-10-22',0,1,'62657882','','','kcortezm@hotmail.com','','Jardines de la Riviera',62,0,'','',0,0,11,7,'eyJpdiI6IjBnQ0graThPXC9VYWZpN3laUW4yVlI5RkxUUUdIVlU0QkZiWHBTQnFEbStjPSIsInZhbHVlIjoiZ3U2MGJNYW0yYzRsb3Jka1ZsYnBEb0xWNTNTODA4cVhUcWI2QWJzTXBNST0iLCJtYWMiOiJhMzUxMmUyODRhYzA5MDBlMDFhNzJiNWVhMDBmNDQ1OGI4OGMzZDk1NWI0NGE0MGVlZmRiNzlhM2ZmNmM0YjFmIn0=','2014-10-11 23:07:00','2014-10-11 23:07:00');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (43,'4-755-685','','Diana','','Araúz','Rodriguez','1983-09-12',0,0,'65282995','','','dianaarauzr@gmail.com','','',62,0,'','',0,0,2,3,'eyJpdiI6IjVuaWI4dmNaYW4rVnl0U2hNWlwvSDJcL3k2bmI1ank1VlpNbTRIamVidGRLST0iLCJ2YWx1ZSI6IjU4VnNQUjNNRmxwV0dQejhyeGFcL0FDM0Y3dnNEWkNhbm01b0hEOGp4YklzPSIsIm1hYyI6IjBhODNkNmQ1MzRmOWZiMzZmNjk3NTZhYTdkYmU2YTU1ZmIwYzdmODk2NjUwZDljODhiZjdhYjNhYWU2ODk0ODAifQ==','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (44,'4-744-1440','4-744-1440','Janisellys ','Jeanette','Serrud','Vasquez','1987-10-02',0,3,'6223-9678','774-3127','','jeanethe2502@hotmail.com','','San Mateo',62,2,'Janisellys Serrud','',1,1,3,3,'eyJpdiI6ImdmTlljRFEwNzBvNktjbTFtSXhpUTMwcnFMQWVudm82SHZkUDRPd2dncmM9IiwidmFsdWUiOiJNZWpZeTluNWdPc2JlUDNKaTZ0TXExU2NzcHc5bUdkYTdMNVRPb2JOTzVFPSIsIm1hYyI6IjlhMWNiZjAxNGZkYTM5NmIwNjVmYmJkZWI2OWJkYmVmNTg2MWEwZWQ0ODE4MDhlYjhjMjBiZTU4NzkyNjFmY2QifQ==','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (45,'PE-14-745','','Kattia','','Franco','Santamaria','1984-07-03',0,1,'65986253','','68374831','kafranco-07@live.com','','Los Abanicos',20,2,'kafranco-07@live.com','',1,0,10,2,'eyJpdiI6Ikx0N1VIMGJtZnVcL050TTZcL003VTdlN1wvdDFwZTZFclZjbVhRVm1pTE16VWc9IiwidmFsdWUiOiJmVWxaSE1FNzNUVURwWk1TVThMRFk3YUZzR0JrZlwvOW5paUszbzFoWGNRQT0iLCJtYWMiOiIzN2UyZmUxMTY1MWY5OWU5MzBkNTU1NjEwYzhiMTUxMGI0MGU4YjRmNjI0MTUwOWIwOTg5ZDkzMjVlYjc4M2FmIn0=','2014-10-11 23:07:01','2014-10-11 23:07:01');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (46,'4-727-1999','47271999','Henry','','Rodriguez','Rodriguez','1980-10-14',1,1,'64465222','','','Henry.r0782@live.com','','Los Abanicos',62,0,'Henry.r0782@hotmail.com','',1,0,10,2,'eyJpdiI6ImhDOWNtd2crXC9HRWcrbit0RHRodHVvcjMyOG1weGxcL3dKTGhQa2JsSnU3MD0iLCJ2YWx1ZSI6IkU2bzNTQXpneEVZMnh6MEM0NWN0c25MVWprRWZzdDBpRE5GS2VVSjFXZWM9IiwibWFjIjoiNGMzNDkzMmNhZmQxMjBkYTk2YTQ3NzBlNzk2ZDM3OWYzZjI2MTkxODYwNjU2ODAyNjkwYmFjNGJiM2Q0Yzk2NiJ9','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (47,'4-758-1302','','Nuris','Johana','Quintero','Morales','1991-09-14',0,0,'69765430','','','johanaquintero2011@hotmai','','Brisas del Rio',62,2,'Johana Quintero','',1,0,11,2,'eyJpdiI6IkVQaGw5a0tqY2lkNTBKekR5S2ZtbEJWWnIxM2RCY0NOMXg0RXI0VHpFQ1k9IiwidmFsdWUiOiJ1YlpHM3lFTFQ1NTlVWGpjRGhHQTFNT04xUDZqSGZNbnpPQUJLSjNhSnJvPSIsIm1hYyI6IjAyNTMzNTVhYzNkMDM2ZWE0MDM3ODEzMDk5YTczMWQ5Y2YyMzA0ODA1ZjY4ZmJlNWEwZGM0Y2QwMTcxMTViOWYifQ==','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (48,'4-736-1118','','Lisseth','Francia','Batista','Palacios','1982-07-02',0,1,'67125874-69400118','67125874','no ','lissethbatista@hoymail.co','','bugaba',62,4,'lissethbatista@hotmail.co','',1,1,2,2,'eyJpdiI6InlrVDA5R3JKUzU5MEZnMFNiTUFJTFlwTkFud1BkbVVwVlJvUmw1cUR1dVE9IiwidmFsdWUiOiJuZnBXUFZTMUhkYnRrSVk3Z1UzTklhdzJiOUMya01TNjJZQzNCWkJSS0tjPSIsIm1hYyI6Ijk0N2E1YTAxMDU1OGFlYjkyMTI4NWFlM2NjYTQ3MzQyODEzNDMyYjMzMWI1ZjMxNWUyZTAyN2Y4MGEzODI1YTkifQ==','2014-10-11 23:07:02','2014-10-11 23:07:02');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (49,'4-740-2162','47402162','Virginia','Del Carmen','Rivera','Chavez','1986-05-21',0,1,'66096626','7750233','','virgicr-8@hotmail,com','','LA FERIA ',62,0,'','',1,0,10,3,'eyJpdiI6IjY3TVI5dFZlbnNUdWRKOGJRXC92eXBNT1BSeUdENTRhN0FkTWkwalI1ajdBPSIsInZhbHVlIjoiU0pQZURYdHkwbWluc0NVVzc0YzdZbXlSYzBUd1c5UG5yNTltUTZsUUlqcz0iLCJtYWMiOiJmYWExMzQ4YWNjNWY4ZTgzMzYzMWI5ZWQzZjRlNTZhMDI1NTA5YmEwZWJkMGNlOTc4MjUxZTZlOGU5MDcyOTAxIn0=','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (50,'8-753-1101','8-753-1101','Edisa','Yannette','Fournier','Fuentes','1982-01-25',0,1,'6517-8477','774-6785','','edisayannette@hotmail.com','','David',62,2,'edisa fournier','',1,1,10,7,'eyJpdiI6IklvXC9YQ3I1U3d3XC9HK2duSGpCTGxieWhiUW1aSGFtU09lc0lrcmhJSVhQST0iLCJ2YWx1ZSI6Inh2em1lWGlXejdXVzRKVk4waFZcL3VhNFdrRVJiS01QOE1QM0x6amwwSW84PSIsIm1hYyI6ImU1NmYxMmE0NDc2MGVlODVlMjUxNjIxZWFkZGFhNTgxMmI4NDhjYzcyZDBkMzIxMjQ4ZGIzODY4ZTg1MjcyZDMifQ==','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (51,'4-740-2161','','Ladys','Diana','Serrano','Montenegro','1985-04-27',0,5,'69254919','','','dark-angel_mt@hotmail.es','','David,Chiriqui',62,1,'','',1,0,2,7,'eyJpdiI6ImtwamhKQTliV2FFQVkzdElRbXRVbm12T1NpaXZYT0JpeWRhOGx2TFFYdVE9IiwidmFsdWUiOiJLZEVueWgwR3NcL0cwTWF6cXpPTGJ2QXFVZ0xLN2hSa2dyamY5YXpFSklKQT0iLCJtYWMiOiJhMDM5YjE2MGM1ZTYwZWZjMGRlZWQwZjRkMmI3M2ZhNTFhY2FlOTM4MWY1NGZmMjYzOGFmYmY0NDEwYTE5ZTA0In0=','2014-10-11 23:07:04','2014-10-11 23:07:04');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (52,'4-717-2131','4-717-2131','Sara','Itzel','Castillo','Santamaria','1980-03-01',0,1,'6568-3581','6759-4467','6803-0892','saracastillo0119@hotmail.','','Nuevo Vedado, David',62,1,'','',1,0,11,2,'eyJpdiI6Im80VHRVVEV5bkZEWjQwbGN3a2I1MVRQYTlFVlFtOUhVeUZkWFVmVEZLaEU9IiwidmFsdWUiOiJhTkl3bzZ3OERBeUZWT1VHXC9zZzdlZlRlXC9UNVwveUVwaEgxcUZ0eGRDdHQ4PSIsIm1hYyI6IjIyZWUzYmIzNTkyMGI4M2FkZjBiN2Y5NmU4Zjg5NzczYjliNTYxN2RlMGM1YmE3ZjZhZDljN2YwNmQ4NDU2OTMifQ==','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (53,'4-718-195','4718195','Cinthia','Cecilia','Samudio','Castillo','1980-03-25',0,0,'6457-8304','','774-3752','Sofiaariadna06@hotmail.co','','Cochea Arriba',62,1,'Cinthia Samudio de Gaitan','',1,0,3,3,'eyJpdiI6Im5lVUk3Z1ZTU1wvOEJoRTFDUjBrSVdybDdyRlBrK1FMOHlaWFF0NnZRUFM0PSIsInZhbHVlIjoiOGxWM2F2WHQ2aVhIczdmbmFleFhlWFFOK3ZQT0lrM3RVb2FOMFprSFJPUT0iLCJtYWMiOiIxOWM3NzZmNWRlMzU5MmUxZWM2MmFmZjdmZjEwMTMxOGE2YTRjZjgyYmI4OWRlYzVkMTgxYjIyNzBmODBkNGI5In0=','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (54,'4-755-322','4-755-322','Diana','Lisbeth','Lezcano','Castillo','1990-11-27',0,1,'','','','Lezcano14@gmail.com','','',62,0,'','',0,0,11,7,'eyJpdiI6ImQzb0MxVkRlUlhVb2NvT2hcL2FvTDRuR2tJUEVvb0FKaTBYckF2UUxPZUdRPSIsInZhbHVlIjoidUYybHhUS2k3ZjhcL1owT2IwU3hXT2VvYnN4azZWQmN4Y2tPRTREODdFT0U9IiwibWFjIjoiMzYzNWY3MjRhMGI1M2QwYjU0NmFiMGEwNzY4YWRhYTg1ZTc0ZWIzM2ExOGRkNGNjZGU5MTQ5MDJjOGVkYTlmMSJ9','2014-10-11 23:07:05','2014-10-11 23:07:05');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (55,'4-713-1651','4-7169-1651','Laura','Verónica','Pérez','Navarro','1978-11-29',0,7,'6620-0512','','775-0773 ext.111','laura_p2978@hotmail.com','','Anastacios, Dolega',62,1,'','',1,0,3,3,'eyJpdiI6ImNxRnFYUm5INVNScmhTOWtodElmR0pocEFEdEI4REo1NTQ1UDRWdUNab1E9IiwidmFsdWUiOiJuc1pEQ2llV2hUblFpaWNEOVBaK2JTTjBOXC9FZnNLUDE3TjI2K2hjMzJiVT0iLCJtYWMiOiI3MDVmOTJmYjhhZGU4NTY0ODQxZWJiZTE4MDc1MjkwYmEyNGM0MDM4NDc2N2FjOWEyMWVhOThhMmMwYTY4ZGI5In0=','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (56,'4-738-885','4738885','Eugenio','Jesus','Montilla','Serrano','',1,3,'64805007','7754321','','eugeniomontilla12@gmail.c','','san pablo nuevo',62,4,'eugenio4ever@hotmail.com','',1,1,11,2,'eyJpdiI6Iis2WHdKQzRaN3krTm42cU9FQ1M2UDFra3JUMElZMlJka2RRWTZpWlp2N009IiwidmFsdWUiOiJSSnJ5VCt4WDBNUnFuM1E1SnhISERpK2JOYXo1MDIxREdUd3dGUXZsR3VNPSIsIm1hYyI6ImQzZGFiYTQwMjYzMmRlY2FlYTliMjZjNDlkZjljNzE2OWViNzc2N2E0ZDYxMDIyMGIzY2UzZmJiNzM4ZDU0NzEifQ==','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (57,'4-738-885','4738885','Eugenio','Jesus','Montilla','Serrano','',1,3,'64805007','7754321','','eugeniomontilla12@gmail.c','','san pablo nuevo',62,4,'eugenio4ever@hotmail.com','',1,1,11,2,'eyJpdiI6ImhXV2JITk1zNWZudG5zMGpQR1ZhVHBwYTk4SGxFR29EVnhRanlPUVBNNEU9IiwidmFsdWUiOiJxXC9RUmN2WE9talg0bjV3bFwvVHNQYTUyUWRBcjV0Rzl0RE0yUG96RWVid009IiwibWFjIjoiMTNkZWU4MTNkMGVkMTIyOGMxN2UzYWRmMmRhODlhYmViYjY1YWI3NzQ0YmVjY2E3NzYzYzhiOTdjYTAzZjZjNyJ9','2014-10-11 23:07:07','2014-10-11 23:07:07');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (58,'4-743-2345','4-743-2345','Fátima','Minerva','Moreira','De Gracia','1987-05-13',0,1,'6495-3391','','','faty_1307@hotmail.com','','Los Algarrobos',62,1,'Fatima Moreira','',1,0,1,3,'eyJpdiI6Ilh0QjNMVWowY1RxQlphVG1Ic01CVVh2bGdKNHlOK2xPcWNLWXM0ZW1rRUU9IiwidmFsdWUiOiJ6WDdIcklzWElkcHcxQXQ0cVRhRjhROE1MUExFb014WHRPcFppVFprZWhvPSIsIm1hYyI6ImQxYzc4MjU1ZGMyMTA0NTg4YjcyNmU5ZmViODZiNDI4Mjc2M2I5MDFmYmVlM2ZmMGZjM2Q1MWE4NDE3MzJhOTQifQ==','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (59,'4-738-504','4-738-504','Arianni','Massiel','Guerra','Morales','1985-11-23',0,3,'6720-6104','774-5388','','arianni_tcd@hotmail.com','','Barrio Universitario',62,2,'','',1,0,3,3,'eyJpdiI6InhBcEkyQ2lLSTFsK3k1QmdoQ0NTU2E1Z2FXV05WUVFDRElaVTV6Z3U4ZWc9IiwidmFsdWUiOiJvaVdndW1xWmErWVZuZnJzYW5iWnNrb2JXeVVOcW9ESXdJa0FDOTNYU0tBPSIsIm1hYyI6ImUyYjQyYzc4YTY5N2E2N2Y2MWIxYmMyZmMxYzAyMDc0Y2JjNWZhYTUwZmU2NDNlZWYwZTMxMmE4ZGIzYmJjOGEifQ==','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (60,'4-760-391','4760391','Stephanie','Kristell','Gonzalez','Ruiloba','1992-01-20',0,1,'6249-1240','730-4368','','stephys_kriss20@hotmail.c','','Urb. Nazareth',62,2,'','',1,1,11,3,'eyJpdiI6IlBzUHVaTlZId2FRQmRPdzlwQlpudDRPTXY5c1hZdVJpNklNczlpWlhZMFU9IiwidmFsdWUiOiJzMU16YUNsd0NcLzdVYWxNcjRWaHorcGE1NlRCRG80NlliRG1pKzRsR1M1MD0iLCJtYWMiOiJiY2EyMmI0NTM1OTczY2Q3MDQ2ZjkyYWI1OTIzM2Y5NTRiMDczYmIzNjEzZjMxYTYxN2ViYmRjNDY0Yjc3ZjY4In0=','2014-10-11 23:07:08','2014-10-11 23:07:08');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (61,'4-760-391','4760391','Stephanie','Kristell','Gonzalez','Ruiloba','1992-01-20',0,1,'6249-1240','730-4368','','stephys_kriss20@hotmail.c','','Urb. Nazareth',62,2,'','',1,1,11,3,'eyJpdiI6IlVTMnk2enJxc0grRnkzbmZoTDBNbjZGRTNNVVwvOWl6VnVSUkhZKzBsM2VzPSIsInZhbHVlIjoibE5pWlVIWFwvbk5udFdTdGZacHpKNVlOMTFRT3RkVVlwMWFmd0pWczRVUEk9IiwibWFjIjoiODJiNTIzZjMzM2Y4NDQ0M2RiN2MzYTE1ZWYyYmNiMjZmNGQwNzdiNDBkMDJkMjE5NGJjZTI1YTQ5YzI3NDIyYiJ9','2014-10-11 23:07:33','2014-10-11 23:07:33'),
 (62,'4-740-640','','Maryuri','Alexandra','Guerra','Jaramillo','1986-06-20',0,4,'6391-83-39','','','vinan1414@hotmail.com','','ciudad acuario 4ta etapa casa 203',62,1,'yuri alexandra guerra','',1,0,3,3,'eyJpdiI6IkMrM0w0ZzlcL0RPN3NNbTVJS1Y2NVpNTFN1UGRCSFUzcHVadGxxcUxMbkxvPSIsInZhbHVlIjoiSHBEbW5sNVFsdFVlZ09PZ25BVjZjdG4yMElVaDJIbmxQeEVoTlJZSlFXND0iLCJtYWMiOiIwMGE1MDkxYjExMzQ2YWQ3M2IyMTJmZTFjNDI1OTc1ODVhOGIxYjczNGMzZjk0ZDNkY2ZiMDExYmY5NTYxYTkzIn0=','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (63,'4-721-235','4-721-238','Keyla','Karina','Vergara','Ortega','1981-03-23',0,1,'6538-3998','--','775-2535 EXT  26','kvergara84@hotmail.com','','BAGALA',62,4,'','',1,0,3,4,'eyJpdiI6IkY5VENVY2hxY2V4TzlONUFjNTEzQWp3SjBuT0tUNlUxMVJIOGJ3RVZHS0E9IiwidmFsdWUiOiJ1dVIyc2JRMDVUWWQ5bFB3YW5hWnRXVEFvVE5GU1V3cThSN0FvSVwveEdJST0iLCJtYWMiOiJkOGI5YjNlZmMxMGM1YzE5M2QwM2RjMjQ3MjIwYjczYjllNzgxMTIyODc2NWYzYmQ3ODY3MDI3OWEwNzIzMWVhIn0=','2014-10-11 23:07:34','2014-10-11 23:07:34');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (64,'4-745-744','','Kelvin','','Guerra','','',1,0,'60588485','','266-3258','','','Chiriqui,',0,0,'','',1,0,2,2,'eyJpdiI6Ikg5NlpuXC9pXC96YVU4TUhTUlBmVm1RSUVScHg2T2I3cnVpMERSMXdZaWpjMD0iLCJ2YWx1ZSI6ImVRVGljbFc2cTBXMHdSREV1WXZsU1RYZXVGVEFRUjdWMHhzVHEzRkdYM2s9IiwibWFjIjoiMmE1MGZkOTY3ODQwYjU3NTE3MmU2ODVjODcxN2QxZjJlOWQ1NGI3YTg2YmViMWYwYTY2MmI3YTQxMDBiNDdiYyJ9','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (65,'4-126-2178','','Senobia','','Guerra','Villareal','1959-01-02',0,1,'69113819','','','guerra59_@hotmail.com','','',62,0,'','',0,0,10,2,'eyJpdiI6ImJhUUphb0VUNVNRVkNHTW5CazlmNjh5RVlweUtjXC9ydG5OS25IQ0NYeHVFPSIsInZhbHVlIjoidXNJK3BhN0M5NERhQmZUeFZsU0t4cEhFdmYrODlHNzF5Yng5MVZZaXZobz0iLCJtYWMiOiJiODI1MjRiYTUxZTIwZTk5MzZhZTg1M2RiZWFiOTM1ODA5NTljODg3OTI2NjA5ODdiMmZmZGQ5M2I5ZmQ0NjQ3In0=','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (66,'4-721-238','4-721-283','Keyla','Karina','Vergara','Ortega','1981-03-23',0,1,'6538-3998','-','','kvergara84@hotmail.com','','BAGALA',62,0,'','',1,0,3,4,'eyJpdiI6ImVSb3Ewdk91QSs2OWJVemlORWV2RDI0Nm1HOVFBVVpWM1VnemZqRmFhcjg9IiwidmFsdWUiOiJPUU5CNm9ZTEJ1ejU1QURpWHl6V0xJaU4yRHNDczE1TmNUQk4rdytoN3RjPSIsIm1hYyI6IjJhMzkxM2YwMDBiMzNmNGYzYmEwNDFiZDhmNzIzMjM2NzEyMjQ2ODQ4NDE0MThhNjY4OGVmNGExZTJhZWNiN2UifQ==','2014-10-11 23:07:35','2014-10-11 23:07:35');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (67,'PE-12-1143','PE-12-1143','Vielka','Aeleen','Gutiérrez','González','1989-07-08',0,5,'65854556','7301381','','vielkagutierrez1989@hotma','','Santa Cruz, David',62,0,'www.facebook.com/NELEEA','',1,0,2,3,'eyJpdiI6IlpLa2RJeVdGTGpqdkhYMEZ0K3o3QWZHSHNOZkpiZmVwWUJhdDRNcU1wbkU9IiwidmFsdWUiOiJyWlZBMXRsT0lpYmNxWk5FVFNNSW9ZSlpTN2phRXF6dHlUd3N0bEJzNmtFPSIsIm1hYyI6IjM4Y2NlZDE4MjgxZTRhNjA2ZTliNGFiZTViYzY5MWY3ODkyOTA2NTA5MjI3MDEwZjA0NDBkYWFjZjFiMDNhZjQifQ==','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (68,'8-732-2237','87322237','Cristina','Vanessa','Miranda','DePuy','1979-10-30',0,1,'62121149','','','cvmiranda_1114yo@hotmail.','','Panama',62,0,'','',1,0,3,3,'eyJpdiI6IlZoUHZiTFNYbVwvclBDSjFIQmhtYXFsbDRxUDN1SklTUVhpQTgzeElvdWJnPSIsInZhbHVlIjoidHpGSytUNmJuNm9Zb1hhblFSZktXM3FRWTFCMlJNdHVVYzZqNzNLelFIMD0iLCJtYWMiOiJlZjEzMDBiYjAwZmUwZTYzYzVkMzQwNjg3MDYyYTZjM2RjZDU5OGExNTM0NWRjNjYxMjkzOGQ4NDY4MGQwNTgxIn0=','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (69,'4-751-320','','Jhonny','Ricardo','Murillo','Gonzalez','1988-11-05',1,5,'69-02-28-12','','','jricardo911@hotmail.es','','la concepcion bugaba',62,0,'jhonny murillo','',1,1,2,7,'eyJpdiI6ImJ4M1owcGZZQVpnWkNsMHJNbVNXazRXNkhoRnV1Y0h5WlR1YUorXC9lcWdNPSIsInZhbHVlIjoiOVVKb0l5WWY0QjRyRTBWVWhrV1hnbkxXMjlYZjhubjBRd3ZyNUtcL3c0QTg9IiwibWFjIjoiMTE0OTY0MTdkYzkwNGU2Njc3NTE0MTU4OWM0MGY4MGFjZjkwM2IwODdiYzkxMTA3NTMzNWRkMWRmM2ExYmU4NSJ9','2014-10-11 23:07:37','2014-10-11 23:07:37');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (70,'4-736-1118','','Lisseth','Francia','Batista','Palacios','1982-07-02',0,1,'67125874','','','','','',62,2,'lissethbatista@hotmail.co','',1,1,2,2,'eyJpdiI6IkhpUFZvRVFiXC9CVUJmMkNORVZsaXJCT25SMWU5NWZWWU1XSzM0WDgwN0RNPSIsInZhbHVlIjoiRHZNVGV5U2MxZ1hLaFJVVjMxdWU2M0lHakhJd2pRNW5QRjA1elRSMTBBUT0iLCJtYWMiOiI1NzdmMGJjNDZkYWM5YzBiZjk3OWE2NDRhODliZGRiZTRmYzM2MzMzOWM4MTUxYjY2N2I2NTA3OTAzZTY4MzM1In0=','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (71,'6-702-1476','6-702-1476','Eliecer','Enrique','Rios','Samudio','1978-09-05',1,1,'68958942','730-7759','','erya04@hotmail.com','','ciudad acuario david, chiriqui',62,0,'erya04@hotmail.com','',1,1,11,2,'eyJpdiI6IkRURUdRN1lUOTBxMVFVVzRkNGZwQ0xoWng5VDNjNVdBWDZJb0pkNkZYU2M9IiwidmFsdWUiOiJnMStYSm9uSk1uZUw3Vndsa1lqcjFcL2VOV3VEaU8xNjQ2WnJKajg4QUoxQT0iLCJtYWMiOiIxNWNjMTlhMGE3MmYwZTNjYzRiODdiYzI4YWVhMGIwODcyZGU5M2JjNjA5M2RjMTRkZDUwMjdhZWJjNDdiNjE0In0=','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (72,'4-705-1','8-463-151','Mixza','Yariela','Gonzalez','Espinosa','1977-09-25',0,1,'6659-4540','774-57-80','','mixzagonzalez@gmail.com','','david,altos del lago',62,2,'mixza gonzalez','',1,0,10,3,'eyJpdiI6ImpNSEpaNFE3N2Q5NTJkaW0xYmFNZkpid1VzZXNtdUZcL0Y1cVNSVnFXcjdvPSIsInZhbHVlIjoiNm80NDUyRlFWbTlkb3hmU2ZoNVlEcmtOSHlYYzdJSEowK3BOa0NOaWtobz0iLCJtYWMiOiI4YTgwMTRlYTNjNTZmMjIxZTllNmU2MjJjNDMxZGJjOTg0ZTU3OThkMmNkMmEwMGZmNWNlMTA0ZWJmMzNhY2Y0In0=','2014-10-11 23:07:39','2014-10-11 23:07:39');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (73,'4-705-1411','4-705-1411','Zoraya','Yanela','Castillo','Alvarez','1977-10-02',0,1,'6908-3467','720-2351','no','yalvarez-07@hotmail.com','','boquete-Los Naranjos',62,4,'yalavarez-07@hotmail.com','',1,0,11,7,'eyJpdiI6InFkeXY2R0FNU2xVaG9wY3dmWkExS2pIUUlRUFpjU25rYkhYSnFmNkxOdEk9IiwidmFsdWUiOiJqb1JBMWNkSUdGRkdCbk1hQ3BOODNsMm51YW1ReVdqcE9NY3kzcFwvTTF0cz0iLCJtYWMiOiI1NDJlZGY4MDg5NWNjZTVlNWU3MTk1NzI2M2I1OTQzYzQ4ZmI5NDA0Y2FkM2IzYTc1OGI5ODhhYzgyYTkzMzU2In0=','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (74,'PE92480','pe92480','Elida','Maria','Solis','Aviles','1982-08-29',0,3,'6981-1915','775-3877','','elimarisolis@gmail.com','','Doleguita',62,2,'','',1,1,3,2,'eyJpdiI6Ikkza0VpcTIxbEdhZHhjRG9zV2p4OFVJZHE3YWRSR0p5ZGp2QVJpTW8xTkk9IiwidmFsdWUiOiJVYVFXQ0h1T3RcL01Wd0Vnb2ljQ2ZYbjlPVEU1TzhFemxjU1NKemw5UjY2ND0iLCJtYWMiOiI3ZjMzMTc5YWYyNWNjOGRlMjM2MzE4ZWM5ZGRjYWE3NmE4YjdmOWUzYzY4MzNhNzk4NzMzOTk3ODA4MWFlMzVlIn0=','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (75,'4-739-488','4-739-488','Yoselin','Vanessa','Lara','Montero','1986-01-03',0,4,'6028-9132','','770-6900','jocelyne.lara@gmail.com','','Los Algarrobos',62,1,'http://www.facebook.com/J','',1,1,11,3,'eyJpdiI6ImYwdlRESERJZnh6Zk0xVUFLRVMydzQ3UlwvT2ViUTZTMFo0QUpUUHNSakdJPSIsInZhbHVlIjoiV0R1UDllRFRNZlE0MHg4MGw2bWNYd0lNeTgxdTFXZG42RytybWt3dlZnND0iLCJtYWMiOiIzNWU1YjhmNWVjMTRjODU1MjJlNjAzNTRlYWI0ODE5OTQyMTRjNDUxODk2YjM5MWMzNmRlMWNhODc2NWJiYjc5In0=','2014-10-11 23:07:40','2014-10-11 23:07:40');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (76,'110480572','','Glinnys','','Porras','Lopez','1979-07-08',0,3,'66804412','2776732','','ATENCIONTEMPRANA07@GMAIL.','','VOLCAN PANAMA',20,0,'','',1,1,11,5,'eyJpdiI6IkdSWjlUUkVLbDMwVXNjRjc1bkIxSkJxc3lSTG5BOWY3VjNYXC9VM2gxbWRjPSIsInZhbHVlIjoiTUpFRmJnRG5qbXE5bitOMDRQeHlFUW5CYm5pSFN4KzdHeXY1aVwvU1dBSkU9IiwibWFjIjoiYTU5ZTI2MjQ5MTVkN2ZlMGExMTU1ZWQzZTFjNzkzNzc0MjFjMjY2ZGUxYTEzODZjNDk2ZGQ2OTc4YzliYWE2MCJ9','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (77,'4-735-2450','4-735-2450','Jassiel','Omaira','Sánchez','Gómez','1985-03-27',0,1,'6241-0331','722-2531','','yassiel27@hotmail.com','','bágala',62,0,'Jassiel Sanchez (jass)','',1,0,1,3,'eyJpdiI6IkNDK2Yxdk1ZaTI2WUZcL0dcL29aZTArRDBqY05cL3ZwRnFVUktDNXVJS05oNlk9IiwidmFsdWUiOiJiZ0pudStNeTNkTk83bzlXRU4zdlpcL0pieFBEWStLbDR1ZEJSNFlpaU5mUT0iLCJtYWMiOiIzNmZiYWYyZDIyODA3NzZiZGFmZjIzOWFmN2RkNWM3MDljMzNkNjJlODQzNjZmZWVmNWI0YmI4MDMxYzJkZjkzIn0=','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (78,'4-749-2042','4-749-2042','Katiushka','Yesabel','Castillo','Sánchez','1989-04-22',0,5,'6567-8065','774-2280','','k.castillo_22@hotmail.com','','San Pablo Viejo',62,1,'k.castillo_22@hotmail.com','',1,0,11,3,'eyJpdiI6IndPQ3RtYktJZVEwYkxzRTlKaHFzdlJcL21aZ3NrQmMxaDE0Q2pjbTgzcWJzPSIsInZhbHVlIjoiZXVUVnpIMkt6Mmk4b1FsSERaT2hwVkJXN1RzWW1td2hjd3FFOU1uY1B4RT0iLCJtYWMiOiJjZThiNTYxMzM5OWIyOWQwM2U0YzUzYWIwZjJiNGI0YzY1ODJkZDExZDY4MjJiNWRlZjc3NTM5ZGJiMGVmNDAyIn0=','2014-10-11 23:07:42','2014-10-11 23:07:42');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (79,'1-715-518','1-715-518','Lorena','Joanne','Manzo','Cedeño','1985-01-11',0,1,'6793-0262','','','lorearon@hotmail.com','','barrio universitario',62,0,'lorena.manzo.906','',1,1,8,7,'eyJpdiI6ImtKVUF6bUZweWlPQzRVRjErNXcrbFNlUHk1TUlqRlwvWW5iR1RuajhaU3lNPSIsInZhbHVlIjoiMTdMMkpObDJUZG9sUCs3SFBZSHVXOWNaWWFKYjZSUFwvaXRFbzc4SGppTmc9IiwibWFjIjoiMDQxYjBiY2VjMWZiZjYwNDM4MWFiOTJjYjJmZjQ2NWViZTNlYjhlZmMxOTU5NzFhNmRjZTliMmZmYzliZDljYSJ9','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (80,'4-725-2047','4-725-2047','Fatima','Iveth','Rios','Murillo','1982-07-29',0,3,'6630-3776','','775-0773','fatirm2907@hotmail.com','','LOS ALGARROBOS-DOLEGA',62,1,'','',1,0,3,3,'eyJpdiI6ImhcLzhISk9HYnlLemVKTTVQN2hjVlhkYUQxRzQzSzJReXhzcUxUZWF3TzlJPSIsInZhbHVlIjoiMStOYnAzV28rVzdxcHFua0kwNlBTU1hTd2M1ZkFxQ21NNE96cSthYkc4RT0iLCJtYWMiOiIyZmExMTIxZThjMDU4ZGY2OGYwNDEzNTc2M2IxZGIzMjU2YmQ2ZmUyZjE0YTZkZDU0ZTAyNjlmNjg1NDNmMTVjIn0=','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (81,'4-741-223','','Yoisy','Atenas','Saldaña','Sanchez','1986-07-22',0,1,'62698211','','','yoisy22@hotmail.com','','Urb. zia Elena',62,2,'yoisy22@hotmail.com','',1,0,3,3,'eyJpdiI6Imx3Tld5RjEzOXJrbnB5MnIzQmNKS003Wm9NZ2poSWM0cUl1cVQ3NHpqRW89IiwidmFsdWUiOiJ1bWw0QmhZTWRVZTRiWFwva1R5TnNGcmhvQTNcL0p0cEhydFBaOVlqZjBCYWc9IiwibWFjIjoiNjFkMjJhZTQzNmZkNjZjYjA0NzAxMzExZTAwYjAyZGI0MGE1NGQzZWUzMjNmMGExMDE5YWY4ZjJmOTYxYTBkOCJ9','2014-10-11 23:07:43','2014-10-11 23:07:43');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (82,'4-758-1510','4-758-1510','Katherina','Alessandra','Mattos','Rivera','1991-09-24',0,2,'6794-7149','','','katherinea9109@gmail.com','','Riviera, reparto universal, David',62,2,'kathy mattos','',1,0,3,3,'eyJpdiI6IlRIWEZ0OWNnQkY4dW5IMnhqRUQrUHVNV1F1SUR6U2JqWFlIZWxTTGV2ajQ9IiwidmFsdWUiOiJpOHFLK3pRWWJxYUh0cVlGT2pnaUpJeHRtKzFoWHN0OEFCNHd2eWFBT1Y0PSIsIm1hYyI6IjE1MTVmYTRjMmQ1ZTU0NDRmYmE1NzVjZTkwYzk2NGY2MmVmYTk1ZWM5MDAwMDA3Zjc5MWQyYjJlNWNhMjJmZWIifQ==','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (83,'4-731-671','','Lourdes','Margarita','Concepcion','Taylor','1983-11-30',0,1,'64779615','770-0822','','lourdesconcepcion29@yahoo','','BUGABA',62,1,'','',1,0,3,7,'eyJpdiI6IjRuaUl1dk1IbGlsRG9zdmhLcnFxUUN1a3BWV01jUUwwRlZCYkxiTVNta3c9IiwidmFsdWUiOiI3a1BnVVwvczJuaWhqdDc1TzlGRU85YVFkeE1lT3FiUGZub21YY3J1RlFrUT0iLCJtYWMiOiI2MGNkMWRiNmUwYzQ5N2Y0NjA4NmU4MzNkNzMxOGQ0YWU3Mzc0MThhZGIxMTE2ZjJjYTA0NmJlZjliZjcxZjE5In0=','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (84,'4-750-837','4-750-837','Odalys','Yamileth','','Mojica','2013-03-23',0,1,'67325870- 68008061','','','odymor@hotmail.com','','LAS LOMAS DAVID',62,1,'','',1,0,1,2,'eyJpdiI6IjI4SFViWDVkOVwvdExTYnFMZHp2SkNOR2RUQ1hyV1QxR1hreE1aYlUwZkZZPSIsInZhbHVlIjoicDlkMmpKT1NXZGJjbm1VeUJvb3JxMk1GSzJMZ2R4d1VLaFN6MEVramszQT0iLCJtYWMiOiJjNmFhNjVkZTFkNWFmMDg1NTQ5YjI3ZTJmMTM0NDc3MjJiZWM5MzE1OTBkYTZmNmFjZWI5YWMxYzRmOTMxMzVjIn0=','2014-10-11 23:07:44','2014-10-11 23:07:44');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (85,'4-749-821','','Mariel','','Gutiérrez','Vega','1989-03-25',0,3,'66855500','','','marigvega25@gmail.com','','Los algarrobos',62,0,'Mariel Gutiérrez','',1,0,3,3,'eyJpdiI6IlhRRVFQOU5TOU5XVENLNThLRmx5aDlxdnJrcm5DWEFWVjFrRzJpSVwvOEJjPSIsInZhbHVlIjoicDErem04SXJUTFN3MmxOYWpBYUdXQ3JrWkNkUFIybHBDNW9CTU1QdDBXTT0iLCJtYWMiOiI2MTgwMDQ2ODk3OTRjYjEwZDk4NjhkYjE4MmE4YWFiZmJiNDcwNGI2MjUzZmMxZmQwMmU4MDQ0MjI1MDgyNjMwIn0=','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (86,'4-703-867','4-703-867','Bella','Alicia','Chavarria','Nuñez','1977-06-03',0,2,'69516271','','7758917','bellalicia06@hotmail.com','','BUGABA',62,0,'','',1,0,11,2,'eyJpdiI6IlJCeVk1RkxPREhsc2NMMkIrU3l4cW45TmlYM3l6RlFnbTFRQjBtRkZSdTQ9IiwidmFsdWUiOiJpMWdBejFNT0xsRVFRVDI4SUFCR1pRdXd4c3JxSERPb2RtbWgrOCswazVrPSIsIm1hYyI6ImQ2MjhiYzNjMGJkY2Y2OGNlYTNkZDBjOTE5MzQ4OGJmMjRjMzNjZjE2NjUzOTMxOGEwNmYwZWE3NmExMjU2YzMifQ==','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (87,'4-234-920','435-0161-E','Betzy','Itzel','Espinosa','Miranda','1971-09-20',0,1,'65139312','730-40-64','','betzi.espinosa20@gmail.co','','Valle Bonito',62,1,'betsi.espinoza20@gmail.co','',1,0,11,2,'eyJpdiI6InZ3OStaSE82T0NNd2NDWGV0cUdDWXNZVmVTZ0h3bmtOWmFVa29sRnVzQ1E9IiwidmFsdWUiOiJjVzVBUmxIY2tScTRDdDZPNHI3T3ZkbGd1eU9xdDVYTUpNNjVQWVliM0xzPSIsIm1hYyI6IjdhODA5OGQ3YmM1Y2I3NGQ2YThjZmY5ZTRkYTFjZmNmMDI1N2Y4YzgwZjRlZDgyMjRmNTcxY2NkZjdkNDYzODkifQ==','2014-10-11 23:07:46','2014-10-11 23:07:46');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (88,'4-756-595','','Máxima','Enith','Martínez','Jurado','1991-01-31',0,3,'66429070','774-9145','','maxi3191@hotmail.com','','Nuevo San Carlitos',62,0,'','',1,0,5,7,'eyJpdiI6IlBkeVJ0a3czSFlFY3ZpNWNBT25UaUg0M3BWOGV2bWxWYTRYNWtjc0dqNXM9IiwidmFsdWUiOiJcL01BbzkzbjFHRFA1cGdIRGZSUGVDWEtrYmwxUW9aK1lWdnc2M2VCV21pZz0iLCJtYWMiOiJmMjg4ZjYxM2ZkM2Q3MDc3ZWJiODgyYTFmN2ZlZjRiMDc2MjM3OWQxODQ0ZDYyODcxMzcxZjEwMjdlOWI0MDgzIn0=','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (89,'4-738-783','04-738.783','Geovanna','Lisbeth','Sánchez','Pimentel','2013-04-26',0,3,'6689-0505','772-1819','','lisbeth2682@hotmail.com','','Los Algarrobos,Villa Celin',62,4,'Lisbeth Pimentel','',1,0,10,3,'eyJpdiI6IlI4Y2FcL21rUzI0ZmNldk8zeU9YMHRwRWxIMTJRcXVySzJOcEwzRThFbWljPSIsInZhbHVlIjoialhpcjZiRHNnbTR4bGlOVlhDVzBKYzFPQ3lLZUZ3MnQwRWxVVHpSWTY0cz0iLCJtYWMiOiJhZDczNWI0YmU3ZjMzM2U2NDRjMmViZGMyZDZhMmE0ZjQ4YzliM2ZiY2UzZGZjNWVhNjcyNjNhYjEyNGU0MmMxIn0=','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (90,'8-371-577','8-371-577','Laura ','Lucía','Huertas','De León','1971-04-29',0,1,'6670-4745','770-5721','','llhuertas@hotmail.com','','Vía principal de Boqueron, cerca del Oleoducto.',62,1,'','',1,1,3,3,'eyJpdiI6IjJYME9OSVVtRldLelB4d2NBSXI4U1BGSXRZRXMrcHJcL2l0dFl2YnZqaGhFPSIsInZhbHVlIjoiKzV0YWdLMWtsNllzT2JQMmVOQ3pFTll6XC93RjI4dVgzOUtSeDRteEJEXC9VPSIsIm1hYyI6IjkxMzZjMjhlMjliZjc0ZDM3OTI1ZDZjNjlhYjEyOTQ4ODYyYjQxMTFmNzE4MTI4NzJiNmMyMjk4YmI5NGEwMGEifQ==','2014-10-11 23:07:47','2014-10-11 23:07:47');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (91,'4-785-2276','22087-h','Thanya','Yerineth','','Gonzalez','1994-06-20',0,2,'68763019','7204577','','thanya_g20@hotmail.com','','Alto boquete , villa la paz',62,2,'Thanya Gonzalez','',1,0,9,2,'eyJpdiI6InhMcW9vU2J0RlhaS1FRRDFUdUVTNm5Ec1FHbzRGbitoNlVYRDdraEhlT289IiwidmFsdWUiOiJEeER1OW14a3lRMlJVVVVMTGhBY1E1VXlcL1BMeE9LNUpSNVFRYlZOVzVQaz0iLCJtYWMiOiI0N2ZlZTQ2NTdmYjZmMTcxYWE4ZDAwZDkyNmU0NGY1MDk2N2JiZDA1MDBiM2U5MTg5YjEwZjJiN2VlYmI5NjM3In0=','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (92,'4-745-1692','4-745-1692','Arianis','Mabel','Santamaria','Concepcion','1987-11-19',0,1,'6654-8611','722-4895','','Sinaira-1911@hotmail:com','','Tijeras-Boqueron',62,2,'Arianis Santamaria Concep','',1,0,2,7,'eyJpdiI6ImVYZHRUV0Rydm5MeDdhMzZ4dVpGU0srT1FMeENZazJ5Tno4R0JQV2xjb2c9IiwidmFsdWUiOiJqVlBZVnR4bWZPR2ZVbmVnVWk5dGErV2pXTnBnYXRveTZxclU1SnM4dURVPSIsIm1hYyI6IjViNGQ3YTZjNjViY2VkZjAyMGJlMGE5Yjg5ZjdhZWNjM2E3NzBjNmM5MDYzYzgyYTQ2NWQ3OWRjZTMzOGVjZDcifQ==','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (93,'4-746-1','4-746-1','Diego ','Emilio','Del Cid','Rios','1988-08-04',1,1,'6458-2172','','','mela_caro2122@hotmail.com','','La Concepcion, Bugaba',62,2,'Diego E\' milio Del Cid','',1,0,3,2,'eyJpdiI6ImR5QWlucXVjcWEzRFJwdGNEbjRjdUR6bXpKRzBZQlU4MU1lSDRJMG5GdnM9IiwidmFsdWUiOiJSMzBMSGl2U21EcENiN21cL3A1bXAwMGc4dkprME0yMVBKMjdMTHo2ZGt5MD0iLCJtYWMiOiIxZTJhYzUxMzQ5YzIxZTA4YWRkMDVkMmVlNGY0YTFkYTE1MzFhNThiZmIxM2YzMzdlZDA1MDQ1OTc1ZGNjNDAzIn0=','2014-10-11 23:08:44','2014-10-11 23:08:44');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (94,'4-729-1819','','Jose','Antonio','Moreno','Miranda','1983-09-06',1,1,'64615979','730-7853','','','','LA PROSPERIDAD, DAVID',62,2,'','',1,0,11,2,'eyJpdiI6IkNJVkNTRzV5TXducXVhcVQ1TWxoS1ZpMGVpVEFHQkFyS2l1eE1ncFp1bzA9IiwidmFsdWUiOiJYUmZZbzY5ZGxoZ2YzS3JteWltS1BHMEpCd2tsSjRWeUpMb0tlYkhyNk9rPSIsIm1hYyI6ImI2OGFkMWRjZWY1NGIyMjVhYTQ0YTc1ZDJkMjFkMzc5Y2QzNzcxZjc0ZTIzYmMzNjRmYWYzNGYxNzAxZTY4MjMifQ==','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (95,'4-720-1153','47201153','Silka','Yariseth','Pittí','Atencio','1981-12-01',0,1,'67890276','7741363','7305300 ext 1301','silka.jimenez12@gmail.com','','Doleguita',62,1,'','',1,1,3,3,'eyJpdiI6Ik13Zm5FXC9sZDJKMGRya1JKenVySHBKVHEyTVZMeFpidkpUVFwvZlZMUWoxTT0iLCJ2YWx1ZSI6IjIxSHBwRW9ZY3o3XC90OUZwcWgxbDhDK0JvdGpzMjNTc1wvSjhGWnZqd3FcL3M9IiwibWFjIjoiM2VkYmViYzNjZDFkNjFmYzkwNzAzMjk2NGVmYTljOGUwOWU2MTM0MGQ5YzQyYzJlODkzNDI3YjRiYzA3NWQ0MyJ9','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (96,'4-757-1570','4-147-1452H','Yenifer','Itzania','Rodríguez','Chávez','1991-03-07',0,3,'6950-7230','','','yirch3791@hotmail.com','','Los Algarrobos/Nvo Horizonte',62,2,'Yenifer Rodríguez','',1,0,2,7,'eyJpdiI6IkhScEhtZm0wcTE0MkR3RmhQQ1JUVERlTWt4XC8rSWluS1ZzOUxKQ0dnOWI0PSIsInZhbHVlIjoiVk92SGd4Q0RVSUZrUFMzbERQVHMrSGN4NUw0dm9mSDk2OVlyQ1ZaODhWND0iLCJtYWMiOiI1ZDUxYmJmMmQ1NWUwMmNkYmQ3NmE2NzZlNDQxOWNkM2QyZjVkZDIwYTRlNDY4MWVjNmFlMWJjMTdlZjQ2NDg4In0=','2014-10-11 23:08:45','2014-10-11 23:08:45');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (97,'8-762-1128','','Javier ','','Marino','','',1,0,'','','','','','',0,0,'','',1,1,7,2,'eyJpdiI6ImdwVmRTMVJ2ZlR4aFFyYytQanZpQVo2dGtOMHVLejRZcHFwTW1aUWMxTG89IiwidmFsdWUiOiJ3RmtoN1Y3U1E4eCtyQzZ5bU9oM3FUM2lBUDl0OGhZSkxIZEpZbDhhS0hzPSIsIm1hYyI6ImIzYTA3ZmY2YzBmOWQwZjYxMDk2OTk4NjhkOThiYTZkOTgxYTFiZjkyNWU4MjUxZGRmNWE1MGIyZjYzODVjYmIifQ==','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (98,'8-757-570','8-757-570','José','Silvio','Rangel','De Salas','1982-04-07',1,3,'65210454','261-7831','','j.rangel0418@gmail.com','','bugaba',62,1,'','',1,1,8,7,'eyJpdiI6InczY2Z1WUxnaDdISlBFWWN3aTBQa210eGhvVncwZ1lUbW9lUmZBeHNNWFk9IiwidmFsdWUiOiJKekM2VFFWbzhtdlphWXZnc0FvcndZcVpSbVdWR1wvMTdUQnJNYVVUSWd5TT0iLCJtYWMiOiIxMTY4ZTgyOGIzYTljNTQyZmEwNjI3ZWE2ZmNhNTA3YmIxYjUzYTM4NjhiNGQ1NDdjZDA3Njg4NWI2ZDRlNzg4In0=','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (99,'4-760-188','4760188','Astrid','Xiomara','Samudio','Miranda','1992-01-13',0,1,'68999965','68999965','','astridxiomara0213@gmail.c','','Elisa Chiari',62,4,'astrid.xiomarasamudio@fac','',1,0,1,3,'eyJpdiI6InVwdmVSMkc1UExjQlgxeXhPWFZOOW1oVWRDQ3RnSUE0R29JZ3FKbVdIWnc9IiwidmFsdWUiOiJXc2ljbUtFY2krcVVJMGhQR3RBVU1QMWFmXC85OHR3blwvSVZwOG1ENEdtVnc9IiwibWFjIjoiZTY3NzUyY2YyODdkMjUzMzVkMzE3MThiMjE4OWQzNWE3MzhmMTNhNTJiODcyYTU4ZjUyZjZkZTJhZDI5NDcxMSJ9','2014-10-11 23:08:47','2014-10-11 23:08:47');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (100,'4-752-297','4752297','Kenia','Gisela','Cortez','Montes','1988-10-22',0,1,'62657882','','','kcm221988@gmail.com','','Jardines de la Riviera',62,2,'','',1,0,3,7,'eyJpdiI6Im9qQTBiZFpNNzRYOGRIYXdiRnBobEhodFBxUGJyYVNBNnRqQmZyaUZVXC9VPSIsInZhbHVlIjoicndhc0hzbGpuSUxSVVhcL3lBNm5wZGJ0ZWp5aVdVZ1JpSXB0bkhndmlIVE09IiwibWFjIjoiZDM2Mzc4Y2Y5N2Y1OGExMTFlYWM1NTFkNDUwZTg1ZWYwN2FlMzZiZmNmNGEzZWI5YmZmNTE5MjQyNDlmZjQ2NyJ9','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (101,'4-740-241','4-740-241','Lizmaireen','Suely','Gutiérrez','Reyes','2013-05-26',0,1,'6553-43-01','','','lizsg26@hotmail.com','','Doleguita',62,2,'','',1,0,2,7,'eyJpdiI6IlBVQndpeUNDNUlJb1UwS3R2Z2U5UzJ6RkxHTEpCYkwyanpJcHRWM0c4Z3M9IiwidmFsdWUiOiJWUzNiUzlhRk9hRGNqc2lwY3dWbHMxVWk5WXRGTXgwVnhLdEFJMjJqMTR3PSIsIm1hYyI6IjgxZGVjMDZkNDAwZTkyMDg0NTVkZmY3MTZjNTFkYjI0MDlhZmYzZmExZjg3NzQ2YjgyZGY5MzZiYThlNGFkYzAifQ==','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (102,'4-736-729','4-736-729','Vanessa','Lorena','Gonzalez','Caballero','2013-10-05',0,1,'67705539','66650280','','vane_lore_13@outlook.com','','LOS ALGARROBOS',62,0,'','',1,0,3,3,'eyJpdiI6IjhqNFpmZEFMOFptTVRLNTNVQXhnSTlaNkF3RGc1V3dMSWx3clV3Nkc3ZnM9IiwidmFsdWUiOiI0Rko0OVl5b2RvUW1WVTZrWW1GVWVSUTlrNUQxaGtnQXBienlFZXhiUFpRPSIsIm1hYyI6IjYyYmNmZWM2MjAyOTUzYThhMjE1MDc0ZTczMmMwYjI0MjZlZmNjMWMyODNjZWQzMDAzYmJlZWRjMWViZjdiMTkifQ==','2014-10-11 23:08:48','2014-10-11 23:08:48');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (103,'8-7072195','','Isabel','Milagros','Ortiz','Miranda','1977-03-14',0,1,'64729351','66578136  64729351','','Isa_14142011@hotmail.com','','boquete jaramillo arriba',62,1,'isaortiz','',1,0,2,7,'eyJpdiI6ImpyYnE4MlBXazFoMjdtRnJ5Y1VYaWFMaWY2eHZvM2hQcGFyeVNcL2dSS0hzPSIsInZhbHVlIjoiTDVtRUgwaUY2UnpmQWpvWUR1Y21xSnhCQkYxMzRKUyt3bjgyT1wvS0VSZHM9IiwibWFjIjoiMmU0YWQzNjZhMDg0NDcwMTMxMzliMmRlOTg4MDhiNmU4OTM1Nzk4ZTU1MGM0N2VlMDJiM2E2NGM3MGQ5N2Y1YSJ9','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (104,'4-770-2140','4-147-499-H','Lisdabeth','Bellays','Matus','Hernández','1994-02-20',0,1,'68614694','','','lysda_20@hotmail.com','','La Concepcion, Bugaba',62,2,'','',1,0,11,2,'eyJpdiI6IkRWWXUydFdRbVNWQTM3blFCV21HbEJXNEtMazhzY2NXM1lCbktxZFdNNDQ9IiwidmFsdWUiOiIzSFVmNTd3Ync5MEszZVFLTXZUaEdpeUdKMjNwNTBYa3B5R1JjNHhNd1hNPSIsIm1hYyI6IjdjMmM3ZDA4MTRmZDUyOTcyNDk3MTBlNDQ2NjA2YTIzM2YwNmQ3ZTkwMThkOTc4MGI0N2E2NjA4N2NlN2IyNGYifQ==','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (105,'4-729-1032','4-716-1755','Aneth','Yuliana','Cedeño','Sánchez ','1983-05-23',0,5,'67457299','774-8105','','Karey1983@hotmail.com','','Bda. El retorno',62,4,'Karey83@facebook.com','',1,0,3,2,'eyJpdiI6ImRnUUpla2pUZmZ1a0grWmRsK1RSNjRzbmprZE5OQzdhNVpXT2xNZGowYUk9IiwidmFsdWUiOiJrTlwvNlVLalJXaDBrOGFqUXdUaTM4a0p6YlhoZEtaSVpKeUVzQllaNCt1UT0iLCJtYWMiOiJiMWUzNzg0M2M5ODhjNGRhNDc5ZTQwOGQ4ZGIwZWY4ZTJjYjAzZmRmMWM1ZGY3OGVmMDAyNmZkZDQyMzk1NWQ1In0=','2014-10-11 23:08:50','2014-10-11 23:08:50');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (106,'4-758-2436','4-244-547-H','Evelyn','Michelle','','Olmos','2014-04-16',0,1,'65942019','7723400','','evelyn423@live.com','','Alanje Guarumal',62,2,'http://facebook.com/evely','',0,0,10,3,'eyJpdiI6ImJkcG0xajJqQ210Q1hlaFFuZ2F1c3EyXC9TTHZhZVdKWTA0WjM2K0NONnlFPSIsInZhbHVlIjoiS3I4OThPZ1o5VXdJNUs4c080SGlsQTd2Y1hKWEJHczJ1c0t2QzErZVRMYz0iLCJtYWMiOiI4ZTZiNjQzNGQxODkwYTY1OTViYzExMjkzZTc4ODQ0ZTIxZTZjZTllMmViNDAxZmVkOTljMzZkODVhMTY3ODJiIn0=','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (107,'4-154-625','','Greta','Patricia','Sanjur','Gomez','2014-06-29',0,1,'6719-4143','','','gretasanjur@ymail.com','','Barriada San Cristobal',62,1,'gretasanjur@hotmail.com','',1,0,3,3,'eyJpdiI6ImcyODBaeW02bHNhRjN0WUR5TkJGU1U0MTI4bDVcL3ZoNzRtVFRwbTRlQ0ZvPSIsInZhbHVlIjoiVFR2MURFaHdVYVJoYnJSZDlxTE9Ka3c0eFVmdUVwRCtVYlVxQUZabXV0az0iLCJtYWMiOiJiM2RkZTJmOGRjNzY0MzZlZjVlYzkzM2U4ZDQ1YTRlMzU4ZTcxYmU1YWRmYjE5MDZiM2IwNjFkNDdhZmFkNTMyIn0=','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (108,'4-717-2297','4-717-2297','Naira','Raquel','Arauz','Pinto','1980-02-27',0,1,'64631260','','','naruz80@hotmail.es','','Las Moras, Brisas Del Rio, David',62,2,'naruz80@hotmail.es','',1,0,3,3,'eyJpdiI6IlZEcE9QbFZvNXZUVm15NHY0eDZHXC9XRWxSeTdJcDl4XC9PXC8yUGpIQ1ZZK0k9IiwidmFsdWUiOiJBMTljZDFjT0IyMVBiWkw2TElGbzlFMUZGWUFrVUQ5bm9sNTh4b0h0S2tFPSIsIm1hYyI6ImYzODg0YzYzMDE3ZTU4ZTk2ZjIzZjg0NjNmMzMwMTM2NWNhODQzYzBmOGM1NWU5OWNjZDQzYjg2MzdlMjdiNzUifQ==','2014-10-11 23:08:51','2014-10-11 23:08:51');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (109,'4-724-497','4-724-497','Rafael','Ricardo','VÃ¡squez','Gonzalez','2014-11-12',1,1,'65505883','770-5650','395-3334','prof.rvasquez@gmail.com','','Mata de Bugaba, David, ChiriquÃ­',62,2,'Rafael VÃ¡squez','',1,1,3,5,'eyJpdiI6IklPeWlHaDZ6Tk1ORG9UU3ZoYXhNZ25lMVwvRUZyeFJ4SEpWRjczQjZ3Skc0PSIsInZhbHVlIjoiK01cL3F3TlwvaGJkTE1qWk9uOWR1V3R1eTdPSE1UWjhQekFVNTNXUHRiNFdjPSIsIm1hYyI6ImI1ZjM3M2RhYzQ1NDY5NjkzODM4ZGQwNGExMzEzNjE5ZWY1YTEzYmZhOWIxZGQ0ODM5NTBhMjdhOGRjYjA0MDYifQ==','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (110,'1-39-5','133-0282','Lorena','Raquel','Lizondro','Esquivel','1971-12-12',0,1,'6550-2558','730-0324','','lorena.lizondro@gmail.com','','Villa del Sol',62,1,'','',1,1,3,3,'eyJpdiI6Ik55VEFzNEhNNXpoNExpYzhVN0d1dTF0cXlBNFNUTndkK2FKR3hHK3N4WDg9IiwidmFsdWUiOiJTbEJtak00VmZEbm9cL081eTVHb054dzFxZ200RUM5cE9yek4rdjkzVUlkTT0iLCJtYWMiOiI2ZDdmYzgwMWEwOTM2NmU4YTU4ZTNhMjhiNmM3ZTZiOGEzODllMWQ1NmM5OWNkNTRiYmMwOTQzODBiMmI2MDljIn0=','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (111,'4-752-2086','4-752-2086','Arlettis','Binah','Beckwith','Lizondro','2014-05-25',0,1,'63998075','771-5214','','arlettis_4@hotmail.com','','David',62,2,'arlettis_4@hotmail.com','',1,1,8,7,'eyJpdiI6IldJWkV0MTVkN1FCYjJkMkdXbmZ2MVpVdTNIK0xMS0tobmNoakNteEY4bTQ9IiwidmFsdWUiOiJ2d0xWN3o0akYrWTlidEdVcnd4T2gyWjVEVVRaRURmd1lSN2d0eFJkUk9nPSIsIm1hYyI6Ijg4NTE3NmU0OWRiYjI0OTlkMWRmMjExYTNjYmMxMmRlZTVkZTFiY2VhZThjZDUxZDYyNzgyZTcxNTlmMmU4NDUifQ==','2014-10-11 23:08:53','2014-10-11 23:08:53');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (112,'41537912G','0710 1036263412','Maria','Magdalena','Bonnin','Lliteras','1986-06-27',0,3,'+34636183119','','','magda_bonnin@hotmail.com','','CAMÃ PASSATEMPS 93-A',29,2,'','',1,1,2,7,'eyJpdiI6IjJNczlBcGZudUNTXC81NHFvS3NIeVNQS2RLSGpaWjhmMFQ1RVJDMDBQSWZNPSIsInZhbHVlIjoiTks1SXZWSGpidDNJY0xwK2JialFYaTA3bTlRQjFkbmNGZU1uY3JhcTVSdz0iLCJtYWMiOiI1MDlmOGVlN2E2ZTUzYzRkOTU4ZDE4ODg5MzdiN2Q4MWM0NzZhMTZjMTUwZDE3YTNjYTlhMzAxMzhkZTkyMTU1In0=','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (113,'8-732-348','8-732-348','Marileen','Jovanny','Berrio','Martinez','2014-11-02',0,3,'67011124','7303438','','marileen.berriom@gmail.co','','DAVID VILLA AURA',62,1,'marileen.berriom@gmail.co','',1,0,1,3,'eyJpdiI6IkZYdGNkVXBzU3JvMG4yUWk2ZFFSVE52MDJESmJzSmNMWXdVZTFnVzk3aUU9IiwidmFsdWUiOiJXekVYZDh4VXVjV0VvVjZDZnJBc2Y4Y0VFemk4ajlBdTh1WlJUXC9EN0dpQT0iLCJtYWMiOiI0MGMxNWM3ODAwODhmZTg0ZTc3ZjI2ODk4ZjhmMzJhZDdkYjY2Y2NiNGIyYzE1ZmQwYjIzZjgzMmE1MTBhN2YzIn0=','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (114,'4-714-348','4-714-348','Basilio','','Olabe','Cianca','1979-01-17',1,3,'6571-8757','721-0026','','basilio-17@hotmail.com','','Barriada San Jose',62,0,'','',1,0,6,2,'eyJpdiI6ImJPaE1cL3VBNnIrNUxTNEU3OGpOcjZLaGU0N0g2THZlVlg0clphUFdTcmpNPSIsInZhbHVlIjoieEM0NldCXC8wUkJMbmtROHQ3dXNUdSs3cXo2KytLZlVCOXczUTdsQ3NDZTg9IiwibWFjIjoiMjIyNTQwMjFiZmYwNDQ4NDY3YmYyZjczMWIzN2Y0Y2Y1M2NjOTllNmNiODA3ODUyYTFlN2NhZDk1NTA5MDAyMCJ9','2014-10-11 23:08:55','2014-10-11 23:08:55');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (115,'4745492','4745492','Gladys','Alicia','Del Rosario','Stanziola','1987-12-25',0,1,'66262381','7757403','','always15254@hotmail.com','','san juan del tejar david chiriqui',62,4,'','',0,0,10,2,'eyJpdiI6Im5malRPdUhxSVdvazB1SytUZDFGSVNzdFVwMEd3czZmVTM4MFF3bHhHdzg9IiwidmFsdWUiOiJ6OUkwdFpScHdaMTdCVVwvb1BKVG9YdHl3OVFVYjZLQTlaRlNGTVdsekRoVT0iLCJtYWMiOiJiNzljNTBkZjQzODJlYWEwOGE2ZTQ2NTM3NTE1YmFhZjkwYWQyZDRmOWQ3YmUxOTVmMjJlOGU4MTIyZjMyOWUzIn0=','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (116,'4-721-2419','4-721-2419','Damarys','','Saldaña','Villarreal','2014-03-28',0,3,'64-33-5293','64-33-5293','774-2424','damaryys@hotmail.com','','Dolega Los algarrobos',62,1,'damaryys@hotmail.com','',1,0,3,3,'eyJpdiI6InU4T1VsYndkWVdIYlh5SjlnZjlPOWFGTkpMaXlDQWVRWWxIeTZoSmEzOGM9IiwidmFsdWUiOiIyT24zdnNZVlJ6TlJ0QmVxcjF2UUhkU1ZYWjZQdU1EUFwvRjVlTmp3ZThRMD0iLCJtYWMiOiI2M2FjNmI0NjFmYzhkMmMyODNmNzZkZTgzYzg5OTljNTc1YWE1NzMwNWE4ODQxMjcwZDNjN2Y5MWU3Mjk5ZWZiIn0=','2014-10-11 23:08:56','2014-10-11 23:08:56'),
 (117,'4-770-1719','','Nilka','Alejandra','Guerra','Gomez','2014-01-26',0,1,'4-770-1719','775-5796','','nilka26@hotmail.com','','Corozal via querevalo',62,2,'nilka alejandra guerra go','',1,0,11,2,'eyJpdiI6IllMR1FNcU1oV0hjak9tWlRTdVhycFJJR05aWDNaVzA2VytkakYxR1NTWWM9IiwidmFsdWUiOiIxN2Q2NGlmaWRhTzRudmxnXC9FV0wrYStqc1pPdFJcL0ZzK1NvXC8rSWlTWVAwPSIsIm1hYyI6IjU1OGM2YTVkYWFhZmRlOWZjNzE2MWNhY2RkNjhjN2NiMjVjOGRmY2JlNWJjODI5ZjYyNjU1MDBjYjdjMzEwYTEifQ==','2014-10-11 23:08:56','2014-10-11 23:08:56');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (118,'4-259-151','4259151','Leydi','Liriam','Fuentes','Alvarado','2014-10-14',0,3,'67457532','','788-8010        774-6574','leydil2012@hotmail.com','','David-Nuevo San Carlitos',62,1,'','',1,0,1,3,'eyJpdiI6IlNWb0t2Q2g0c3YxMEhRR0V2cE84a3VxTTBFbFBoOGFFcE45ekpLemt4V0k9IiwidmFsdWUiOiIzSVVCMURveGF6Mk42c3hEWE1vV29Sc3JBZTRSNEs4d1dCK0RnK2JSdndBPSIsIm1hYyI6IjkzYTMzY2MwZTgxYTQ4ZmZhNTk2Yzc0NDdjODEyZDg3MDhmNGQyYjhmODRlZjVlY2I2YmVmYTNhMDczNzY0YTkifQ==','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (119,'4-724-997','4-724-997','Katherine','Mabeth','Pandiella','Acosta','1982-02-22',0,5,'6783-3266','776-9807','774-9071','katpand@hotmail.com','','LAS LOMAS, DAVID',62,4,'KATHERINE PANDIELLA','',1,0,9,5,'eyJpdiI6IjN3eTZmMnpcL3J4ZFBmNGUwWU9xdHpVdGZVcElxM1hDNTVmdFdPK1dXTkU0PSIsInZhbHVlIjoiVWhTa2ZQb1ZOc095ZkRQU01PQW0wVFN0VDJTUEFmOUVWWFwvRjhyRmN1T0E9IiwibWFjIjoiM2I3OGViY2JkMWMzY2RjMmNjNDE0NDFjOTJkODY1YjUxOGNlNDVkNjViM2U0MTYwMDc2MGE0ZDcwNGNiM2Y2YiJ9','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (120,'8-760-2342','8-760-2342','Aida','Kristhina','Aguilar','Moreno','1982-11-02',0,1,'6495-2659','775-2012','','akristy02@yahoo.com.mx','','urb. santa lucia',62,1,'','',1,0,3,3,'eyJpdiI6IjIzanhBdW1zODU0eGdiUWVDT3VWNmtNN014Q1p0cUlGNHhMaXprMFFud0U9IiwidmFsdWUiOiJHZnBtZnZ5MnVHVExEWXNqVmVCNTFiRWd5c09JM3VuUWRIc1VjMDVpdmtRPSIsIm1hYyI6IjBkZWNkODgwNDkwN2JiNjY5YWI5ZDI3YmU1MDUwNTJiMGEzYzAwNzI1YWJhYjUzZGUxODJmYTE0ZDczYzU5MzAifQ==','2014-10-11 23:08:58','2014-10-11 23:08:58');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (121,'4-755-1522','','Georgina','Vanessa','Gallardo','Fuentes','1990-11-27',0,1,'62343580','','','georgy-vane-11@hotmail.co','','Prosperidad',62,2,'','',1,0,7,3,'eyJpdiI6IlFvQURSYUFOWThnc3lXdkNRY2RVQ0dCWDdtZ1R0dG1adTlwMDNhUDlvZm89IiwidmFsdWUiOiI0QVdlbGFteko0RWJxeTdaVHlVdGNnVFVrWEpaeklSK3hFY01vdHY3MUdZPSIsIm1hYyI6IjQyN2IyYzRiOTg0YTFiYWYzOTM2M2ZlYTc4ZmZmNjExMDYzOGFkYjZhOGU1ODYyODE3ZTJmOGI3ZmU0ZTY0MzkifQ==','2014-10-11 23:09:54','2014-10-11 23:09:54'),
 (122,'4-744-1127','4-744-1127','Eliana','Joselin','Fuentes','Chavarria','2014-09-09',0,1,'69823838','7211703','','joselin_0987@hotmail.com','','david bda san jose',62,2,'','',1,0,7,3,'eyJpdiI6Iit6eWhTWktjSVBaWHIrUmhxOWJTb055SnRcL2tkUmRpSEFIRU1ySEJQWWVjPSIsInZhbHVlIjoiaUphaklVRFRmZE5qOHVBNnZcL2FLYTJGeTVnMGR3UnEwelRXWUJvSmFCdUE9IiwibWFjIjoiYWMyYjI2ODM0MzBiZGU2YTllZGNjMmYzNjUyZjhjOWNiNDY0Njc1ZjEyOTQ3MThmMTUwYzRmN2FmNWQ5NDlmNSJ9','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (123,'4-717-713','4-717-713','Jesualda','','Sanchez','Montes','1980-01-03',0,1,'6681-9625','775-1657','','jesualdasanchez03@gmail.c','','david-nuevo varital',62,2,'','',1,0,11,2,'eyJpdiI6ImlINWlaSnZ2N1FRYWRwVUlFZ1VyTXNCVGwzVVZLQ2JiV1Q2N3VDdnBUeWs9IiwidmFsdWUiOiJHTHp2emdTTWw3UzlZbTQxTHZJWUJ6M1pua2REb3pjTzJiT3ZDdTZCaGJFPSIsIm1hYyI6IjFmY2MzYjE0ZTI2YTcxZjk1ZTgwYWVlMzY1M2VlNDIwMTYwNGNhNjcxNjVjNGM0Y2RlZjFhNTIzMmE2OTYwNzMifQ==','2014-10-11 23:09:55','2014-10-11 23:09:55');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (124,'8-736-439','8736439','Ruth','Betzaida','Delgado','CedeÃ±o','2014-04-16',0,3,'61232063','','','ruthbdelgado@gmail.com','','San CristÃ³bal, David',62,2,'','',1,0,3,3,'eyJpdiI6InNvTW90YjREaTIyMlRoWDRcL09YXC81c1M0SWtRKzZncTVYcGFFWUhydzlvOD0iLCJ2YWx1ZSI6IlB5ZDUyVVYrTXpjWDVmVlNlWWdoQ21NR2k0dm9Qendpd3VBZUJoRTd4Z2s9IiwibWFjIjoiMTRhNWU0OGMyNjAzNzU5YzE0NWJlOTg5NTEzZWEzNTc3MzU0Y2U3YTQxZjQ2YzgwMzAzOGI2ZTkwN2RlODNkNCJ9','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (125,'4-733-1687','4-733-1687','Iris','Mariela','Moreno','Crespo','1984-07-19',0,1,'6204-5556','774/1956','','irismoreno_19@hotmail.com','','david chiriqui',62,1,'','',1,1,3,3,'eyJpdiI6IitwNHJkZ2hpYXZWc3l2Yk91dUdLQndQRFIwVVNNSnZLc2lFSm0rUmJtaWM9IiwidmFsdWUiOiJnWmJ2bUNrSDhJOUJVZ0xOUGtyekp5MWxsNU9WU1B1Z2tLZTZpSHhUNmNjPSIsIm1hYyI6IjU0YTVhYTliMmU0NDcwZWVjY2MxZjMzYjExNGI3NjYxY2Y2YTdmNGRhYjM5OWM5ZTQ2NWY1NWI2MDA2YTdiYTkifQ==','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (126,'4-753-1283','','Lourdes','Del Carmen','Perez','Olivo','2014-10-28',0,1,'6609-4876','730-3513','','lulu-4ever_28@hotmail.com','','URBANIZACIÃ“N LA FERIA',62,2,'','',1,0,3,3,'eyJpdiI6InQ3TWl1VmZ3UlNGUmFwbVBjQmJCQ2JQWk9SczgwRUErdzRwU2xKTHFJSUU9IiwidmFsdWUiOiJndWZucVhma1E1blZ3Nks3STZuMzV2cmdYZ0xNZ1lEUXRcL3J1VldyUG8xTT0iLCJtYWMiOiI3NWZmYzBmYTAwMjM3YzIzODNjMDAyNjY5ZDliODZlNGU0ZDM2MjlkYjEzZWI2ODY4MzU4YWE5NDA4NTBmZWQyIn0=','2014-10-11 23:09:57','2014-10-11 23:09:57');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (127,'4-726-1472','4-726-1472','Yanelys','Del Carmen','Castillo','Samudio','1982-09-05',0,1,'64307983','7304706','','yanelysc@hotmail.com','','Villa Roca',62,1,'','',1,1,3,3,'eyJpdiI6IkVzYnZZK1BaZVpQWUhhTEM5ckFBRWoxY3Y3ZW9kek9cL3Z5UDdtOXlmenlBPSIsInZhbHVlIjoiZDF2dXdYV2ZKZFFETUE5ZVptT29yTDVWU01pajFiNEVcL0FobzBNNWRudFE9IiwibWFjIjoiMzVjMThjZTA3YzIyYWZiODc3ZWM3NDI4NzcxMTM3NjQ0MmMzYWYyYWExODJlOWI0YzYyODYwNjI1YjA2YjMxYSJ9','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (128,'4-713-570','4-713-570','Ikeila','Janice','Morales','Arauz','1978-09-20',0,5,'69506522','','','ikeilamorales_20@hotmail.','','',62,0,'','',0,1,1,3,'eyJpdiI6ImZHR3VMa3U2c1dlNUlWWXZ0Q0poUll1YUczVkpBc0tpV29ucnFGNlhBWjA9IiwidmFsdWUiOiIwYm5UOHFuZjMwNDNaMWxwcTg1dEhHelwvd1d6XC9aZXBZNG1qSWRzaDJkQXM9IiwibWFjIjoiYTRmYjVmNmU2ODA0MWY1MzczOTE2NWMzYzY5YjI3NmM2MDczNDc1OTU4YzUyNmViMzQ1NDUyNzFlNGRmMGYwMSJ9','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (129,'4-729-83','4-729-83','Giordy','Aximar','Gómez','Arosemena','2014-05-09',1,5,'6730-2929','721-2824','','ggomez09@hotmail.com','','San JosÃ©, David',62,0,'https://www.facebook.com/','',1,0,3,5,'eyJpdiI6IlV4OEkyOW1EZ1lMMFB4dlg4cFh3SFh0S2FKYjYxNHZnZnFQMTBGcTdPNHc9IiwidmFsdWUiOiJCM1F2Q3VNZWcreVNYRFRaNGxYSlZma0I4anloVm1rSXVOZk9JZWQzR2VVPSIsIm1hYyI6IjM0ZGVlNDlkMWM0OGYwYjQ4OWNjODMxNDcyZjk3MGViYmE1Y2FmNzc5ODU0ZGExYmYyY2Y1M2MwMTFmNjVlMTYifQ==','2014-10-11 23:09:59','2014-10-11 23:09:59');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (130,'4-721-578','4721578','Alejandro','','Aguirre','Cubilla','1981-03-25',1,1,'67726174','','','mineros90@yahoo.com','','concepcion, bugaba',62,4,'','',1,1,8,3,'eyJpdiI6IjJzVGkzdXRtUTRYK3NqNG0wemorY2JzNW5NXC9zTXMzeFIyOFlNcWtISU5VPSIsInZhbHVlIjoiMmFYUTNNaFZxU2VMOUtZTCtkeWNZc0N5Snk2MWJoWURpN1Q2SXAzbERhZz0iLCJtYWMiOiI0Yjc0YzhmZWUxYjAyOWM5NzdhZjczYmE1OGY4OGJkMzA1MzIzNThmYjQ2ZmYzNDAyYjNiODI0ZWIxNWZkYWRiIn0=','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (131,'4-743-2350','','Caridad','Vanessa','','Biebarach','2014-10-15',0,2,'68393473','7745309','','vanessa_biebarach15@hotma','','Ivu Dos Pinos',62,2,'vanessa Biebarach','',1,0,10,3,'eyJpdiI6InlrWGhwXC9HcGh6UTBCc0pBRmtxbFF0VXhGODZcLzBXOVVmZWZ6NW9PcVFCUT0iLCJ2YWx1ZSI6IkRZYllka3FqZnZoTkFaWUFnZytXYkhQNDVoQ1BiSE1nQ2dvWXAyZWh2ZTg9IiwibWFjIjoiNDk1NzQyMTMyNWNmZGMwMjA4MzYyNWNhZjc5ZTE2NzUwMzYwODBiNDVlNzJjMmNjZDBjYzE0NjljOWIyMTBiNSJ9','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (132,'4-747-2455','47472455','Melissa','','De Roux','Ponce','2014-11-06',0,1,'66893068','','','bceline2@hotmail.com','','Montilla',62,2,'Melissa De Roux','',1,0,3,3,'eyJpdiI6Ik9WUStVeFhDNWNwYzV0bEJmSzc2ZlZqM3hLZHl1XC9QTml2KzRUelBRMWRRPSIsInZhbHVlIjoiNVpodHM0TUx6eVwvUGE5WkRyaUM3eW9cLzdhSk5vQXJUenVMSkYrQmh3V0FJPSIsIm1hYyI6IjQwNjRiOTExYjIxNDY0OTI2NTY4MGI2ZmI2NmZlYzMwMzg5MmYzNTdhOGZjODBjNGU4ZTdmNmFjYTI5ZDg3NWMifQ==','2014-10-11 23:10:01','2014-10-11 23:10:01');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (133,'4-750-1681','4-750-1681','Paola','Lineth','Morales','Caballero','2014-07-06',0,1,'6902-94-32','','','pao-0689@hotmail.com','','DAVID, CALLE 8TA NUEVO VEDADO',62,2,'','',1,0,9,3,'eyJpdiI6IlhDc0ZWd0szcWhSUFdDTXpHT2VocEx5VFptR0RGS29HQkpQUEhTdHVoanM9IiwidmFsdWUiOiJoVUJJSFVXTXo2bGhaVGhhaWJtdzZ6VG9yRnNhMW1Dc0hcLzJOZ1FSUzUzMD0iLCJtYWMiOiJhYWM0NzUzNmVkYmM1MDU0OGQ0M2ZiMGFhM2JjZmU4MGZmNzJhZGNiOTRkOTNiODMyMzVmYjUwMmI3MzA1MWIxIn0=','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (134,'4-720-1004','4-720-1004','Cintya','Ballet','Levy','De Gracia','1980-12-12',0,1,'6797-8019','','','ninilevy@gmail.com','','panama',62,0,'','',1,0,9,3,'eyJpdiI6Ilh1WUdPejdUNVRtSzJ5S2t2QVwvTUdHMHdRVExsaFhvQjBaSkVBc2RzSUY4PSIsInZhbHVlIjoiMjlQSVwva2pjcWZFSDJYbkF4ZDZZeitDT081T3pOY2dsWnh0TGVuSkU4dVE9IiwibWFjIjoiMjMzZDQ1OWI5YTc4ODcxNjhlZTc0ZDI0NDFmNzg2OTBlN2Y2NmIwMGM3ODhmYWFkMWJhMzc3YzRhMTk5NWFlMiJ9','2014-10-11 23:10:02','2014-10-11 23:10:02'),
 (135,'4-772-236','4-772-236','Alejandra','María','Saldaña','Mendoza','2014-05-30',0,1,'6460-1291','730-0151','','alejandra_30_05_94@hotmai','','La ConcepciÃ³n, Bugaba',62,2,'Alejandra SaldaÃ±a','',1,0,3,2,'eyJpdiI6IjNGSys0SWcyWEdNK3RiaTBsYzk1cmlydml2Tm9DYzNlMTBRaHk0YzRhQTQ9IiwidmFsdWUiOiJMRDBjamY3OVB4bWNva1l2TWRcLzJab2UxMDM0bnBudCtrMVhUYVJzWWFrRT0iLCJtYWMiOiI2NjU5YmY0OWI5MTE5MjIwZGIyOGIxMDI2YTBkMDNiZTc1NzVlOTZlMzA0YWMwNjVjMmYwNWE1MjMwYmYxZDcwIn0=','2014-10-11 23:10:02','2014-10-11 23:10:02');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (136,'4-763-312','4-763-312','Jessica','Yurieth','','Saldaña','2014-09-16',0,1,'6520-5116','775-1041','','jess.16s@hotmail.com','','URB. VILLA DEL SOL',62,2,'','',1,0,3,3,'eyJpdiI6IlN0NnMyZDZ5TnNGMWFQQUhzUTRtbmEzclhrMlNzYmV3VlowZDRNa0J6UVU9IiwidmFsdWUiOiJ2TFQxblhqQTZxTXlzWWpBajhIU0VaMzZyb3IrUXBJb3dQeTVHVGlkODNFPSIsIm1hYyI6IjdmNjczMWVmYWI1OTJjYTU5MWI1MzY4YTU5NzBjNDlmMzk0ZjU0ODk3OGM5ZDdiNjc0ODk2YWZiYWY2ZWVhZTUifQ==','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (137,'8-853-1062','8-853-1062','katherine ','Isabel','Nuñez','Sanjur ','1991-10-11',0,3,'6884-0406','6884-0406','6884-0406','katy28n@hotmail.com','','david dolega ',62,2,'katherine isabel nuÃ±ez s','',1,0,5,2,'eyJpdiI6ImdieXZvUERrNHh6cTk2NmtwMVBmOGJSQUp6ZDRSOVZrVloyanREMXpKZjQ9IiwidmFsdWUiOiJlVWhKMkhpN0x4WVpSYUdMVyt2bkZNYWhwdndDMnpvZllUVHo1S01NYzlJPSIsIm1hYyI6ImYxNGRiNzJkNjhmZDMwOGI0ODIxNjk3ZWI1NmEzMGVmYzI0ODg0ZmViMGEzZWIzMDgwNWRiYTI3OGQ5NjlkYmIifQ==','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (138,'4-760-52','4-760-52','Luz ','Yariela','Rivera','Cocheran','2014-12-09',0,1,'6676-2562','7744297','7202198','luzyrivera09@hotmail.es','','Urbanizacion Nazareth',62,2,'luz rivera','',1,0,3,3,'eyJpdiI6ImZ2YjU2RFdcL0NBUStlM3hYS29HZG1jTnVzZ0ZYQm5nOFhHVFVob2JPcXIwPSIsInZhbHVlIjoieWpPNGhuMDJwNmRSeDUyaE5wUitRUGtyRjFOYkNObGRnZGsya1dxMzBtND0iLCJtYWMiOiI5ZDVhMzRmY2YzNjY1ZWMyZjJmMTEwMjFkNTNmZjI5OWMxM2ZhNmM5YzM4NjIwMzQyYTBmM2ExYmNjN2YzOGEwIn0=','2014-10-11 23:10:04','2014-10-11 23:10:04');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (139,'4-738-783','4-738-783','Geovanna','Lisbeth','Sánchez','Pimentel','2014-07-26',0,3,'6689-0505','772-1819','','lisbeth2682@hotmail.com','','Los Algarrobos,Villa Celin',62,0,'Lisbeth Pimentel','',1,0,10,3,'eyJpdiI6IjRKcktRaGV1MmJXRFRvcW9KYmZmajdDRnF6ZXU2SkdaT0lBaThmdndcL0M4PSIsInZhbHVlIjoiQkNxdzhnQW5sQ2N1OEw5dWRJNzNOUHUwM2V3dHVjeHozMXYzcTNndVVLbz0iLCJtYWMiOiJmMmM2ZmFmOWI4ZjRjNjZmNDllNjhmZjYyZjMzZWY3N2UwNTk1NmI1YmZhZjAxZmU3OWZkMmE5ZjRkMzc3OGI5In0=','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (140,'4-721-241','4-721-241','Suleika','Crisol','Valdes','Espinosa','1981-03-27',0,3,'64416067','7769118','','suleikavaldes@gmail.com','','LAS LOMAS MATA DEL NANCE',62,2,'','',1,0,10,3,'eyJpdiI6Imkwd3pvNmZPVG9Fbnd2RWdHUnp0clJMZFB1SmdaZGV2MUozTzJGUzZcL3dZPSIsInZhbHVlIjoidWtwanVGV3pxclR0TUVBQlwvc3RPcFhYRmRCXC96RmJzTjZRU1dqdDZcLzdXYz0iLCJtYWMiOiIxMzNhMzY2NjNiM2FhZmZhNjFhYzI4NmVjM2Q3OTk0YjUwMjhiZTM1MDc1ODA0MzYzMmRlMzEwYWIwMzZjN2ZmIn0=','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (141,'4-750-2287','47502287','Ginette','Raquel','Contreras','Montenegro','1989-07-24',0,1,'66010092','7221161','-','grc2489@gmail.com','','la arboleda san pablo nuevo',62,2,'ginette contreras','',1,0,10,2,'eyJpdiI6IkhPbkllZUdIdVc1c1BpVm80K0JzQVJpSHd1MllrTWpvQnFwK3hhWW95V2c9IiwidmFsdWUiOiJuNlwvZ0lROVpocDQyS2h5OU9ON3ByellsaGxVXC94ckJtaE1cL1NOMm9qT3ZJPSIsIm1hYyI6IjVlZDU2ZDRmZWQ1NWNiZTg1ZWRlMzZmNzU0Y2ZhN2E0ZjVkOTUyMWE2ZmExMDEzMjU4MTA0NzI0MGJjMTY3ZDMifQ==','2014-10-11 23:10:06','2014-10-11 23:10:06');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (142,'47192058','47192058','Priscila','Milagros','Castillo ','Alvarez','2014-09-17',0,2,'62028198','7202351','','prisi_alvarez@hotmail.com','','Boquete',62,4,'prisyalvarez','',1,0,3,3,'eyJpdiI6IkJjQURzOXBcL1dFRlp2QVBubVhrOFkzWkpRT0RFRGR2akh5MTJrT1hVNU5RPSIsInZhbHVlIjoiTlh0ZjRDdHZyN2lvQXdjUlI5MFNaKzRJVGJ4cTZYSVN2RlZNbkx3OFhPWT0iLCJtYWMiOiJmZDQ1OTg2OTMzYzllMWVjMjcyOTczY2YyYjliZDU2ODBkYTliZTNkMTI4ODU2Y2M2N2IyMmY3NWJmODAwNGQ0In0=','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (143,'4742215','4742215','Mirla','Yamila','Rovira','Ibarra','1986-12-15',0,1,'6641/9357','7745369','','mirlarovira@gmail.com','','David',62,2,'','',0,0,3,2,'eyJpdiI6IjgwaFR0a1JvVmVPY2lGUlo5dHBzZDI3WmNnTG9UT1dGZ2NjTFNnVGtCS2M9IiwidmFsdWUiOiJWTGVybHVLdkpQMnJDbnJBeW9kblBaK0pjeldmNkduc0UzQkd4enVtc213PSIsIm1hYyI6ImZmODZhMTBjMzBkN2EzYjg2ZWIxMDdiZGVhZGIyMDkzMDg4N2YyYWRhYTI3ZTcxODFjOGRlNmI2YWE3YTU4OTkifQ==','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (144,'811401274','','Nohelia','','Salazar','Marciaga','1987-02-03',0,1,'6656 7281','','','nsmarciaga@gmail.com','','Betania, PanamÃ¡',62,2,'','',1,0,11,3,'eyJpdiI6IjJLOWdwSmNaZVJCRUpnY3ViOUhzck5ibUNlclwvcUxxYUJzZG9PQnVmYkFJPSIsInZhbHVlIjoiNzR5TWdrT2txeXpXc0Fib005T1lqTGhyN1F0RUlcL1pZZGNcL053aHFxd0FnPSIsIm1hYyI6ImZkZTdkYjNmNDQ5YjQ1ZTdhZjg1ZjcwYjE0MDI5MzA5MWEyZTVjMDRjMjcwZmJhNjA2M2E4OGNiNzdlZGFmYzYifQ==','2014-10-11 23:10:08','2014-10-11 23:10:08');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (145,'4-763-2016','4-763-2016','Clara ','Yakelin','Bonilla','Jimenez','1992-10-28',0,1,'6279-1537','','775-9944','yacky1092@hotmail.com','','David',62,0,'','',1,0,1,2,'eyJpdiI6InRXc2xTVWlzYXU3VU8ra2U2aHRRbjQza3MySWVHSHpSU1g1YXhpSnZ4U2M9IiwidmFsdWUiOiJEeGhOUE12dlUwUVBJZWx2RnM4Uld5SjRiOXFtNENTSlN5UGhLRmdVZVZzPSIsIm1hYyI6IjlhNGNjZTM4NDJlMGQ0ZTY3N2JjYmEzMDdiYzAwODQyODc0ZjI2NWU5OTU3NGIxNTg2Yzg2NTk5MWU4MGU4NjkifQ==','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (146,'4-731-671','4-731-671','Lourdes','Margarita','Concepcion','Taylor','1983-11-30',0,1,'64779615','770-0822','64929759','lourdesconcepcion29@yahoo','','David, Chiriqui',62,1,'no','',1,0,3,7,'eyJpdiI6InA3RExYeGpTZ0diekNuYks5RkpqU0VkaDBvWDJ1TldxMjBCS1VhdmlLMEE9IiwidmFsdWUiOiJnQkl3enBLbjZ4UHd4VURuaTNQNk52RUx1bUV2WDJjTnd5cHNcL0lveDJ0TT0iLCJtYWMiOiJkNzg5YjcwMzVjZWRkMmVmYzQ2MjE0OWEwMjEwZDUyZGRkOWExYjJhM2YwYzNmMzc1MGU2NGMwZTU5YTMxY2MyIn0=','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (147,'4-732-315','4-732-315','Natalia','Marian','Pineda','Pinto','2014-01-29',0,1,'69589164','','','mibb1009@hotmail.com','','el alba',62,2,'mibb1009@facebook.com','',1,0,3,3,'eyJpdiI6ImFURm8xTGQ1ZWloUTZSWlgwZjhncENIeWhqMjlSN2QyaHRXUit0TkYyUlU9IiwidmFsdWUiOiJGOHRKZlhGVktXT1YyTzdkRVwvWTFQYVJqQWVzM3ZJNUhSZW8weDJOeW5yQT0iLCJtYWMiOiI3NzAzMmIzOGJmY2NkYTNjM2FiMGEzMGM3MmM4NTJiZGI4MzgyYmQ0Yzk4NWIxMTkwNjA3NjY0ZTk1MTVkMjY3In0=','2014-10-11 23:10:10','2014-10-11 23:10:10');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (148,'1-720-2085','1202085','Nadhir','Veroska','','Robinson','2014-03-12',0,1,'69730662','7583915','','nadhir_robinson@hotmail.c','','bocas del toro',62,2,'nadhir robinson','',1,0,11,7,'eyJpdiI6InBnODJWUm9jK1lkUXpyZHdEVzQrYkdLV3Z5YTVsOW4xVHZWOUc4M3pZdHc9IiwidmFsdWUiOiJTUGtHbDZcL3ZaYld5UUF3NTM1ZTFjMWxxOVRMM2R6aUhiK0lMUzdRQ2pBaz0iLCJtYWMiOiI4NzkzMzAwZjQzNjNkNmM0ZTI0Yjk4MDQ2ZjU0OGMzNjQwMjRkZTIzMjQ5YmM2MGJlZmI1OTY1YTAwZWFmMzRjIn0=','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (149,'4-756-940','4-756-940','Tania','Lirieth','Concepción','Gómez','1991-03-17',0,3,'6478-4532','770-59-13','','tany_1791@hotmail.com','','Bugaba',62,2,'Tania Lirieth ConcepciÃ³n','',1,0,11,3,'eyJpdiI6IlB1M081eFN3TEREaFQ0NDZGdDZnT3JrTThGamJOWWtvbE9ZN3JvekRDek09IiwidmFsdWUiOiJ3dHNtZFlPbm05N2dGQXN0am56OGxzcExYYjNTTThWRXRWUjZUWVl5emQwPSIsIm1hYyI6IjMwMGYwYWY5OTE3NGE5MDYwOTRhODllZDc4ZDc1NmFkODdlZmI3N2YwYjg2MGJmYjg5MWM5Mzg5ODgyYTJjMzcifQ==','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (150,'4-721-167','4-721-167','Luis','Guillermo','Rivera','Otero','1981-03-12',1,1,'6733-8722','6696-8670','','luis.rivera1203@outlook.c','','los algarrobos, chiriqui',62,1,'luis rivera','',1,1,1,4,'eyJpdiI6IjZwN0dHTm55MEx0aDdNYXRVN0lWU3VvdjJvVjFvcDZOcEpOaWkyOWRPMVE9IiwidmFsdWUiOiJtMENNcEhXdWxsMzR3NnI5QytZejR6eE5yQmxJTDBDZ2NPOVBTXC96cmVnTT0iLCJtYWMiOiJhN2MxOTY1ZjkxM2I1ZGJhZDA2NDU4YTkwZTgxZjYwZmU4YzgxOWU0NWMxZTNhZWJlOGVkZWI2YjYyMWU2YjJjIn0=','2014-10-11 23:10:11','2014-10-11 23:10:11');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (151,'8-853-1062','8-853-1062','Katherine ','Isabel','Nuñez ','Sanjur','1991-10-11',0,3,'6884-0406','6884-0406','6884-0406','katy28n@hotmail.com','','david chiriqui a un costado de l feria de david ',62,2,'katherine nuÃ±ez ','',1,0,5,2,'eyJpdiI6IkpnS1ZGbUFjeUxXd1d6ZE4xN0lhSXJnNEhTRjJOZitlK2FRUlMrK2VUczg9IiwidmFsdWUiOiI0VlEyUDA1ZjdIQ01TRFJvUGlDR2hOblJQUHhQb1J5emRZWU9adEV0ZlJjPSIsIm1hYyI6IjQ1ZjBjMTc5NGE4ZGI0ZTQxZmY5YTU0NWEwZTJmZGQ2ODEzZmZkZWMwZGU4YzI1ZDY4NGI4MWRmM2QzYTdmZTMifQ==','2014-10-11 23:10:24','2014-10-11 23:10:24'),
 (152,'4 704 2434','4 704 2434','Yazmin ','Yohana ','Ledezma ','Rios','2014-09-13',0,1,'67099718','770 3922 ','','yazminderuiz@hotmail.com ','','barriada los Ã¡ngeles ConcepciÃ³n Bugaba',62,1,'','',1,0,11,2,'eyJpdiI6InZ4aVwvVHFZeUpkS0dDM2JzQkNlQ2JZRHkwTFwvS3MzMjBnRUdVc2FLZ1wvTlU9IiwidmFsdWUiOiI5N3liMzZoeVJVWERtaUdHbGYyWnVoQ3JhWlFuNEl0eURrckg3YVZmUHljPSIsIm1hYyI6ImYwMmMwYmYzNDUwODRjMTM5NzBlM2UzOTRlNTA0YzVlMjI1ZTNmMzcwOGM3ZDE5YjExMGEyNzZiMDJlY2E5NDAifQ==','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (153,'4-770-1719','','Nilka','Alejandra','Guerra','Gomez','2014-01-26',0,1,'6681-2706','775-5796','','nilka26@hotmail.com','','',62,2,'','',1,0,11,2,'eyJpdiI6IlBmZ3UwK1BYZWlNaUFjMGRldUFTaFRiZnZoWXNJcU9xcmp6WXdrSDFKYW89IiwidmFsdWUiOiI0WGVYd2Z3MSs3UGY4RG5PeU0yalRIWVJmTFFFSjd2XC9DRHdkdUdyeXpMZz0iLCJtYWMiOiJmNjRhZWIwNDUzNGRmYThmMDlkM2NkOThkODk4MDc3YmZjZDk5ZWE4NzUwYTcyMDNlNjIyNzcwNGY0NGM3ZjQwIn0=','2014-10-11 23:10:25','2014-10-11 23:10:25');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (154,'8478251','1758971','Lisbeth','Julissa','Valdes','Espinosa','2014-08-25',0,1,'67019986','64066175','67019986','lisbethvaldes@hotmail.com','','BARRIADA EL CARMEN, DAVID',62,0,'','',1,0,3,3,'eyJpdiI6IjNLcmg4bVFkUlJhSW1jaDA5Zkp2VyswK2VoR2N2MG1QU0xNbk12bWxmOFE9IiwidmFsdWUiOiJrdTlpcmdTUVZ2K0kwUzJiNnhPR3NhTXpRREYxOUROYldcL0I5R3FcL3VvY1U9IiwibWFjIjoiODQwN2I4ODdmMmYxYmJiYzNmMGViMDcyZTM3MDdmZGRjZmMzMDdmZWJlNzRjYzMyNTg1MWUxNDU5NzcyMDE4MCJ9','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (155,'114010348','114010348','Damian','Alfonso','Badilla','Elizondo','2014-08-31',1,1,'506+(83231048)','506+(22490263)','','dbelizondo@gmail.com','','Costa Rica, San Jose. Ciudad Colon,  50m Sur Banco',20,0,'https://www.facebook.com/','',1,1,8,3,'eyJpdiI6Imc4RFFyQ3RGeVlcLzkwenh6RE5sQVBTc2JGb3h0V3grYUdpME0ybzRvcGI4PSIsInZhbHVlIjoiNCtGQ1dHWDFRUHBPNWdsd1pHVGJzZjMwZHdRbTdPcXlNYWt2VU5DS0J6TT0iLCJtYWMiOiJlYjAwMDRjYWI1N2NiYjg2NmY3ZWQwNWM5YWNhNDlhZjVkMGM1Y2JjYWI2MDk4NzkyNTQzODE5MWM3YjQwMjJjIn0=','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (156,'1-1028-0773','110280773','Andrey','Emilio','Araya','Rodriguez','1979-03-08',1,1,'506-83184895','506-87755870','','andreyear@hotmail.com','','San Jose, Costa Rica Hatillo 8.',20,0,'Andrey Araya','',1,1,8,3,'eyJpdiI6ImlGOEdwdWs3aXgyXC9qRDFKNlpoRXo1VUt5XC83MVVoNXBWY2JDVzRTQk91dz0iLCJ2YWx1ZSI6InNRbktMSnptV1ZnN2ZWNjhmcU56WVVPNTg4UzdrU0hNZEp0dEwzdXpSalU9IiwibWFjIjoiM2EwMmY3ZTI3NjQ1ZWZkNTYwODk0OGI5NGJmNDI3NjYxZjIxY2UyNjdiNWNmYzlhOTgyMjQ5ZTA0ZDhiNWVlNSJ9','2014-10-11 23:10:27','2014-10-11 23:10:27');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (157,'4-739-2067','4-739-2067','Karol','Yaralis','Birmingham','Chacon','1986-04-12',0,3,'6232-3050','775-4740','','birminghamkrol@hotmail.co','','Urb. La Princesa',62,2,'','',1,1,3,7,'eyJpdiI6Im9LQjBxbnFYOTAyM2kxWE1mV2tQM0lNVURtd05yc3p0TDB0OEd5NWEwblk9IiwidmFsdWUiOiJqVXN1UFJVVHFoZElmWXNueWF6VUxsMXFjMkZIY2Vaeno4djFoZ1hUb2tnPSIsIm1hYyI6ImU1NDQ5YTM1YzA1ZDdiZTRlYzkzYjliYTNmMDZjZWQwMjI2M2Q3M2QwYWM5ZTUwYzgxYTM4ODNjZGZlYTg2NjYifQ==','2014-10-11 23:10:27','2014-10-11 23:10:27'),
 (158,'4-740-1633','4-740-1633','Isabella','del Carmen','Samudio','Martinez','2014-07-24',0,1,'67144771','7746314','7750839','vampiria23_01@live.com','','Barrii Bolivar',62,4,'','',1,0,10,3,'eyJpdiI6IndSUnJCb3RFbnFXMklSQmJ0N3VVckRET3AzSGtwSFZ2ZXUrdUpiQUJSTFE9IiwidmFsdWUiOiIzVTlRNGxuZUh1U0Z5eFRCR3J6MmpJbTY3UGkxS1wvdUVJUEFZYU43V3U1WT0iLCJtYWMiOiJlZTY3YWFjZTI3M2E1ZWRmNDhlMDM1N2Q1MzM4YzUwZWI0YjBjMzkzZGZlZjhkOGZiNTI3MGIzNzc2ZTBjYWVhIn0=','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (159,'4-754-848','4-754-848','Yuliana','Cristina','Quiel','Sanchez','1990-08-24',0,3,'6538-4167','','','yuli24_21@hotmail.com','','arboleda',62,4,'','',1,0,1,3,'eyJpdiI6IlZlczZOdkFcLzdPNFlwb2x0TjBYaFcwa1hWaWEwVWsyTnRoUHdQRnpFR3M0PSIsInZhbHVlIjoiU2FzT0h1bzNPeENRdERlcEFiVm1jNWZQQzNNZ29Td0dLMlwvVjNuT2dobG89IiwibWFjIjoiNjQxODUyYjlhNzllNzRiYWY2ZmU3NDc1MjVhMWMzYWYwMzgzODM1NTIwNzJiZjA1NjE2YmNhMTljN2ZlMGIxOSJ9','2014-10-11 23:10:29','2014-10-11 23:10:29');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (160,'8-813-317','8-813-317','Itzel','Aurora','Quintero','Guardia','2014-02-16',0,1,'66836490','','','q-itzel16@hotmail.com','','david, cuidad acuario',62,2,'','',1,1,8,3,'eyJpdiI6InNKMFpwNVwvRGprZWIzNFRHZFl1UlZIejBSNXk5Rm91QmFzQ1htQm01dFhjPSIsInZhbHVlIjoiR0Y1dDhrcXlkY2c5VDJGbWw2RHBzSjIxUDdoeElcL3Z5Ujlhd0pkU2NXcUU9IiwibWFjIjoiY2YzMzg1MjcwZGM4OTc3YWMyMzE1MmY5ZGU1NjY0OTE2Nzg5MzcyYzNhYzY0ZDA3OTRiM2YwNzU2OWRmOTQ1OSJ9','2014-10-11 23:10:29','2014-10-11 23:10:29'),
 (161,'4-758-1976','','July','','Cerrud','Espinosa','1988-09-30',0,2,'66274535','','','julycerrud@hotmail.com','','Santa cruz, David Panama',62,0,'july cerrud','',1,0,3,2,'eyJpdiI6IjBOclhDcHlQc1RxdDlaZ3BZTWJib2J3NXZXUDREYzVRNDJBbjlcL0Ftc0VzPSIsInZhbHVlIjoiYVZnaXNkaE50VFF1cllhME04YVNPenZqRHd4RTZqV3lEY3dvUEZ1Nm82WT0iLCJtYWMiOiJiMzlmZmE5YzAzNjIyZmU4YzA0NjY5NGQwMzc0MDcyNDAxODQwYjU3NGRhNzJmYjJiOGJjMDE5MjY3MmVhNTIyIn0=','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (162,'4-736-729','4-736-729','Vanessa','Lorena','Gonzalez','Caballero','1985-05-10',0,1,'','66650280','67705539','vane_lore_13@outlook.com','','',62,0,'vanessa lorenna','',0,0,3,3,'eyJpdiI6Im53NEJjRTlXR1NGUFVnVHBFZHpqODNcL0tjcnQ3MmFCV1A0Z2EzNjV3N2JNPSIsInZhbHVlIjoicnFVVHUzaEEwa3hjXC9rWlVXenhQMmMxWFhOM084S3lPN3g0Tm1QU01Fb2c9IiwibWFjIjoiNjc1OTgwZDRjNzNjOWJlYjE3ODI0MDg2OGMwNzI3ZWM0ZjVkZGNiYzZjZDc3ZWUwMjZlMzU0NTEyYmFmMWI0MyJ9','2014-10-11 23:10:31','2014-10-11 23:10:31');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (163,'4-738-885','4738885','Eugenio','Jesus','Montilla','Serrano','2014-12-12',1,3,'64805007','7754321','','eugeniomontilla12@gmail.c','','david',62,4,'eugenio4ever@hotmail.com','',1,1,11,7,'eyJpdiI6IndSK2pVbTlFTjVlZFI4QzdxMUFxdENLOHQ1d1llRmJZaTZidmtoMWZvVzA9IiwidmFsdWUiOiJ6OHlMTjNnQmx5R3ozYmdZTEFpOW5VZ0NzODljcEZ1N2ozY2x4dko0TDVRPSIsIm1hYyI6Ijk1MGQyYTUwNTgwZjg3OGVkODg4YjlkM2NiZjM2ZDVmNWUxODI1NmExYzJlY2ZiZjZjYjMzNDJjNmYwNThmNGYifQ==','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (164,'4-731-671','4-731-671','Lourdes','Margarita','Concepcion','Taylor','1983-11-30',0,1,'64779615','770-0822','','','','BUGABA',62,1,'','',1,0,3,7,'eyJpdiI6IkVEWGQyaFlhZFRpVkJCVGNRR0RMeGZpQnVjNFAraXUwbzVoNFJBdTRaY2c9IiwidmFsdWUiOiIwXC9xOTRweVdyMnhtcmt1a0crUyt3TTVZV0xPSExkSUxoTTBOQ0ZLenVzTT0iLCJtYWMiOiIxOWFkMTU2ZWNiZGMwZDQwYjlkNGIyY2RhOGNlZTNiNzA4NmRkNzgwMDM3Nzg1NTRhZTc5MjJmNGQyMTFlMzYyIn0=','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (165,'4-752-260','4-752-260 ','Jian ','Kiarelis','Pineda ','Pineda ','2014-04-29',0,1,'6829 18 80 ','','','larissa2989@hotmail.com','','Los abanicos ',62,2,'','',1,0,3,3,'eyJpdiI6InF0TDZQNytZMUlKNWZDYkU3U1FhMm9oRDRCXC90dXhFRldxXC9jRHhRUGxoND0iLCJ2YWx1ZSI6ImtJWTJKN2NUSUlyV092NFU1Rm5RUU03bWoxWFo5OU01akU0ek9waWdCMTA9IiwibWFjIjoiNTg1NWM3NzA5NzE2MzczOTE0MWUzNjU0NDQ3ZDc4ZTJkMzcwNWVjY2RlZjljN2MzZTExY2NlMzdmN2VjNzQ3ZCJ9','2014-10-11 23:10:32','2014-10-11 23:10:32');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (166,'4-754-848','4-754-848','Yuliana','Cristina','Quiel','Sanchez','1990-08-24',0,3,'6538-4167','','','yuli24_21@hotmail.com','','',62,4,'','',1,0,1,3,'eyJpdiI6Ill3S1VMSVFpM1poMHU5bGZYdG1KODd0WmFIaUZyUDdmRVhlSFRJQ1Z3cmM9IiwidmFsdWUiOiJxXC9kS1wvUnBUQzNEakMzMlVNZExxbkR2YXdoVDAzVFdSelRJSjZMSkFvRTg9IiwibWFjIjoiNDcxNzE5NDdiNWRjN2Y3YWRiNWViNmVmNzg3OGY3MjYwOWYwOTVjYmNjMWJiYzkzNTgyZmRiMjZkYzQwN2ExNSJ9','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (167,'4-733-1462','','Yolly','Yariela','Villarreal','Correa','2014-07-19',0,2,'62589070','721-1106','','yollyari19@gmail.co','','Urb. Las Sabanas',62,3,'','',1,0,3,3,'eyJpdiI6IkVlYUFlZW5vWExLNDRONzU5MHBCVlVWa29OMldiakw1eUppc0dxZCtHV2c9IiwidmFsdWUiOiI5ZlBiOWJ6aCtqNkF4YXNMcWhFS3ZDK3ZSQmpWVEZRbHRxMzdVcDRtRFhRPSIsIm1hYyI6ImY2Y2JmZWE3OGFlNDFmZGMwOTA4NmUzMTA1NThiOThmNzhkZGJjNjc2Y2ViODA4NTM4OTcxODg4YTY5M2FiNmEifQ==','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (168,'4-750-1376','4-750-1376','Karol','Del Carmen','Rojas','Miranda','1989-07-29',0,1,'63950042','','','kary04nenita@hotmail.com','','Urb. Los Andes Loma Colorada',62,0,'','',1,0,10,2,'eyJpdiI6IkNqVHlyWGNwZnhZZ1VDcDloOTFjSlNIVEQ0TitySTFuTDd3eVdXaktEdWM9IiwidmFsdWUiOiJlTjNVVHNvXC91Mm14UHZWUUp2Tk1VRkJpRlNQdndjTUgwbDZkamJUOFNNZz0iLCJtYWMiOiI0YjhkMWQ1OTE1YTc4NTEwZDFiMTQ5NWViNTYzZmM4ZTQ1NjhjMGY5ODI4YzcyNWE3YjE0MDVhODI3YmIwZDQ1In0=','2014-10-11 23:10:34','2014-10-11 23:10:34');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (169,'4-713-1651','4-713-1651','Laura','Veronica','Perez','Navarro','2014-11-29',0,7,'6620-0512','','775-0773','laura_p2978@hotmail.com','','Anastacios, Dolega',62,0,'','',1,0,3,3,'eyJpdiI6ImNOYUs0YzlKWEl0QitNblZxOW9DYW4xdHB6MjJabEFpQnBiYTZxTGN2RVU9IiwidmFsdWUiOiI1c25TdENqampKTFlyMzY4TXZaalNzNFwvS0VJbGdVQmUwanVhaitlVDdZbz0iLCJtYWMiOiJhMjMxNDIzNzYzMDI3MjBkYzYzNDBjOTgzZjNhNmZlYTQ5NTEyZjI2Y2JhMzE5YmUzNzhkYzg0Y2E2ODg1ZTAwIn0=','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (170,'8-244-490','2784872','Orlando','','Guadamuz','Pino','1960-11-30',1,2,'60096905','7753987','','guadamuz30@yahoo.com','','Ivu Pueblo nuevo',62,1,'','',1,1,3,5,'eyJpdiI6InVkdEJVZ0xuUkFybFVUeVNBZ0xETTQ2UjdvdFZcL2Rlck5PZ1hkdHJUT1NvPSIsInZhbHVlIjoiSlhBZmJpZzNNMVB6cCtJV25Sa1B0TXo5dWh4dXVHcEdVY1ZMVHNqMWN5VT0iLCJtYWMiOiJhMDJkZGZiYTEwMTI1NzQ3MTk1NzgwNDM2NGRlZjhmYWIzNWIyODdlMTY5ZGI3YWE3ZjJjZjExZjIzZmJjN2MwIn0=','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (171,'4-738-231','4-738-231','Itzel','Lisbeth','Torres','Jimenez','1985-11-06',0,1,'6713-9211','','','itzel_torres@rocketmail.c','','Aguacatal, David',62,2,'','',1,0,7,5,'eyJpdiI6IllzdVNUUG9kNm5ZTU5OVEVhZVFLRCtOWDg0aGpJeWRzcTJoTkdUcmF5XC84PSIsInZhbHVlIjoiWW1GR1Myd3h3WFV5bTlWbDFTVWlFOXlaSCtiMGc2NVpKMkJTcm9tQ01aOD0iLCJtYWMiOiJhNDgwNjNjY2QyODdiNTc5NDY2ZWE5ODBhMzk2NWU0ZTdlMmQxMDRiZWYxY2NiMjljNTkxYjNmYjNiNDhiNjllIn0=','2014-10-11 23:10:36','2014-10-11 23:10:36');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (172,'4-742-2182','','Guadalupe','Guadalupe','','Jimenez','',0,0,'67500998','','','','','',0,0,'','',0,0,10,5,'eyJpdiI6IlBTK0g4akF0TGlyWWNLRkorVGhVQllEdWI0XC9YaExaNjVyM0dkUEo4T1prPSIsInZhbHVlIjoia2tQTlNPSmlxK1c0U1AwUVFNQm5Dd3Jsc2NLSnZmZWFyanZ5amtsVnJCUT0iLCJtYWMiOiI5NjFhYmRmZTZiZGFkYjRkOTczOWVlNWE4MTEyNzdmYzg4YjMzODlkZGIyNTk2OTUyYzQxY2U2OWE3ZjM1NjYxIn0=','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (173,'4-745-1611','4-745-1611','Maryelis','Andrea','','DELCID','2014-01-08',0,3,'67098603','66930345','','taty_08evans@hotmail.com','','NUEVO SAN CARLITOS',62,2,'Maryelis Del Cid','',1,0,10,7,'eyJpdiI6IlpcL0ZnM2hMSEF5NUJDRGZmdjA3b2RVc2JSdHZwU1k2S2g1bTdNdTJHNkpzPSIsInZhbHVlIjoiWUcrblwvYXB2SjdQOE5SeXRqOGVvYkw2MkltcEhlcGhzV29jaURyOVpmSlk9IiwibWFjIjoiZjY2YjA1YzQxYzU4YjQ0ZDEyNmY0OGU3ZDlhYTZkOTRkYjVhMDg4MTJmMDA2NGFhNWYyMzcwMWJjMTU1OTI3YiJ9','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (174,'47591','47591','Joselyn ','Liseth','Avendaño','Valdes','1991-10-10',0,1,'67192915','','','jocelyn1017@hotmail.com','','Residencial Aqualina, David, Chiriqui',62,2,'','',1,1,3,3,'eyJpdiI6IlRyZ2RHdlBERDZ6Z1VsQndIXC85Qndab1lsMlUraWxmTVoxTW43cTYxdkZvPSIsInZhbHVlIjoiZE1xbTNlRzNtU3FSSDJpVGk1U293U2JBYjFhT0hQYVdRcGQ3M2lYb0JYND0iLCJtYWMiOiI0NmVhYjE2NzZkZmViNjZlNWEwOTIyOWM3NWY5MjM3OGJjM2YyZTRmYWE5MzkwNWRkNWI5MWY2ZDFiMDAwNDA2In0=','2014-10-11 23:10:38','2014-10-11 23:10:38');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (175,'4-184-987','66-0134','Diana','Durvin','Espinoza','Hernandez','2014-12-05',0,5,'6509-5421','777-2370','','despinoza15@hotmail.com','','UrbanizaciÃ³n Acuario',62,1,'','',1,0,1,3,'eyJpdiI6Ilh4TTJvcXBZeTMzbjd5c2dLUkl3TERoMnFqTk5IcjZsYnhXb0JFS0hUc0k9IiwidmFsdWUiOiJZVUk5MVdqOGducERjNzNZTXdKb3BYNE03Z3JLZ0N4R2crdGZhR2RySVA0PSIsIm1hYyI6ImUzNTBiZmEwNDdmNjM2ZGVmNThjODRmYTIzZTgwZmZlNTlkNjc2MmEzMWJmOTYwODllNDljMjliNTc4YzQ0MzMifQ==','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (176,'4-732-1908','','Leyla ','','Rueda','','2014-12-09',0,1,'','7773293','','r.linethj-19-09@hotmail.c','','',62,0,'Lineth Rueda ','',1,0,11,3,'eyJpdiI6IjcrXC9wXC85UDlsYVJDYkxUU252VjhCUG8raU5pam1EbG9qZVdcL0dWbTE4OXM9IiwidmFsdWUiOiJuU1VmbmlaOVJrNmdpeFV1K2JlbDlnTDhaR3J6R1VtT1JQbG9TejZOUFcwPSIsIm1hYyI6IjRiYTcyMjA0ZGVlNmQxMGY1MjYwOTU4ZjY0YmRkN2I5MGM5ZjUwYjMwNjZmNmY3MmE4ODBiYWYyODM0N2VjNTEifQ==','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (177,'8-783-1220','8-783-1220','Jubilier','Alberto','De Leon','Calderon','1980-02-10',1,1,'6903-9595','974-4802','','reilibuj@gmail.com','','',62,2,'','',1,1,2,3,'eyJpdiI6IllnVmxoNERxcHl5OXlLcnhNSjA0bUd3R0RadXV3R25hYk5jUnhGdlRHYVU9IiwidmFsdWUiOiJ3TlJXZEJOUGpOVDNGd0ZIdmk3RVwvcVhMT1NPOVJYRlRRZ0tZbVFjVmIxWT0iLCJtYWMiOiI1NmNkNjJmMGU0NWYwOGRiMWEwYzAyNThhYmJiMTg5NWRiNDAzNDk3YjNhNThmYTg4ZDBiYTA2MDg0MjI4NmI1In0=','2014-10-11 23:10:39','2014-10-11 23:10:39');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (178,'4-730-208','4-730-208','Ambar','Antonia','Arcia','Acosta','1982-07-16',0,0,'67189604','7304308','','ambar_1682@hotmail.com','','David, La Prosperidad',62,1,'ambaryjairo@hotmail.com','',1,0,1,3,'eyJpdiI6Im52VktKZlBNMllsaE1tXC9GNTJhRlkrdGZkOUNoTjFROGJyYlV4OFAzYXEwPSIsInZhbHVlIjoiY0syQTNEdlB4MWZOemFlYVwvenFhM0xSODVMb3J0NHVmMjZoUlphSlhCVzg9IiwibWFjIjoiZDhmZWNhM2JkYjRiNzVkZTkxZDJiMTg0ZjU2MDdjNTQ0ZDExOThiZjY4NGM5YmEyODhlMTM2YTIwYzc4NTVlOSJ9','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (179,'4-763-1152','2731294','Gabriela','Del Carmen','Pitti','Cortez','1992-10-24',0,1,'6576-8093','','','josegaby-1024@hotmail.com','','Santo Domingo',62,2,'gabriela.p.cortez@faceboo','',1,0,7,2,'eyJpdiI6IkNlbUx2Y2pmcVA2cXBnb09lOEozYlFFTDZNdngyODRVK1U4UVVXa29CNTg9IiwidmFsdWUiOiJUYjZLM2E1a0tsTDVCWGl0bVViNlArdFRrbGtoWVRFQ3pVMm52WkNYWmNVPSIsIm1hYyI6IjhlNzMxNTk4N2VjMWI3M2M1MTllYzYzYWU0OTJiMmFiMGZmOTJkYzU2OTFmYWY1ZmE4YzhjYzIxMGRiMjI5YjEifQ==','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (180,'4-753-280','4-753-280','Carmen','Gabriela','De La Torre','Vargas','1989-05-24',0,1,'6456-3388','----','-----','carmendelatorre89@gmail.c','','San Vicente Bugaba',62,2,'','',1,0,3,3,'eyJpdiI6IlB0bnlaMUdvdVdRY0hkU0QyaDc2dHU4bzdVSEpSZVNpQnNvSDhJT2wybjA9IiwidmFsdWUiOiJETVA4WUdRZWZTWlA4NytCTGZ5QmtUaXRoZmdDVU02RVgwQ0Y3SER5cnI4PSIsIm1hYyI6IjI4ZGNlYzE3ZTRmYjc5NzZlMzNkY2Q2ODMxNTVmNzFjNTA0YWI3NGUwMjY1OGE3OTkxMDU0MDFiNmI0ZjEyNWUifQ==','2014-10-11 23:10:42','2014-10-11 23:10:42');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (181,'4-746-377','4-746-377','Cinthia','Mayelis','Cisneros','Moreno','1991-10-11',0,3,'6755-8694 / 6947-1728','','','cyn22cisneros@gmail.com','','Brisas del Rio',62,2,'','',1,0,5,2,'eyJpdiI6IjdkMmgwUjVDdmQ1elA2eGlXNlh1SjdpeHp0c05BWXBBMUtOOGtBaUhNSDA9IiwidmFsdWUiOiJzNG1lbDVlRjFWdUlQak5IckFobzRYd3BDdjRnRU1hOUN1b0JEMU9jeTdBPSIsIm1hYyI6ImNhYWNmZGRjN2Y2YzU2Yjg5ZGRlYWNiNzY5MGJmYzUyYTdiNDM2MWJjY2ZhN2I5YWMzNzNhOTNhNWQ1YjRiNDkifQ==','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (182,'8-837-2162','8-837-2162','Genesis','Llabel','Quiroz','Hernandez','2014-09-13',0,1,'6783-8108','720-4657','','gvlld_1924@hotmail.com','','Boquete',62,1,'','',1,0,11,2,'eyJpdiI6IkR6UjZPOStvZGpMOGRiOERqS2Jqa1VvUlZ3QmlmUUVtRlZRclBpVzdXWm89IiwidmFsdWUiOiJlK21HemdHd0J2TVNNUDlIY1c1aTVCUngzZkxFUTdlTWZUZGM2cEVzbSswPSIsIm1hYyI6ImM2NGQxNjFkNjk1ZTM4N2MwYTllMzhkNTAzZjUyY2JlMWM5YWI1MGQ0ZDEyNzU4ZGQzNmNjYzk1ZjNiOTMwMTgifQ==','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (183,'4-757-1053','4-757-1053','Juan ','Andres','Vega','Vega','2014-01-26',0,1,'64933433','','','juan_andres_vega@hotmail.','','La Arboleda David Chiriqui',62,2,'Jab_1991@hotmail.com','',1,0,11,2,'eyJpdiI6IlBnVVJaS2UxOVFIZ3FCbDd2M0x1N0JrNmpIRW9qVWREN1hCOFU1QnNWdTA9IiwidmFsdWUiOiJWbnN6dndEc1E5WmlrMDNRVzd0SGx1V0lGS0V1ZWRTSDR6Q1RvRGhkUEFVPSIsIm1hYyI6IjE1MWNiZDNhYjI3ODQzYTIwMTY3ODJmZGYzMmI4MjMzN2NlOWE3ZTc4MjcxODdhY2U1YzY3YzZhZjkyNjM1ODkifQ==','2014-10-11 23:10:58','2014-10-11 23:10:58');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (184,'4-762-288','4-762-288','Ilian','Lizeth','Gonzalez','Sanjur','2014-08-25',0,1,'6461-6177','','','lissi1091@hotmail.com','','las lomas,llano grande abajo',62,0,'','',1,0,3,3,'eyJpdiI6Ik9ENkR3MklXNXhTclNSVXhOZWJjdk82Z0dyMnpEdVwvY25DMk5XZ3dzOGJnPSIsInZhbHVlIjoiVk9OSnBwWVMzXC9yb3QwaElITmNqMWNUU3kxOWl2bys5bjV0blRaY3BTUlU9IiwibWFjIjoiMzJlMzRmMWExNDk3YmVmZjJiOGRkZTA5MjVkMGIzY2Q2OGMyYThkZjUwZWEyNGE4ZjQ1Y2YzOGI0ZDUwY2YzMiJ9','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (185,'4-743-998','4-743-998','Melvin','Samuel','Camaño','Flores','2014-08-31',1,1,'67219884','709-0014','','','','VILLA MERCEDES',20,0,'MELVIN CAMAÃ‘O','',1,1,8,3,'eyJpdiI6Ikx3UUFhSnV6NnRMMXlnMmx5TEdFOVVkK29MUU1meG1WTG5lbm5MTCt3TkU9IiwidmFsdWUiOiJZb2JPYmg4K3NBcEE1UTF4OWFpQWREd2d4UHRxMjlGRFRHVW5VcVFLblM0PSIsIm1hYyI6IjlmZmJhNGI1OWQ3ZGUwNTA1ZWIwZmM0ZmUzZDBhMWMyMzdlNmRlZDczMzQzMTIzZjBiN2Y1OTI5NmUyZTMyYWMifQ==','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (186,'4-267-526','4-267-526','Maria','Isabel ','Alvarado','Abrego','1979-03-08',1,1,'6550-1557','0','0','alvaradoabrego@gmail.com','','Villa Adriana Los Algarrobos',20,0,'','',1,1,8,3,'eyJpdiI6InMwNEMydThmdDJBMlBvVUlxaXFFRVJST1NHMmp4M0NzaUc1WXBCMWpFY0E9IiwidmFsdWUiOiJoNnBhMEZjZHRrNVdhblwvdzBDUVJ4eXJ0eGhqVlVHK3hOQjlqSUNrK3dUMD0iLCJtYWMiOiI5MDhmZDQyYjVjM2IyN2M5NWY3ZmM2NzNjNTMxMDdiNGZhNjk1ZDM4NjUwYjVjNjA3MTBhNGY2YjkyMWRjOGYzIn0=','2014-10-11 23:10:59','2014-10-11 23:10:59');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (187,'4-745-421','','Mariam','Yarictza','Abrego','Gomez','1986-04-12',0,3,'67624420','7743936','','maryag2128@gmail.com','','david',62,2,'mariam yarictza abrego go','',1,1,3,7,'eyJpdiI6ImRndStCeVRTN1V2Um0zZG94czdmVzRWcjFtME5VazN6a283TDFDQzRJVDA9IiwidmFsdWUiOiJrdGs4WUhmZk1XdGpGbkRqN0JveFhQdXk2TFNqaEh4TCtEQUc0blFRWnZVPSIsIm1hYyI6IjNkYTNlZGU4MTBlOWViNWRjMjQ1ZjI4MWJiZmZkOWNmOTI0NzE1YTFjMTdhOWQ3MWYxM2NiZGRkM2FiYTdkNGQifQ==','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (188,'4-777-1878','4-777-1878','Evelyn ','Mileyka','Castillo','Moreno','2014-07-24',0,1,'68214727','','0','vjpp_25@live.com','','el veladero ',62,4,'','',1,0,10,3,'eyJpdiI6IlZoeHZaSDdCKzBnV3VxZzU2TG12UlhnaXpROXBxWlpTVFVCMnpiM1lhcTA9IiwidmFsdWUiOiJRaFRuNmM4cDBXdkdSN0oyc3BrdGkrWDh2QUFiWHd3NUE5WUVTaXE5Z2NvPSIsIm1hYyI6ImQ1NDk4YzY1MWI1OTk5YWIwNTIzMTczOTVhYTllNmFjMjEzYTIwOTg1YjU0MTdjMDhkODdkYjlkNzYzYmFjYjkifQ==','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (189,'4-755-1928','4-755-1928','Carlos','Enrique','Peñalba','Pineda','1990-08-24',0,3,'64152520','721-3581','7213581','carlosjs01@gmail.com','','los abanicos',62,4,'','',1,0,1,3,'eyJpdiI6IlZ5d2JQd0k2K0Z6aXJPdUNtSVhmclBCeXB1Z3JzeXIwSXhyK1czQTBnb009IiwidmFsdWUiOiJ5WUttQ1NpRzRqMm9ySDRmQmhqNjZTejVTU1pnNGYybUZUdGNKdnlcL1p4Yz0iLCJtYWMiOiI4MzJjZGQwNmJjNTBiM2I4Mjg1MmU3ZTJmMzc3ZTdjZmQ3OWZjMTM0NGY4OTRhN2UwZDkzNDgyMTEzMTA3YzQ4In0=','2014-10-11 23:11:01','2014-10-11 23:11:01');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (190,'4-737-1687','4-737-1687','Odilis','Aribeth','De Leon','Cubilla','2014-02-16',0,1,'66892484','66534500','67750561','aribeth29@hotmail.com','','san juan del tejar /san pablo viejo/david',62,2,'odilis de leon','',1,1,8,3,'eyJpdiI6IlZpZnRUUVM0VU5GbnB0NkdNMWE3XC8zVkFJZ2RuVGFYSjJsUkV6Q2t4SWFnPSIsInZhbHVlIjoiTWIycHZzd1hlVk5CN1lYK0dsZWJFclFBZ2JsVndLVm54TWdHMHFrdTNOZz0iLCJtYWMiOiI5NjhmNzY4Zjc1OGM1NjBhNGI5YWQ3YjQzZmRhNDZhOTU0MjMxNjBiNmQ1MmNhMGNkMmVmYWQ4N2E1MmRjMWYxIn0=','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (191,'4-750-1759','4-750-1759','Jorge','Daniel','Herrera','Castillo','1988-09-30',0,2,'68197230','7745586','','ingjdherrera@hotmail.com','','David-La Prosperidad',62,0,'','',1,0,3,2,'eyJpdiI6InJTaERFdXp1SlRXc3pvU0pQTUpyXC91SFwvZXdiSEJpV1RJRDFOUklURlR1OD0iLCJ2YWx1ZSI6ImJCbEhLcnlrRERYd2xMXC92K3pCMGhhN2lcL3J1dDRjTjE0VThEeUNYNnZQVT0iLCJtYWMiOiIxODhkMDY1MjQ3M2Y1MmU1NDI1YmMxMzQ5ODkxZTRhNDUxN2JiNmI3ZjRiODU0MjUxMzA2N2U0ODJhNDE1ZDZhIn0=','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (192,'4-721-241','4-721-241','Suleika','Crisol','Valdes','Espinosa','1985-05-10',0,1,'64416067','7769118','','suleikavaldes@gmail.com','','las lomas mata del nance',62,0,'','',0,0,3,3,'eyJpdiI6InJUKzRyNFcwWVdOQUh5MnBHUVRWSlREcTJ6WlBxVExcL3NEeThSZ0h1dDlZPSIsInZhbHVlIjoicHZMZjhFa1lPdjRWaGZxMFM0a3owcTRpdEpSZUw0SHllSG5vMVNZV0hUTT0iLCJtYWMiOiIyZGEzMmY0MWYzYmM4ZTUzYzc0NjNhNDA0ODE3NDU0MzVlOWM3MmI0MDAzNTU1NTQ0YTdiYzZhYjZmYTNhMDczIn0=','2014-10-11 23:11:03','2014-10-11 23:11:03');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (193,'47421905','8751803','Carolina','Aracely','Sanchez','Perez','2014-12-12',1,3,'64476753','','','jesusesmisenor@outlook.co','','La Concpcion, Bugaba',62,4,'Carolina Sanchez','',1,1,11,7,'eyJpdiI6ImxHVnhIVEU0VE5VNjFOcjdOU0J6WmtmWGRWYlc0Q0FkRU9vT3ZNV0VudjQ9IiwidmFsdWUiOiJoTWc4dGgwN2JlZFNZZTF6RjFDNHl5SDRGNlhmWk1JRUtxV2lFTnhQaElnPSIsIm1hYyI6IjA2OGI0Njg3MjA0YjMwNTM4NDFkNGEzNWRhYWM4OWY1MWQxZTllMDVlNmYwMmFlOGI3MjNmNGUzYjFmZGI1YTUifQ==','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (194,'4-759-2462','N','Ivette','Del Carmen','Guerra','Pitti','1983-11-30',0,1,'6684-6075','','','ivette-guerra@hotmail.com','','DOLEGA, CHIRIQUI',62,1,'IVETTE GUERRA','',1,0,3,7,'eyJpdiI6InFjeUVuXC94Mmx0VXZ1TGFDWHBXSUpNT2RhaEFWUXZFU0dYYVN4QWNYOUxVPSIsInZhbHVlIjoiNGVKUkNmd3BrdTBZWUFTZ1d3T0ROQVc3WEJnXC9xUUdqUDlTQk9VOXhQTjg9IiwibWFjIjoiNzE5YWFjMzJhOGE3NTQ3NDQyNmFlMjc1MWU2YzJhOGRjOTQ5OThlMDUyYmNkZjVlYzcyNTg1MDM4NjgyMGUxMCJ9','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (195,'4 727 1793','4 727 1793','Mirtha','Michelle','Miranda','Caballero','2014-04-29',0,1,'6697 8385','730 0051','','misebas11@hotmail.com','','concepciÃ³n, Bugaba',62,2,'mirtha miranda','',1,0,3,3,'eyJpdiI6IkJNcFhSWSthWDAySmdWRlZPbGxFc1lFWktqdjBVREV0NUdCMUxpQkJmNTA9IiwidmFsdWUiOiJtUlZaRHh2ajNBelhkdEhpY0hITHkyRHh2R29pbzZidGtCZ3Z4UDRjcFhVPSIsIm1hYyI6Ijk1NWJlYzljYmY0NjUyNmRkYTY0YTZlMDliOWU1NjQ5OTI3YjUyNjI5NjFjMTMyMDFmMzdmOTdlNTZhZGZmYmYifQ==','2014-10-11 23:11:05','2014-10-11 23:11:05');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (196,'1-725-111','3155613','Alvaro','Marlon','Montenegro','Miranda','1990-08-24',0,3,'64157459','','','nolramtel@gmail.com','','zoonde,David, Chiriqui',62,4,'https://www.facebook.com/','',1,0,1,3,'eyJpdiI6IklrWDRJZ1p5eWt2VnEwdThzUlFcL0JHbzU4bWEwTUhJRGxOcFNZcDF2VkZjPSIsInZhbHVlIjoiXC9xQWJQMlJ0Qm9MUTBHUlVvVWJjdkx2QVwvY1o3b2oySERxT2lLcVJuT0VVPSIsIm1hYyI6ImM1YWRkOTgxZjUwY2E3MDliZTM2Y2ExZjc5OGMwMWUwNmI1NDJkMGVmMTcxM2U1ZDA5ZWZjYzNjZDkyYTAyOGEifQ==','2014-10-11 23:11:05','2014-10-11 23:11:05'),
 (197,'4-746-1','4-746-1','Diego','Emilio','Del Cid','Rios','2014-07-19',0,2,'6897-0839','','','mela_caro2122@hotmail.com','','La Concepcion, Bugaba',62,3,'Diego Emilio Del Cid Rios','',1,0,3,3,'eyJpdiI6ImtOVFhmUk5WTDJ2c3EwcjJlMUdFTlRtcm44elZOMm1SVHhVUTNYNm1xK2s9IiwidmFsdWUiOiJHQm43V2w0UytyOVQrVEtybzJBZW9HcTY1MDZMN1pieG1BeXpuWVQzK0dvPSIsIm1hYyI6ImZkOThhZTAyNzliZDM4ZjdlYmRkMjBjYTNiM2NhY2U0OGFlMjcwODI2Y2Y1YzU5ODU0YWZkZGZkYzI1NzQzNTgifQ==','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (198,'4-293-36','133-2514','Melissa','Edith','Ledezma','Fuentes','1989-07-29',0,1,'68667065','67887175','','amelysse@hotmail.com','','david, san mateo',62,0,'','',1,0,10,2,'eyJpdiI6InJmdWxVNFZ2VlRIaEFUMVVPWUFtWHRPNXdIbStGbXVVVGdDVitVZkVGY3M9IiwidmFsdWUiOiIyYXFnNHJaVjltT3paMTdCTmp4T0dNWHlncTdiR0tCdUZGQk5ieFpJWkZJPSIsIm1hYyI6ImVkYTkyMjFlM2U2NzFjNWNmNWE2N2QxZjc0MzkzMTUwODY4N2YzMTg2YTFlZWY3NmEwN2JhYzJiN2ExYWM1NjUifQ==','2014-10-11 23:11:06','2014-10-11 23:11:06');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (199,'4-724-177','4-724-177','Wendy','Xaviera','Sanchez','Rios','2014-11-29',0,7,'69806817','69806817','','lokities@hotmail.com','','david ',62,0,'','',1,0,3,3,'eyJpdiI6IjRiY0VwNlwvM01POEtDNFZ0a0I1TGR3QjdkeUc4VXBUd0hPTFFsM2JBbjdnPSIsInZhbHVlIjoiZXFFQXBPSW4rZmNjTVdnajZmRkY1aTRWWTk2cE5QcERub1d0N0g5XC9SSm89IiwibWFjIjoiMDcwMTg0NTgwM2E4Zjg0ZDIyZGVmMGY4OWMyOTAxZjI0ZDJmZGMxYTI2ZDAwODRmZjBhYjQzNzJhNGZkYmZhOSJ9','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (200,'4-744-414','4-744-414','Mayslin','Del Carmen','Rodriguez','Moreno','1960-11-30',1,2,'62038466','','','mayslinrodriguez@gmail.co','','',62,1,'','',1,1,3,5,'eyJpdiI6IjdLTE5FZ3lWdXFoWFhSK1BxQk04a05qVVJzXC9GajZCWE40OGtBamVNQ24wPSIsInZhbHVlIjoiNnRQSzVtY0g2WG1IcG9XQ1JvMUd4bmVpYndnTGVvMHd5K0tReWtTUXg5az0iLCJtYWMiOiI0MWIxMGNjYjM5MGY2YjEyZjcxMTI4ODM5NGMyNTE4NmVmODM0ZGY4OWE0ZjIxY2IyMTVlNTRlNzY3YmY2N2Y1In0=','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (201,'4-248-771','4-248-771','Eric','Faustino','Staff','Soto','1985-11-06',0,1,'69725805','7763009','','magno2579@hotmail.com','','dolega',62,2,'','',1,0,7,5,'eyJpdiI6IlE1Yzh2UXBcL2F0UTFoYVZOMlpwaXZac253WU5zS1VWT0ZcL01jXC9WNzNDWEk9IiwidmFsdWUiOiJkdXRMNUorVmZ4eStMRHpYUUxHV0pVXC9hWk9qMVlnUExHSkhjNHRPSFJqWT0iLCJtYWMiOiJhMWM5NzJlYjhmZTk2ZDUwZGU5NTIxZTJjMmQ1OTk5MDBmMmE0NGM0NzFkMGU5NDVlMmUxMjM1YmJjMTdmMTNhIn0=','2014-10-11 23:11:08','2014-10-11 23:11:08');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (202,'4-211-12','95-1553','Mitzi','Yaneth','Diaz','Peña','',0,0,'66987466/ 67602625','2573210','','mdiazp5@hotmail.com','','PanamÃ¡ y la Ciudad de David Chiriqui ambas resido',0,0,'','',0,0,10,5,'eyJpdiI6IkhHaTZyU3NJOHlMRlJOTEtMM2VJOXQ5QXZGcnBjTjdWcjFjTnNXV2h2MVk9IiwidmFsdWUiOiJsV2JLVWMzdGZ6VXdodkpia1NxQkZNMVROVENBQ01qZGtlU3prM05yWm80PSIsIm1hYyI6IjI5NjNlNjg1YzM5YWJjYzU0MTE0YzIxNGMxZmVjMTNlNGQ3ZTIwODc4MzdjOWEwMjlkODg5MTYxOGFlYjc0MjgifQ==','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (203,'4-752-1430','','Joyce','Johany','De Gracia','Gonzalez','2014-01-08',0,3,'69041092','7768424','','joycedegracia@gmail.com','','las lomas davis chiriqui',62,2,'','',1,0,10,7,'eyJpdiI6ImR6N2paUjNpbFVMOHhpeVI3enFrOE5ES0FcL2NLeGZJY2VaRzRnVHRoZm1ZPSIsInZhbHVlIjoiZzRVdzhLV0JQTkhENm55WWVXZFo3RUFxdVhjclY2MFdzSUw0Sm05WWJcLzQ9IiwibWFjIjoiOGEzNWM0Yzc2OTU0MmQ5NjU3YjA0MWFjNzZmYmYzODQxYWVmMmY1NzU4YzYwNjNiYTljYjBmMWI1M2VmNDg3ZCJ9','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (204,'4-749-461','4749461','Keitlyn','Zuleima','Lezcano','Cubilla','1991-10-10',0,1,'69593422','','','keylez1605@hotmail.com','','Apartamentos SaldaÃ±a NÂº4, Avenida Francisco Clar',62,2,'','',1,1,3,3,'eyJpdiI6Ink1aDhFY3U2Zng1ODhcL280XC9uMWhsMXJGT3d2U3pabEpjbEVPc1QxbUV6MD0iLCJ2YWx1ZSI6IkpHZTJNWEFCclhwS0Z5dXNEOUJcLzlyYzB5QU5BeUwzNEZOZVk0SEVZc2hZPSIsIm1hYyI6IjhiYWViOWM1YmM2ODc1YmVlMmM2NTg4YTZjZmFiZWNjMDdmM2RjZjA2MWQ2NmM2NzVlYTZhNTQxZjI0MGVjMDAifQ==','2014-10-11 23:11:10','2014-10-11 23:11:10');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (205,'4-742-32','474232','Milena','Paulet','Lopez','Rodriguez','2014-12-05',0,5,'68616099','7750354','','rlmilene@hotmail.com','','San Mateo casa 3558',62,1,'','',1,0,1,3,'eyJpdiI6IllrOXdpWWVPZnpMdlhPK1lvRWRKSlJIT0w2Zk9CTG5mYnJ5M09hWVd6RkU9IiwidmFsdWUiOiJSXC9JZW9jcmZuaW5hN1lYRzA2UHpBamlaVUtOdERYT2t4dnVVa2g2S2xWaz0iLCJtYWMiOiJjYWE2ZDE3ZjI1YTQxMmZiMWFjZWZhOGE0YzNiNTk4ZTkyZDk0ZjQ4OTQ4ZGJjNWMzZjc0NmI1NTkxM2IzYWZlIn0=','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (206,'4-739-673','4-739-673','Rotsary','','Villavicencio','Santamaria','2014-12-09',0,1,'6946-2856','','','rotzavillavicencio@yahoo.','','barriada el alba',62,0,'','',1,0,11,3,'eyJpdiI6IjM5aTdNdTZNdWdscmo1dm00QUljcmpmT2ZXSHQ4c29kY2JGMFVHRnh6Q3c9IiwidmFsdWUiOiJLRXdSbnd2SzFnam9kc3htWWd3TTRcL0k1XC93OU5UclhoN0xrRFVmdWhkSFk9IiwibWFjIjoiZWEwNWIxOGNlMjFjMmY1MmJmZDZjNGFkZGI2Y2JjNWI3ZmM1NTg0YzgxMGM1OGIzOTYyMmNhYWM0YjkyYjBlNCJ9','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (207,'4-772-2271','','Kritzia','Katerine','Pineda','Calvo','1980-02-10',1,1,'64078817','','','kritziapineda@hotmail.com','','David-Aguacatal',62,2,'Kritzia Pineda','',1,1,2,3,'eyJpdiI6IkJLREkyS1A3VGJxUnYxUEtJcHNGdU42TU8rVm5QRnc1d2hjelN6dFowVlU9IiwidmFsdWUiOiJzYVBMOWlUeWdGajVHTzNaZ29HNE5VOXhzblhRXC9neTAzbzVpazVuamo5Zz0iLCJtYWMiOiI5OTY3N2M5NjExMWZhNTVmNDM4ZWQ3YTBlZmEwZjRiYjUyMzJjNzVjM2I5YjVjYWFiYTkwZGY1ZDJkNWQ4NTlkIn0=','2014-10-11 23:11:12','2014-10-11 23:11:12');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (208,'4-757-873','4-757-873','Michelle','Paola','Quiroz','Samudio','1982-07-16',0,0,'6215-5674','730-3106','','michellepaolaquiroz@gmail','','DAVID',62,1,'','',1,0,1,3,'eyJpdiI6Im5yR3lPWE5MRHRWM0pnT0hpVUlpbEorUVd0Mmx1NFBUYmFaTUNDT2hGTnM9IiwidmFsdWUiOiJMRkl4ZUhxV1RDRVU2bGFPMFRLbEdZRTlZQk9hcUtjZTRsa3Z4NXNXb29JPSIsIm1hYyI6IjFkYzgwYjMwMmQ3ZjJiNTNhZmMyZjgwNmRiZjYwYWQ2NmFiNmI3NTI2NjczMzBhODkyZjY2MmQxZGM1NWUxZDAifQ==','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (209,'47581374','','Sherlys','Ibeth','Gonzalez','Gonzalez','1992-10-24',0,1,'67697879','7756344','','sherlysg@hotmail.com','','urbanizacion aeropuerto NÂ°2',62,2,'','',1,0,7,2,'eyJpdiI6IklvV0Z0ZnlDNE1PaFF0cFZNaERZb29mZEJuZzJXdHZmc1Y0TWNQaWtBTGc9IiwidmFsdWUiOiJyZ2Q3aW9NR3JYcVFqdHFWWHRSdHFrNE11VU9WajFNTWhqT3E5UGRObTIwPSIsIm1hYyI6IjRiZTI3ZmNiMGM3ZGZhNTFiMDVjNGEzMmM2NzNhN2UxODA2MWVkMDMwMGI0ZjIzYmMzZTY2ZGNmYjFlYjZhNjEifQ==','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (210,'4-766 435','','Kenia','Cecilia','Concepcion','Pimentel','1989-05-24',0,1,'67461541','67461541','','ceci_kya_ceci@hotmail.com','','',62,2,'kenia de espinosa aragon','',1,0,3,3,'eyJpdiI6ImtreTJUOGZSMWlOeUVIM0h1ZDZmc3Nad0lqM0lhckJKd0ZHakV2YVhNTm89IiwidmFsdWUiOiJqYUhOVFVzR1Q2Z1JPSXh5MktMN2t1ZVIxWURrMWNNYzNiRjZMVWlrRzlFPSIsIm1hYyI6ImYyNjQ0YjdkODcxODEzOTk0OWQzZjQyNmZiNTAzYTliNzE2ZDY3ZTM2YjM3MDllZmE1NmJhZDE0YjRmMTAwMDkifQ==','2014-10-11 23:11:14','2014-10-11 23:11:14');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (211,'4-758-1686','','Lourdes','Yoselis','Pérez','Aguirre','1991-10-11',0,3,'6282-2576','770-3677','','lourdes270890@gmail.com','','La Victoria de Boquerón',62,2,'','',1,0,5,2,'eyJpdiI6IkN4bWVRSWhHVk1XSGVrdUlIVHlRdWtrdnpEeWZGZFR3bnB2SU1rUVRBMGM9IiwidmFsdWUiOiJlZCtjdFwvRnhGWnpWYWN6b0VjVnpKeDFENStmWFBsOHhvUEV4YjZZVGtGZz0iLCJtYWMiOiJkYjA5MDFjOWRmNjRlMWZkODA5YjgzNWZjOGRjOTM5Yjc5ZmIzMzQxNjNmM2U4YTFjN2JjYmFjN2IxOWM0ZGNkIn0=','2014-10-11 23:11:29','2014-10-11 23:11:29'),
 (212,'4-721-241','4-721-241','Suleika','Crisol','Valdes','Espinosa','2014-09-13',0,1,'64416067','7769118','','suleikavaldes@gmail.com','','las lomas',62,1,'','',1,0,11,2,'eyJpdiI6ImpXbTV5bU5HXC81eTBlN1wvbG1EZEhMakNWU3JIU2tZTDhsNjRHeUlVSElzTT0iLCJ2YWx1ZSI6IlFcL1pyTklcL1B6ODVUODdUQWVMdFpFNnF6cFwvbko2WmxMazltVmtkWTM3ODA9IiwibWFjIjoiNjM0MjJlODIyOGVlM2I0MjUxZDJlNzVhM2Q0YWViZTA0YWViZjFlOTdmMDdmMGE1OTFlZmUyM2Q1ZmY0M2I4MSJ9','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (213,'9-735-2268','37352268','José','Alberto','Rodríguez','Ureña','2014-01-26',0,1,'69483162','9986074','','josealbertru@gmail.com','','santiago de veraguas',62,2,'https://www.facebook.com/','',1,0,11,2,'eyJpdiI6IkVock5vVEgrOXMxWGZkSzNLZ2c3N0VTVEVtR2hob1NDRnhtb1B2eno1VFk9IiwidmFsdWUiOiJlVEpUSU1KQlBDa1BOR1ZMV0VVTENkemNUUW1oUE9xS0RGemd1Zng2N2xVPSIsIm1hYyI6IjMxMzFjZjQ0NmUxMmVhYjlmOTNiMjYxNTVlMjJjMDc3NjU5YTMzZTliZDVhNmI1MGI0ODJlOGVmZWFiZmIyMjMifQ==','2014-10-11 23:11:30','2014-10-11 23:11:30');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (214,'4-242-805','4-242-805','Francia','Elena','Gonzalez','','2014-08-25',0,1,'66569359','7204071','','frelena55@hotmail.com','','Chiriqui, distrito de Boquete',62,0,'','',1,0,3,3,'eyJpdiI6InVyR2lKQkRGR3lVWVVSMUJtK2VpY3VCclgyK2pXRFFWWlJOVHdpS2RQNDg9IiwidmFsdWUiOiI0ZXI1WHV0V1RMYmx4SWZ5WVJkU2d0eEM3RkV4TVZyXC84ek5IRWsrTDc4WT0iLCJtYWMiOiJiYzNmMTJlYjk2MDc2Y2EyNGFjNGJiOTMwMjY5N2U2YTJmMWRmMjYwYzliZDM0ZWI0OTZmM2QyMTEwNzczNGEwIn0=','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (215,'1-703-2008','1-703-2008','adolfo','','Cruz','Amador','2014-08-31',1,1,'66674915','7751369','','adolfo.cruz1978@gmail.com','','loma colorada',20,0,'','',1,1,8,3,'eyJpdiI6IlRKclk4NHh3aWhkWENISzFrU2JVZEVwd1B4M2E5andYVE82dnAwOEJFWnM9IiwidmFsdWUiOiJZVkJsSSsyVGRhdDRBRGJDNTVkQWQzcWpuaXVYY3VaaEVYYm9qanZ6dVd3PSIsIm1hYyI6ImQ4ZTI1NjdhN2I2MGU4YTdmOTYzZGUyNDE0MGU4ZDVhOTE3MzE1OTE3NTE0ZjU4ZDBmYTVmOThkOWRiMTRjMDIifQ==','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (216,'4-220-504','4-220-504','Elena','María','Castillo','Perez','1979-03-08',1,1,'67322798/66224708','','774-4711','cshellen-70@hotmail.com','','David-Los Abanicos',20,0,'','',1,1,8,3,'eyJpdiI6Img1bWE5VE1IYURaT3pFdDJCbU54Q20xQlpZUjI3RGxPN3phcVo3ZDRFbHM9IiwidmFsdWUiOiIyU3JUazNOQXgwTWRkb1Bqc0dmeFwvczIrTWJpV2xmeDE2MUM3bHlQVzlkYz0iLCJtYWMiOiI0NjY5ZDQ4OGViMjEyMGZmYzViNTEyZTg3Njg0MDBlZTBjMDI0YWU5YzRiZmE2ZTIxZjM1MzIwMmJiNWZlMzRmIn0=','2014-10-11 23:11:32','2014-10-11 23:11:32');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (217,'4-235-866','308-7072','Ilia','Melina','Garuz','Brugiati','1986-04-12',0,3,'6647-6696','775-5849','','giliab@hotmail.com','','Calle C, sur San Mateo',62,2,'','',1,1,3,7,'eyJpdiI6IkN1MFIrQ1RmVlh2M011NUhtbGd4VlV5bzJVczJscERITFQwT1YzMXQ3K0E9IiwidmFsdWUiOiJxNXdNZCtWSGNCNnAra21kZzluZnh6OGxweDNtNGZsMFdYZXVJOExMSFZJPSIsIm1hYyI6IjZhNGIyMTc2MWRjMTYzNmRlNDA4YWRmOTI4NTMxZmUxZjhhZWViMjY1MjdjMDkxZmUyYTc5OWM0NDVkZTE5NDMifQ==','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (218,'4-715-1120','47151120','Jose','Daniel','Vasquez','Garcia','2014-07-24',0,1,'62443758','62443758','','voltio-31@hotmail.com','','Brisas del Rio',62,4,'','',1,0,10,3,'eyJpdiI6IlN6NDQyVGxpMHF5aGRvWFwvcFU5R3ozYzF4czc0OFoweldDd1BTYjdmZTNBPSIsInZhbHVlIjoiSzZBeGZRM2xHbkZ5WndPR2VEOUhuUmp2S3RpaWhieGxNdVdYSmlaMVFHWT0iLCJtYWMiOiI5ZDVhNjc4ZDFkNzYwMDNlOWI1ZTM2MTcxNTMyOGY3NzY4YjIwMjZiMTE4YTFlYjgwOGVlYTY2Mzk1YTNhZGE5In0=','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (219,'8-843-2050','8-843-2050','Sofia','Estefany','Rodriguez','Acosta','1990-08-24',0,3,'6491 24 96','776 70 21','','sofia_0290@hotmail.com','','Las Lomas',62,4,'','',1,0,1,3,'eyJpdiI6Ik5nRUxJUUVtT0hhcEhlWFZ4SitqN0pqMDlWMWNJb1VhU0psVE9VQk1oZTQ9IiwidmFsdWUiOiJyY2czcFZXdUZtNFwvSnZXRWhaVVJ4OTlFeWVHMDVGM2dIYWVWU3l6elwvakk9IiwibWFjIjoiMzlhZmI3Mzk5Y2ExNmUyYzEyNGVkMTBlNGZhZDIxNTcyYTgzMDVmMzFkMDAyYWE0YmZhZWJkYjBlYjk0ZjY5MSJ9','2014-10-11 23:11:34','2014-10-11 23:11:34');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (220,'4-758-1302','','Nuris','Johana','Quintero','Morales','2014-02-16',0,1,'6976-5430','','','johanaquintero2011@hotmai','','Monte Fresco',62,2,'Johana Quintero','',1,1,8,3,'eyJpdiI6IlpMQzFmaHhLbkMyVXhIWU5cL3B4SWtDMjdJZEoyNjlWY1JpdlV5TE5aSFFNPSIsInZhbHVlIjoiQTdlQmRuNzY0Sk5lSmRabE1DeWN2eXRhM3FOdjBMYmRjRFRcL0YwWEZCNnM9IiwibWFjIjoiYjI0MDU2MmQyN2ViNjBlNjQzOGMxMTg4ZjZmOGEwZjJhODJiOGQ3NjYyOWRlZGJjYmY4NTEzODg0ODQ1NjUzNSJ9','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (221,'4-774-55','4-774-55','Edin','Leonel','Pinzon','Rodriguez','1988-09-30',0,2,'6390-1558','','','edinpinzon@gmail.com','','Villa Clara',62,0,'','',1,0,3,2,'eyJpdiI6Ik9RWVwvSUFPMlwvUmlaU210WkhJbGdXVlNReUlBUjhYRlJPRGtGTFdsTHk5Yz0iLCJ2YWx1ZSI6InhaR3NHYTNndHFOREVjR20wRWVNcXNROWNuSFZWb1FXdnBQSGNla0N5UUE9IiwibWFjIjoiZjY5NmIzZTFiMjc5YTY1YzUxYjMzNTQwMTZjMmNiMDFkZTk3MjRmOTA3MWEzZTkyN2U2NmVlNmFmMWI5OWI5ZCJ9','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (222,'8-732-24','8-732-24','Kristi','Michelle','Dickson','Espinosa','1985-05-10',0,1,'66897237','7748583','','kittydickson@hotmail.com','','Residencial Acuario Casa #22',62,0,'','',0,0,3,3,'eyJpdiI6IlBtU0pHeWkrbWN3bEdFUHVja1JPYTlcL1lBTWVVMEZQeTVIVTJFVXloVGdZPSIsInZhbHVlIjoiNWtVcnNuZm1LM0l4UHdMN2hMXC8xYUJKdUVYMmhKU1ZZUkRTQlp3NEZ5TTA9IiwibWFjIjoiNWZhNGQ2MzZjNmUyMGE0NzM1N2ZiNzM4Y2U3ODAwMTYwMjFjNDFhNDhlNzNjYmZkNDE2NTlhMTg0MzlmYzBjZCJ9','2014-10-11 23:11:35','2014-10-11 23:11:35');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (223,'4-718-1148','4-718-1148','Milton','Esau','Silvera','Santamaria','2014-12-12',1,3,'6674-0256','','','miltonesilveras@gmail.com','','David',62,4,'','',1,1,11,7,'eyJpdiI6ImllVjBYMDZrc3I4SjJrM29wQ0hMalh6U0JUbDhvVkVaOTJsSVVsSDdHRW89IiwidmFsdWUiOiJEY1ZCTldCeEkzOVNpMWRyYm1udnBld2cyOG5OS05ZTjV1NFNUNU8xZ3lVPSIsIm1hYyI6IjdkZjMwNWQ5YmY4YzIxMTI4NzNkZjhkMTExMmI4N2YwMTM3ODRjYzg1OTE0ZTE4YWE4MTg4NDEzMjg0ZTM4ZDAifQ==','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (224,'4-282-148','4-282-148','Zoila','Nieves','Cubilla','Gonzalez','1983-11-30',0,1,'63983858','','','zoila_cubilla09@hotmail.c','','david',62,1,'zoilacubilla','',1,0,3,7,'eyJpdiI6IkUrVXZVeHBUTTYydnhOOWp1cit1dXdnQTdpZndiQWZPZVErcjFHRm1jS3c9IiwidmFsdWUiOiI3U1RsSUg5b2EzY1NzYWN0UmdJeEpNVmdKTWlETnFqbXZ5enRza1VjcUNnPSIsIm1hYyI6IjBhYTMwOWMzOWQ0ZWZjY2E4N2E5ZjIwMGU2Nzk2NTAwNGQ5NTg0ZGJjYmJiMTcyZDFhYWQ2MzA5NGE2MjkxNzgifQ==','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (225,'47391015','47391015','Abel','Antonio','Lewis','Espinosa','2014-04-29',0,1,'66553051','66553051','66553051','abel.lewis27@hotmail.com','','Urb. La Florida',62,2,'Abel Lewis','',1,0,3,3,'eyJpdiI6IlBMQmtRRGZ1SjFUWElYaWF5NlkrbTVYbHVvS25nUnZxREl2bFpQRUhneUk9IiwidmFsdWUiOiJXdDRqcU5KdGJjQVZ4RHdnY3YxZlVwWHd3cXZBd0hmNSswMjhaa1RpTEVjPSIsIm1hYyI6IjYxNjE4ZDUxYWUxNzE3YTVlMDIyNTlmOWYwYTYwZmFkNjBlOTU2YTQ0OWFjYWMwOWY3Y2JjMTFkODhmZWNiODIifQ==','2014-10-11 23:11:37','2014-10-11 23:11:37');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (226,'4-758-1686','','Lourdes','Yoselis','Pérez','Aguirre','1990-08-24',0,3,'6282-2576','770-3677','','lourdes270890@gmail.com','','La Victoria de Boquerón',62,4,'','',1,0,1,3,'eyJpdiI6ImZZYlNYMDNmeXNCN0tyd0x0S0s2d0J0MTFIOERkeWJVSFcrczhuNVZYTkU9IiwidmFsdWUiOiJyQ0pxaEFKYkZmbkpCV1dTNXMxY1pWQmJkMkF2N1wvam9zbXc2VGZmT045OD0iLCJtYWMiOiI0OWQ1NmY4MGQ2Yzg4MzlkODNkYjA5ZjdkY2QxNGMyNmRkY2UxM2UzM2Q4YjMyMWQ3NzUxYTQ0NmI2Y2VkMDcxIn0=','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (227,'5-764-716','','Yarelys','Jiham','Santamaria','Miranda','2014-07-19',0,2,'69072654','7712796','','yare03_j@hotmail.com','','David',62,3,'','',1,0,3,3,'eyJpdiI6InhqelYydUt6c1wvaTU3SlhEZjZtem8wTjdLOWFqQXIzOGdqSFBQM3N0ZjhnPSIsInZhbHVlIjoiNWxDMTU3QStuUGtxTDNRZHBqWHBGblBPVzRTRFdETnBrWW5XQk1EaDRxTT0iLCJtYWMiOiI2Mjc4NTBmZTk2ZDNlYzgyMDVlOGQ4M2ZjMTQ4YmMxOGNiOTIwY2U0YThlNDBkOTY2YTQ0YjJlZDBmNTk4NDgzIn0=','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (228,'4-714-1082','4-714-1082','Dayra','Lisneth','Quiroz','Gonzalez','1989-07-29',0,1,'6789-5226','774-1056','774-3890','dayra.quiroz@outlook.com','','Brisas del Rio',62,0,'','',1,0,10,2,'eyJpdiI6IlhIOFVJMktSR2gzdDNTajhibUtrT1hRamlJbjA3aEVlXC8wTzlLMUJLanBRPSIsInZhbHVlIjoiU1ViTGE0UUJHeFBwNUVoRmYrbk9YWW9rTFRQejVYMyt6TzVqSTViNlM2dz0iLCJtYWMiOiI0YTk3N2FlMWNlYTc0NDRkOWZjNGU0MWUzZmRkODc1YTdmYjY1YWMwYTQzZGU1YWZlNjUxZjI5NTNmYWUyZGMwIn0=','2014-10-11 23:11:39','2014-10-11 23:11:39');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (229,'4-754-1005','47541005','Aimee ','Catalina','Almengor','Alvarado','2014-11-29',0,7,'65375590','7744121','','a_lmengor27@hotmail.com','','Doleguita',62,0,'Aimee Almengor','',1,0,3,3,'eyJpdiI6Ikc1SGdxanFiRytySEc5akZVXC92dDFxVlplMlV6RERMamV1U1h4N1F2bTdVPSIsInZhbHVlIjoiMUwycnNWRzZcL2RkMEd1a2lKOTliZThkQWVKcDU3alhHOXJOUm1VSGx2UlE9IiwibWFjIjoiMmMyMGZlOWJmYjhhMzNlYmIzMDgyNThjZjE4M2JkZTYzYjEzYmVmNTY0ZGZiOTYxNzYyNmI1ZGI2ODMzNmFiZSJ9','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (230,'4753-411','4753411','Zurkerin','Arleen','Ruiz','Vega','1960-11-30',1,2,'6418-5910','6418-5910','','zulk1520@hotmail.com','','',62,1,'zuly ruiz','',1,1,3,5,'eyJpdiI6ImhlMXRyYzNlbVliVFJ5YlJ3T21JN3lNc05mOFhDUUhPY2x0RmR4NnVoNkk9IiwidmFsdWUiOiJYclFRZ3ZlVW42TzNcL2d4VGdyMjNRdXlicW1ITlNMMmZmXC9wSnBHSTN2eDQ9IiwibWFjIjoiZDRhOWU4MDAxMTVmZjlmNGNlOTM3YmQ0YWNmMTRkNDQxZjIzOWY4NmU4MmM4YWQ1NWVjNzU1YmI3NzEzMTU3MSJ9','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (231,'4-715-384','4715384','Sandra','Yerixa','Madrid','Gomez','1985-11-06',0,1,'63893741','7300085','','sanyexa29@hotmail.com','','Bugaba',62,2,'sanyexa29@hotmail.com','',1,0,7,5,'eyJpdiI6Ilc1Q3l0Q2xlVDMwSENPTGMrZDZWSjVaTlJ3azl5YnhONmRKUEdPQkFraFk9IiwidmFsdWUiOiJQMVwvcldKdGZBWWplak5ja2UyT3NzbjNHeERLWTVVb2RiNHhRQnl1a0U1QT0iLCJtYWMiOiIxOGZhZmIyNTdmNWU0YThkNGZiZGFlNmYxMzE3OTNkNmFjN2FhZDUwYjE0NzY0ZjAxYTU3MWVkZmMwODIyNjBmIn0=','2014-10-11 23:11:41','2014-10-11 23:11:41');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (232,'8-756-680','8-756-680','Laritzel','Lizneth','Nieto','Camargo','',0,0,'6724-2543','','','larynieto@gmail.com','','El Higo de Cochea',0,0,'Laritzel Nieto','',0,0,10,5,'eyJpdiI6InNTTktkcVZvN1NwYThaaDBEOTNhUDJjMVdOSGd3NlR2ZEdFYjBpRGd2eVE9IiwidmFsdWUiOiJwaTd2WnNoa09BR1Q2Qjd1czZCUVB5M2djVmZSMzhwblNZQ3dqTkRCT0h3PSIsIm1hYyI6IjFlNTI2NDc1ZjMxMGI2NTdkNDg4NWFjZDQ1ZTk0NmZlMWUzMmRkOGMyZTQ3OTdlZTI5YTViMDk2NmVlMGJlNzkifQ==','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (233,'4-732-1855','4-732-1855','Jackeline','Ruth','Samudio','Rivera','2014-01-08',0,3,'66611875','775-8997','','Jackelinetuth@gmail.com','','DAVID',62,2,'JACKELINETUTH@GMAIL.COM','',1,0,10,7,'eyJpdiI6IjhFaGxPWVpORGJ2V0lhMjZOK1dRd0IzRE10SlU3WmlnaEV3aDUxWk9leEE9IiwidmFsdWUiOiJ4cmV4Z3hmVWN5NGlnU0hldWZqWlRWXC9MeDZqRUVOTHVkZ25SM2dwS0tMYz0iLCJtYWMiOiIyMGI3NDg4NjY5YTgyYzAyYjg4MTUyZmM1YmU5NjU2MzZjYzA3ZTg3NDJhZjBiNDRkZGIyNTRiYjQ2YTgzYmRkIn0=','2014-10-11 23:11:42','2014-10-11 23:11:42'),
 (234,'4-752-1914','','Nadia','Ibelis','Delgado','Correa','1991-10-10',0,1,'6679-1375','776-9347','','she_01princess@hotmail.co','','David ',62,2,'','',1,1,3,3,'eyJpdiI6IlltRVFmSHVpaHU4d1p6ZlwvY2oyZ2Z2T3RkcGphckFGVFwvNytFeVlMOVVrUT0iLCJ2YWx1ZSI6IkM1NURkcUd6YmwzQlU5bEJER1NBenc4dXBZNmRXclVtVTErelhjK1JzN1E9IiwibWFjIjoiYmYzODUyMjFiY2E0MjBiZmRjNDQzMGZjMWFhYTViMTQ1ZGYxNDBhZDdlNGJiYTliN2YyNTJhZTE1ZGFjNzM2MiJ9','2014-10-11 23:11:42','2014-10-11 23:11:42');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (235,'4-756-416','4-756-416','Udslery ','Suriel','Navarro ','Avila ','2014-12-05',0,5,'69559917','7755418','','lery_17@live.com','','Avenida Francisco Clarck',62,1,'','',1,0,1,3,'eyJpdiI6Im1IRnFJZHdQR1F4SlJPWVFEc2pZY0FBRnF4ZFNCNEx4cllaN3RTeFV6MW89IiwidmFsdWUiOiJxY09WemFwdDRyeEtjRGFvNVYxM3lXTVwvZjBzcVBsdklBbExXYlgxVDFEUT0iLCJtYWMiOiIxMjIzODA0Yzg1NzBlYWM1OGEwMGEzOGFhZjg3YTIyNjljMWMzZGQ0OTc4MmQyNjk4YTdhMzViZjk5NjA5NGUwIn0=','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (236,'9-736-1519','9124509','Milagros','Del Carmen','Rodriguez','Veroy','2014-12-09',0,1,'64135905','','','mil_y24@hotmail.com','','BarÃº',62,0,'','',1,0,11,3,'eyJpdiI6IlBtS0JEd3dJQlpveXJHelJ4bGxwWDc4ekJRUkM1cHAyVitXWDBiMUdyT1U9IiwidmFsdWUiOiJHaTFVUys2QVpFXC8wNkVON2FhRmlueXZaNDdraGE3Qk1cL0t2K0F0R0hDVkE9IiwibWFjIjoiMTE2YzE0YmU1ZDQ0Y2Q1NzMzMzMwNGY3ZmJjMzQwMmY5YTE2YjAyZGEzZDg5YmQzYWQ5YjE1MTI3M2EwNjk2NyJ9','2014-10-11 23:11:44','2014-10-11 23:11:44'),
 (237,'04-785-2260','04-785-2260','Iris ','Indira','Ibarra','Santos','1980-02-10',1,1,'63657358','','','iriss29ibarra@hotmail.es','','Las lomas Mata del nance',62,2,'','',1,1,2,3,'eyJpdiI6ImNzVDVcL0EwV0JXUGNPY0gwY3FaUWc1S3h4MmVrTGxYZVBqTHlyZ0NZV1FJPSIsInZhbHVlIjoiMUYxampYRG9qN3MycGVxZ0J3V2JOa05XYVhaUUJoMzdyNVNFeVFJU2Jpbz0iLCJtYWMiOiI5N2EzYTA1MDBiNGRkY2Q0NGY1YjcxMjYwZGU2MWM0ZWViNTM4MjAzZmUwMjg1NzVkNWE3YmUyNzJmNWI0OWRiIn0=','2014-10-11 23:11:44','2014-10-11 23:11:44');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (238,'4-145-609','278-2768','Nitza','Imelda','Gonzalez','Rosas','1982-07-16',0,0,'6696-6481','770-8732','','nza38@hotmail.com','','David, Doleguita',62,1,'','',1,0,1,3,'eyJpdiI6ImZBYVwvVEJMWmh5aThTXC9TUHliVTVoXC9QU0cwVW03Nkw0QzllSHpBS3VoZlE9IiwidmFsdWUiOiJnbldYS2xDMFMzYnFhTGJUZDhcL0liaEdIdVFIMEdYZURwdnBGNFl4bkZQST0iLCJtYWMiOiIzNzU0ZGY5NzAxZjkzODIyZjFhN2JkYjk2YmY0YjVjZWZhNTRlODZiOWUzMjFhNjFlNzdmYzE3NDEwYTViMzZmIn0=','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (239,'4-740-356','4-740-356','Nadia','Kathiana','Evans','Vargas','1992-10-24',0,1,'6565-6739','776-8889','','kathiana40@hotmail.com','','Las Lomas-San José',62,2,'','',1,0,7,2,'eyJpdiI6InNDSzgwT0xTMnpzSFFreEZcL21uYjk3YTFrRE82UThkNHc3SW0zQlhiQXhVPSIsInZhbHVlIjoiU0xENW1qMktlVSsrTTdjSkM4aG1oT0JKVDRXemFUUFdzdkQ5YStCVTZtND0iLCJtYWMiOiIyMWRiY2VjMTQ1YzZkZDBkY2QwYmEzZWQ2Y2EwNWE2YzdhMGM4MTkzMWNkZjY0OTU3ZTUyY2UxY2M1ZDg3OWUxIn0=','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (240,'4-757-561','4-757-561','Orissa','Lymor','Wald','Espino','1989-05-24',0,1,'62197235','','','orissawald@hotmaol.com','','David, Nuevo Vedado',62,2,'Orissa Wald Espino','',1,0,3,3,'eyJpdiI6IklZdUtYcjFza1FxYk52d0p2a1B3SU9wYk15ZWpUVVBsb294VTlEWURCQzQ9IiwidmFsdWUiOiJnajVuSHVSbjBrbWtCRHVXV0NWUTlUZDNUUVoyUFdpVXl3WTg5aURFY2VvPSIsIm1hYyI6IjM3ZThlYWQwODU5NjI1MDZkZmI5OTIyNTk4NDkyMzA3OWQwODEyZjc5MTA4NGY2YTZhZTNhYTk2ODA0ZDJhNTIifQ==','2014-10-11 23:11:46','2014-10-11 23:11:46');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (241,'4-727-1937','4-727-1937','Urania','Urania','Simone','','1991-10-11',0,3,'6493-6112','','','ury2782@hotmail.com','','Recidencial Dorado Los abanicos david',62,2,'','',1,0,5,2,'eyJpdiI6IkswMjE3aEJjWWtwbTk0MnhGeDFHWHBOelBqU0JnVFhnNkJOcHhoUTdIa289IiwidmFsdWUiOiJ1WXlJem54QUZGaDJoV2RXbDk1bDE3b1RtYm01UVhxeFowS3FJMlFqVjFZPSIsIm1hYyI6IjA2NGJiMTM4ODkwNmViZDM4NWJmYzBjMDdmYTRmNjBjMmZhNDdlZTI4MjUwOTVjZTc2YzFhZDg2YWYyZTBlYWQifQ==','2014-10-11 23:12:29','2014-10-11 23:12:29'),
 (242,'4-728-2367','4-728-2367','Hanna','Milagros','Ayala','Coba','2014-09-13',0,1,'6245-8138','0000','000','hannaayala30@hotmail.com','','LA CONCEPCION BUGABA',62,1,'hannaayala@hotmail.com','',1,0,11,2,'eyJpdiI6IjdvUkFXZnZaXC80T1RpeXVxYlNHSmFPd09Wa05SRm81UkRjY3Q4YUtUZlBFPSIsInZhbHVlIjoiNW9ydDZ6QXkwNlwveXZjd2F3Q2lOUnhxTll4Q2NMZEtDQ2JHdFR5Um0yMTA9IiwibWFjIjoiOGEwOTAyYjExZDMwOWRlMDFiMDE2Nzk4NWFlMDc4ZTI5YmZlYWI0YmZlNmU4YmFkYTkxOWQzMjZlMWEyYjMzOSJ9','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (243,'8-810-457','8810457','Jennifer','Mabel','Russo','Valdes','2014-01-26',0,1,'67940173','7276612','','jenniru21@hotmail.com','','David, San Pablo',62,2,'Jennife Russo','',1,0,11,2,'eyJpdiI6IitMN0U5S05QZTV0NWR5U25qUU01dXFJZ28xdnFwK2J2OUpGb1dTRkxSNVE9IiwidmFsdWUiOiIwQUo3Ynh3TjJMd1RIWEVpTWlhcHJZVUFNZms0dmNhaUFuUG4rWmFuellnPSIsIm1hYyI6ImVlYzIyNzc1YzI5NWI1NTcxNGI1ZmNmMDcyMDljZDI2ZjczNTg2NWU1ZTg0NGQ5MWVjMzFhOWYwZGRlMDNlMjgifQ==','2014-10-11 23:12:30','2014-10-11 23:12:30');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (244,'PE-12-2119','PE-12-2119','Myriam','Lisseth','Chong','Ibarra','2014-08-25',0,1,'6843-5200','770-6594','','chong1431@hotmail.com','','Bugaba, Barriada 20 de Enero',62,0,'','',1,0,3,3,'eyJpdiI6Imptc2p6b2VZTzRlRFRseGJqc1AreUNxOFA0T0lGTXpsZDV6SGN6SGdtWnM9IiwidmFsdWUiOiJqeWJJT2o3OVRLRU5zejNrcWU2eHdUT0RaYVZEQzNXWjFpZUg5QkQrNDl3PSIsIm1hYyI6ImY2ZWE4MTUxMTUwZjEwM2UzMDFjODMyYWIwNTdjNjAwNjIwNzExMDA2MGZjMGRmMzRkZTVhMjkyNzUzM2Q1NWIifQ==','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (245,'8-853-1062','8-853-1062','Katherine','Isabel ','Nuñez','Sanjur','2014-08-31',1,1,'8-853-1062','6884-0406','6884-0406','katy28n@hotmail.com','','david chiriqui riviera ',20,0,'katherine isabel nunez sa','',1,1,8,3,'eyJpdiI6IlhGbVwvdmsyT1gxanFSYXFaTnBhT0xrTTZyZEpERStnekRzMVZSTlZyXC8xZz0iLCJ2YWx1ZSI6IjdoZGhTTzhhV1V5b2xRWFVLMXc2SStJcUJRa1p5MlV2YkZnYVwvVUZ5TVpZPSIsIm1hYyI6Ijg1MjU3NDlkMWZkZWJkZmFmNzlmZTQzOTQ0ZWExOTJiMzdjNzZkMzZmNjFiZGEyZDI1NzUzYzg1OGMwNGQwNzIifQ==','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (246,'67022034','67022034','Giselle','','Bultron','Mendoza','1979-03-08',1,1,'6117-2414','','','PANUSA2014@GMAIL.COM','','DAVID, CHIRIQUI',20,0,'','',1,1,8,3,'eyJpdiI6IkdNZXZnaWV5cDRncktHTThJTXVGb3FuWDhDdU9hVmVtYTFackRwbWxDSWc9IiwidmFsdWUiOiJ5cFBcLzJjVG9EbWZHQVcrdUYrcUdOXC91VVhic3l5V1BkeDRiektwODdFSTg9IiwibWFjIjoiNjFjYzExMzkyNDg5YzYwOGZhYzg4ODBjNTZjYWUyZmE1YTAzMzA4MDRmNzJjMzRlMzcyODU0NzUzODNiNWI1MyJ9','2014-10-11 23:12:32','2014-10-11 23:12:32');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (247,'4-758-1747','4-758-1747','Ligia','Elena','Guerrerro','Castillo','1986-04-12',0,3,'68810184','772-9207','','','','CORREGIMIENTO DE CHIRIQUI ',62,2,'','',1,1,3,7,'eyJpdiI6InloSmFuZGw1Sm5CT2Z5ckhnWkZpVjFDbStpYlpjUEg2QlFvWmVBT0Zxd289IiwidmFsdWUiOiJCeUNPbUMrU0Jmb0luK2p1bDI5NXpPXC9kdFF2OVZsOHBxYnFZTDBxK1Q2VT0iLCJtYWMiOiJiZGNhMGZlMmFjMTc5MGYxOTIxOTljY2Q5MGNlMDIzYTQxOWMyNWZlZGZjNDBhODM0MDc3MjhjMzcyODk0MGNiIn0=','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (248,'4-7306-263','4-730-263','Alexis','','Ríos','Rovira','2014-07-24',0,1,'6678-1100','','','alegraj507@gmail.com','','Brisas del Golf Arraijan',62,4,'','',1,0,10,3,'eyJpdiI6InVuSTZxa29Eb2FqZ2FzMWU4eFhlNTRObE82blE0Q2ZBOU91UHNFcE9LOWM9IiwidmFsdWUiOiJYZTYwaDZsMWNFRjNSYjZCQ0dERXE4bWdSdXkyVFFKZDhtOXFrakpXZ24wPSIsIm1hYyI6ImFjOTZjNDA5MmI5YzYzYjIwNGMxNjY3YzU1N2IzNDQwMmFhYzA2ZTI4ZGUyODEwMmY3ZDJmODA0MWYwZGJiNGUifQ==','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (249,'4-733-2275','4-733-2275','Yasselyne','Yalitza','Castillo','Espinoza','1990-08-24',0,3,'6235-8827','','','ylitzaespinoza@hotmail.co','','Bda. San Jose',62,4,'','',1,0,1,3,'eyJpdiI6ImYzTE9IdVlSbHY2OEVrYmtENTl1b0czUFQ1VWVraDMyTlNPeGs3dGVvR1E9IiwidmFsdWUiOiJOd0tiRTRqTVRzdjg1a2MxdlVVVHBqdkpMYXFXc09RME84bVZVRnAxZnJNPSIsIm1hYyI6ImQ3Y2ExYmIyN2M4NDEyMjg2YWYzMTE5ZTNmZGMyYTExZjAxM2RjNzU3ZDJlYTkwMTQxNTAyNjM3YjljYzdlOTkifQ==','2014-10-11 23:12:34','2014-10-11 23:12:34');
INSERT INTO `colaboradores` (`id`,`cedula`,`seguro_social`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`fecha_nacimiento`,`femenino`,`id_tipo_sangre`,`celular`,`telefono_residencia`,`telefono_oficina`,`email`,`lugar_residencia`,`direccion`,`id_nacionalidad`,`id_estado_civil`,`facebook`,`twitter`,`presion`,`licencia`,`id_area_aplicacion`,`id_estudio`,`pass_encriptado`,`updated_at`,`created_at`) VALUES 
 (250,'4-735-2426','47352426','Ana','Lorena','Metzner','Gonzalez','2014-02-16',0,1,'62931852','7759886','','ana.metzner40@gmail.com','','Doleguita ',62,2,'ana metzner ','',1,1,8,3,'eyJpdiI6IlZacmpuNFVjT0RhVTdEZ0lkUktPbVwvWG1Ld3d3MWJXSEJUUVhyVUNNenk0PSIsInZhbHVlIjoiZVlDOVljWnExWGJHXC9rMTBYRmg0VnZsMkdlZHlkSCs5WUl3YzNmNGV3REE9IiwibWFjIjoiY2MzY2U5Y2JkZjE0ZGNiZWQxMzEzZTEzMDdlOWU4ZDRhMDQ4NDEyMWE3YjQyOWNhYjdkNDk1NDE3Mjg2ZTY0NSJ9','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (251,'4-736-2246','4-736-2246','Karen','Daneth','Morales','Saldaña','1988-09-30',0,2,'6671-8537','','','daneth-5@hotmail.com','','Los Valles de Algarrobos, Dolega',62,0,'','',1,0,3,2,'eyJpdiI6InBHQzlJa1dLbjFraW9tR1JzOTBDV1RuXC9sdHRVeWpwWjc4MXd0UWRvNnpFPSIsInZhbHVlIjoiczdjN3J5NmFEVzN6aUcrdldwanJFckIxc0I5b25yUkRJb2x3RlRqQ2k3az0iLCJtYWMiOiJiNzM3NjBmOWZhY2E1NDRhMWQ3NDU4OGU0NmNlZjk2MDQyMDk4YzM4NTYxM2E2Njk5Y2E2MDJhMTIzNDdlNDkyIn0=','2014-10-11 23:12:35','2014-10-11 23:12:35');
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`especialidades_medicas`
--

DROP TABLE IF EXISTS `especialidades_medicas`;
CREATE TABLE `especialidades_medicas` (
  `id_especialidades_medicas` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL DEFAULT 'POR DEFINIR',
  PRIMARY KEY (`id_especialidades_medicas`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospitalch`.`especialidades_medicas`
--

/*!40000 ALTER TABLE `especialidades_medicas` DISABLE KEYS */;
INSERT INTO `especialidades_medicas` (`id_especialidades_medicas`,`descripcion`) VALUES 
 (1,'ALERGÍA E INMUNOLOGÍA'),
 (2,'ANATOMIA PATOLOGICA'),
 (3,'ANESTESIOLOGÍA'),
 (4,'ANGIOLOGÍA GENERAL Y HEMODINAMIA'),
 (5,'CARDIOLOGÍA'),
 (6,'CARDIOLOGO INFANTIL'),
 (7,'CIRUGÍA CARDIOVASCULAR'),
 (8,'CIRUGÍA DE CABEZA Y CUELLO'),
 (9,'CIRUGÍA DE TORAX/CIRUGÍA TORACICA'),
 (10,'CIRUGÍA GENERAL'),
 (11,'CIRUGÍA INFANTIL/CIRUGÍA PEDIATRICA'),
 (12,'CIRUGÍA PLÁSTICA Y REPARADORA'),
 (13,'CIRUGÍA VASCULAR PERIFERICA'),
 (14,'COLOPROCTOLOGÍA'),
 (15,'DERMATOLOGÍA'),
 (16,'DIAGNÓSTICO POR IMÁGENES'),
 (17,'ENDOCRINOLOGÍA'),
 (18,'ENDOCRINOLOGO INFANTIL'),
 (19,'FARMACOLOGÍA CLINICA'),
 (20,'FISIATRIA/MEDICINA FÍSICA Y REHABILITACIÓN'),
 (21,'GASTROENTEROLOGÍA'),
 (22,'GASTROENTEROLOGO INFANTIL'),
 (23,'GENÉTICA MÉDICA'),
 (24,'GERIATRÍA'),
 (25,'GINECOLOGÍA'),
 (26,'HEMATOLOGÍA'),
 (27,'HEMATOLOGO INFANTIL'),
 (28,'HEMOTERAPIA E INMUNOHEMATOLOGÍA'),
 (29,'INFECTOLOGÍA'),
 (30,'INFECTOLOGO INFANTIL');
INSERT INTO `especialidades_medicas` (`id_especialidades_medicas`,`descripcion`) VALUES 
 (31,'MEDICINA DEL DEPORTE'),
 (32,'MEDICINA DEL TRABAJO'),
 (33,'MEDICINA GENERAL/MEDICINA DE FAMILIA'),
 (34,'MEDICINA LEGAL'),
 (35,'MEDICINA NUCLEAR'),
 (36,'NEFROLOGÍA'),
 (37,'NEFROLOGO INFANTIL'),
 (38,'NEONATOLOGÍA'),
 (39,'NEUMONOLOGÍA'),
 (40,'NEUMONOLOGO INFANTIL'),
 (41,'NEUROCIRUGÍA'),
 (42,'NEUROLOGÍA'),
 (43,'NEUROLOGO INFANTIL'),
 (44,'NUTRICION'),
 (45,'OBSTETRICIA'),
 (46,'OFTALMOLOGÍA'),
 (47,'ONCOLOGÍA'),
 (48,'ONCOLOGO INFANTIL'),
 (49,'ORTOPEDIA Y TRAUMATOLOGÍA'),
 (50,'OTORRINOLARINGOLOGÍA'),
 (51,'PEDIATRIA'),
 (52,'PSIQUIATRIA'),
 (53,'PSIQUIATRIA INFANTO JUVENIL'),
 (54,'RADIOTERAPIA O TERAPIA RADIANTE'),
 (55,'REUMATOLOGÍA'),
 (56,'REUMATOLOGO INFANTIL'),
 (57,'TERAPIA INTENSIVA'),
 (58,'TERAPISTA INTENSIVO INFANTIL'),
 (59,'TOCOGINECOLOGÍA '),
 (60,'TOXICOLOGÍA'),
 (61,'UROLOGÍA'),
 (62,'PATOLOGIA'),
 (63,'MEDICINA INTERNA Y CRITICA'),
 (64,'PSICOLOGÍA'),
 (65,'ODONTOLOGÍA'),
 (66,'CIRUGÍA ESTÉTICA');
INSERT INTO `especialidades_medicas` (`id_especialidades_medicas`,`descripcion`) VALUES 
 (67,'ESTIMULACIÓN TEMPRANA'),
 (68,'MEDICINA INTERNA'),
 (69,'NEUROFISIOLOGÍA'),
 (70,'ODONTOLOGIA PEDIATRA'),
 (71,'FONOAUDIOLOGÍA'),
 (72,'UROGINECOLOGÍA'),
 (73,'CARDIOLOGIA-INTERVENCIONISTA'),
 (74,'ALERGÓLOGÍA-INFANTIL'),
 (75,'CIRUGÍA GENERAL Y LAPAROSCOPIA'),
 (76,'CIRUGÍA MAXILOFACIAL- ODONTOLOGIA'),
 (77,'NEUMOLOGÍA -MEDICINA INTERNA'),
 (78,'PEDIATRA-NEONATOLOGO'),
 (79,'FISIOTERAPIA');
/*!40000 ALTER TABLE `especialidades_medicas` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
 (6,'DOCTORADO'),
 (7,'OTROS');
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
) ENGINE=InnoDB AUTO_INCREMENT=753 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`estudios_colaborador`
--

/*!40000 ALTER TABLE `estudios_colaborador` DISABLE KEYS */;
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (1,1,'Rochester                                         ','2014-10-11 23:04:21','2014-10-11 23:04:21'),
 (2,1,'LATINA   y UDDI                                   ','2014-10-11 23:04:21','2014-10-11 23:04:21'),
 (3,1,'UTP                                               ','2014-10-11 23:04:21','2014-10-11 23:04:21'),
 (4,2,'Bachiller en Letras Col. Daniel Octavio Crespo    ','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (5,2,'    Técnico                                       ','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (6,2,'Licenciatura \r\n\r\nSecretariado Ejecutivo Administra','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (7,3,'Licenciatura en Francés 2 año Universidad         ','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (8,3,'Licenciatura en Fisioterapia 4 año Universidad Lat','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (9,3,'Bachiller en Ciencias con Énfasis en Salud y Sanea','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (10,4,'      escuela primaria de altamira      ','2014-10-11 23:04:23','2014-10-11 23:04:23');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (11,4,'          colegio secundario de renacimiento bachi','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (12,4,'          licenciatura en enfermeria universidad s','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (13,5,'      Licenciatura en Administracion de Empresa. I','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (14,5,'      Bachiller en Ciencias. Colegio Felix Olivare','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (15,5,'         Escuela Primaria de Belen en La Concepcio','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (16,6,' Bosco\r\n1989-1994 Escuela Particular Osiris\r\nEduca','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (17,6,'1995 Primer Ciclo\r\nInstituto Técnico Don Bosco    ','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (18,6,'2006 Bachiller Industrial con énfasis en informáti','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (19,7,'      Sexto grado Escuela San vicente      ','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (20,7,'       Bachiller en Ciencia               \r\n      ','2014-10-11 23:04:24','2014-10-11 23:04:24');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (21,7,'       Licenciatura en Informatica Educativa\r\n    ','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (22,8,'            ','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (23,8,'                    ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (24,8,'                    ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (25,9,'     * Bachiller en comercio\r\nCol. Francisco Moraz','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (26,9,'         * Licenciatura en Mercadeo y Publicidad\r\n','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (27,9,'                    ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (28,10,'   Bachiller en ciencias y letras con enfasís en i','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (29,10,' curso de ingles                                  ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (30,10,'                                                  ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (31,11,'      Estudiante de Contabilidad y Auditoria \r\n(38','2014-10-11 23:04:26','2014-10-11 23:04:26');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (32,11,'      Bachiller en Gestión Empresarial,  Colegio F','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (33,11,'       Estudios básico general, escuela Josefa M. ','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (34,12,'       licencitura en administracion de empresas  ','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (35,12,'              licenciatura en informatica en oteim','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (36,12,'                              ','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (37,13,'    Primer ciclo,año 1994\r\ninstitucion,Victoriano ','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (38,13,'  Bachiller en letras,año 2007\r\ninstitucion,Instit','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (39,13,' Tecnico Superior en Enfermeria,año,2010\r\ninstituc','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (40,14,'      2012 Universidad Autónoma de Chiriquí\r\n·  Li','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (41,14,'         2009 Colegio Beatriz Miranda de Cabal\r\n· ','2014-10-11 23:04:27','2014-10-11 23:04:27');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (42,14,'          2006 Colegio Benigno Tomás Argote\r\n·  Ce','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (43,15,'    Tecnico en Urgencias Medicas. Columbus Univers','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (44,15,'  Bachiller en ciencias con enfasis en informatica','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (45,15,'  Certificado de Sexto Grado. Escuela El Banco. 19','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (46,16,'      TECNICO URGENCIAS MEDICAS Y DESASTRES      ','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (47,16,'      LIC.URGENCIAS MEDICAS Y DESASTRES          ','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (48,16,'                    ','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (49,17,'   escuela leopoldina field 1976-1982             ','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (50,17,'   colegio beatriz miranda de cabal 1983-1989     ','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (51,17,'                              ','2014-10-11 23:04:29','2014-10-11 23:04:29');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (52,18,'      licenciatura en psicologia universidad auton','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (53,18,'       bachiller en ciencias   colegio instituto c','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (54,18,'     educacion primaria escuela cabecera de cohea.','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (55,19,'    Técnico. en Urgencias Medicas. Columbus Univer','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (56,19,'  Bachiller en ciencias con énfasis, en informátic','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (57,19,'   Certificado de Sexto Año.  Escuela el Banco de ','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (58,20,'     Actualmente Lic. Ingles con Enfasis en TRducc','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (59,20,'          Bachiller en ciencias                   ','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (60,20,'          Taller de comunicación a base se señas  ','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (61,21,'COLEGIO FÉLIX OLIVARES CONTRERAS\r\nBACHILLER EN CIE','2014-10-11 23:04:31','2014-10-11 23:04:31');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (62,21,'                    ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (63,21,'                    ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (64,22,'  Licenciatuta en Publicidad          ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (65,22,'                    ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (66,22,'                    ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (67,23,'Escuela Primaria de Gualaca \r\nEducación Primaria  ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (68,23,'Colegio Francisco Morazán\r\nBachiller en Comercio c','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (69,23,'Universidad Autonoma de Chiriqui\r\nActualmente ulti','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (70,24,'      Tecnico en enfermeria      ','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (71,24,'                    ','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (72,24,'                    ','2014-10-11 23:04:32','2014-10-11 23:04:32');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (73,25,'      bachiller en ciencias                       ','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (74,25,'       licenciatura en en enfermeria universidad s','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (75,25,'                                                  ','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (76,26,'Escuela Primaria Los Angeles Certificadode VI Grad','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (77,26,'Escuela Secundaria de Puerto Armuelles Certificado','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (78,26,'Instituto Tecnico Superior (INTECSU)Certificado de','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (79,27,'      PRIMARIA                        ','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (80,27,'    SECUNDARIA                                    ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (81,27,'                                                  ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (82,28,'Universidad Autónoma de Chiriquí\r\nLicenciatura en ','2014-10-11 23:04:34','2014-10-11 23:04:34');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (83,28,' Bachiller en Comercio con especialización en Cont','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (84,28,'                    ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (85,29,'Bachiller en ciencias                  ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (86,29,'Udelas, 3er ano Gerontologia Social               ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (87,29,'UNACHI, 1ER ANO. Psicologia                       ','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (88,30,' escuela loma colorada secto grado           ','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (89,30,'  instituto laboral nocturno de las lomas ilan sec','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (90,30,'   instituto superior nueva vision curso el tercer','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (91,31,' Universidad Autonoma de Chiriqui\r\nLicenciatura en','2014-10-11 23:06:54','2014-10-11 23:06:54'),
 (92,31,'    Universidad Autonoma de Chiriqui\r\nProfesorado ','2014-10-11 23:06:54','2014-10-11 23:06:54');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (93,31,'                    ','2014-10-11 23:06:54','2014-10-11 23:06:54'),
 (94,32,'      ','2014-10-11 23:06:54','2014-10-11 23:06:54'),
 (95,32,'          ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (96,32,'          ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (97,33,'Licenciada en contabilidad por sistemas      ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (98,33,'Un año de posgrado en alta gerencia          ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (99,33,'Tecnica de Registros Medicos y Estadisticas de Sal','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (100,34,'      ESUDIOS PRIMARIOS\r\nCERTIFICADO DE SEXTO GRAD','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (101,34,'          ESTUDIOS SECUNDARIOS\r\nDIPLOMA DE BACHILL','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (102,34,'          ESTUDIOS UNIVERSITARIOS\r\nTECNICO EN INFO','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (103,35,'      UNIVERSIDAD AUTÓNOMA DE CHIRIQUI, TERCER ANO','2014-10-11 23:06:56','2014-10-11 23:06:56');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (104,35,'         INSTITUTO GUADALUPANO DE BOQUETE \r\nBACHIL','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (105,35,'          ','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (106,36,'Bachiller en Comercio con enfasis en COntabilidad ','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (107,36,' Licenciatura en Contabilidad, con enfasis en Audi','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (108,36,' Postgrado en Docencia Superior, realizado en la U','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (109,37,'  Beatriz Miranda de Cabal. Sexto año    ','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (110,37,' Centro Tecnologico. Tecnica en Enfermeria        ','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (111,37,'          ','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (112,38,'Licenciatura en Biologia, UNACHI, \"No concluida\"','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (113,38,'Tecnico Asistente de Laboratorio Clínico Sanitario','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (114,38,'          ','2014-10-11 23:06:58','2014-10-11 23:06:58');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (115,39,'   Profesorado en educaciòn primaria\r\n   Tecnico e','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (116,39,'    Profesorado en educacion preescolar      ','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (117,39,'   Licenciatura en educaciòn       ','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (118,40,'      tercer año completo de la licenciatura en ur','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (119,40,'          ','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (120,40,'          ','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (121,41,' Bachiller en Comercio con énfasis en Finanzas y B','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (122,41,' Profesorado en Educación Primaria.  2010       ','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (123,41,' Licenciatura en Educación con énfasis en Primaria','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (124,42,'      ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (125,42,'          ','2014-10-11 23:07:00','2014-10-11 23:07:00');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (126,42,'          ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (127,43,'      ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (128,43,'          ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (129,43,'          ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (130,44,'      Certificado de Escuela Primaria','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (131,44,'          Certificado de Bachiller en Comercio ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (132,44,'          Actualmente Cursando 3año de Lic. Admini','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (133,45,'      Primaria Completa','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (134,45,'   Secundaria Completa       \r\n','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (135,45,'          ','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (136,46,'     Primaria Completa ','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (137,46,'     Secundaria 5to  año     ','2014-10-11 23:07:01','2014-10-11 23:07:01');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (138,46,'          ','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (139,47,'Bachiller en Comercio, con Enfasis en Contabilidad','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (140,47,'Curso de Atencion al cliente\r\nMiniaterio de Trabaj','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (141,47,'          ','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (142,48,'     \r\nEscuela:justo abel castillo  \r\n','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (143,48,'Sexto;instito laboraol adventista panañena      ','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (144,48,' tecnico en enfermeria :intituto superior nueva ','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (145,49,'      LICENCIATURA EN PSICOLOGIA UNIVERSIDAD AUTON','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (146,49,'       BACHILLER EN CIENCIAS INSTITUTO CHIRIQUI   ','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (147,49,'          ','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (148,50,'      Banca y finanzas  -  actual','2014-10-11 23:07:03','2014-10-11 23:07:03');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (149,50,'Tec. en informatica - Incompleto          ','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (150,50,'          ','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (151,51,'Escuela de Doleguita,estudios primarios,año 1996 ','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (152,51,'Colegio Félix Olivares Contreras,bachiller en Cien','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (153,51,'Centro Tecnológico Superior,Técnico Superior en En','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (154,52,'escuela primaria La Primavera de primero a sexto a','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (155,52,'escuela secundaria Pablo Emilio Corse septimo grad','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (156,52,'                    ','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (157,53,'      Licenciatura en Administracion de Empresas','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (158,53,'       Profesorado en Media Diversificada   ','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (159,53,'          ','2014-10-11 23:07:05','2014-10-11 23:07:05');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (160,54,'      ','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (161,54,'          ','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (162,54,'          ','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (163,55,'Profesorado en Educación Primaria. UNACHI. 2 AÑOS ','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (164,55,'Técnico en Programación y Estadística. UNACHI.    ','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (165,55,'Licenciatura en Informática Empresarial. UNACHI.  ','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (166,56,'      universidad autonoma de chiriqui primer seme','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (167,56,'         Colegio felix olivares contreras bachille','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (168,56,'          escuela antonio jose de sucre primaria c','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (169,57,'      universidad autonoma de chiriqui primer seme','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (170,57,'         Colegio felix olivares contreras bachille','2014-10-11 23:07:07','2014-10-11 23:07:07');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (171,57,'          escuela antonio jose de sucre primaria c','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (172,58,'Universidad Autónoma de Chiriquí                \r\n','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (173,58,'Colegio Francisco Morazán\r\n“Bachiller en Comercio ','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (174,58,'          ','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (175,59,'  •	Bachiller en Comercio con énfasis en  Contabil','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (176,59,' •	Título obtenido: Lic. Banca y finanzas. \r\nEntid','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (177,59,' •	Seminario “Etiqueta y Protocolo en el servicio ','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (178,60,'2013. Universidad Latina de Panamá- Licenciatura e','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (179,60,'2012. Universidad Latina de Panamá- Facultad de De','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (180,60,'2009. Bachiller en Ciencias con Énfasis en Informá','2014-10-11 23:07:08','2014-10-11 23:07:08');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (181,61,'2013. Universidad Latina de Panamá- Licenciatura e','2014-10-11 23:07:33','2014-10-11 23:07:33'),
 (182,61,'2012. Universidad Latina de Panamá- Facultad de De','2014-10-11 23:07:33','2014-10-11 23:07:33'),
 (183,61,'2009. Bachiller en Ciencias con Énfasis en Informá','2014-10-11 23:07:33','2014-10-11 23:07:33'),
 (184,62,'     2008 Universidad Latina                      ','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (185,62,'      1998-2003  Instituto David                  ','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (186,62,'        Cursos realizados:\r\nCongreso latino de com','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (187,63,'     ESPECIALIZACION EN DOCENCIA SUPERIOR\r\nCERTIFI','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (188,63,'     lIC. EN ECONOMIA \r\nUNACHI     ','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (189,63,'        BACHILLER EN COMERCIO\r\nINSTITUTO PROFESION','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (190,64,'   Bachiller en Ciencia   ','2014-10-11 23:07:35','2014-10-11 23:07:35');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (191,64,'   Tecnico en enfermeria y cursos recibidos       ','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (192,64,'          ','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (193,65,'promotora de salud','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (194,65,'          primeros auxilios','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (195,65,'          apoyo en lactancia materna infantil real','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (196,66,'    ESPECIALIDAD EN DOCENCIA SUPERIOR\r\n    CERTIFI','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (197,66,'    LIC. EN ECONOMIA CON ENFASIS EMPRESARIAL\r\n    ','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (198,66,'    BACHILLER EN COMERCIO \r\n    INSTITUTO PROFESIO','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (199,67,'      Licenciatura en ciencias de la Enfermeria/ U','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (200,67,'          ','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (201,67,'          ','2014-10-11 23:07:36','2014-10-11 23:07:36');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (202,68,'      ISAE UNIVERSIDAD','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (203,68,'          ','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (204,68,'          ','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (205,69,'TECNICO SUPERIOR EN ENFERMERIA','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (206,69,'ASISTENTE DE CLINICA    ','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (207,69,'BACHILLER EN CIENCIAS','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (208,70,'      Escuela : justo abel castillo (certificado d','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (209,70,'  Sexto ano : instituto laboral adventista panameñ','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (210,70,'   Técnicos en enfermería : instituto. Superior nu','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (211,71,'      bachiller en ciencias. Colegio Rodolfo Chiar','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (212,71,'      estudio actualmente en la universidad tecnol','2014-10-11 23:07:38','2014-10-11 23:07:38');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (213,71,'          ','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (214,72,'Licenciatura en Administracion con enfasis en gest','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (215,72,'          ','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (216,72,'          ','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (217,73,'      colegio Secundario Benigno Tomas Argote\r\n   ','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (218,73,'      ','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (219,73,'          ','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (220,74,'\r\nLicenciatura en Administración de Empresas Ini','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (221,74,'Lic. Administración de Empresas (sin concluir)\r\n','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (222,74,'Instituto David                    ','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (223,75,'      Licenciatura en Nutrición y Dietética\r\nUnive','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (224,75,'          Diplomado de metodología de la Investiga','2014-10-11 23:07:40','2014-10-11 23:07:40');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (225,75,'          Cursando Maestria en Docencia Superior U','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (226,76,'MASTER EN ESTIMULACION TEMPRANA. UNIVERSIDAD SANTA','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (227,76,'          POSTGRADO EN VALORACION DEL COMPORTAMIEN','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (228,76,'        POSTGRADO  DETECCION Y REHABILIDACION DE A','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (229,77,'      Culminación de estudios en columbus universi','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (230,77,'    Bachillerato en Comercio con énfasis en contab','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (231,77,'          Primer ciclo colegio instituto david','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (232,78,'      Bachiller en Letras con énfasis en Idiomas\r\n','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (233,78,'      Técnico en Francés','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (234,78,'      Último año. Licenciatura en Francés','2014-10-11 23:07:42','2014-10-11 23:07:42');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (235,79,'      Técnico en emergencias médicas','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (236,79,'          Bachiller en ciencias','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (237,79,'          ','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (238,80,'    ESCUELA VICTORIANO LORENZO SEXTO GRADO  ','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (239,80,'       COLEGIO FRANSISCO MORAZAN-BACHILLER EN COME','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (240,80,'      UNACHI-LICENCIATURA SECRETARIADO ADMINISTRAT','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (241,81,'Licenciatura en Administración de Empresas con Dir','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (242,81,'Bachiller en Comercio con Especialización en Merca','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (243,81,'Estudios Primarios en La Escuela Adventista Biling','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (244,82,'      Escuela Republica de Francia, 6to grado 2003','2014-10-11 23:07:44','2014-10-11 23:07:44');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (245,82,'Colegio Felix Olivares Contreras, Bachiller en cie','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (246,82,'Unversidad Latina de Panamá, Sede David.\r\nLicencia','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (247,83,'TECNICO EN REGISTROS MEDICOS Y ESTADISTICAS DE SAL','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (248,83,'          ','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (249,83,'          ','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (250,84,'UNIVERSIDAD TECNOLOGICA DE PANAMA\r\nTECNICO EN INFO','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (251,84,'ESCUELA SECUNDARIA DE ASERRIO\r\nBACHILLER EN COMERC','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (252,84,'          ','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (253,85,'   Bachiller en Comercio con enfasis en Banca y Fi','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (254,85,'   Licenciatura en Economia con enfasis en Teoria ','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (255,85,'          ','2014-10-11 23:07:45','2014-10-11 23:07:45');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (256,86,'   PRIMER CICLO COLEGIO OFICIAL NOCTURNO LA CONCEP','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (257,86,' BACHILLER EL CIENCIAS    COLEGIO OFICIAL NOCTURNO','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (258,86,'ME GUSTARÍA TRABAJAR COMO CAJERA O RECEPCIONISTA P','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (259,87,' ESCUELA  SAN FRANCISCO DE ASIS     ','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (260,87,' COLEGIO INSTITUTO DAVID  \r\n BACHILLER EN LETRAS  ','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (261,87,'          ','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (262,88,'*2002\r\n - Escuela de Santa Cruz','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (263,88,'*2008\r\n - Bachiller en Ciencias.\r\n   Colegio Félix','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (264,88,'*2012\r\n- Técnico Asistente de Laboratorio  Clínico','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (265,89,'      Lic. Secretariado Ejecutivo Administrativo, ','2014-10-11 23:07:47','2014-10-11 23:07:47');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (266,89,'    Certificado de Bachiller en Comercio, Colegio ','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (267,89,'     Certificado de Primer Ciclo, Colegio Victoria','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (268,90,'      Estudios Universitarios en la Universidad Sa','2014-10-11 23:07:48','2014-10-11 23:07:48'),
 (269,90,'          ','2014-10-11 23:07:48','2014-10-11 23:07:48'),
 (270,90,'          ','2014-10-11 23:07:48','2014-10-11 23:07:48'),
 (271,91,'*Escuela Parroquial Pio12\r\n*Escuela Octavio Lopez ','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (272,91,'Instituto Guadalupano - Pre media\r\nLiceo Santa Mar','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (273,91,'*Universidad Latina                ','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (274,92,' Bachiller en Ciencias','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (275,92,' Tecnico Superior en Enfermeria  ','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (276,92,'          ','2014-10-11 23:08:44','2014-10-11 23:08:44');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (277,93,'* Universitaria: Curso Actualmente Vº Año de la Li','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (278,93,'* Secundaria: 2000-2005. Colegio Daniel Octavio Cr','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (279,93,'* Primarios: 1993-1999. Escuela Primaria de El Por','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (280,94,'      EDUCACION PRIMARIA','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (281,94,'         ESTUDIOS EN IPTN TECNICO EN ELECTRONICA','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (282,94,'          ','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (283,95,' Licenciatura em Inglés, En la Universidad Autónom','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (284,95,'          ','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (285,95,'          ','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (286,96,'      Bachiller en Ciencias. Colegio Félix Olivare','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (287,96,'     Asistente de Clínica. Centro Tecnológico de P','2014-10-11 23:08:45','2014-10-11 23:08:45');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (288,96,'    Estudiante de Técnico en Enfermería. Centro Te','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (289,97,' Escuela Particular Osiris Panama\r\nPrimaria','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (290,97,'Instituto Tecnico Don Bosco \r\nSecundaria','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (291,97,'Instituto Panasystem \r\nBachiller Industrial con en','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (292,98,'  \r\n  1994- 1997	Primer Ciclo  Belisario Billar Pé','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (293,98,'1998- 2000  Instituto Profesional y Técnico de Ver','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (294,98,'1997 Instituto Superior de  Panamá\r\nEstudio Superi','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (295,99,'      Actualmente estudiando Licenciatura de Conta','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (296,99,'          Bachiller en Comercio con especializació','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (297,99,'          Colegio Instituto David Educación  Pre-M','2014-10-11 23:08:47','2014-10-11 23:08:47');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (298,100,'      Tecnico en Mercadeo y publicidad','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (299,100,'       Estudiante de Lic.Mercadeo y Publicidad   ','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (300,100,'          ','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (301,101,'Técnico Superior de Enfermería\r\nTítulo obtenido en','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (302,101,'          ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (303,101,'          ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (304,102,'   ACTUALMENTE ESTOY EN ADMINISTRACION DE EMPRESA ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (305,102,'          ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (306,102,'          ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (307,103,'     Estudios primarios año 1989 Escuela llano gra','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (308,103,'   Primer ciclo, año 1994,Primer ciclo Victoriano ','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (309,103,'       Tecnico Superior En Enfermeria,año 2010,Ins','2014-10-11 23:08:49','2014-10-11 23:08:49');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (310,104,'      Bachiller en ciencias 2012 colegio Daniel Oc','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (311,104,'          ','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (312,104,'          ','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (313,105,'      Arnulfo Arias Madrid (primer ciclo de david)','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (314,105,'          Colegio Francisco Morazan\r\n          Bac','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (315,105,'          Universidad Autónoma de Chiriqui\r\n      ','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (316,106,'      universidad  autÃ³noma de Chiriqui estudiant','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (317,106,'          Colegio Francisco Morazan Bachiller en L','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (318,106,'          Colegio instituto Profesional y TÃ©cnico','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (319,107,'    Bachiller en comercio\r\nColegio secundario Beat','2014-10-11 23:08:51','2014-10-11 23:08:51');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (320,107,'   Profesorado en EducaciÃ³n Primaria U.C.A  -Lice','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (321,107,'        Primer aÃ±o AdministraciÃ³n PÃºblica U.N.A','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (322,108,'     Tecnico en Informatica \r\nOTEIMA','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (323,108,'    Tecnico en Recursos Humanos   \r\nTIB   ','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (324,108,'    Licenciatura en Informatica    \r\n   I.S.A.E. U','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (325,109,'      Licenciatura en AdministraciÃ³n de Empresas ','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (326,109,'          MaestrÃ­a en AdministraciÃ³n de Empresas','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (327,109,'          MaestrÃ­a en FormulaciÃ³n y EvaluaciÃ³n ','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (328,110,'      Secretariado Ejecutivo- Univ.Nacional de Pan','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (329,110,'          Lic. Adm. de Negocios con Gerencia en Re','2014-10-11 23:08:53','2014-10-11 23:08:53');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (330,110,'          ','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (331,111,'      TÃ©cnico en Urgencias Medicas','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (332,111,'          ','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (333,111,'          ','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (334,112,'      DIPLOMADA EN ENFERMERÃA','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (335,112,'    TÃ‰CNICO SUPERIOR EN DIETÃ‰TICA   ','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (336,112,'          TÃ‰CNICO EN CURAS AUXILIARES DE ENFERMER','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (337,113,'            ','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (338,113,'                    ','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (339,113,'                    ','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (340,114,'      ','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (341,114,'          ','2014-10-11 23:08:55','2014-10-11 23:08:55');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (342,114,'          ','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (343,115,'      reparacion en computadoras','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (344,115,'       programacion   ','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (345,115,'          ','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (346,116,'    Administracion En Cooperativa\r\nUNACHI  ','2014-10-11 23:08:56','2014-10-11 23:08:56'),
 (347,116,'       BACHILLER EN COMERCIO\r\nCOLEG.BEATRIZ M. CAV','2014-10-11 23:08:56','2014-10-11 23:08:56'),
 (348,116,'          ESCUELA PRIMARIA\r\nESCUELA DE LAS CAÃ‘AS-','2014-10-11 23:08:56','2014-10-11 23:08:56'),
 (349,117,'      colegio. i.p.t la concecion\r\nBachiller en co','2014-10-11 23:08:56','2014-10-11 23:08:56'),
 (350,117,'  tÃ©cnicas de cocina profesional. Inadeh\r\nprevenc','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (351,117,'Servicio de bares y bebidas\r\n-the panama internati','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (352,118,'      LIc. en Contabilidad            ','2014-10-11 23:08:57','2014-10-11 23:08:57');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (353,118,'                              ','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (354,118,'                              ','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (355,119,' LIC. EN RELACIONES PÃšBLICAS','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (356,119,'  ACTUALMENTE EN EL TERCER AÃ‘O DE LIC. EN DERECHO','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (357,119,'         MAESTRÃA EN DOCENCIA SUPERIOR ','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (358,120,'      licenciatura en mercadeo y publicidad con en','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (359,120,'          ','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (360,120,'          ','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (361,121,'Universidad Del Istmo \r\n     Actualmente curso el ','2014-10-11 23:09:54','2014-10-11 23:09:54'),
 (362,121,'  Colegio Dr. Arnulfo Arias Madrid\r\n Bachiller Ind','2014-10-11 23:09:54','2014-10-11 23:09:54'),
 (363,121,'   FlexSim 6.0.0\r\nUniversidad Del Istmo\r\n2012\r\n   ','2014-10-11 23:09:54','2014-10-11 23:09:54');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (364,122,'      bachiller en ciencias en el colegio secundar','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (365,122,'          tÃ©cnico en programaciÃ³n empresarial en','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (366,122,'     licenciatura en gestiÃ³n de tecnologÃ­as de l','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (367,123,'   ESC. ANTONIO JOSE DE SUCRE','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (368,123,'          INSTITUTO COMPUTACIONAL Y LABORAL DE CHI','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (369,123,'          TERCER AÃ‘O DE ECONOMIA','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (370,124,'      Tecnico en Educacion Especial en el Area de ','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (371,124,'      Tecnico en Asistencia de Famacia\r\nUniversida','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (372,124,'          ','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (373,125,'      Licenciatura en EconomÃ­a       ','2014-10-11 23:09:57','2014-10-11 23:09:57');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (374,125,'      Licenciatura en Contabilidad y Auditoria    ','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (375,125,'                    ','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (376,126,'     UNIVERSIDAD TECNOLÃ“GICA OTEIMA, LICENCIADA E','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (377,126,'          COLEGIO NUESTRA SEÃ‘ORA DE LOS ANGELES, ','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (378,126,'         COLEGIO SAN FRANCISCO DE ASIS, CERTIFICAD','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (379,127,'      Lic. en InglÃ©s','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (380,127,'          Liceo Santa MarÃ­a\r\nBachiller en Comerci','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (381,127,'          ','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (382,128,'      Licenciatura en Contabilidad','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (383,128,'          Bachiller Comercio','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (384,128,'          ','2014-10-11 23:09:58','2014-10-11 23:09:58');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (385,129,'      Post-grado y MaestrÃ­a Parcial en Administra','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (386,129,'       Licenciatura en InformÃ¡tica Empresarial.','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (387,129,'     TÃ©cnico en ProgramaciÃ³n y EstadÃ­stica Empr','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (388,130,'      Escuela de Belen','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (389,130,'          Bachiller en ciencias\r\n','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (390,130,'          Licenciatura en tecnologÃ­a ortopedica','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (391,131,'   Licenciatura en Banca y Finanzas, cursando Ãºlt','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (392,131,'   Bachiller en CIENCIAS Colegio FELIX OLIVARES C ','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (393,131,'          ','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (394,132,'      Licenciatura en EconomÃ­a','2014-10-11 23:10:01','2014-10-11 23:10:01');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (395,132,'          ','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (396,132,'          ','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (397,133,'3 aÃ±o en licenciatura de mercadeo con Ã©nfasis en','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (398,133,'3 aÃ±o en licenciatura de administraciÃ³n de empre','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (399,133,'bachiller en contabilidad con Ã©nfasis en bancas y','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (400,134,'      licenciatura de publicidad      ','2014-10-11 23:10:02','2014-10-11 23:10:02'),
 (401,134,'                    ','2014-10-11 23:10:02','2014-10-11 23:10:02'),
 (402,134,'                    ','2014-10-11 23:10:02','2014-10-11 23:10:02'),
 (403,135,'      Bachiller en Comercio con enfasis en Ingles,','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (404,135,'          Licenciatura en Gerencia Financiera y Ba','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (405,135,'          ','2014-10-11 23:10:03','2014-10-11 23:10:03');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (406,136,'      BACHILLER EN CIENCIAS  FELIX OLIVARES C. 201','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (407,136,'  II SEMESTRE OPTOMETRIA  UAA- AGUASCALIENTES MEXI','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (408,136,'   I CUATRIMESTRE LIC. EN PSICOLOGIA UNIVERSIDAD L','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (409,137,'      Bachiller en comercio con Ã©nfasis en contab','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (410,137,'          ','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (411,137,'          ','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (412,138,'      Licenciatura en Gerencia Financiera Bancaria','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (413,138,'          ','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (414,138,'          ','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (415,139,'      Actualmente Curso el Profesorado En media Di','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (416,139,'        Bachiller en Comercio  ','2014-10-11 23:10:05','2014-10-11 23:10:05');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (417,139,'          ','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (418,140,'  BACHILLER EN CIENCIAS      ','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (419,140,'LICDA. EN ADMINISTRACION CON ENFASIS EN R.H.      ','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (420,140,'          PROFESORADO EN EDUCACION MEDIA          ','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (421,141,'      ESTUDIOS PRIMARIOS REPUBLICA DE FRANCIA 1996','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (422,141,'          ESTUDIOS SECUNDARIOS COLEGIO FELIX OLIVA','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (423,141,'   ACTUALMENTE ESTUDIO EN LA UNIVERSIDAD AUTONOMA ','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (424,142,'      Estudiante de Licenciatura en Derecho ','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (425,142,'          ','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (426,142,'          ','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (427,143,'            ','2014-10-11 23:10:07','2014-10-11 23:10:07');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (428,143,'                    ','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (429,143,'                    ','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (430,144,'      Licenciada en Fisioterapia','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (431,144,'          Cursando AdministraciÃ³n de Servicios de','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (432,144,'          ','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (433,145,'      Bachiller en Comercio con Ã‰nfasis en Inform','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (434,145,'          ','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (435,145,'          ','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (436,146,'      TÃ©cnico en Registros MÃ©dicos y EstadÃ­stic','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (437,146,'          ','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (438,146,'          ','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (439,147,'      actual licenciatura en administracion public','2014-10-11 23:10:10','2014-10-11 23:10:10');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (440,147,'          tecnico superior  informatica empresaria','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (441,147,'          ','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (442,148,'tecnico superior de enfermeria','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (443,148,' asistente de clinica      ','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (444,148,'      licenciatura en trabajadora social    ','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (445,149,'      Lic. Seguridad y Salud Ocupacional      ','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (446,149,'          TÃ©cnico Seguridad y Salud Ocupacional  ','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (447,149,'          Bachillerato en Ciencias          ','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (448,150,'post-grado en contabilidad gerencial      ','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (449,150,' licenciatura en contabilidad         ','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (450,150,'          ','2014-10-11 23:10:11','2014-10-11 23:10:11');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (451,151,'      Bachiller en educaciÃ³n para el hogar y bach','2014-10-11 23:10:24','2014-10-11 23:10:24'),
 (452,151,'          Bachiller en comercio con Ã©nfasis en co','2014-10-11 23:10:24','2014-10-11 23:10:24'),
 (453,151,'                    __--------_-------------------','2014-10-11 23:10:24','2014-10-11 23:10:24'),
 (454,152,'      Actualemnte 1er aÃ±o licenciatura en contabi','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (455,152,'          ','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (456,152,'          ','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (457,153,'    diplomado de tecnicas de cocina profesional','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (458,153,'       diplomado de cocteleria','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (459,153,'          diplomado de procesamiento de pescados y','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (460,154,'      ESCUELA FELIX A. LARA , POTREILLOS - CHIRIQU','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (461,154,'          COLEGIO RODOLFO CHIARI - AGUADULCE COCLÃ','2014-10-11 23:10:26','2014-10-11 23:10:26');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (462,154,'      UNIVERSIDAD TECNOLÃ“GICA OTEIMA    ','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (463,155,'Terapeuta Respiratorio','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (464,155,'          ','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (465,155,'          ','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (466,156,'      Licenciatura en Terapia Respiratoria','2014-10-11 23:10:27','2014-10-11 23:10:27'),
 (467,156,'          ','2014-10-11 23:10:27','2014-10-11 23:10:27'),
 (468,156,'          ','2014-10-11 23:10:27','2014-10-11 23:10:27'),
 (469,157,'  Lic. en Contabilidad(sin culminar)          ','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (470,157,'          TÃ©cnico en Servicios para Aerolineas   ','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (471,157,' Bachiller en Comercio          ','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (472,158,'      Licenciada en Biologia','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (473,158,'          ','2014-10-11 23:10:28','2014-10-11 23:10:28');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (474,158,'          ','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (475,159,'      ','2014-10-11 23:10:29','2014-10-11 23:10:29'),
 (476,159,'          ','2014-10-11 23:10:29','2014-10-11 23:10:29'),
 (477,159,'          ','2014-10-11 23:10:29','2014-10-11 23:10:29'),
 (478,160,'Universidad de PanamÃ¡\r\nTÃ©cnico en Urgencias Medi','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (479,160,'          ','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (480,160,'          ','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (481,161,'      Bachiller en Comercio con especialidad en co','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (482,161,'        TÃ©cnico en ingles; Ministerio de EducaciÃ','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (483,161,'        Curso avanzado de office, MITRADEL; 2010  ','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (484,162,'Actualmente curso 3er ano en finanzas y negocios i','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (485,162,'          ','2014-10-11 23:10:31','2014-10-11 23:10:31');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (486,162,'          ','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (487,163,'      actualmente estudiando tecnico superiror en ','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (488,163,'primer semestre de segundo aÃ±o de la licenciatura','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (489,163,'          ','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (490,164,'      TÃ©cnico superior en Registros MÃ©dicos y Es','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (491,164,'          ','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (492,164,'          ','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (493,165,'      Licenciatura en Inadaptados sociales E Infra','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (494,165,'          TÃ©cnico en Inadaptados Sociales E Infra','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (495,165,'          Licenciatura en Contabilidad y Auditoria','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (496,166,'      Unachi, Licenciatura en contabilidad con Ã©n','2014-10-11 23:10:33','2014-10-11 23:10:33');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (497,166,'  Colegio Francisco MorazÃ¡n','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (498,166,' Colegio Instituto David','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (499,167,'      Adm. Empresas TurÃ­sticas Ã©nfasis Hoteleria','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (500,167,'          ','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (501,167,'          ','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (502,168,'Bachiller en letras con enfÃ¡sis en Idiomas.','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (503,168,'Unachi 3 mese en ingles   ','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (504,168,'universidad latina 1 aÃ±o en ingles con enfasis en','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (505,169,'      TÃ©cnico en programacion','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (506,169,'          Licenciada en Informatica Empresarial','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (507,169,'          ','2014-10-11 23:10:35','2014-10-11 23:10:35');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (508,170,'      Ing Industrial','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (509,170,'          Master en Servicios Aeroportuarios','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (510,170,'          ','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (511,171,'Bachiller en Contabilidad','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (512,171,'TÃ©cnico en ProgramaciÃ³n \r\nLicenciatura en GestiÃ','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (513,171,' Postgrado en Docencia Superior.\r\n MaestrÃ­a en Do','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (514,172,'  ','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (515,172,'        ','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (516,172,'          ','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (517,173,' ESCUELA SANTA CRUZ\r\nDIPLOMA DE SEXTO GRADO','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (518,173,'FELIZ OLIVARES CONTRERAS\r\nDIPLOMA DE SEXTO AÃ‘O ','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (519,173,'UNACHI\r\n- LICENCIATURA EN PUBLICIDAD\r\n-PROFESORADO','2014-10-11 23:10:37','2014-10-11 23:10:37');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (520,174,'     Bachiller en ciencias y letras. ','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (521,174,'      Cursando - Licenciatura en AdministraciÃ³n d','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (522,174,'          ','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (523,175,'      Licenciada en Contabilidad      ','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (524,175,'        Profesora de EducaciÃ³n Media con especial','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (525,175,'                    ','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (526,176,'    Cursando Ãºltimo aÃ±o Turismo Hotelero y resta','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (527,176,'          Escuela San Mateo ','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (528,176,'          Colegio FÃ‰lix Olivares Contreras\r\nBachi','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (529,177,'      Licenciatura en Ciencias de EnfermerÃ­a\r\nUni','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (530,177,'          TÃ©cnico de EnfermerÃ­a\r\nUniversidad de ','2014-10-11 23:10:40','2014-10-11 23:10:40');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (531,177,'          ','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (532,178,'     Lic. en Contabilidad con Enfasis en Contabili','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (533,178,'          ','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (534,178,'          ','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (535,179,' Bachiller en Ciencias y Letras con Enfasis en Inf','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (536,179,'Curso la Licenciatura en EnfermerÃ­a en la Faculta','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (537,179,'Seminario de desechos sÃ³lidos y hospitalarios; MI','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (538,180,'      Licenciatura en IngenierÃ­a BiomÃ©dica. UDEL','2014-10-11 23:10:42','2014-10-11 23:10:42'),
 (539,180,'          Diplomado en GestiÃ³n de Calidad, por No','2014-10-11 23:10:42','2014-10-11 23:10:42'),
 (540,180,'          ','2014-10-11 23:10:42','2014-10-11 23:10:42'),
 (541,181,'      Cursando estudios universitarios en Administ','2014-10-11 23:10:57','2014-10-11 23:10:57');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (542,181,'          ','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (543,181,'          ','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (544,182,'  tÃ©cnica en terapia respiratoria','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (545,182,'          ','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (546,182,'          ','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (547,183,'      Escuela Primaria Bet-thel Baru, Chiriqui.','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (548,183,'Colegio Latino de Costa Rica Zona Sur Costa Rica. ','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (549,183,'Columbus University David, Chiriqui Licenciatura e','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (550,184,'primer ano en licenciatura en adm. de empresas tur','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (551,184,'bachiller en comercio. contabilidad computarizada.','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (552,184,'primer ciclo victoriano lorenzo                   ','2014-10-11 23:10:58','2014-10-11 23:10:58');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (553,185,'Licenciatura en Mercadeo y Comercio Internacional.','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (554,185,'Centro De Lenguas De La Universidad TecnolÃ³gica d','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (555,186,'Doctorado en AdministraciÃ³n de Negocios          ','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (556,186,'MaestrÃ­a en AdministraciÃ³n de Empresas  con Espe','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (557,186,' Post Grado en Alta Gerencia                      ','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (558,187,'     Bachiller en ciencias\r\ncolegio secundario de ','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (559,187,'       II aÃ±o de administracion publica con enfas','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (560,187,'          curso de Informatica y curso de relacion','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (561,188,'     SEGUNDO AÃ‘O DE LA LICENCIATURA EN CONTABILID','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (562,188,'        COLEGIO FRANCISCO MORAZAN  (BACHILLER EN C','2014-10-11 23:11:01','2014-10-11 23:11:01');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (563,188,'          COLEGIO JESÃšS MARÃA PILA(PRIMER CICLO)','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (564,189,'      Primaria escuela de pedregal titulo obtenido','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (565,189,'          Colegio pablo emilio corsen titulo obten','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (566,189,'          Colegio francisco morazan titulo obtenid','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (567,190,'Colegio FÃ©lix Olivares Contreras bachiller en let','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (568,190,'tÃ©cnico en enfermerÃ­a \r\nINTECSU','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (569,190,'          ','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (570,191,'      Estudiante Universitario, IngenierÃ­a en Man','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (571,191,'     Seminario, taller de capacitaciÃ³n en manejo ','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (572,191,'           Curso, PlomerÃ­a General â€“ Plomero Id','2014-10-11 23:11:03','2014-10-11 23:11:03');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (573,192,'      ','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (574,192,'          ','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (575,192,'          ','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (576,193,'      Licenciatura en Informatica','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (577,193,'          Licenciatura en Ingles (en curso)','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (578,193,'          ','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (579,194,'      GERENCIA FINANCIERA, BANCARIA Y NEGOCIOS INT','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (580,194,'                    ','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (581,194,'                    ','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (582,195,'      tÃ©cnico en enfermeria      ','2014-10-11 23:11:05','2014-10-11 23:11:05'),
 (583,195,'                    ','2014-10-11 23:11:05','2014-10-11 23:11:05'),
 (584,195,'                    ','2014-10-11 23:11:05','2014-10-11 23:11:05');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (585,196,'Licenciatura en informÃ¡tica con Ã©nfasis en Redes','2014-10-11 23:11:05','2014-10-11 23:11:05'),
 (586,196,'          ','2014-10-11 23:11:05','2014-10-11 23:11:05'),
 (587,196,'          ','2014-10-11 23:11:05','2014-10-11 23:11:05'),
 (588,197,'      2013. Universidad AutÃ³noma de ChiriquÃ­\r\n  ','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (589,197,'          2013. Universidad AutÃ³noma de ChiriquÃ­','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (590,197,'          ','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (591,198,'Escuela Parroquial Pio XII\r\nCertificado de sexto g','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (592,198,'Colegio Francisco MorazÃ¡n\r\nCertificado de Bachill','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (593,198,'      Unachi\r\nUn aÃ±o de licenciatura de Administr','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (594,199,'      4 aÃ±o de Contabilidad','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (595,199,'          ','2014-10-11 23:11:07','2014-10-11 23:11:07');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (596,199,'          ','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (597,200,'      Licenciatura en tecnologÃ­a medica','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (598,200,'          ','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (599,200,'          ','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (600,201,'     POST GRADO EN ALTA GERENCIA','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (601,201,'          LICENCIATURA EN  SISTEMAS','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (602,201,'          ','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (603,202,'      Colegio MoisÃ©s Castillo OcaÃ±a Bachiller en','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (604,202,'          Columbus University Licenciatura en Gere','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (605,202,'          ','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (606,203,'      Técnico en emergencias medicas - UNACHI','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (607,203,'          bachiller en ciencias . Instituto David','2014-10-11 23:11:10','2014-10-11 23:11:10');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (608,203,'          ','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (609,204,'Licenciatura en AdministraciÃ³n de Empresas con Ã©','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (610,204,'          ','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (611,204,'          ','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (612,205,'      II AÑO de Licenciatura en Contabilidad Con é','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (613,205,'          Diploma de Bachiller en Comercio con enf','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (614,205,'          Certificado de Primaria','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (615,206,'      TÃ©cnica Superior en EnfermerÃ­a','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (616,206,'          Bachiller en Ciencias','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (617,206,'          Primaria Completa','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (618,207,'      Licenciatura en Periodismo con Ã©nfasis en d','2014-10-11 23:11:12','2014-10-11 23:11:12');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (619,207,'          ','2014-10-11 23:11:12','2014-10-11 23:11:12'),
 (620,207,'          ','2014-10-11 23:11:12','2014-10-11 23:11:12'),
 (621,208,'Licenciatura en Ingles con énfasis en traducción  ','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (622,208,' Profesorado Superior en curso         ','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (623,208,'          ','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (624,209,'      Bachiller en Ciencias, Instituto Superior Pa','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (625,209,'          Actualmente cursando el segundo aÃ±o de ','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (626,209,'          ','2014-10-11 23:11:14','2014-10-11 23:11:14'),
 (627,210,'   Creditos odtenidos en la universidad la paz com','2014-10-11 23:11:14','2014-10-11 23:11:14'),
 (628,210,'          Estudios en Ipca.  Sede en la universida','2014-10-11 23:11:14','2014-10-11 23:11:14'),
 (629,210,'          Bachiller en secretariado ejecutivo. Sec','2014-10-11 23:11:14','2014-10-11 23:11:14');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (630,211,'      Certificado de Sexto Grado','2014-10-11 23:11:29','2014-10-11 23:11:29'),
 (631,211,'          Bachiller en Letras con énfasis en Turis','2014-10-11 23:11:29','2014-10-11 23:11:29'),
 (632,211,'          Licenciatura en Mercadeo y Relaciones Pu','2014-10-11 23:11:29','2014-10-11 23:11:29'),
 (633,212,'      licenciada en administración publica con énf','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (634,212,'          bachiller en ciencias','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (635,212,'         primaria  ','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (636,213,'      LICENCIATURA EN NUTRICIÓN Y DIETÉTICA\r\nUnive','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (637,213,' BACHILLER EN CIENCIAS\r\nInstituto Urracá\r\n2009\r\n','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (638,213,'          ','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (639,214,'      Actualmente.  Licenciatura en Negocio Maríti','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (640,214,'          Técnico en Administracion informatica','2014-10-11 23:11:31','2014-10-11 23:11:31');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (641,214,'          ','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (642,215,'Licenciatura en contabilidad ','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (643,215,'          ','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (644,215,'          ','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (645,216,'      Primaria Sangrillo Arriba.','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (646,216,'          Colegio Instituto Chiriquí','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (647,216,'          Instituto Superior Nueva Visión','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (648,217,'Estudios en la carrera de BiologÃ­a / inconclusa\r\n','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (649,217,'Bachiller en Ciencias\r\nColegio Francisco MorazÃ¡n','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (650,217,'Primer ciclo\r\nCentro escolar Antonio JosÃ© de Sucr','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (651,218,'      técnico en emergencias medicas','2014-10-11 23:11:33','2014-10-11 23:11:33');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (652,218,'          ','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (653,218,'          ','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (654,219,'      Licenciatura en Ciencias de EnfermerÃ­a \r\n  ','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (655,219,'          ','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (656,219,'          ','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (657,220,'      Universidad Latina \r\nLicensiatura en Psicolo','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (658,220,'          Colegio Francisco Morazan\r\nBachiller en ','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (659,220,'          Escuela Loma Colorada\r\nSexto grado','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (660,221,'UNIVERSIDAD AUTONOMA DE CHIRIQUI - LICENCIATURA EN','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (661,221,'          ','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (662,221,'          ','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (663,222,'     Licenciatura Ingeniería Industrial\r\nUniversid','2014-10-11 23:11:36','2014-10-11 23:11:36');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (664,222,'Bachillerato en Ingeniería Industrial     \r\nUniver','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (665,222,'          ','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (666,223,'      GestiÃ³n de TecnologÃ­a de la InformaciÃ³n\r\n','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (667,223,'      TÃ©cnico en ProgramaciÃ³n y EstadÃ­stica    ','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (668,223,'          Bachiller en Letras\r\n          Colegio I','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (669,224,'      educacion intermedia','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (670,224,'          secundaria completa','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (671,224,'          ','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (672,225,'      scuela Primaria Jose Maria Roy','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (673,225,'          Escuela Secundaria Instituto David','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (674,225,'          Universidad Latina Primer Nivel Banka y ','2014-10-11 23:11:37','2014-10-11 23:11:37');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (675,226,'      Licenciatura en Mercadeo Y Relaciones Public','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (676,226,'          Bachiller en Letras y Turismo','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (677,226,'          ','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (678,227,'Técnico en Instrumentación quirúrgica ','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (679,227,'          ','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (680,227,'          ','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (681,228,'      Licenciatura en Contabilidad con Ã‰nfasis en','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (682,228,'          Diploma de Sexto aÃ±o. Colegio Francisco','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (683,228,'          Diploma de sexto grado. Escuela de Santa','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (684,229,'Bachiller  en Ciencias','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (685,229,'Certificado Comercial         ','2014-10-11 23:11:40','2014-10-11 23:11:40');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (686,229,'Licenciada  en Derecho y Ciencias  PolÃ¬ticas','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (687,230,'      Facultad de Ciencias y Tecnología\r\n 	Técnico','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (688,230,'          ','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (689,230,'          ','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (690,231,'    Ãšltimo aÃ±o de la Licenciatura en Derecho y C','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (691,231,'          Bachiller en Comercio con EspecializaciÃ','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (692,231,'          Bachiller en Letras','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (693,232,'Universidad Especializada de las Americas\r\nLicenci','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (694,232,'          ','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (695,232,'          ','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (696,233,'      ESC.REPUBLICA DE FRANCIA','2014-10-11 23:11:42','2014-10-11 23:11:42');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (697,233,'          COL. ADVENTISTA DE DAVID','2014-10-11 23:11:42','2014-10-11 23:11:42'),
 (698,233,'          POR TERMINAR LIC.EN RELACIONES PUBLICAS ','2014-10-11 23:11:42','2014-10-11 23:11:42'),
 (699,234,'Nivel Universitario (tercer año) Lic en Biología U','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (700,234,'Bachiller en Ciencias Colegio Felix Olivares Contr','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (701,234,'          ','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (702,235,' Actualmente Curso el Tercer AÃ±o de Licenciatura ','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (703,235,'          ','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (704,235,'          ','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (705,236,'      Lic. educaciÃ³n primaria cursando 4to aÃ±o','2014-10-11 23:11:44','2014-10-11 23:11:44'),
 (706,236,'          curso: AdaptaciÃ³n a la vida rural, disc','2014-10-11 23:11:44','2014-10-11 23:11:44'),
 (707,236,'          TÃ©cnico en didÃ¡ctica y tecnologÃ­a edu','2014-10-11 23:11:44','2014-10-11 23:11:44');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (708,237,'      Esc. Elifenia Staff\r\nPrimaria','2014-10-11 23:11:44','2014-10-11 23:11:44'),
 (709,237,'          Col. Francisco Morazan\r\nBachiller en com','2014-10-11 23:11:44','2014-10-11 23:11:44'),
 (710,237,'          ','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (711,238,'      Universidad Santa Maria La Antigua (1988)\r\nL','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (712,238,'      Universidad de Panamá-Centro Reg. Univ. de  ','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (713,238,'         Colegio San Antonio (1983) Bachiller en C','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (714,239,'      Técnica Ingeniera en electricidad, Universid','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (715,239,'      Licenciatura en Mercadeo y Comercio Internac','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (716,239,'          Cursos de Informática, INADE','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (717,240,'primaria culminada','2014-10-11 23:11:46','2014-10-11 23:11:46');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (718,240,' secundaria culminada','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (719,240,'cursando tercer aÃ±o de psicologÃ­a en la Universi','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (720,241,'      Postgrado en Docencia Superior en Columbus U','2014-10-11 23:12:29','2014-10-11 23:12:29'),
 (721,241,'          Post Grado en Alta Gerencia en Columbus ','2014-10-11 23:12:29','2014-10-11 23:12:29'),
 (722,241,'          Licenciada en Contabilidad-Unachi CPA 00','2014-10-11 23:12:29','2014-10-11 23:12:29'),
 (723,242,'      ','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (724,242,'          ','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (725,242,'          ','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (726,243,'Universidad de PanamÃ \r\nLicenciatura en Finanzas y','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (727,243,' Instituto Bilingue Virgen de Guadalape    \r\nBachi','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (728,243,'          ','2014-10-11 23:12:31','2014-10-11 23:12:31');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (729,244,'Tecnico en Enfermeria autorizado por el ComitÃ© de','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (730,244,'Universidad de PanamÃ¡, Titulo: Tecnico en Enferme','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (731,244,'Estudios Secundarios, Colegio Daniel Octavio Cresp','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (732,245,'      Bachiller en comercio con enfasis en contabi','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (733,245,'          Bachiller industrial en educacion para e','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (734,245,'          Curso de ingles elemental conversacional','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (735,246,'2004\r\nHARRISON COLLEGE â€“ Lafayette, IN USA\r\nAdmi','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (736,246,'2001\r\nAlliance FranÃ§aise de Panamaâ€“ PanamÃ¡, Pa','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (737,246,'1997\r\nIVY TECH STATE COLLEGE â€“ Lafayette, IN USA','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (738,247,'     TÉC. BILINGUE EN CALL CENTER\r\nUNIVERSIDAD DEL','2014-10-11 23:12:33','2014-10-11 23:12:33');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (739,247,'          CENTRO EDUCATIVO LABORAL\r\nBACHILLER EN C','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (740,247,'          COLEGIO FELIX OLIVARES CONTRERAS\r\nPRIMER','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (741,248,'      Bachiller en Ciencias - Colegio Daniel Octav','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (742,248,'         IngenierÃ­a en Sistemas Computacionales -','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (743,248,'          ','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (744,249,'      Licenciatura en Periodismo','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (745,249,'          Bachiller en Comercio','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (746,249,'          ','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (747,250,'      Bachiller en Comercio con especializacion en','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (748,250,'          Licenciatura en Turismo. Universidad Aut','2014-10-11 23:12:35','2014-10-11 23:12:35'),
 (749,250,'          ','2014-10-11 23:12:35','2014-10-11 23:12:35');
INSERT INTO `estudios_colaborador` (`id`,`id_colaborador`,`estudio`,`created_at`,`updated_at`) VALUES 
 (750,251,'      licenciatura en AdministraciÃ³n PÃºblica con','2014-10-11 23:12:35','2014-10-11 23:12:35'),
 (751,251,'          curso de ingles bÃ¡sico','2014-10-11 23:12:35','2014-10-11 23:12:35'),
 (752,251,'          ','2014-10-11 23:12:35','2014-10-11 23:12:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=752 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`experiencias_colaborador`
--

/*!40000 ALTER TABLE `experiencias_colaborador` DISABLE KEYS */;
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (1,1,'UTP                                                                                                                                                            ','2014-10-11 23:04:21','2014-10-11 23:04:21'),
 (2,1,'CABLE                                             ','2014-10-11 23:04:21','2014-10-11 23:04:21'),
 (3,1,'MI EMPRESA                                        ','2014-10-11 23:04:21','2014-10-11 23:04:21'),
 (4,2,'     Entrevistadora                      Pronat                                           2008-2009 ','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (5,2,' Asesora                                \r\nCompañía','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (6,2,'  Secretaria                           \r\nAgencia d','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (7,3,'Asistente en Fisioterapia en el Policentro Medico Especializado David-Chiriquí     ','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (8,3,'Asistente en el Salón de Belleza Blindage Progresi','2014-10-11 23:04:22','2014-10-11 23:04:22');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (9,3,'                              ','2014-10-11 23:04:22','2014-10-11 23:04:22'),
 (10,4,'      Centro medico LAIN. SAN JOSE COSTA RICA      ','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (11,4,'          CLINICA BIBLICA, SAN JOSE COSTA RICA.   ','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (12,4,'          HOSPITAL SAN VITO, SAN JOSE COSTA RICA  ','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (13,5,'      Tiendas ELEKTRA DAVID CHIRIQUI. CARGO DESEMPEÑADO VENDEDOR EN TIENDA.                  ','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (14,5,'    INDUSTRIAL ARROCERA DE CHIRIQUI S.A CARGO DEMP','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (15,5,'    GRUPO REY/SUPERMERCADO ROMERO SAN MATEO. CARGO','2014-10-11 23:04:23','2014-10-11 23:04:23'),
 (16,6,'2005-2006 Happy Shop\r\nCargo: Técnico en reparación de Computadoras\r\nFunción: Ensamblaje, reparación y mantenimiento de equipos\r\ninformáticos.      ','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (17,6,'2006-2008 Advanced Communication Network\r\nCargo: T','2014-10-11 23:04:24','2014-10-11 23:04:24');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (18,6,'2008-2012 Alcatel-Lucent\r\nCargo: Supervisor de Cam','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (19,7,'    2008- 2012  Jefe de Trasporte TRADECA\r\nExperiencia en Logistica, Supervisor de Personal, Mantenimientos de Equipos,Cobros, Mensajeria, Oficinista, PLanilla, Depositos y Retiros      ','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (20,7,'  2003-2008 Supervisor de Taller COOSEMUPAR   \r\n  ','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (21,7,'   1985-2003 Supervisor de Taller CHIQUITA\r\n      ','2014-10-11 23:04:24','2014-10-11 23:04:24'),
 (22,8,'            ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (23,8,'                    ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (24,8,'                    ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (25,9,'      *Mosto Bistro\r\nAdministración y mercadeo      ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (26,9,'          *Sofa & Plumas\r\nEncargada y ventas      ','2014-10-11 23:04:25','2014-10-11 23:04:25');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (27,9,'          *Transportes Ferguson S.A\r\nOficina y ate','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (28,10,'   Vendedor en Papagallo David                                                         ','2014-10-11 23:04:25','2014-10-11 23:04:25'),
 (29,10,'   Dicarina Panamá como experiencia propia        ','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (30,10,'                                                  ','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (31,11,'         Asistente de contabilidad en ACAEM S.A.\r\nTuve en un contrato de 3 meses, del 01 de Mayo de 2012 al 30 de Julio de 2012; donde me desempeñe en diferentes tareas como: Ciclo contable completo, conciliaciones bancarias, cuentas por pagar y por cobrar, planilla.     \r\n                                                                                          ','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (32,11,'      Asistente de Contabilidad en Super Barú S.A.','2014-10-11 23:04:26','2014-10-11 23:04:26');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (33,11,'    Asistente Contable Banco Nacional de Panamá  \r\n','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (34,12,'            Administradora de Cranes pomarosa panama y finca pomarosa      ','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (35,12,'    Asistente contable de lic rene herrera        ','2014-10-11 23:04:26','2014-10-11 23:04:26'),
 (36,12,'     encargada de bodega de tasty food insdustries','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (37,13,'  Certificado de servicio estudiantil,año 2027                ','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (38,13,'       Practica profesional en el Hospital Materno','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (39,13,'    Practica profesional en la policlinica de la b','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (40,14,'      2009 Practica Profesional Global Bank Corp.\r\n2010 Inventarios Melo Boquete                                    ','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (41,14,'          2011 Cajera (Vacaciones) Melo Boquete   ','2014-10-11 23:04:27','2014-10-11 23:04:27');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (42,14,'     2010-2012 Operadora de Ciber - Cafe Hastor Co','2014-10-11 23:04:27','2014-10-11 23:04:27'),
 (43,15,' Labore como paramedico en la constructora del Istmo. en el Proyecto Veggie Fresh. alrededor de 8 meses.                 ','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (44,15,' Realice mis Practicas en el Sistema de Emergencia','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (45,15,'  Realice mis practicas en el Centro de Salud de S','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (46,16,'          COLEGIO SAN FRANCISCO DE ASIS      ','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (47,16,'               CLINICA CATTAN                ','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (48,16,'EMPRESA COBRA PROYECTO HIDRAULICA DEL CHIRIQUI    ','2014-10-11 23:04:28','2014-10-11 23:04:28'),
 (49,17,'   Empresa valle escondido boquete 2002-2010               ','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (50,17,'    Empresa Avicola Atenas 2000-2002              ','2014-10-11 23:04:29','2014-10-11 23:04:29');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (51,17,'      empresa pro seguro 1999-2000                ','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (52,18,'      asistencia psicologica grupo rey desarrollo organizacional reclutamiento.practica supervisada      ','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (53,18,'          asistencia psicologia colegio fransisco ','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (54,18,'          ayudante general sra raquel miranda.    ','2014-10-11 23:04:29','2014-10-11 23:04:29'),
 (55,19,'    Labore como Paramedica en la Constructora Desarrollo e Inversiones del Istmo.   En el proyecto  VEGGIE FRESH. Alrededor de 8 meses.(2012)                              ','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (56,19,' Labore como paramedica en el Sistema de emergenci','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (57,19,'   Labore como paramedica en el Centro de Salud de','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (58,20,'   Actualmente tutor de ingles                            ','2014-10-11 23:04:30','2014-10-11 23:04:30');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (59,20,'                                                  ','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (60,20,'                                                  ','2014-10-11 23:04:30','2014-10-11 23:04:30'),
 (61,21,'Franklin Jurado, S.A.\r\n-Funciones realizadas: operador de volquete, chofer repartidor.\r\n-Año 2011 – 2009\r\n       ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (62,21,'Price Smart Panamá, S. A. (Almacén David)   \r\n-Fun','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (63,21,'Tagarópulos, S. A. Sucursal David\r\n-Funciones real','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (64,22,' Inversiones Nuevo Luzon, Oficinista - Ejecutiva de Ventas           ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (65,22,' Arte Gráfico Impresores, Ejecuriva de Ventas     ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (66,22,'                    ','2014-10-11 23:04:31','2014-10-11 23:04:31'),
 (67,23,'Distribuidora caballero- vendedora            ','2014-10-11 23:04:32','2014-10-11 23:04:32');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (68,23,'Grupo Corporativo Saret de Panamá- Administradora ','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (69,23,'Agropecuaria Los Cangilones - Administradora      ','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (70,24,'      Practicas Profesionales en el hospital regional, obaldia y en centro de salud      ','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (71,24,'                    ','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (72,24,'                    ','2014-10-11 23:04:32','2014-10-11 23:04:32'),
 (73,25,'      centro medico LAIN . C.R                              ','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (74,25,'          Hospital San Vito.                      ','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (75,25,'                                                  ','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (76,26,'Practicas profecionales en el Hospital General del Oriente Chiricano.                        ','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (77,26,'2009: Giras integrales PAIS + N (programa ampliado','2014-10-11 23:04:33','2014-10-11 23:04:33');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (78,26,'2011: Giras integrales Consorcio Global Fundesco R','2014-10-11 23:04:33','2014-10-11 23:04:33'),
 (79,27,'LIMPIESA Y ASEO                        ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (80,27,'         MENSAJERIA                               ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (81,27,'          ATENCION AL CLIENTE                     ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (82,28,' Empresa: Riegos de Chiriquí S.A. (mayo 2011-Octubre 2012)\r\nPosición: Jefe de Recursos Humanos-Administrador\r\nJefe Inmediato: Lic. Sielka Gonzalez Tel: 722-2009           ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (83,28,'  Empresa: Cruz del Sur Duwest S.A. (abril 2000-ab','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (84,28,'                    ','2014-10-11 23:04:34','2014-10-11 23:04:34'),
 (85,29,'Minsa- Panama      1991-1998\r\n            ','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (86,29,'           Farmacias Rey David 2004-2010          ','2014-10-11 23:04:35','2014-10-11 23:04:35');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (87,29,'SERVICIOS fermaceuticos de Chiriqui 2010\' octubre ','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (88,30,'    hospital jose domingo de obaldia colaboradora manual        ','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (89,30,' hotel ciudad de david departamento de ama de llav','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (90,30,' coleguio victoriano lorenzo fondo de invercion so','2014-10-11 23:04:35','2014-10-11 23:04:35'),
 (91,31,'   Diverlandia, S.A.\r\nAsistente Administrativa         ','2014-10-11 23:06:54','2014-10-11 23:06:54'),
 (92,31,'  Mental Tech\r\nEjecutiva de Ventas                ','2014-10-11 23:06:54','2014-10-11 23:06:54'),
 (93,31,'  Municipio de David\r\nDepartamento de Tesoreria; e','2014-10-11 23:06:54','2014-10-11 23:06:54'),
 (94,32,'      ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (95,32,'          ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (96,32,'          ','2014-10-11 23:06:55','2014-10-11 23:06:55');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (97,33,'Asistente de contabilidad Panam construccion     ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (98,33,'Asistente alcalde.    Alcaldia de Dolega          ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (99,33,'          ','2014-10-11 23:06:55','2014-10-11 23:06:55'),
 (100,34,'      LABORATORIO BIO MEDICA\r\nSECRETARIA-RECEPCIONISTA      ','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (101,34,'          MINISTERIO DE SALUD\r\nDEPTO D CONTROL DE ','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (102,34,'        JOALSA, S.A.\r\nDEP. DE COMPUTO\r\n(ORDENES DE','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (103,35,' De Octubre 2010 a 19 de Diciembre 2012, Agente de Reservaciones, Recepcionista, Valle Escondido Resort, Golf, & Spa. Atención al Cliente.','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (104,35,'          \r\nDe Enero 2010 a Octubre 2010, Cajera y','2014-10-11 23:06:56','2014-10-11 23:06:56'),
 (105,35,'         \r\nDe Junio 2009 a Enero 2010, Agente de R','2014-10-11 23:06:56','2014-10-11 23:06:56');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (106,36,' Practica Central Agricola de Romero (1999)      ','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (107,36,'Centro medico Mae Lewis (2006-2012)\r\nFunciones rea','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (108,36,'  Central Azucarero de Alanje, (abril-sept.2012)  ','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (109,37,'      Clinica Gabriel: Asistente de medico','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (110,37,'   Fundacion Atenas. Gras medicas Tecnico en enfer','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (111,37,'          ','2014-10-11 23:06:57','2014-10-11 23:06:57'),
 (112,38,'MEDUCA, Colegio San Agustin de Kankintu, Comarca Gnobe-Bugle, Profesora de Biologia 2003 y 2009','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (113,38,'MEDUCA, CEBG El Norteño Comarca Gnobe-Bugle, Profe','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (114,38,'Colegio San Antonio, Puerto Armuelles, Barú, Chiri','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (115,39,'  Maestra de grado    ','2014-10-11 23:06:58','2014-10-11 23:06:58');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (116,39,'      atenciòn al cliente    ','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (117,39,'          ','2014-10-11 23:06:58','2014-10-11 23:06:58'),
 (118,40,'      ','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (119,40,'          ','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (120,40,'          ','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (121,41,' Atención al cliente y cajera en Café Kotowa, Plaza Real.  2011   ','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (122,41,' Atención al cliente, inventarios y cajera en Comp','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (123,41,'          ','2014-10-11 23:06:59','2014-10-11 23:06:59'),
 (124,42,'      ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (125,42,'          ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (126,42,'          ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (127,43,'      ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (128,43,'          ','2014-10-11 23:07:00','2014-10-11 23:07:00');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (129,43,'          ','2014-10-11 23:07:00','2014-10-11 23:07:00'),
 (130,44,'      Asistente Departamente de Avaluos Cetsa. ','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (131,44,'          Encargada de Sucursal Esti Games.','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (132,44,'          ','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (133,45,'   limpieza en Hospitales','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (134,45,'    Limpieza en oficinas      ','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (135,45,'     mensajeria     ','2014-10-11 23:07:01','2014-10-11 23:07:01'),
 (136,46,'     Agente municipal','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (137,46,'         guardia seguridad ','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (138,46,'     Mensajeria     \r\n','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (139,47,' Recopilacion de datos\r\n Censo Agropecuario  \r\n Contraloria General de la Republica.  ','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (140,47,'  MC Pato David\r\n  Atencion al cliente\r\n  Lic.Kenn','2014-10-11 23:07:02','2014-10-11 23:07:02');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (141,47,'Entrega de volantes\r\nProfesional services.        ','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (142,48,' \r\nSecretaria de la corregiduria de aserrio     ','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (143,48,' \r\n servicios Multiples de salud (encargado de la ','2014-10-11 23:07:02','2014-10-11 23:07:02'),
 (144,48,'          ','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (145,49,'      AYUDANTE GENERAL DRA GLADYS NOVOA','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (146,49,'          ASISTENCIA PSICOLOGICA GRUPO REY AREA RE','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (147,49,'          ASISTENCIA PSICOLOGICA COLEGIO FRANSISCO','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (148,50,'      Empresas Romero - Cajera','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (149,50,'Banco Delta- Documentadora','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (150,50,'Estadistica y Censo- Digitadora          ','2014-10-11 23:07:03','2014-10-11 23:07:03'),
 (151,51,'Cuidados de niños (Niñera)      ','2014-10-11 23:07:04','2014-10-11 23:07:04');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (152,51,'          ','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (153,51,'          ','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (154,52,' hospital regional de david, inicio laboral del 21 junio - al 22 de septiembre de 2011 (trabajadora manual)          ','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (155,52,'hospital ovaldia de chiriqui inicio laboral 23 de ','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (156,52,'                    ','2014-10-11 23:07:04','2014-10-11 23:07:04'),
 (157,53,'      Asistente Administrativa\r\nDiverlandia, S.A. junio 2011-actualmente','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (158,53,'       Ejecutiva de Ventas\r\nMental Tech marzo 2010','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (159,53,'          Encargada de departamento de entrega de ','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (160,54,'      ','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (161,54,'          ','2014-10-11 23:07:05','2014-10-11 23:07:05');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (162,54,'          ','2014-10-11 23:07:05','2014-10-11 23:07:05'),
 (163,55,'Maestra de Informática, Escuela de Caimito, Dolega, 2008, 2009. 2 años. Por contratación de la Alcaldía de Dolega.                 ','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (164,55,'Cyber Café. Levantamiento de texto, Administración','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (165,55,'Digitadora de Datos. Super Barú Interamericano. Fa','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (166,56,'      Conway store david encargado de seguridad 2009-2013','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (167,56,'          super baru interamericano ayudante gener','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (168,56,'          fiesta casinos operador de camaras de vi','2014-10-11 23:07:06','2014-10-11 23:07:06'),
 (169,57,'      Conway store david encargado de seguridad 2009-2013      ','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (170,57,'          super baru interamericano ayudante gener','2014-10-11 23:07:07','2014-10-11 23:07:07');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (171,57,'          fiesta casinos operador de camaras de vi','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (172,58,'Práctica supervisada Universitaria en la Firma de Contabilidad Hurtado & Hurtado, S.A. Año 2009     ','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (173,58,'Hotel Los Rivera, S. A.\r\nCargo: Contadora Interna\r\n','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (174,58,'          ','2014-10-11 23:07:07','2014-10-11 23:07:07'),
 (175,59,' •	Asistente de compras  y labores de oficinista en general.\r\nEntidad: Promotora Anajula S.A.\r\nInicio 12 de julio de 2012.\r\n                 ','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (176,59,'•	Asistente de Administración y labores de oficini','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (177,59,'•	Practica Profesional  para el titulo de Bachille','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (178,60,'2012-2013 ASSA Compañía de Seguros, Oficial de Atención al Cliente.','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (179,60,'2011-2012 ASSA Compañía de Seguros, S.A Casa Matri','2014-10-11 23:07:08','2014-10-11 23:07:08');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (180,60,'2011-2012 ASSA Compañía de Seguros, S.A  Casa Matr','2014-10-11 23:07:08','2014-10-11 23:07:08'),
 (181,61,'2012-2013 ASSA Compañía de Seguros, Oficial de Atención al Cliente.','2014-10-11 23:07:33','2014-10-11 23:07:33'),
 (182,61,'2011-2012 ASSA Compañía de Seguros, S.A Casa Matri','2014-10-11 23:07:33','2014-10-11 23:07:33'),
 (183,61,'2011-2012 ASSA Compañía de Seguros, S.A  Casa Matr','2014-10-11 23:07:33','2014-10-11 23:07:33'),
 (184,62,'      Abril  y Diciembre 2010(de manera eventual)\r\nSúper deportes sammy David \r\n*Cajera, recepcionista, atención al cliente, área de archivos \r\n\r\nReferencias\r\nJefe inmediato: Sr. Eduardo Bardayan  \r\nTel: 774-00-48\r\n\r\n      ','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (185,62,'         Mayo2008  – Diciembre 2009\r\nEmpresa Multi','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (186,62,'      Marzo2006–Abril2007                         ','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (187,63,'      AREA DE CAJA ACTUALMENTE EN LA UNIVERSIDAD DEL ISTMO\r\n\r\n\r\n','2014-10-11 23:07:34','2014-10-11 23:07:34');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (188,63,'    CAJA EN OPCIONES BUGABA  770-5300   2008\r\n    ','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (189,63,'     CAJA EN SUPER MERCADOS ROMERO 2007-2006','2014-10-11 23:07:34','2014-10-11 23:07:34'),
 (190,64,'    Experincias adquirida durante el tecnico en  enfermeria en la Css. en diferentes areas.  ','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (191,64,'          ','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (192,64,'          ','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (193,65,'      ','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (194,65,'          ','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (195,65,'          ','2014-10-11 23:07:35','2014-10-11 23:07:35'),
 (196,66,'      CAJA ACTUALMENTE EN LA UNIVERSIDAD DEL ISTMO\r\n      Y ATENCION AL CLIENTE  ','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (197,66,'      SUPER OPCIONES BUGABA 770-5300\r\n      CAJA L','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (198,66,'       SUPER ROMERO POLICLINICA BUGABA\r\n       CAJ','2014-10-11 23:07:36','2014-10-11 23:07:36');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (199,67,'      Giras Integrales de Salud PAISS+N Comarca ngabe Bugle','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (200,67,'          ','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (201,67,'          ','2014-10-11 23:07:36','2014-10-11 23:07:36'),
 (202,68,'    Secretaria  ','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (203,68,'          Cajera','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (204,68,'          Maestra','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (205,69,'CUIDADO DEL GERONTE INDEPENDIENTEMENTE DURANTE 1 AÑO','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (206,69,'          ','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (207,69,'          ','2014-10-11 23:07:37','2014-10-11 23:07:37'),
 (208,70,'    Secretaria d la corregiduria d aserrio','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (209,70,'          Asistente clínica (en bugaba) viaje volc','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (210,70,'          ','2014-10-11 23:07:38','2014-10-11 23:07:38');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (211,71,'      Transportes Santamaria, en cargado de bodega y dristribucion de mercancía.','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (212,71,'     Grupo Silaba Panama, ,emsajeria administrativ','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (213,71,'         Grupo Rds Panama Encargado de compras y d','2014-10-11 23:07:38','2014-10-11 23:07:38'),
 (214,72,'secretaria : Taller Carlos G.','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (215,72,'secretaria: Impresos Del Cid','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (216,72,'Mercaderista: Grupo solid    ','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (217,73,'      Clinica Hospital San Fernando Asistente Adm. Sala desde 1999 hasta Diciembre del 2010','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (218,73,'          Cámara de Comercio Industria y Agricultu','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (219,73,'          ','2014-10-11 23:07:39','2014-10-11 23:07:39'),
 (220,74,'Agro Pro Panamá, S.A.\r\nAsistente de Gerencia\r\nManejo de la central telefónica\r\nRegistro y entrega de cheques\r\nReportes y asistencia a la gerencia\r\nManejo de Inventarios y útiles de oficina\r\nReportes de llamadas\r\nBrindar excelente atención y seguimiento a los clientes\r\nBuenas relaciones interpersonales y capacidad de comunicación\r\nen todos los niveles\r\nRegistro de llamadas para departamento de ventas\r\nManejo de la mensajería de la empresa tanto interna como externa      ','2014-10-11 23:07:40','2014-10-11 23:07:40');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (221,74,'Casa Gala Sucursal David\r\nPromotora de Tarjetas Vi','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (222,74,'Konzerta\r\nRecepcionista\r\nControl de agendas de eva','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (223,75,'      •	Nutricionista-Dietista Policlínica Pablo Espinosa Caja de seguro Social 17 de septiembre 2012 hasta la actualidad            ','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (224,75,'     •	Nutricionista-Dietista: Ministerio de Salud','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (225,75,'     •	Nutricionista-Dietista: Empresa Atenas. Est','2014-10-11 23:07:40','2014-10-11 23:07:40'),
 (226,76,'      SERVICIO DE ATENCION PRIVADA','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (227,76,'          ','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (228,76,'          ','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (229,77,'Asistente Administrativa - Probachi','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (230,77,'Asistente administrativa - ULDI Comercial         ','2014-10-11 23:07:41','2014-10-11 23:07:41');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (231,77,'Secretaria - Shopping Center','2014-10-11 23:07:41','2014-10-11 23:07:41'),
 (232,78,'     Secretaria / Recepcionista. Alianza Francesa\r\n','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (233,78,'     Dependiente de ventas / Farmacias Arrocha S.A','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (234,78,'     ','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (235,79,'      Clínica hospital Cattán, paramédico en el área de urgencias y ambulancia. Entrenamientos de primeros auxilios.','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (236,79,'          Alstom Panamá S.A. paramédico de proyect','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (237,79,'          ','2014-10-11 23:07:42','2014-10-11 23:07:42'),
 (238,80,'   PRODUCTOS IBIS-AYUDANTE ADMINISTRATIVA\r\nTEL.775-8919 2005 (LICENCIA)   ','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (239,80,'      PANAMOTOR*SECRETARIA VENTAS-CAJERA\r\n775-7560','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (240,80,'      SUPER BARU S.A. RECEPCIONISTA, CUENTAS POR C','2014-10-11 23:07:43','2014-10-11 23:07:43');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (241,81,'  AVICOLA  ATHENAS: Asistente de Mercadeo en Avicolas Athenas, Control de personal, demostradoras de productos y fijar horarios, realización de estadísticas por vendedor y por proveedores dándole así un resultado de ventas por mes. Fanosof software utilizado por mi persona para ingresar los pedidos para las diferentes cadenas de supermercados. Rotación y supervisión de productos en las diferentes cadenas minisúper y supermercados, promover y abrir mercados de los productos de la Empresa. (2012)\r\n\r\n    ','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (242,81,'AUDIOFOTO INTERNACIONAL, S.A.: Asesoramiento y ven','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (243,81,'COMPAÑÍA PINZON, S.A.: Secretaria, llevar a cabo e','2014-10-11 23:07:43','2014-10-11 23:07:43'),
 (244,82,'Ventas Kathy\r\n-Atencion al cliente y administración de ventas','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (245,82,'Clinica Medico Estética\r\n-Confeccion de fichas méd','2014-10-11 23:07:44','2014-10-11 23:07:44');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (246,82,'Ministerio de desarrollo social,\r\n-coodinadora log','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (247,83,'CALL CENTER DE LA CAJA DE SEGURO SOCIAL, TRAMITE DE CITAS, CIUDAD DE PANAMA.      ','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (248,83,'          ','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (249,83,'          ','2014-10-11 23:07:44','2014-10-11 23:07:44'),
 (250,84,' SUPERMERCADO REY - DAVID  \r\n CAJERA Y  AUXILIAR DE ARQUEO      \r\n SEPTIEMBRE 2011 - MARZO 2013','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (251,84,' SUPERMERCADO EL EXTRA - PANAMA   \r\n SUPERVISORA D','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (252,84,' CURIOSIDADES PITTYOL      \r\n CAPTADORA DE DATOS\r\n','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (253,85,'      No tengo experiencia','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (254,85,'          ','2014-10-11 23:07:45','2014-10-11 23:07:45'),
 (255,85,'          ','2014-10-11 23:07:45','2014-10-11 23:07:45');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (256,86,'EN EL ÁREA DE ADMINISTRADORA  EN UNA BIBLIOTECA PUBLICA ','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (257,86,'COMO CAJERA EN SUPERMERCADO EL REY ','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (258,86,'CAJERA PROMOTORA EN COBROS EN TARJETAS DE CRÉDITOS','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (259,87,'  Almacen 5 Y 10\r\n    Vendedora   ','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (260,87,' \r\nPlaza Chiriqui                                 ','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (261,87,'   Almacen 123   \r\n    Vendedora    ','2014-10-11 23:07:46','2014-10-11 23:07:46'),
 (262,88,'*2011\r\n Policentro de salud de la Barriada san josé.   \r\nPráctica de la profesión. Flebotomía, manejo y procesamiento de las muestras.','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (263,88,'*2012\r\nHospital Materno infantil José Domingo de O','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (264,88,'* 2012-2013\r\nCentro Gendiagnostik S.A    \r\nAsisten','2014-10-11 23:07:47','2014-10-11 23:07:47');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (265,89,'      Almacén ,El Campeón. Puesto de vendedora y empacadora.','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (266,89,'       Bananera Santa Cecilia, de Puesto de Secret','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (267,89,'          ','2014-10-11 23:07:47','2014-10-11 23:07:47'),
 (268,90,'  Kam y Asociados Panamá, S.A. (Corredores de Seguros)- Trabajé 9 años en diferentes departamentos, detallo: 2010 - Marzo 2013 - Administrador de la Sucursal de David: Coordinar la conservaci{on de cartera, coordinar la gesti{on de cobros, coordinar los pagos a proveedores, administrar la caja menuda.\r\n2008-2010 -Supervisor del departamento de Administración: - Supervisar los departamentos de Recepci{on, Servicios Generales y Mantenimiento, Coordinar el inventario de útiles y equipos de la empresa, Coordinar la logística de entrega de la mensajería, Asistir al gerente Administrativo en diferentes asignaciones.\r\n2005 -2008 - Asistente de la Gerencia General: - Coordinar la agenda del gerente, Coordinar los viajes, atención de llamadas, atención a clientes.\r\n2004-2005 Supervisor del Departamento de Servicio al clientes de Daños: - Coordinar la conservaci{on de cartera de clientes, coordinar los registros de las pólizas en el sistema de corretaje.  ','2014-10-11 23:07:48','2014-10-11 23:07:48'),
 (269,90,'          ','2014-10-11 23:07:48','2014-10-11 23:07:48');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (270,90,'          ','2014-10-11 23:07:48','2014-10-11 23:07:48'),
 (271,91,'   *Vimori - Recepsionista\r\n       ','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (272,91,'   *Hotel Fundadores - Recepsionista              ','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (273,91,'   *Hotel Ladera - Mesonera ,Bartender            ','2014-10-11 23:08:43','2014-10-11 23:08:43'),
 (274,92,'   Fundacion Athenas como Tecnica de Enfermeria   ','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (275,92,'      Cuidado Especial de Adulto Mayor    ','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (276,92,'          ','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (277,93,'* Año 2012 – Cyber Netway (Encargado)\r\n\r\n* Año 2013 – Applus Corporation (Contratista de Gas Natural)','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (278,93,'* Año 2009-2011 – Administrador del Cyber Café MER','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (279,93,'* Año 2006 – Gondolero en el Supermercado El Descu','2014-10-11 23:08:44','2014-10-11 23:08:44');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (280,94,'      BOBBYS BAR, SAN MATEO DAVID','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (281,94,'        BAR Y MARISQUERIA ISABEL, SAN MATEO DAVID ','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (282,94,'       BAR EDUARDO, ALTAMIRA DAVID   ','2014-10-11 23:08:44','2014-10-11 23:08:44'),
 (283,95,'   Universidad Autonoma de Chiriquí- Secretaria Administrativa en al Dirección de Extensión y en el Tribunal Superior de Elecciones.   ','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (284,95,'         Hotel Decamerón Resort, en Rio Hato Faral','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (285,95,'          ','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (286,96,'      Cuidado Especial a la tercera Edad. Casa de Familia.','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (287,96,'          ','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (288,96,'          ','2014-10-11 23:08:45','2014-10-11 23:08:45'),
 (289,97,'Happy Shop (2005-2006)\r\nTecnico en reparacion y emsamblajes de equipos informaticos.','2014-10-11 23:08:46','2014-10-11 23:08:46');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (290,97,'Advanced Communication Network (2006-2008)\r\nTecnic','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (291,97,'Alcatel-Lucent (2008-2012)\r\nTecnico De Campo, inst','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (292,98,' 1995 a la fecha Cruz Roja Panameña. Jefe de servicios Pre-hospitalarios David, paramédico  atención de emergencias y eventos, atención en situaciones de desastre y rescate .voluntario    ','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (293,98,' Proyecto Hidroeléctrico Dos Mares. Paramédico res','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (294,98,' Julio 2011 a 31 de marzo 2013\r\nAsistencia Médica ','2014-10-11 23:08:46','2014-10-11 23:08:46'),
 (295,99,'      Como operadora de internet, servicios multiples como desde cubrir caja de cobros, supervisora de los alumnos y atención al cliente. En el Colegio ICED','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (296,99,'          Agencia de Seguridad Industrial Como asi','2014-10-11 23:08:47','2014-10-11 23:08:47');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (297,99,'          KARDY Como ayudante general haciendo una','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (298,100,'      Departamento de Mercadeo/Ejecutiva de Mercadeo y Ventas\r\n\r\n\r\n•	Diagramación y elaboración de Catálogos de diversas marcas de calzados.\r\n•	Manejo de material POP para distribución en Panamá, centro y Sur América.\r\n•	Mercadeo y Visual Merchandising en tiendas en Panamá.\r\n•	Cotizaciones y coordinación con proveedores de material publicitario.\r\n•	Asistencia en la organización y cobertura de exposiciones en ferias.\r\n•	Asistencia a ejecutivos de ventas con material POP (material publicitario en puestos de venta), Catálogos y apoyo a clientes con fotos de productos, visual en tiendas.\r\n•	Seguimiento a temas varios y en general del departamento de mercadeo.\r\n•	Seguimiento y Coordinación con medios para pautas y participación  de publicidad en general de las marcas.\r\n•	Coordinación con clientes de Panamá, Centro y Sur América para la entrega de artes para pautas, revistas y vallas o material publicitario.\r\n•	Seguimiento de Presupuesto para elaboración de material Publicitario y promocional de las marcas, en ausencias de la Gerencia de Mercadeo.\r\n•	Coordinación para montaje de vitrinas en Showrooms y tiendas.\r\n•	Manejo de Proveedores en General.\r\n•	Atención a clientes\r\n•	Ejecutar ventas en ausencia a vendedores\r\n\r\n\r\n','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (299,100,'          Asistente de Gerencia\r\n\r\n•	Llevar agenda','2014-10-11 23:08:47','2014-10-11 23:08:47');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (300,100,'          Secretaría Administrativa (Departamento ','2014-10-11 23:08:47','2014-10-11 23:08:47'),
 (301,101,'Desde el año 2007 laboro como mesera-cajera en la marca Pizza Hut David perteneciente a la compañía internacional de Franquicias Panameñas S.A.','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (302,101,'          ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (303,101,'          ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (304,102,' EN LA ACTUALIDAD LABORO COMO SECRETARIA DE LA COORDINACION DE SALUD ANIMAL R-9 DEL MINISTERIO DE DESARROLLO AGROPECUARIO BOCAS DEL TORO (2 ANOS Y MEDIO).  BUSCO TRABAJO EN CHIRIQUI YA QUE ES ACA DONDE RESIDO Y TENGO MI FAMILIA     ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (305,102,'          ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (306,102,'          ','2014-10-11 23:08:48','2014-10-11 23:08:48'),
 (307,103,'      Practica profesional en el Hospital Jose Domingo de Obaldia','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (308,103,'       Autorizacion actualizada para ejercer como ','2014-10-11 23:08:49','2014-10-11 23:08:49');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (309,103,'          Inscripcion actualizada de la asociasion','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (310,104,'      Vendedora en la farmacia yady en Bugaba','2014-10-11 23:08:49','2014-10-11 23:08:49'),
 (311,104,'      recepcionista en CHT, Semi-vacaciones de 2 s','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (312,104,'          ','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (313,105,'     Almacén Shoping Center\r\n     Atención al cliente y \r\n     Ventas\r\n      2008-2010','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (314,105,'          Manejo de equipos como:\r\nFotocopiadoras,','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (315,105,'          ','2014-10-11 23:08:50','2014-10-11 23:08:50'),
 (316,106,' 2013   Vendedora de Almacen el Costo empresas Kadima ','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (317,106,'       2009 Practica Profesional Empresas Garrido ','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (318,106,'          ','2014-10-11 23:08:51','2014-10-11 23:08:51');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (319,107,'PROFESORA EN U.C.A por 3 aÃ±os.','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (320,107,' vice presidenta asociaciÃ³n carismÃ¡tica multivid','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (321,107,'          ','2014-10-11 23:08:51','2014-10-11 23:08:51'),
 (322,108,'      Asistente de Laboratorio de Informatica \r\nOTEIMA','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (323,108,'      Asistente de Contabilidad  \r\nP.C.P.A.  ','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (324,108,'      Secretaria, asistente, recepcionista.\r\nDRECH','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (325,109,'      CÃ¡ritas Internacional','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (326,109,'                 IPSOS ','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (327,109,'             FETV Canal 5 ','2014-10-11 23:08:52','2014-10-11 23:08:52'),
 (328,110,'      Banistmo- Asistente de Plataforma y Operaciones','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (329,110,'          Academia Hebrea de PanamÃ¡- Asistente  A','2014-10-11 23:08:53','2014-10-11 23:08:53');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (330,110,'          ','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (331,111,'      Sistema Ãšnico Manejo de emergencias medicas, SUME 911','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (332,111,'          COMPAÃ‘IA CHIRICANA DE CONSTRUCCION, ENC','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (333,111,'          ','2014-10-11 23:08:53','2014-10-11 23:08:53'),
 (334,112,'Enfermera en la Residencia de la Bonanova, del 4 de julio de 2011 al 15\r\nde agosto de 2011. Enfermera en ClÃ­nica Rotger en Ã¡rea de hospitalizaciÃ³n de medicina\r\ninterna, oncologÃ­a, neurocirugÃ­a y especialmente traumatologÃ­a, inicio el\r\n22 de agosto de 2011 y trabajando en la actualidad.','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (335,112,'Dietista en el Hospital de Manacor, del 12 de mayo','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (336,112,'Auxiliar de enfermerÃ­a en la Residencia de Felani','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (337,113,'    FERRETERIA ENRIQUE\r\nASISTENTE DE CONTABILIDAD      ','2014-10-11 23:08:54','2014-10-11 23:08:54');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (338,113,'          AGRIMENSURA INTEGRAL. SECRETARIA Y ASIST','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (339,113,'         SERVICIOS PORFESIONALES DE CONTABILIDAD. ','2014-10-11 23:08:54','2014-10-11 23:08:54'),
 (340,114,'      ','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (341,114,'          ','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (342,114,'          ','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (343,115,'      en reparar computadoras','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (344,115,'          limpieza ','2014-10-11 23:08:55','2014-10-11 23:08:55'),
 (345,115,'          sistema computarizado o programas por ac','2014-10-11 23:08:56','2014-10-11 23:08:56'),
 (346,116,'ASOCIACION DE PRODUCTORES DE CHIRIQUI\r\nASISTENTE ADMINISTRATIVA      ','2014-10-11 23:08:56','2014-10-11 23:08:56'),
 (347,116,'   MULTI SERVICIOS\r\nRECEPCION\r\n\r\n       ','2014-10-11 23:08:56','2014-10-11 23:08:56'),
 (348,116,'         JUNTA COMUNAL DE LOS ALGORROOBOS\r\nSECRETA','2014-10-11 23:08:56','2014-10-11 23:08:56');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (349,117,'Asiste de Chef. Cesar Urriola\r\nCel 6550-3494','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (350,117,' Practica profecional Rest. Mosto Bistro. Chef fui','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (351,117,'Practica profecional Hotel Ciudad David. Lic. Vict','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (352,118,' Fabrica de Helados Jackelita s.a.                 ','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (353,118,'                              ','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (354,118,'                              ','2014-10-11 23:08:57','2014-10-11 23:08:57'),
 (355,119,'      ASOCIACIÃ“N DE PERIODISTAS DE CHIRIQUÃ- ORGANIZADORA DE CONGRESO INTERNACIONAL','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (356,119,'        ANALISTA DE DATOS- SUPERMERCADOS S.A. (ROM','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (357,119,' ENCARGADA DE EVENTOS Y PROTOCOLO- Universidad Tec','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (358,120,'      departamento administracion hotel Puerta del Sol','2014-10-11 23:08:58','2014-10-11 23:08:58');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (359,120,'          ','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (360,120,'          ','2014-10-11 23:08:58','2014-10-11 23:08:58'),
 (361,121,'      Operador de fotocopiadora \r\nVacaciones por un mes\r\nUniversidad Latina\r\nNoviembre - diciembre 2008.\r\n','2014-10-11 23:09:54','2014-10-11 23:09:54'),
 (362,121,'          ','2014-10-11 23:09:54','2014-10-11 23:09:54'),
 (363,121,'          ','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (364,122,'      finca VAFLOREVA  atenciÃ³n a clientes','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (365,122,'          ','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (366,122,'          ','2014-10-11 23:09:55','2014-10-11 23:09:55'),
 (367,123,'      CAJERA ATENCION AL CLIENTE\r\nSERVICIOS DE AGUA POTABLE','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (368,123,'          ALDEAS INFANTILES','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (369,123,'          CAJERA\r\nCIBER CAFE EL EXPLORADOR','2014-10-11 23:09:56','2014-10-11 23:09:56');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (370,124,'      Equivel Abogado & Asociados\r\nSecretaria\r\nDiciembre 2012 - Junio 2013','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (371,124,'       La Tienda del Celular y Algo mas\r\nSuperviso','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (372,124,'          Celulares Nanda, S.A.\r\nSupervisora de Re','2014-10-11 23:09:56','2014-10-11 23:09:56'),
 (373,125,'   Oficinista de Arqueo         ','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (374,125,'          Encargada del Departamento de Compras   ','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (375,125,'          Asistente Contable          ','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (376,126,'      EMPRESAS ROMERO S.A. (PARQUE), PERIODO NAVIDEÃ‘O, 2007','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (377,126,'          ','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (378,126,'          ','2014-10-11 23:09:57','2014-10-11 23:09:57'),
 (379,127,'      Claro Panama\r\nRepresentante de Ventas','2014-10-11 23:09:58','2014-10-11 23:09:58');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (380,127,'          Capital Wealth Fund\r\nAdministradora','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (381,127,'          Hospital Mae Lewis\r\nCajera y RecepciÃ³n','2014-10-11 23:09:58','2014-10-11 23:09:58'),
 (382,128,'     Ronella Enterprises, S.A.\r\nciclo completo, admon, planilla, recurso humano, cuenta por cobrar y cuentas por pagar, conciliaciones ','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (383,128,'      central Southen Construction\r\nCiclo completo','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (384,128,'         Profesionales Asociados\r\nContador  ','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (385,129,'      Gestor de Cobros Master Cocina Kitchen Fair','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (386,129,'          Consultores Alamar atenciÃ³n al Cliente,','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (387,129,'          CorporaciÃ³n Educativa ChiriquÃ­. Instit','2014-10-11 23:09:59','2014-10-11 23:09:59'),
 (388,130,'      fundaciÃ³n Atenas \r\nconductor','2014-10-11 23:10:00','2014-10-11 23:10:00');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (389,130,'      proyecto hidroelÃ©ctrico\r\noperador de equipo','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (390,130,'          proyecto hidroelÃ©ctrico\r\nminero','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (391,131,'  Cajera en el supermercado Romero    ','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (392,131,'   Cajera de Felipe Rodriguez       ','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (393,131,'          ','2014-10-11 23:10:00','2014-10-11 23:10:00'),
 (394,132,'      Restaurante La Avenida','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (395,132,'      AlmacÃ©n Punto Poderoso    ','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (396,132,'     Banco CITIBANK     ','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (397,133,'coordinadora de mercadeo      ','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (398,133,'anfitriona     ','2014-10-11 23:10:01','2014-10-11 23:10:01'),
 (399,133,'practica profesional secretaria de la administraci','2014-10-11 23:10:02','2014-10-11 23:10:02');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (400,134,'      ejecutiva de mercadeo, manejo de mercadeo de 20 tiendas a nivel nacional.     ','2014-10-11 23:10:02','2014-10-11 23:10:02'),
 (401,134,'          analista de mercadeo ','2014-10-11 23:10:02','2014-10-11 23:10:02'),
 (402,134,'          asistente de mercadeo y ventas          ','2014-10-11 23:10:02','2014-10-11 23:10:02'),
 (403,135,'      Vendedora\r\nBoutique 3.00 Fashion Store','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (404,135,'          ','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (405,135,'          ','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (406,136,'      EMPADRONADORA CENSOS NACIONALES','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (407,136,'          PROTOCOLO PATRONATO  (FERIA INT. DE DAVI','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (408,136,'          ','2014-10-11 23:10:03','2014-10-11 23:10:03'),
 (409,137,'      ','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (410,137,'          Laboratorios raly admitir paciente prueb','2014-10-11 23:10:04','2014-10-11 23:10:04');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (411,137,'          ','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (412,138,'      Global Bank \r\nRecepciÃ³n, cheques de gerencia, transferencias internacionales, chequeras, atenciÃ³n al cliente central telefÃ³nica.','2014-10-11 23:10:04','2014-10-11 23:10:04'),
 (413,138,'          Transporte y Turismo PanamÃ¡\r\natenciÃ³n ','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (414,138,'          ','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (415,139,'      Actualmente Encargada del departamento de Archivo en La Universidad del Istmo Sede Chiriqui','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (416,139,'        Vendedora Almacen El CampeÃ³n  ','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (417,139,'          Secretaria. Oficina de Bananera Santa ce','2014-10-11 23:10:05','2014-10-11 23:10:05'),
 (418,140,'      ASISTENTE ADMINISTRATIVA EN A. VERGARA & CO      ','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (419,140,'     CAJERA Y SECRETARIA EN BAHIA MOTORS, SA.     ','2014-10-11 23:10:06','2014-10-11 23:10:06');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (420,140,'    HIDRAULICAS INFRAESTRUCTURAS\r\n ASISTENTE DE PL','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (421,141,'      FERTITEC DE OFICINISTA LICENCIA DE CONTRATO DEFINIDO  SEPT 07 2011 A ENERO 07 2012            ','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (422,141,'          ST. GEORGES BANK EJECUTIVA DE VENTA AGOS','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (423,141,'                              ','2014-10-11 23:10:06','2014-10-11 23:10:06'),
 (424,142,'      Fundacion Hope - Valle Escondido Coordinadora - Actualidad','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (425,142,'          Valle Escondido -Asiente de Gerencia Gen','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (426,142,'   Hospotal Paitilla -Panama - Recepcionista de La','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (427,143,'Asistente administrativa\r\nEmpresa Aes PanamÃ¡\r\n      ','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (428,143,'Asistente administrativa \r\nEmpresa Cafisa Construc','2014-10-11 23:10:07','2014-10-11 23:10:07');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (429,143,'Supervisora\r\nEmpresa Cirsa panamÃ¡             ','2014-10-11 23:10:07','2014-10-11 23:10:07'),
 (430,144,'    â€¢	De mayo de 2013 a la actualidad: Asistente de nutriciÃ³n en Lâ€™Atelier Gourmet Servicio de AlimentaciÃ³n para Hospital Punta PacÃ­fica.   ','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (431,144,'          â€¢	De 2011 a 2013 atenciÃ³n en consulto','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (432,144,'          ','2014-10-11 23:10:08','2014-10-11 23:10:08'),
 (433,145,'      Hidraulica del ChiriquÃ­ S.A','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (434,145,'          ','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (435,145,'          ','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (436,146,'      2 aÃ±os en el Centro de Citas MÃ©dicas de la Caja del Seguro Social.','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (437,146,'          ','2014-10-11 23:10:09','2014-10-11 23:10:09'),
 (438,146,'          ','2014-10-11 23:10:09','2014-10-11 23:10:09');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (439,147,'      secretaria centro naturista, modas intimas','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (440,147,'          secretaria, ruth shipping, y aero servic','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (441,147,'          practica profesional secretaria aeropuer','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (442,148,'      escuela publica de almirante','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (443,148,'      colegio secundario de almirante    ','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (444,148,'       bocas fruit company   ','2014-10-11 23:10:10','2014-10-11 23:10:10'),
 (445,149,'He trabajado como seguridad ocupacional administrativa para  el Grupo Cobra : HidrÃ¡ulica del ChiriquÃ­, HidrÃ¡ulica de Alto, HidrÃ¡ulica de San JosÃ©, HidrÃ¡ulica de Cochea, HidrÃ¡ulica de Mendre, HidrÃ¡ulica de Pedregalito. Donde he desempeÃ±ado funciones como elaboraciones de planes de emergencia y planes de seguridad, conocimiento en formularios de riesgos profesionales en la caja del seguro social, elaboraciÃ³n de informes de accidentes,  asistencia en salud ocupacional, procedimientos de ejecuciÃ³n, coordinaciÃ³n para elaboraciÃ³n de exÃ¡menes mÃ©dicos al personal, elaboraciÃ³n de estadÃ­sticas de siniestralidad. AdemÃ¡s tengo conocimientos bÃ¡sicos en recursos humanos.      ','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (446,149,'                    ','2014-10-11 23:10:11','2014-10-11 23:10:11');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (447,149,'                    ','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (448,150,' departamento de contabilidad maquinaria suadi, s a      ','2014-10-11 23:10:11','2014-10-11 23:10:11'),
 (449,150,'      departamento de auditoria interna cooperativ','2014-10-11 23:10:12','2014-10-11 23:10:12'),
 (450,150,'    departamento de operaciones cooperativa el edu','2014-10-11 23:10:12','2014-10-11 23:10:12'),
 (451,151,'      Ejecutiva de atenciÃ³n al cliente en laboratorios raly cheroquis y PanamÃ¡       ','2014-10-11 23:10:24','2014-10-11 23:10:24'),
 (452,151,'                   ************---****************','2014-10-11 23:10:24','2014-10-11 23:10:24'),
 (453,151,'                    ******************************','2014-10-11 23:10:24','2014-10-11 23:10:24'),
 (454,152,'      Distribuidora Moreno:  encargada de cuentas x cobrar y cuentas x cobrar, planilla. ','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (455,152,'          Farmacias Arrocha cajera recepciÃ³nista.','2014-10-11 23:10:25','2014-10-11 23:10:25');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (456,152,'          Cines Moderno cajera supervisora ','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (457,153,'      Chef Cesar Urriola\r\n6550-3494','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (458,153,'          lic. Pablo Othon Suester\r\n6754-4137','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (459,153,'          ','2014-10-11 23:10:25','2014-10-11 23:10:25'),
 (460,154,'      INGETEC, S.A 2006 - 2009\r\nDAVID - CHIRIQUÃ (SECRETARIA DE GERENCIA)','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (461,154,'          INGETEC, S.A. 2009 -2011 El Salvador\r\n(A','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (462,154,'          INGETEC, S.A. 2011 -2013 DAVID - CHIRIQU','2014-10-11 23:10:26','2014-10-11 23:10:26'),
 (463,155,'Experiencia en Estudios de,SueÃ±o Calibracion de CPAP BIPAP','2014-10-11 23:10:27','2014-10-11 23:10:27'),
 (464,155,'Experiencia en Manejo de Pacientes a domcilio','2014-10-11 23:10:27','2014-10-11 23:10:27'),
 (465,156,'    3 aÃ±os  ','2014-10-11 23:10:27','2014-10-11 23:10:27');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (466,156,'          ','2014-10-11 23:10:27','2014-10-11 23:10:27'),
 (467,156,'          ','2014-10-11 23:10:27','2014-10-11 23:10:27'),
 (468,157,' Agente de Servicio a Pasajeros (Copa Airlines)           ','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (469,157,'Ejecutiva de ventas (Agencia de viajes Gloria MÃ©n','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (470,157,'                    ','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (471,158,'      Impulsadora de ventas y atencional cliente','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (472,158,'          ','2014-10-11 23:10:28','2014-10-11 23:10:28'),
 (473,158,'          ','2014-10-11 23:10:29','2014-10-11 23:10:29'),
 (474,159,'      ','2014-10-11 23:10:29','2014-10-11 23:10:29'),
 (475,159,'          ','2014-10-11 23:10:29','2014-10-11 23:10:29'),
 (476,159,'          ','2014-10-11 23:10:29','2014-10-11 23:10:29'),
 (477,160,'Sistema Unico de Manejo de Emergencia 9-1-1','2014-10-11 23:10:30','2014-10-11 23:10:30');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (478,160,'Grupo Vive S.A.     ','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (479,160,'          ','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (480,161,'      Oficinista, recepcionista en Servicios Secretariales S,A.\r\n2008.','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (481,161,'          Asistente legal; Oficina jurÃ­dica; 2011','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (482,161,'          Asistente Legal; oficina jurÃ­dica, 2012','2014-10-11 23:10:30','2014-10-11 23:10:30'),
 (483,162,'      ','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (484,162,'    Secretaria de la coordinacion Regional de Salu','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (485,162,'          ','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (486,163,'     vendedor en premier universe ','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (487,163,'          jefe de seguridad de conway david','2014-10-11 23:10:31','2014-10-11 23:10:31'),
 (488,163,'       asistente de supervisor en super bau intera','2014-10-11 23:10:32','2014-10-11 23:10:32');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (489,164,'      ','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (490,164,'          ','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (491,164,'          ','2014-10-11 23:10:32','2014-10-11 23:10:32'),
 (492,165,'      Secretaria Recepcionista en Universidad Latina de PanamÃ¡ \r\n(15 de septiembre hasta el 1 de Diciembre del 2102 )            ','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (493,165,'  Mercadeo y Publicidad \r\nUniversidad Latina de Pa','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (494,165,'          Cajera en Multicines \r\nNacionales \r\n( En','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (495,166,' Fuegos artificiales de PanamÃ¡\r\nAsistente contable','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (496,166,' Transfernan\r\nSecretaria\r\n         ','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (497,166,'Rodelag\r\nVendedora      ','2014-10-11 23:10:33','2014-10-11 23:10:33'),
 (498,167,'      S.i.e.m.e.c. secretaria','2014-10-11 23:10:34','2014-10-11 23:10:34');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (499,167,'          Grupo Rey cajera','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (500,167,'          Emisora La Exitosa secretaria','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (501,168,'Sprago Store en 2006 - 2008','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (502,168,'Terminales David PanamÃ¡ 1 aÃ±o    y tres meses.','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (503,168,'Digicel promotora de ventas','2014-10-11 23:10:34','2014-10-11 23:10:34'),
 (504,169,'    Cyber CafÃ©  ','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (505,169,'        FacturaciÃ³n  ','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (506,169,'          Secretaria Dept.Compras','2014-10-11 23:10:35','2014-10-11 23:10:35'),
 (507,170,'      ','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (508,170,'          ','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (509,170,'          ','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (510,171,'INADEH- Administrador Virtual','2014-10-11 23:10:36','2014-10-11 23:10:36');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (511,171,' INADEH- Tutor Virtual       ','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (512,171,'Barreiro & Barreiro   Abogados-\r\nSecretaria','2014-10-11 23:10:36','2014-10-11 23:10:36'),
 (513,172,'      ','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (514,172,'          ','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (515,172,'          ','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (516,173,'IGLESIA SAN JUAN MARÃA VIANEY\r\n-OFICINISTA','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (517,173,'KENDAL ELECTRONICS\r\n- ADMINISTRACIÃ“N DE LA SUCURS','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (518,173,'GLOBAL INDUSTRIAL\r\n-ADMINISTRACIÃ“N DE LA SUCURSAL','2014-10-11 23:10:37','2014-10-11 23:10:37'),
 (519,174,'      Asistencia de Gerencia General (Duero latina, S.A) ','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (520,174,'          Oficinista, registro y control de docume','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (521,174,'          Ejecutiva de Venta y atenciÃ³n al client','2014-10-11 23:10:38','2014-10-11 23:10:38');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (522,175,'      CHK IngenierÃ­a, S. A.\r\n      Contador      ','2014-10-11 23:10:38','2014-10-11 23:10:38'),
 (523,175,'          Candanedo y Candanedo. Auditora         ','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (524,175,'       Guerra y CÃ­a., S. A.\r\nJefe de Contabilidad','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (525,176,'      Digicel Panama\r\nEjecutiva de ventas ','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (526,176,'          Universidad Latina \r\nAtenciÃ³n al Client','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (527,176,'          Celnan Internacional \r\nSupervisor de Per','2014-10-11 23:10:39','2014-10-11 23:10:39'),
 (528,177,'Hospital Punta PacÃ­fica\r\nPanamÃ¡, Ciudad de PanamÃ¡\r\njunio 2010-diciembre 2013      ','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (529,177,'          ','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (530,177,'          ','2014-10-11 23:10:40','2014-10-11 23:10:40'),
 (531,178,'      4 1/2 aÃ±os Tropical Fruit Company, S. A.  Febrero de 2009 a Noviembre 2013','2014-10-11 23:10:40','2014-10-11 23:10:40');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (532,178,'Doger Technology Development, S. A.  2014        ','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (533,178,'          Candanedo y Candanedo.  PrÃ¡ctica Profes','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (534,179,'Inventarista, Empresa Repusa, 2014','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (535,179,'          ','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (536,179,'          ','2014-10-11 23:10:41','2014-10-11 23:10:41'),
 (537,180,'      PrÃ¡cticas ClÃ­nicas  Supervisadas Hospital San Fernando, Hospital Santo TomÃ¡s y  BiomÃ©dica Nacional MINSA.\r\n','2014-10-11 23:10:42','2014-10-11 23:10:42'),
 (538,180,'          Fast, Delivery Fastmedic S.A. Ventas de ','2014-10-11 23:10:42','2014-10-11 23:10:42'),
 (539,180,'          Servilab S.A., Asistente de Ventas y de ','2014-10-11 23:10:42','2014-10-11 23:10:42'),
 (540,181,'      AtenciÃ³n cliente, cajera, relaciones al consumidor en Video Store.','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (541,181,'          Inventarios y encuestas con Epica Consul','2014-10-11 23:10:57','2014-10-11 23:10:57');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (542,181,'          ','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (543,182,'      hospital materno infantil josÃ© domingo de obaldia','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (544,182,'          ','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (545,182,'          ','2014-10-11 23:10:57','2014-10-11 23:10:57'),
 (546,183,'      Asilo de Ancianos Barrio Bolivar.','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (547,183,'          ','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (548,183,'          ','2014-10-11 23:10:58','2014-10-11 23:10:58'),
 (549,184,'cajera en premier universe s,a       ','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (550,184,' cajera y ayudante general winebago de panama     ','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (551,184,'                    ','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (552,185,'BOMBA S.A.\r\nEstudio de factibilidad internacional                                                        Sept. 2012- Feb. 2013\r\n(Nicaragua, Honduras, El Salvador y Guatemala).\r\nCreaciÃ³n de catÃ¡logo virtual para pÃ¡gina web e impresiÃ³n            Sept. 2013- enero- 2014\r\nCreaciÃ³n de material POP y \r\nVideo de presentaciÃ³n de productos\r\n','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (553,185,'PERFORA PANAMÃ S.A. \r\ncreaciÃ³n y posicionamiento','2014-10-11 23:10:59','2014-10-11 23:10:59');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (554,185,'ING.MARVIN RÃOS                                  ','2014-10-11 23:10:59','2014-10-11 23:10:59'),
 (555,186,'Patronato del Sistema Ãšnico de Manejo de Emergencias\r\n 9-1-1 / Secretaria General /Directora Ejecutiva Encargada\r\n              ','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (556,186,'  Caja de Seguro Social  /Supervisora,\r\nAsesora y ','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (557,186,'                              ','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (558,187,'      cajera del super 99 david','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (559,187,'          secretaria asistente de almacen xtop dav','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (560,187,'          ','2014-10-11 23:11:00','2014-10-11 23:11:00'),
 (561,188,'     HERMANOS SAMUDIO, S.A (ASISTENTE DE CONTABILIDAD)','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (562,188,'          CAJA DE AHORROS (PRACTICA SUPERVISADA)','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (563,188,'          ','2014-10-11 23:11:01','2014-10-11 23:11:01');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (564,189,'   Grupo rey ayudante general gerente erika montilla tel: 775-5911 ','2014-10-11 23:11:01','2014-10-11 23:11:01'),
 (565,189,'Super baru ayudante general y atencion al cliente ','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (566,189,' Power club encargado de mantenimiento y aseo gere','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (567,190,'Giras medicas con empresa privada Liga de la Salud ','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (568,190,'Giras medicas pspv con minsa regiÃ³n de ChiriquÃ­','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (569,190,'giras medicas regiÃ³n de la comarca ngabe bugle','2014-10-11 23:11:02','2014-10-11 23:11:02'),
 (570,191,'      Contratista en instalaciÃ³n de plomerÃ­a en general en barriadas','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (571,191,'          seguridad  privado-PROCOSE ','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (572,191,'          Ayudante general en Super Mercado Altami','2014-10-11 23:11:03','2014-10-11 23:11:03');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (573,192,'      ','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (574,192,'          ','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (575,192,'          ','2014-10-11 23:11:03','2014-10-11 23:11:03'),
 (576,193,'      Secretaria de Planilla en el Municipio de Bugaba','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (577,193,'          Asistente de Departamento de Compras','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (578,193,'          ','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (579,194,'      RENÃ‰ & ASOCIADOS \r\nAUXILIAR CONTABLE.      ','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (580,194,'                    ','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (581,194,'                    ','2014-10-11 23:11:04','2014-10-11 23:11:04'),
 (582,195,'            ','2014-10-11 23:11:05','2014-10-11 23:11:05'),
 (583,195,'                    ','2014-10-11 23:11:05','2014-10-11 23:11:05'),
 (584,195,'                    ','2014-10-11 23:11:05','2014-10-11 23:11:05');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (585,196,'16 de abril al 15 de agosto de 2013 (4 meses)\r\nFertilizantes de Centro AmÃ©rica [PanamÃ¡], S.A.\r\nPrÃ¡cticas en el Departamento de InformÃ¡tica y Sistemas\r\nFunciones:\r\nïƒ˜ Brindar mantenimiento y soporte tÃ©cnico a las diferentes oficinas de la empresa, que garantice el buen funcionamiento del equipo, de los programas y de los sistemas para el proceso de la informaciÃ³n.\r\nïƒ˜ Encargado del cableado estructurado de la red (UTP, Fibra Ã“ptica) ïƒ˜ IntegraciÃ³n de equipo activo para redes (concentradores, routers, bridges, etc).\r\nïƒ˜ Soporte a la infraestructura de redes inalÃ¡mbricas','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (586,196,'          ','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (587,196,'          ','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (588,197,'      ï¶	Conocimientos avanzados en office (Word, Excel, Power Point, Publisher. \r\nï¶	Conocimientos bÃ¡sicos  de Software De ProgramaciÃ³n â€œconocimientos bÃ¡sicosâ€ (Microsoft Visual Basic 6, C, C++).\r\nï¶	Conocimientos bÃ¡sicos en Programa de Bases de Datos (Access, Mysql, Mysql Workbench).\r\nï¶	Conocimientos en DiseÃ±o de PÃ¡ginas Web.\r\nï¶	Conocimientos en Sistemas Operativos.\r\nï¶	Conocimientos en redes.\r\nï¶	Conocimientos del manejo de planilla y horas de trabajo de personal. (Insolp Inc.)\r\n','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (589,197,'          ','2014-10-11 23:11:06','2014-10-11 23:11:06');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (590,197,'          ','2014-10-11 23:11:06','2014-10-11 23:11:06'),
 (591,198,'      Labore en el Municipio de David\r\nAlcaldÃ­a, secretaria en Juzgado de TrÃ¡nsito','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (592,198,'       Labore en Price -Smart\r\nDepartamento de Fro','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (593,198,'   Labore en Cerveceria Nacional\r\nSecretaria en De','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (594,199,'      En area administrativa compras Constructora Odebrech. Atencion al  clinte por   4 aÃ±os david y panama.','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (595,199,'      Estudie y trabaje 3 aÃ±os en Estados unidos ','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (596,199,'          ','2014-10-11 23:11:07','2014-10-11 23:11:07'),
 (597,200,'      Clinica Hospital San Fernando','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (598,200,'          Instituto Conmemorativo Gorgas de Estudi','2014-10-11 23:11:08','2014-10-11 23:11:08'),
 (599,200,'          ','2014-10-11 23:11:08','2014-10-11 23:11:08');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (600,201,'      EJECUTIVO DE VENTAS ','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (601,201,'          ENCARGADO DE LOGISTICA','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (602,201,'          ENCARGADO DE  LOGISTICA','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (603,202,'   Experiencia Laboral:\r\nCIMESA, Agosto 2005 hasta Marzo 2014.\r\nDepto. de Recursos Humanos, Supervisora de Personal, Ãrea Administrativa Auxiliar Depto. de Contabilidad Laboral en Recursos Humanos,  AtenciÃ³n al Cliente Ã¡rea operativa.\r\nSupervisora en la SecciÃ²n de Personal de Recursos Humanos\r\nFunciones: confecciÃ³n de cartas, Mutuo Acuerdos de Trabajo, Reporte de Incidencia de los colaboradores en conjunto con el Depto. de AsesorÃ­a Laboral, Autorizaciones de Descuentos Bancarios y otras Instituciones, ConfecciÃ³n de contratos a Colaboradores en los Sistemas APPX, SIGMRE, KRONOS,  ConfecciÃ³n de Riesgos Profesionales Conocimientos de Planilla, Registro de Kronos, AtenciÃ³n de Clientes Internos y Externos, Detalles de Informes Contables, Manejo de Caja Menuda.\r\n\r\n   ','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (604,202,'          Constructora Dr. Luis Arias (David, Chir','2014-10-11 23:11:09','2014-10-11 23:11:09');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (605,202,'          ','2014-10-11 23:11:09','2014-10-11 23:11:09'),
 (606,203,'      SUME 911 - David\r\n   Bomberos - David','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (607,203,'cuarto de urgencia del hospital Regional Rafael He','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (608,203,'cuarto de urgencia del Hospital materno  infantil ','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (609,204,'Tower\'s & Ram\'s, S.A.\r\nAsistente Administrativa\r\nUn aÃ±o de experiencia','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (610,204,'          ','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (611,204,'          ','2014-10-11 23:11:10','2014-10-11 23:11:10'),
 (612,205,'      Almacen Picadilly Store David, mi función en esta empresa era la de CAJERA,  manejaba caja registradora, caja computarizada y fiscal, efectivo, tarjetas de crédito, detección de billetes falsos, clubes de mercancía y brindaba atencion al cliente donde este se sintiera satisfecho del servicio brindado; trabaje un año en esta empresa.','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (613,205,'          Conway Store David,en esta empresa me de','2014-10-11 23:11:11','2014-10-11 23:11:11');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (614,205,'         SUPERMERCADO ROMERO S.A.. labore como caj','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (615,206,'      Gira integrales de salud como tÃ©cnica en enfermerÃ­a.','2014-10-11 23:11:11','2014-10-11 23:11:11'),
 (616,206,'        Aplafa- tÃ©cnica en enfermerÃ­a.  ','2014-10-11 23:11:12','2014-10-11 23:11:12'),
 (617,206,'          ','2014-10-11 23:11:12','2014-10-11 23:11:12'),
 (618,207,'      Secretaria en Ondas Chiricanas','2014-10-11 23:11:12','2014-10-11 23:11:12'),
 (619,207,'          ','2014-10-11 23:11:12','2014-10-11 23:11:12'),
 (620,207,'          ','2014-10-11 23:11:12','2014-10-11 23:11:12'),
 (621,208,'     Star Contac Servicio al Cliente ','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (622,208,'  Hotel Puertas del Sol        ','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (623,208,'Centro Medico Mae lewis          ','2014-10-11 23:11:13','2014-10-11 23:11:13'),
 (624,209,'      Asistente administrativa.\r\nIron City Park S,A\r\nRepresentante legal: Esteban SolÃ³rzano 6662-5557','2014-10-11 23:11:14','2014-10-11 23:11:14');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (625,209,'          Cajera.\r\nCorporaciÃ³n de Inversiones Alf','2014-10-11 23:11:14','2014-10-11 23:11:14'),
 (626,209,'          Promotora de ventas de inmobiliarios.\r\nI','2014-10-11 23:11:14','2014-10-11 23:11:14'),
 (627,210,'      Trabaje como asistente dental en la clinica laser,  en DAvid,con el doctor jorge cordova. Con otra clinica con el doctor wadinger Gerra.','2014-10-11 23:11:14','2014-10-11 23:11:14'),
 (628,210,'          ','2014-10-11 23:11:14','2014-10-11 23:11:14'),
 (629,210,'          ','2014-10-11 23:11:14','2014-10-11 23:11:14'),
 (630,211,'      Asistente Administrativa en Diamonds Clean','2014-10-11 23:11:29','2014-10-11 23:11:29'),
 (631,211,'          ','2014-10-11 23:11:29','2014-10-11 23:11:29'),
 (632,211,'          ','2014-10-11 23:11:29','2014-10-11 23:11:29'),
 (633,212,'     cobra infraestructuras hidráulicas, asistente de planilla, manejo de PAYDAY,  encargada de facturación y maquinaria.','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (634,212,'         bahia motors, sa. cajera, asistente de bo','2014-10-11 23:11:30','2014-10-11 23:11:30');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (635,212,'     A. VERGARA & CONTADORES, asistente administra','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (636,213,'practica profesional de 2 meses en el hospital santo tomas','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (637,213,'practica profesional en el riba smith  ','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (638,213,'practica profesional en la estrella azul','2014-10-11 23:11:30','2014-10-11 23:11:30'),
 (639,214,'   Seguros la Floresta    ','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (640,214,'Uniseguros , (corredores de seguros )          ','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (641,214,'          L.R. ducruet e hijos ','2014-10-11 23:11:31','2014-10-11 23:11:31'),
 (642,215,'      he obtenido experiencia en el área contable, asistencia en compras, atenciaon al cliente, supervisión de grupo, inventarios, proceso producción, ','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (643,215,'          oficios generares, licencia de conducir.','2014-10-11 23:11:32','2014-10-11 23:11:32');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (644,215,'          ','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (645,216,'      Atención al Cliente (Almacén)','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (646,216,'          Clinica Santareza','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (647,216,'          Clinica Orión','2014-10-11 23:11:32','2014-10-11 23:11:32'),
 (648,217,'Alternative Healt Center\r\nSecretaria recepcionista\r\nSeptiembre 2011 a Enero 2013\r\n','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (649,217,'Metales Panamericanos, S.A\r\nOficinista\r\nDiciembre ','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (650,217,'Megabyte Center\r\nSupervisora de cobros\r\nAsistente ','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (651,218,'      ','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (652,218,'          ','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (653,218,'          ','2014-10-11 23:11:33','2014-10-11 23:11:33'),
 (654,219,'      ','2014-10-11 23:11:34','2014-10-11 23:11:34');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (655,219,'          ','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (656,219,'          ','2014-10-11 23:11:34','2014-10-11 23:11:34'),
 (657,220,'      Recepcionista\r\nServicio Domestico Integral\r\nSra. Hilda de trujillo\r\n','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (658,220,'      Secretaria\r\nLic. Roger Lezcano    ','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (659,220,'          ','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (660,221,'      ','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (661,221,'          ','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (662,221,'          ','2014-10-11 23:11:35','2014-10-11 23:11:35'),
 (663,222,'Agrocom\r\nAsistencia Administrativa  - Noviembre 2013 a la fecha\r\nFunciones del puesto: facturación, ingreso de nuevos clientes y recibos en casos de cxc al sistema.  Coordinar todos los procesos de consignación.  Coordinar las importaciones.  Tener control de las entradas y salidas de bodega.   Administrar la documentación de los clientes.','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (664,222,'Corporación Datatell  S.A. \r\nEncargada de Importac','2014-10-11 23:11:36','2014-10-11 23:11:36');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (665,222,'Todo Motor S.A.\r\nEncargada de Importaciones.  Octu','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (666,223,'      Operador de Circuito\r\n       Venetto Casino','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (667,223,'          Captador de datos en Peachtree\r\n        ','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (668,223,'          Cajero\r\n          Ministerio de Salud','2014-10-11 23:11:36','2014-10-11 23:11:36'),
 (669,224,'      cajera 10 años de experiencia','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (670,224,'          atencion al cliente','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (671,224,'         manejo de caja menuda, arqueos de cajas y','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (672,225,'      Fiestas Casinos','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (673,225,'          Mar Caribe','2014-10-11 23:11:37','2014-10-11 23:11:37'),
 (674,225,'          Claro Panama','2014-10-11 23:11:37','2014-10-11 23:11:37');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (675,226,'      Secretaria en Diamodns Clean','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (676,226,'          Encuestador de Campo','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (677,226,'    Azafata      ','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (678,227,'      ','2014-10-11 23:11:38','2014-10-11 23:11:38'),
 (679,227,'          ','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (680,227,'          ','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (681,228,'      Nombre de la empresa: CorporaciÃ³n de Vigilancia\r\nActividad: Agencia de Seguridad\r\nJefe Inmediato: Julio GonzÃ¡lez\r\nTelÃ©fono: 774-3890\r\nCargo: Asistente contable. Marzo de 2014 a la fecha.\r\nFunciones:\r\n*ConfecciÃ³n de Planilla\r\n*Sipe\r\n*PreparaciÃ³n de conciliaciÃ³n bancaria\r\n*FacturaciÃ³n\r\n*Cuentas por cobrar\r\n*Entre otras\r\n','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (682,228,'          Nombre de la empresa: Panaplast\r\nActivid','2014-10-11 23:11:39','2014-10-11 23:11:39');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (683,228,'          Nombre de la empresa: Movicard, S.A.\r\nAc','2014-10-11 23:11:39','2014-10-11 23:11:39'),
 (684,229,' Organo   Judicial\r\nJuzgado Primero de  Circuito  Civil de   ChiriquÃ­\r\n Encaragada de   dar  el trÃ mite a los   procesos  ordinarios, sumarios, orales  y algunos no Contenciosos, tomar declaraciones.','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (685,229,' Pasante de abogado          ','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (686,229,'          ','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (687,230,'      Restaurante El poto\r\ncaja','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (688,230,'          ','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (689,230,'          ','2014-10-11 23:11:40','2014-10-11 23:11:40'),
 (690,231,'      IPACOOP','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (691,231,'          CAJA','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (692,231,'          16','2014-10-11 23:11:41','2014-10-11 23:11:41');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (693,232,'28 de Febrero â€“ 13 de Mayo	Mercaderista\r\nProdima S.A\r\nResponsabilidades: Recibir, colocar y mantener los productos en las estanterÃ­as de los supermercados, manteniendo en todo momento el orden y el aseo; asÃ­ como tambiÃ©n asistir al vendedor cuando lo amerite, como por ejemplo realizar pedidos entre otros.\r\n','2014-10-11 23:11:41','2014-10-11 23:11:41'),
 (694,232,'    2007 â€“ 2009			Analista Junior de Reclamos de','2014-10-11 23:11:42','2014-10-11 23:11:42'),
 (695,232,'2000 â€“ 2007			Asistente del Adulto Mayor\r\nHogar ','2014-10-11 23:11:42','2014-10-11 23:11:42'),
 (696,233,'      ALMACENES ROMERO ATENCION AL PUBLICO PERIODO DE DICIEMBRES.','2014-10-11 23:11:42','2014-10-11 23:11:42'),
 (697,233,'          MERCADERISTA DE BONLAC CON LA AGENCIA DA','2014-10-11 23:11:42','2014-10-11 23:11:42'),
 (698,233,'          PRODUCTOS IBIS MERCADERISTA ,AYUDANTE GN','2014-10-11 23:11:42','2014-10-11 23:11:42'),
 (699,234,'Servicio de atención al Cliente y Ventas en Movistar Panamá (Soluciones Móviles) agente autorizado, 2 años','2014-10-11 23:11:43','2014-10-11 23:11:43');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (700,234,'          ','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (701,234,'          ','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (702,235,' 2012-2014 Ejecutiva de Mercadeo â€“ Universidad CatÃ³lica Santa MarÃ­a la Antigua    ','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (703,235,'2011-2012 Grupo Suadi  Asistente Administrativa ','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (704,235,' 2009- 2011 Promotora de Ventas Residenciales en T','2014-10-11 23:11:43','2014-10-11 23:11:43'),
 (705,236,'      ','2014-10-11 23:11:44','2014-10-11 23:11:44'),
 (706,236,'          ','2014-10-11 23:11:44','2014-10-11 23:11:44'),
 (707,236,'          ','2014-10-11 23:11:44','2014-10-11 23:11:44'),
 (708,237,'      PLACE s,a\r\nAsistente administrativa\r\n3 meses\r\n3 meses practica profesional\r\n775-5505','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (709,237,'          ','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (710,237,'          ','2014-10-11 23:11:45','2014-10-11 23:11:45');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (711,238,'     Petroterminal de Panamá, S.A. \r\n     Secretaria - Recepcionista','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (712,238,'          Fernie, Puerto Armuelles, S.A.\r\n        ','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (713,238,'          Productores Asociados, S.A.\r\n          S','2014-10-11 23:11:45','2014-10-11 23:11:45'),
 (714,239,'      Secretaria Administrativa en la Junta Comunal de Las Lomas. ','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (715,239,'        Secretaria y atención al publico en la Inf','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (716,239,'         Asistente de secretaría en la finca El To','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (717,240,'luluÂ´s accesories, encargada','2014-10-11 23:11:46','2014-10-11 23:11:46'),
 (718,240,'ingenieros de alimentos y consultores, asistente a','2014-10-11 23:11:47','2014-10-11 23:11:47'),
 (719,240,'Ministerio de Obras PÃºblicas, asistente administr','2014-10-11 23:11:47','2014-10-11 23:11:47');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (720,241,'      Hotel Finca LÃ©rida, Boquete- ChiriquÃ­ Contador encargado de Finanzas de la empresa','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (721,241,'          Grupo Rey (empresas Romero) David -Chiri','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (722,241,'    Empresas Romero David ChiriquÃ­ Asistente de C','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (723,242,'      ','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (724,242,'          ','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (725,242,'          ','2014-10-11 23:12:30','2014-10-11 23:12:30'),
 (726,243,' Inversiones La Teca PanamÃ¡, S.A.\r\nAsistente Administrativa\r\nTel: 2402102','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (727,243,' Caja de Seguro Social  \r\nSecretaria Judicial con ','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (728,243,' Transporte de Carga Tejada, S.A. \r\nAsistente Admi','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (729,244,'          ','2014-10-11 23:12:31','2014-10-11 23:12:31');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (730,244,'          ','2014-10-11 23:12:31','2014-10-11 23:12:31'),
 (731,245,'      Laboratorio raly ejecutiva de atencion al cliente ','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (732,245,'          Picadilly s.a vendedora ','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (733,245,'          Picadilly s.a cajera ','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (734,246,'C&S America (LG)\r\nMayo 2013-Noviembre 2013\r\nPanamÃ¡, PanamÃ¡\r\nAgente de AtenciÃ³n al Cliente de Live-Chat\r\nResponsable de atender a clientes de LG mediante Live Chat.','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (735,246,'Hotel Boutique Villa Camilla\r\nJunio 2012-Diciembre','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (736,246,'Platinum Care Services\r\nSeptiembre 2011-Diciembre ','2014-10-11 23:12:32','2014-10-11 23:12:32'),
 (737,247,'      AUTO SERVICIOS MARCONELA\r\nCAJERA, SERVICIO AL CLIENTE ','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (738,247,'          SERVIAUTO MARQ \r\nSERVICIO AL CLIENTE, CA','2014-10-11 23:12:33','2014-10-11 23:12:33');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (739,247,'          ','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (740,248,'      Jefe de DistribuciÃ³n - CervecerÃ­a BarÃº PanamÃ¡','2014-10-11 23:12:33','2014-10-11 23:12:33'),
 (741,248,'          Gerente de Territorio - ECOLAB','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (742,248,'       Administrador Senior de TecnologÃ­a en la a','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (743,249,'      Secretaria Contable','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (744,249,'         Supervisora de Grupo','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (745,249,'          Inspectora de CSS en el área de Construc','2014-10-11 23:12:34','2014-10-11 23:12:34'),
 (746,250,'      CARBONDALE S.A.  Recepcionista, Cajera, Supervisora encargada de turno.  Ciudad de Panama ','2014-10-11 23:12:35','2014-10-11 23:12:35'),
 (747,250,'      Centrum Tower Suites Hotel. Recepcionista. C','2014-10-11 23:12:35','2014-10-11 23:12:35'),
 (748,250,'     LUCESMARLIA S.A. / ATOMICO 0826  Asistente Ad','2014-10-11 23:12:35','2014-10-11 23:12:35');
INSERT INTO `experiencias_colaborador` (`id`,`id_colaborador`,`experiencia`,`created_at`,`updated_at`) VALUES 
 (749,251,'      Asistente administrativa Empresa de Equipos pesado, preparar estados de cuentas, cuentas por pagar y cobrar, confecciÃ³n de planillas de C.S.S. cotizaciÃ³n, orden de comprar, ','2014-10-11 23:12:35','2014-10-11 23:12:35'),
 (750,251,'    secretaria de consultorio medico, confecciÃ³n ','2014-10-11 23:12:35','2014-10-11 23:12:35'),
 (751,251,'          ','2014-10-11 23:12:35','2014-10-11 23:12:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`idiomas_colaborador`
--

/*!40000 ALTER TABLE `idiomas_colaborador` DISABLE KEYS */;
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (1,1,1,3,2014,2014),
 (2,1,2,3,2014,2014),
 (3,1,5,2,2014,2014),
 (4,2,1,2,2014,2014),
 (5,2,2,1,2014,2014),
 (6,3,1,3,2014,2014),
 (7,3,2,1,2014,2014),
 (8,3,5,1,2014,2014),
 (9,4,2,1,2014,2014),
 (10,5,1,3,2014,2014),
 (11,5,2,2,2014,2014),
 (12,6,1,3,2014,2014),
 (13,6,2,2,2014,2014),
 (14,7,1,3,2014,2014),
 (15,7,2,1,2014,2014),
 (16,8,1,3,2014,2014),
 (17,9,2,1,2014,2014),
 (18,10,2,1,2014,2014),
 (19,11,1,3,2014,2014),
 (20,11,2,2,2014,2014),
 (21,12,1,3,2014,2014),
 (22,12,2,1,2014,2014),
 (23,13,1,3,2014,2014),
 (24,13,2,1,2014,2014),
 (25,14,2,2,2014,2014),
 (26,14,1,3,2014,2014),
 (27,15,1,1,2014,2014),
 (28,15,2,2,2014,2014),
 (29,16,1,3,2014,2014),
 (30,16,2,1,2014,2014),
 (31,17,1,3,2014,2014),
 (32,18,1,3,2014,2014),
 (33,19,1,3,2014,2014),
 (34,19,2,2,2014,2014),
 (35,20,2,3,2014,2014),
 (36,21,2,2,2014,2014),
 (37,22,1,3,2014,2014),
 (38,23,1,3,2014,2014),
 (39,24,1,3,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (40,25,1,3,2014,2014),
 (41,25,2,1,2014,2014),
 (42,26,1,1,2014,2014),
 (43,28,1,3,2014,2014),
 (44,28,2,1,2014,2014),
 (45,29,1,3,2014,2014),
 (46,30,1,1,2014,2014),
 (47,31,1,3,2014,2014),
 (48,31,2,1,2014,2014),
 (49,33,1,3,2014,2014),
 (50,34,1,3,2014,2014),
 (51,34,2,1,2014,2014),
 (52,35,1,3,2014,2014),
 (53,35,2,2,2014,2014),
 (54,36,1,3,2014,2014),
 (55,36,2,1,2014,2014),
 (56,37,1,3,2014,2014),
 (57,38,1,2,2014,2014),
 (58,39,1,3,2014,2014),
 (59,40,1,3,2014,2014),
 (60,40,2,2,2014,2014),
 (61,41,1,3,2014,2014),
 (62,41,2,1,2014,2014),
 (63,44,1,3,2014,2014),
 (64,44,2,2,2014,2014),
 (65,45,1,3,2014,2014),
 (66,46,1,3,2014,2014),
 (67,47,1,3,2014,2014),
 (68,48,1,1,2014,2014),
 (69,49,1,3,2014,2014),
 (70,50,2,1,2014,2014),
 (71,51,1,3,2014,2014),
 (72,51,2,2,2014,2014),
 (73,52,1,3,2014,2014),
 (74,53,2,1,2014,2014),
 (75,53,1,3,2014,2014),
 (76,55,1,3,2014,2014),
 (77,56,1,2,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (78,57,1,2,2014,2014),
 (79,58,1,3,2014,2014),
 (80,59,1,3,2014,2014),
 (81,59,2,1,2014,2014),
 (82,60,1,3,2014,2014),
 (83,60,2,2,2014,2014),
 (84,61,1,3,2014,2014),
 (85,61,2,2,2014,2014),
 (86,62,1,3,2014,2014),
 (87,62,2,1,2014,2014),
 (88,63,1,3,2014,2014),
 (89,64,1,3,2014,2014),
 (90,66,1,2,2014,2014),
 (91,67,1,3,2014,2014),
 (92,67,2,1,2014,2014),
 (93,68,1,3,2014,2014),
 (94,68,2,1,2014,2014),
 (95,69,2,1,2014,2014),
 (96,70,1,1,2014,2014),
 (97,71,1,3,2014,2014),
 (98,71,2,2,2014,2014),
 (99,72,2,2,2014,2014),
 (100,73,1,3,2014,2014),
 (101,73,2,1,2014,2014),
 (102,74,1,3,2014,2014),
 (103,75,2,2,2014,2014),
 (104,76,1,3,2014,2014),
 (105,76,2,3,2014,2014),
 (106,77,1,3,2014,2014),
 (107,78,2,2,2014,2014),
 (108,78,5,2,2014,2014),
 (109,79,7,1,2014,2014),
 (110,80,1,3,2014,2014),
 (111,81,1,3,2014,2014),
 (112,82,1,3,2014,2014),
 (113,82,2,2,2014,2014),
 (114,83,1,3,2014,2014),
 (115,84,1,2,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (116,85,1,3,2014,2014),
 (117,85,2,1,2014,2014),
 (118,86,1,1,2014,2014),
 (119,86,2,1,2014,2014),
 (120,87,1,3,2014,2014),
 (121,88,1,3,2014,2014),
 (122,89,2,1,2014,2014),
 (123,90,1,2,2014,2014),
 (124,91,1,3,2014,2014),
 (125,91,2,1,2014,2014),
 (126,94,1,2,2014,2014),
 (127,95,2,3,2014,2014),
 (128,96,2,1,2014,2014),
 (129,96,1,3,2014,2014),
 (130,97,1,3,2014,2014),
 (131,97,2,2,2014,2014),
 (132,98,1,3,2014,2014),
 (133,99,1,3,2014,2014),
 (134,100,2,2,2014,2014),
 (135,101,1,3,2014,2014),
 (136,101,2,1,2014,2014),
 (137,102,1,3,2014,2014),
 (138,103,1,3,2014,2014),
 (139,103,2,1,2014,2014),
 (140,104,1,3,2014,2014),
 (141,104,2,1,2014,2014),
 (142,105,1,3,2014,2014),
 (143,105,2,1,2014,2014),
 (144,106,1,0,2014,2014),
 (145,107,1,3,2014,2014),
 (146,108,1,3,2014,2014),
 (147,108,2,1,2014,2014),
 (148,109,1,3,2014,2014),
 (149,109,2,1,2014,2014),
 (150,110,1,3,2014,2014),
 (151,110,2,2,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (152,111,1,3,2014,2014),
 (153,111,2,1,2014,2014),
 (154,112,1,3,2014,2014),
 (155,112,2,2,2014,2014),
 (156,113,1,3,2014,2014),
 (157,114,1,3,2014,2014),
 (158,115,1,3,2014,2014),
 (159,115,2,1,2014,2014),
 (160,116,1,3,2014,2014),
 (161,117,1,1,2014,2014),
 (162,118,1,3,2014,2014),
 (163,119,1,3,2014,2014),
 (164,119,2,1,2014,2014),
 (165,120,1,3,2014,2014),
 (166,120,2,1,2014,2014),
 (167,121,1,3,2014,2014),
 (168,121,2,2,2014,2014),
 (169,122,1,3,2014,2014),
 (170,122,2,1,2014,2014),
 (171,123,1,3,2014,2014),
 (172,124,1,3,2014,2014),
 (173,124,2,2,2014,2014),
 (174,125,2,2,2014,2014),
 (175,126,1,3,2014,2014),
 (176,126,2,3,2014,2014),
 (177,127,2,3,2014,2014),
 (178,127,7,3,2014,2014),
 (179,128,2,3,2014,2014),
 (180,129,1,3,2014,2014),
 (181,129,2,2,2014,2014),
 (182,130,2,2,2014,2014),
 (183,131,1,2,2014,2014),
 (184,131,2,1,2014,2014),
 (185,132,2,1,2014,2014),
 (186,133,1,3,2014,2014),
 (187,134,1,3,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (188,134,2,1,2014,2014),
 (189,135,1,3,2014,2014),
 (190,135,2,1,2014,2014),
 (191,136,2,2,2014,2014),
 (192,137,1,2,2014,2014),
 (193,138,2,2,2014,2014),
 (194,139,2,2,2014,2014),
 (195,140,1,3,2014,2014),
 (196,141,1,3,2014,2014),
 (197,142,2,1,2014,2014),
 (198,143,1,2,2014,2014),
 (199,144,2,2,2014,2014),
 (200,146,1,3,2014,2014),
 (201,147,1,3,2014,2014),
 (202,147,2,1,2014,2014),
 (203,148,1,3,2014,2014),
 (204,149,1,3,2014,2014),
 (205,150,1,3,2014,2014),
 (206,150,2,1,2014,2014),
 (207,151,1,1,2014,2014),
 (208,152,1,3,2014,2014),
 (209,153,1,1,2014,2014),
 (210,154,2,1,2014,2014),
 (211,155,2,1,2014,2014),
 (212,156,1,3,2014,2014),
 (213,157,1,3,2014,2014),
 (214,157,2,2,2014,2014),
 (215,158,1,3,2014,2014),
 (216,158,2,1,2014,2014),
 (217,159,2,1,2014,2014),
 (218,160,2,1,2014,2014),
 (219,161,1,3,2014,2014),
 (220,161,2,1,2014,2014),
 (221,162,1,3,2014,2014),
 (222,162,2,1,2014,2014),
 (223,164,1,3,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (224,165,1,3,2014,2014),
 (225,166,2,1,2014,2014),
 (226,167,2,1,2014,2014),
 (227,168,2,2,2014,2014),
 (228,169,1,3,2014,2014),
 (229,170,1,3,2014,2014),
 (230,170,2,3,2014,2014),
 (231,170,7,1,2014,2014),
 (232,171,2,2,2014,2014),
 (233,173,1,3,2014,2014),
 (234,174,1,3,2014,2014),
 (235,174,2,1,2014,2014),
 (236,175,1,1,2014,2014),
 (237,176,1,3,2014,2014),
 (238,176,2,1,2014,2014),
 (239,177,1,3,2014,2014),
 (240,177,2,2,2014,2014),
 (241,178,1,3,2014,2014),
 (242,178,2,1,2014,2014),
 (243,179,1,2,2014,2014),
 (244,179,2,1,2014,2014),
 (245,180,2,2,2014,2014),
 (246,181,1,1,2014,2014),
 (247,182,1,3,2014,2014),
 (248,183,1,1,2014,2014),
 (249,184,2,1,2014,2014),
 (250,185,2,1,2014,2014),
 (251,186,1,3,2014,2014),
 (252,187,1,3,2014,2014),
 (253,187,2,2,2014,2014),
 (254,188,1,3,2014,2014),
 (255,188,2,1,2014,2014),
 (256,189,2,1,2014,2014),
 (257,190,2,1,2014,2014),
 (258,191,1,3,2014,2014),
 (259,191,2,1,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (260,192,1,3,2014,2014),
 (261,192,2,1,2014,2014),
 (262,194,1,3,2014,2014),
 (263,195,1,3,2014,2014),
 (264,196,2,1,2014,2014),
 (265,197,2,1,2014,2014),
 (266,198,2,2,2014,2014),
 (267,199,1,3,2014,2014),
 (268,200,1,3,2014,2014),
 (269,200,2,3,2014,2014),
 (270,200,7,1,2014,2014),
 (271,201,2,2,2014,2014),
 (272,203,1,3,2014,2014),
 (273,204,1,3,2014,2014),
 (274,204,2,1,2014,2014),
 (275,205,1,1,2014,2014),
 (276,206,1,3,2014,2014),
 (277,206,2,1,2014,2014),
 (278,207,1,3,2014,2014),
 (279,207,2,2,2014,2014),
 (280,208,1,3,2014,2014),
 (281,208,2,1,2014,2014),
 (282,209,1,2,2014,2014),
 (283,209,2,1,2014,2014),
 (284,210,2,2,2014,2014),
 (285,211,1,1,2014,2014),
 (286,212,1,3,2014,2014),
 (287,213,1,1,2014,2014),
 (288,214,2,1,2014,2014),
 (289,215,2,1,2014,2014),
 (290,216,1,3,2014,2014),
 (291,217,1,3,2014,2014),
 (292,217,2,2,2014,2014),
 (293,218,1,3,2014,2014),
 (294,218,2,1,2014,2014),
 (295,219,2,1,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (296,220,2,1,2014,2014),
 (297,221,1,3,2014,2014),
 (298,221,2,1,2014,2014),
 (299,222,1,3,2014,2014),
 (300,222,2,1,2014,2014),
 (301,224,1,3,2014,2014),
 (302,225,1,3,2014,2014),
 (303,226,2,1,2014,2014),
 (304,227,2,1,2014,2014),
 (305,228,2,2,2014,2014),
 (306,229,1,3,2014,2014),
 (307,230,1,3,2014,2014),
 (308,230,2,3,2014,2014),
 (309,230,7,1,2014,2014),
 (310,231,2,2,2014,2014),
 (311,233,1,3,2014,2014),
 (312,234,1,3,2014,2014),
 (313,234,2,1,2014,2014),
 (314,235,1,1,2014,2014),
 (315,236,1,3,2014,2014),
 (316,236,2,1,2014,2014),
 (317,237,1,3,2014,2014),
 (318,237,2,2,2014,2014),
 (319,238,1,3,2014,2014),
 (320,238,2,1,2014,2014),
 (321,239,1,2,2014,2014),
 (322,239,2,1,2014,2014),
 (323,240,2,2,2014,2014),
 (324,241,1,1,2014,2014),
 (325,242,1,3,2014,2014),
 (326,243,1,1,2014,2014),
 (327,244,2,1,2014,2014),
 (328,245,2,1,2014,2014),
 (329,246,1,3,2014,2014),
 (330,247,1,3,2014,2014),
 (331,247,2,2,2014,2014);
INSERT INTO `idiomas_colaborador` (`id`,`id_colaborador`,`id_idioma`,`id_nivel`,`created_at`,`updated_at`) VALUES 
 (332,248,1,3,2014,2014),
 (333,248,2,1,2014,2014),
 (334,249,2,1,2014,2014),
 (335,250,2,1,2014,2014),
 (336,251,1,3,2014,2014),
 (337,251,2,1,2014,2014);
/*!40000 ALTER TABLE `idiomas_colaborador` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`medicos`
--

DROP TABLE IF EXISTS `medicos`;
CREATE TABLE `medicos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cedula` varchar(45) DEFAULT '',
  `primer_nombre` varchar(45) NOT NULL DEFAULT '',
  `segundo_nombre` varchar(45) DEFAULT '',
  `apellido_paterno` varchar(45) NOT NULL DEFAULT '',
  `apellido_materno` varchar(45) DEFAULT '',
  `sexo` tinyint(1) unsigned DEFAULT '1',
  `id_especialidades_medicas` int(10) unsigned DEFAULT '1',
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT '',
  `foto` varchar(45) DEFAULT 'default1.png',
  `extension` varchar(45) DEFAULT NULL,
  `id_nivel` int(10) unsigned DEFAULT '1',
  `id_ubicacion` int(10) unsigned DEFAULT NULL,
  `observacion` text,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospitalch`.`medicos`
--

/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (10,'4-101-725','Felix','Americo','Abadia','Jurado',1,47,'777-8065','6615-0583','fabadia@cwpanama.net','default1.png','2024',1,4,'Horario de Atencion:\r\nPREVIA CITA\r\nLunes a Viernes 3:00-5:00pm\r\nSabados: Confirmando cita',NULL,'2014-08-26 20:37:53'),
 (13,'','Chi Shing','','Man','',1,7,'7778072','','','default1.png','2245',1,5,'Atencion con Cita Previa',NULL,'2014-07-09 16:32:49'),
 (14,'','Julio','','Osorio','',1,63,'777-8072','','','default1.png','2245',1,5,'Horario de Atencion\r\nLunes a Jueves 2:00pm-3:00pm',NULL,'2014-07-16 16:35:28'),
 (15,'','Rafael','','Rodriguez','',1,39,'774-0128','','','default1.png','2245',1,5,'Horario de Atencion: Segun disponibilidad',NULL,'2014-07-10 13:09:32'),
 (16,'','Manuel','','Espinoza','',1,1,'777-8072','','','default1.png','2245',1,5,'Horario de Atencion:\r\nLunes a Jueves 11:00am- 1:00pm \r\nViernes 3:00pm- 5:00 pm\r\nSábados 10:00am-12 pm',NULL,'2014-07-09 16:09:37'),
 (17,'','Belkys','','Beitia','',1,21,'','','','default1.png','',0,0,'',NULL,'2014-07-16 16:29:02');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (19,'','Porfirio','','Quintero','',1,25,'','','','default1.png','',0,0,'',NULL,'2014-07-16 16:29:20'),
 (20,'','Rafael','','Santamaria','',1,62,'','','','default1.png','',0,0,'',NULL,'2014-07-16 16:30:34'),
 (21,'','Evelio','','Camaño','',1,49,'','','','default1.png','',0,0,'',NULL,'2014-07-16 16:32:30'),
 (22,'','Robin','','Abrego','',1,51,'775-6109','','','default1.png','',0,0,'',NULL,'2014-07-16 16:36:08'),
 (23,'','Amilcar','','Lezcano','',1,5,'777-8079','','','m_23.JPG','2150',1,3,'Horario de Atencion:\r\nLunes 3:00pm- 6:00 pm\r\nMartes, Miercoles y Jueves  y Viernes11:00 am- 1:00 pm/ \r\n3:00pm-6:00pm\r\nSabado 11:00am - 1:00 pm',NULL,'2014-07-16 13:23:45'),
 (24,'8-412-996','Boris','Paul','Caballero','Jimenez',1,5,'777-8076','','borisc@cwpanama.net','m_24.jpg','2185',1,3,'Atecion con Previa Cita',NULL,'2014-07-25 19:11:47'),
 (26,'3-63-921','Myriam','Yolanda','Corsen','Diaz',0,76,'6966-8174','6673-745','myriamcorsen@gmail.com','default1.png','2142',2,3,'Horario de Atencion de urgencias\r\n9:00am hasta 5:00pm\r\nAtencion con citas previas 6966-8174\r\nNO CIA DE SEGUROS.EXCEPTO POLIZAS DE ACCIDENTES COLEGIALES DE GENERALLY Y ASSA.\r\ndesoues de las 12:00pm del Sáabado, Domingo y dias feriados NO SE ATIENDE',NULL,'2014-08-27 17:19:09');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (27,'8-167-524','Egberto','Ildemaro','Rios ','Bedoya',1,9,'777-8076','6676-1996','egberto17@gmail.com','m_27.jpg','2185',1,3,'Horario de Atencion:\r\nLunes a Viernes \r\n10:00am-12:00pm / 3:00pm-6:00pm',NULL,'2014-07-25 19:13:04'),
 (28,'4-100-1506','Gladys','Haydee','Novoa','Miranda',0,25,'7778081','66147615','gladyshnovoa@yahoo.com','m_28.jpg','2130',1,3,'Horario de Atencion:\r\nLunes a Viernes: 7:00am-4:00pm\r\nSabados: 7:00am-12:pm',NULL,'2014-07-29 13:16:02'),
 (29,'','Iliana','','Zorita de Arenas','',0,25,'','','','default1.png','2140',0,0,'',NULL,'2014-08-08 16:35:08'),
 (30,'','Daniel','','Kam Wong','',1,25,'7778079','','','default1.png','2150',1,3,'Horario de Atencion:\r\nLunes a Viernes 10:00am a 12:pm / 3:00pm a 6:00pm',NULL,'2014-07-09 16:56:03'),
 (31,'4-112-730','Rubis','','Perez','Arauz',0,25,'7778076','6615-8332','ruby_perez16@hotmail.com','default1.png','2185',1,3,'ATENCION CON CITA PREVIA',NULL,'2014-07-25 19:14:06');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (34,'8-163-2612','Lucas','Gilberto','De Leon','Arosemena',1,21,'777-8084','6675-8916','deleonarosemena@gmail.com','m_34.jpg','2165',1,4,'',NULL,'2014-07-29 16:54:24'),
 (35,'','Mario Julio','','Giron','',1,36,'777-8079','6625-5723','','default1.png','2150',1,3,'Horario de Atencion:\r\nLunes A Viernes 3.00 pm a 6:00pm\r\nSabados 10:00am - 12:00pm',NULL,'2014-07-09 21:13:44'),
 (36,'','Maria','','Niedda de Molina','',0,36,'777-8079','66161364','','default1.png','2150',1,3,'ATIENDE UNA VEZ AL MEZ',NULL,'2014-07-09 21:10:37'),
 (37,'8-367-921','Carlos','Antonio','Valderrama','Arenilla',1,42,'777-8080','6379-1565','carlosarenilla@hotmail.com','default1.png','2200',1,3,'Horario de Atencion:\r\nPREVIA CITA-POR ORDEN DE LLEGADA\r\n10:00am-11:30am/ 3:00pm-4:30pm',NULL,'2014-08-02 17:34:06'),
 (39,'8-485-849','Vanessa','Linette','Lambiz','Garcia',0,65,'','6676-5704','vlambiz@hotmail.com','m_39.jpg','2142',1,3,'',NULL,'2014-08-02 17:26:24');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (40,'','Andres','','Baez','',1,49,'777-8085','6672-0247','','default1.png','2175',1,3,'',NULL,'2014-07-10 13:11:26'),
 (41,'','Gherson','','Cukier','',1,40,'777-8078','','','m_41.JPG','2225',1,3,'',NULL,'2014-07-17 13:08:43'),
 (43,'','Jose','Ariel','Arenas','',1,51,'','','','default1.png','2140',1,3,'',NULL,'2014-07-17 17:54:32'),
 (44,'4-105-295','Josefina','Martha','Farrugia','Villarreal',0,51,'777-8080','6674-7323','josefinafarrugia@gmail.com','m_44.jpg','2200',1,3,'Horario de Atencion:\r\nLunes a Sabados: 11:00am-1:30pm',NULL,'2014-08-02 17:38:32'),
 (45,'','Jose','','Gallegos ','Aguirre',1,51,'','6676-7824','','default1.png','2150',1,3,'Horario de Atencion:\r\nLunes A Viernes 11:00am-12:00pm\r\n4:00pm-6:00pm',NULL,'2014-07-12 16:38:10'),
 (46,'8-150-258','Franklin','','Aizpura','Contreras',1,14,'  777-8085','6618-4984','franklinaizpurua@hotmail.com','m_46.JPG','2175     ',1,1,'Horario de Atencion:\r\nLunes a Viernes 10:00-12:00pm/ 3:00-5:30pm',NULL,'2014-08-23 13:13:54');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (47,'4-234-27','Domingo','','Correa','Acosta',1,5,'7778064','66043316','xerrud@yahoo.com','m_47.JPG','2024',1,4,'Horario de Atencion:\r\nPREVIA CITA\r\nLunes a Viernes 9:300am-11:00am/3:00pm-5:00pm\r\nSabados: 9:00am-11:00am',NULL,'2014-08-26 20:44:18'),
 (48,'4-143-196','Ada','Isabel','Beitia','Gonzalez',0,10,'7778037','66722955','aid64@hotmail.com','m_48.JPG','2000',1,4,'Horario de Atencion:\r\nCON PREVIA CITA, COMUNICARSE CON LA SECRETARIA',NULL,'2014-07-25 19:39:57'),
 (49,'9-122-1131','Moises','Elias','Alvarez','Amador',1,74,'6568-3335','6480-5253','moy304@gmail.com','default1.png','',3,1,'Horario de Atencion:\r\nPOR ORDEN DE LLEGADA\r\nPARA CITAS LLAMAR DESPUES DE LAS 12:00PM 6568-3335\r\nLunes a Viernes 12:00pm-3:00pm\r\nSabados 8:00am-10:00am\r\n',NULL,'2014-08-08 14:48:38'),
 (52,'9-209-276','Alexander','Elias','Adames','Quintero',1,73,'777-8016','6674-1477','aadames4@yahoo.com','m_52.jpg','3212',4,1,'',NULL,'2014-08-08 14:55:59');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (53,'8-727-2248','Ruben','Dario','Rivera','Arosemena',1,10,'','6617-9757','drriveraarosem@hotmail.com','default1.png','3126',3,1,'',NULL,'2014-08-07 19:42:24'),
 (54,'9-130-828','Juan','','Petrocelli','Rodriguez',1,46,'6568-3335/6876-5556','6616-5317','jpetrocelli17@hotmail.com','default1.png','',4,1,'Horario de Atencion:\r\nCADA 15 DIAS.\r\nLLAMAR A LA SECRETARIA 6568-3335 PARA COORDINAR CITA',NULL,'2014-08-20 14:41:59'),
 (55,'8-442-969','Carlos','Enrique','Abadi­a','Castillo',1,14,'777-8006','6266-8899','carlosabadia17@hotmail.com','default1.png','3056',2,1,'Horario de Atencion:\r\nLunes a Viernes: 11:30am - 12:30pm/ 4:00pm - 5:30pm\r\nSabados: 10:30am - 12:00pm',NULL,'2014-08-06 19:41:48'),
 (56,'4-714-2242','Karen','','Zapata','Montenegro',0,15,'7778091','6676-0159','karenzapata@clinicaflordepiel.com','default1.png','3225',4,1,'',NULL,'2014-08-20 14:45:28'),
 (57,'','Deyla','','Rodri­guez','Rodriguez',0,15,'7778006','62668899','dradeylarodriguez@hotmail.com','default1.png','3056',2,1,'Horario de Atencion:\r\nLunes a Viernes 2:00pm a 5:30pm',NULL,'2014-08-06 19:40:10');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (58,'','Keyla','','Miranda de Arias','',0,15,'774-6010','6232-1220','','m_58.jpg','2035',1,4,'',NULL,'2014-08-02 17:14:54'),
 (59,'4-166-328','Beatriz','','Arcia','Saldaña',0,67,'6595-6031','6595-6031','bettyle03@hotmail.com','default1.png','',4,1,'',NULL,'2014-08-26 20:54:46'),
 (61,'4-723-285','Alexeis','Amir','Serrano','Castillo',1,71,'775-2603','6659-4636','hear4upanama@hotmail.com','default1.png','3216',4,1,'',NULL,'2014-08-08 14:49:01'),
 (62,'','Kira','Yisel','Alvarado','Aguilar',0,22,'777-8019','6674-2209','kirayisel25@hotmail.com','default1.png','2280',1,4,'Horario de Atencion:\r\nLunes a Viernes 3:00pm a 6:00pm\r\nSabados: 11:00am a 1:00 pm',NULL,'2014-08-02 17:14:01'),
 (63,'4-286-173','Yoisy','Lirieth','Montes','Pitti',0,25,'6788-9458','6675-3196','yoisy21@yahoo.com','default1.png','3225',4,1,'',NULL,'2014-08-20 15:30:08'),
 (64,'8-703-1720','Melissa','Isbeth','Batista','Vega',0,25,'6236-1752','6400-4128','drabatistahchiriqui@hotmail.com','default1.png','3226',4,1,'Horario de Atencion:\r\nLunes a Jueves: 1:30pm-6:00pm\r\nSabados 8:00am- 12:00pm',NULL,'2014-08-20 15:26:54');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (65,'','Ida','','Sam Rojas','',0,25,'','','','default1.png','',0,0,'',NULL,'2014-07-17 13:07:33'),
 (66,'','Manuel','','Castrellon','',1,25,'','','','default1.png','',0,0,'',NULL,'2014-07-17 13:09:53'),
 (67,'','Enrique','','Dames','',1,25,'7778029','66148502','','default1.png','2091',1,4,'Horario de Atencion:\r\nCITA PREVIA\r\nLunes a Viernes 9:30am-12:00pm/3:00pm-5:30pm',NULL,'2014-07-16 15:14:21'),
 (68,'4-103-2472','Tomas','Gabriel','Arias','Valderrama',1,25,'777-8024','6614-6501','consultoriomedico.arias@gmail.com','m_68.jpg','2100',1,4,'Horario de Atencion:\r\nCON CITA PREVIA\r\nLunes a Viernes: 9:30 am- 1:00 pm/ 3:30pm a 6:00pm',NULL,'2014-07-25 19:09:23'),
 (69,'8-708-2496','Jorge','Elias','Ng Chinkee','Garcia',1,25,'6568-3335','6619-8467','doctorjorgeng@yahoo.com','m_69.jpg','',3,1,'Horario de Atencion:\r\nLunes a Viernes 3:00pm-6:00pm\r\nSabados: 9:00am-12:00pm',NULL,'2014-08-06 13:20:16'),
 (70,'','Ariel','','Guerra','',1,25,'7778012','','','m_70.JPG','3062',2,1,'',NULL,'2014-07-17 18:01:00');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (72,'','Paola','','Kieswetter','',0,64,'6568-3335','6670-4764','','default1.png','',3,1,'Horario de Atencion:\r\nLLAMAR A LA SECRETARIA DESPUES DE LAS 12:00PM- 6568-3335 Y COORDINAR LA CITA',NULL,'2014-07-22 17:13:56'),
 (73,'','Kamala','','Gutierrez','',0,64,'6568-3335','','','default1.png','',0,0,'',NULL,'2014-07-22 19:32:00'),
 (74,'','Julio','','Silvera','',1,46,'','','','default1.png','2028',0,0,'',NULL,'2014-07-22 17:27:50'),
 (75,'8-412-152','Marta','Cecilia','Sanchez','',0,61,'7772588','','dramasa15@hotmail.com','default1.png','3134',3,1,'',NULL,'2014-08-20 14:29:02'),
 (79,'8-515-863','Eric','Octavio','Tortosa','Greenfield',1,49,'','6612-6484','etortosa@yahoo.com','m_79.jpg','3226',4,1,'Horario de Atencion:\r\nLunes, Jueves, Viernes 4:00pm-6.00pm',NULL,'2014-08-20 15:19:02'),
 (81,'','Luis','','Caballero','',1,1,NULL,NULL,'','default1.png',NULL,0,0,NULL,NULL,NULL);
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (82,'','Heraclio','','Barri­a','',1,49,'777-8000','66714444','','m_82.JPG','2110',1,0,'CITAS DIRECTAMENTE CON LA SECRETARIA',NULL,'2014-07-17 17:47:59'),
 (83,'8-327-390','Gregorio','','Coronado','Higuero',1,78,'777-0062','6674-7776','coronadogregorio@hotmail.com','default1.png','',3,1,'',NULL,'2014-09-06 15:20:58'),
 (84,'','Jorge','','Rodri­guez','',1,51,'6672-4057','','','default1.png','',0,0,'',NULL,'2014-07-22 17:32:20'),
 (85,'','Graciela','','Tejedor','',0,51,'6045-2032','','','default1.png','',0,0,'',NULL,'2014-07-22 17:33:04'),
 (86,'','Octavio','','Bejerano','',1,52,'','','','default1.png','2079',1,4,'',NULL,'2014-07-22 19:36:55'),
 (87,'','Celso','','De Leon','',1,55,'','','','default1.png','2079',0,0,'',NULL,'2014-07-22 19:39:15'),
 (88,'','Khayam','','Arias','',1,61,'7746010','','','default1.png','2035',0,0,'',NULL,'2014-07-22 19:39:38');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (89,'4-98-2011','Ivo','','Guerra','Gonzalez',1,68,'','6616-6479','ivoguerra@gmail.com','default1.png','2079',1,4,'',NULL,'2014-07-25 19:10:45'),
 (90,'','Euri­pides','','Espino','',1,17,'','','','default1.png','2055',1,2,'',NULL,'2014-07-16 17:08:14'),
 (91,'4-113-170','Hilda','','de Candanedo','',0,43,'7778064','66151150','depakene123yahoo.es','default1.png','2024',1,4,'Horario de Atencion:\r\nPREVIA CITA\r\nLunes, Miercoles, Viernes 10:00am-12:00pm\r\nSabados:12:00pm-2:00pm',NULL,'2014-08-26 20:45:43'),
 (93,'4-110-854','Alvaro','','Candanedo','Miranda',1,50,'7778064','6614-0698','alvcanda@gmail.com','m_93.jpg','2024',1,4,'Horario de Atencion:\r\nLUnes a Viernes 2:30pm-5:00pm\r\nSabados 10:00am-12:00pm',NULL,'2014-08-26 20:47:34'),
 (94,'4-101-1926','Maristela','','Gomez','Goff',0,65,'777-8087','6618-2370','maristelagomezg@hotmail.com','default1.png','3087',2,1,'',NULL,'2014-08-06 13:27:20');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (95,'8-357-333','Virginia','De Lourdes','Vieto','Abadia',0,70,'6333-3463','66718641','virginiavieto@hotmail.com','default1.png','',2,1,'',NULL,'2014-08-07 19:50:19'),
 (96,'','Marisol','','Miranda','',0,65,'6748-4076','','','default1.png','',0,0,'',NULL,'2014-07-22 19:25:57'),
 (97,'8-707-2228','Rolando','','Alvarado','Anchisi',1,62,'','','md.of.chiriqui@gmail.com','default1.png','3089',2,1,'',NULL,'2014-08-06 13:18:45'),
 (98,'4-226-2','Maria','Edilma','Arauz','Arauz',0,62,'777-8006','6678-5654','melita70@yahoo.com','default1.png','3056',2,1,'',NULL,'2014-08-20 20:20:14'),
 (99,'4-221-804','Hector','Roberto','Caballero','Montero',1,68,'777-2588','6614-5872','','default1.png','3134',3,1,'',NULL,'2014-08-20 14:30:49'),
 (100,'4-199-656','Carlos','','Mora','Mora',1,77,'777-2588','6672-0988','cmoramora@hotmail.com','m_100.JPG','3134',3,1,'',NULL,'2014-08-27 17:19:33'),
 (101,'8-362-735','Rocio','Cristal','Arroyo','Araya',0,36,'777-2588','6671-8930','','default1.png','3134',3,1,'',NULL,'2014-08-20 14:25:03');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (102,'8-329-880','Alcibiades','','Arosemena','Moreno',1,39,'','6675-1485','','default1.png','3126',3,1,'',NULL,'2014-08-05 18:50:08'),
 (103,'8-298-240','Eimir','Ariel','Perez','Arjona',1,41,'6931-8086','6619-4223','nsiobiotechnology@yahoo.com','default1.png','',3,1,'Consultorio 214',NULL,'2014-08-06 13:25:31'),
 (104,'','Felipe','','Villarreal','',1,42,'7778020','','','default1.png','3120',0,0,'',NULL,'2014-07-17 13:08:10'),
 (105,'','Julio','','Anguizola','',1,70,'','','','default1.png','3150',0,0,'',NULL,'2014-08-08 20:15:51'),
 (106,'N-16-527','Marti­n','Salvador','Soli­s','Jiron',1,49,'774-8025','6430-5506','drmsolis20@gmail.com','default1.png','',3,1,'',NULL,'2014-08-06 13:29:20'),
 (107,'8-207-844','Mitzi','Del Rosario','de Arias','',0,46,'777-8024','6781-4204','ariasmitzi@gmail.com','m_107.jpg','2100',1,4,'Confirmar asistencia. Por Orden de Llegada',NULL,'2014-07-25 19:08:17'),
 (108,'8-363-25','Victor','Melchor','Rivera ','Man',1,49,'7778037','66197495','vriveraman@hotmail.com','m_108.JPG','2000',1,4,'Horario de Atencion:\r\nLunes a Viernes: 10:30am-12:30pm/ 3:00pm-5:30pm\r\nSabados: por llamadas',NULL,'2014-07-25 19:16:04');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (137,'8-390-310','Jorge','','Che','Enseñat',1,7,'','6429-1243','jorgeche1971@hotmail.com','default1.png','3226',4,1,'Horario de Atencion:\r\nLunes, Miercoles, Jueves, Viernes 2:00-4:00pm','2014-07-09 16:37:13','2014-08-20 15:25:27'),
 (138,'8-722-2471','Alfredo','','Molto','Isaza',1,12,'777-8019','6615-3722','alfmolto@gmail.com','default1.png','2280',1,4,'Horario de Atencion:\r\nLunes a Viernes 3:00pm-6:00pm','2014-07-09 16:40:47','2014-08-06 15:11:57'),
 (139,'','Cesar ','','Quintero','',1,10,'777-8072','','','default1.png','2245',1,5,'Horario de Atencion\r\nLunes A Viernes 4:00pm-5:00pm','2014-07-09 16:43:39','2014-07-09 16:43:39'),
 (140,'4-117-647','Hilda','Josefa','Gomez','Goff',0,24,'777-8085','6450-6702','','default1.png','2175',1,3,'Horario de Atencion\r\nLunes a Viernes \r\n10:30 am a 1200:pm/\r\n2:30pm a 5:30pm','2014-07-09 16:51:56','2014-08-22 21:54:43'),
 (141,'8-717-1149','Roxana ','Ivette','Salcedo','Montiel',0,72,'7778019','66170660','roxanasalcedomd@yahoo.com','default1.png','2280',1,4,'Horario de Atencion:\r\nLunes a Viernes 3:00pm-6:00pm\r\nSabados 10:00am a 1:00pm\r\n','2014-07-09 17:03:53','2014-08-08 14:55:42');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (142,'8-515-21','Arkel','','Gonzalez','De Hoyos',1,49,'','6033-4869','drgonzalezarkel@gmail.com','default1.png','3226',4,1,'','2014-07-10 13:12:47','2014-08-20 15:05:10'),
 (143,'N-16-878','Donaldo','Andres','Baez','Del Puerto',1,49,'777-8085','66187534','dabaez@hotmaail.com','m_143.JPG','2175',1,3,'Horario de Atencion:\r\nLunes a Viernes 11:00am- 12:30pm/ 3:30pm- 6:00pm\r\nsabados 9:00am - 12:00pm','2014-07-10 13:15:03','2014-08-22 21:53:41'),
 (144,'8-510-87','Juan ','Carlos','Pretto','Escartin',1,49,'','66167042','drpretto@live.com','default1.png','3226',4,1,'Horario de atencion:\r\nMartes 3:00pm-6:00pm','2014-07-10 13:19:26','2014-08-20 15:17:16'),
 (145,'4-712-2436','Marta','Patricia','Miranda','Ramirez',0,44,'3240','6679-2252','martapatriciamr@hotmail.com','default1.png','3226',4,1,'Horario de Atencion:\r\nLunes a Viernes 1:00pm-4:00pm\r\nSabados: 8:00am-12:00pm','2014-07-16 13:17:06','2014-08-20 15:07:04'),
 (146,'','Adalberto','','Mayorga','',1,66,'','','','default1.png','2235',0,0,'','2014-07-16 16:48:30','2014-07-22 19:43:46');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (147,'8-471-316','Carmen','Roceth','Requena','Castillo',0,6,'777-8016','6674-1487','carmenrequena74@yahoo.com','m_147.jpg','3212',4,1,'','2014-07-16 16:52:35','2014-08-06 13:11:28'),
 (148,'4-721-1241','Jossary','Melissa','Prieto','Ostia',0,75,'777-8071','6151-7808','jossaryp@yahoo.com','default1.png','2025',3,1,'','2014-07-16 16:55:58','2014-08-08 14:56:27'),
 (149,'','Olga','','Petrovna','Guzova',0,15,'','','','default1.png','2235',1,0,'','2014-07-16 16:59:38','2014-07-16 16:59:38'),
 (150,'8-715-1842','Antonio','Alfredo','Quiroz','Coronel',1,17,'6788-9458','6672-6840','aaqc77@yahoo.com','default1.png','3225',4,1,'','2014-07-16 17:06:22','2014-08-20 15:31:48'),
 (151,'3-39-312','Felix ','','Lambiz','Garay',1,10,'777-8077','66324836','','default1.png','2200',1,3,'Horario de Atencion:\r\nLunes a Viernes 10:00am-12:00pm/ 3:00pm-5:30pm\r\nSabados: 10:00-12:00pm','2014-07-17 17:17:46','2014-08-02 17:34:49'),
 (152,'4-714-437','Miguel','Alejandro','Molina','Vega',1,46,'777-8080','66702121','drmiguelmolinavega@gmail.com','default1.png','2200',1,3,'Horario de Atencion:\r\nLunes a Viernes 3:00pm-6:00pm\r\nSabados 10:00am-12:00pm','2014-07-17 17:24:20','2014-08-02 17:37:10');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (153,'8-703-1983','Leonardo','De Jesus','Barrios','Saavedra',1,41,'777-8080','6675-1021','leobarrios21@yahoo.com','default1.png','2200',1,3,'Horario de Atencion:\r\nCADA 15 DIAS, LLAMAR A LA SECRETARIA','2014-07-17 17:30:01','2014-08-30 16:15:11'),
 (154,'N-20-975','Antonio','Manuel','Cordoba','Rincon',1,50,'6568-3335','6151-9392','antoniocordoba12@gmail.com','default1.png','',4,1,'Horario de Atencion:\r\nPOR ORDEN DE LLEGADA\r\nPARA CITAS LLAMAR LUEGO DE LAS 12:00PM 6568-3335\r\nLunes a Viernes 2:30pm-5:00pm','2014-07-21 19:35:21','2014-08-06 13:31:17'),
 (155,'N-18-794','Maria','Cristina','Imolesi','Sokol',0,64,'6568-3335','6615-1740','mcimolesi@yahoo.com.ar','default1.png','',3,1,'Horario de Atencion:\r\nLLAMAR A LA SECRETARIA Y COORDINAR CITA DESPUES DE LAS 12:00PM - 6568-3335','2014-07-22 17:12:45','2014-08-06 13:22:25'),
 (156,'','Elvia','','Navarro','',0,3,'','','','default1.png','1000',0,0,'','2014-07-22 17:15:18','2014-07-22 17:15:18');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (157,'','Emmanuel','','Thompson','',1,3,'','','','default1.png','1000',0,0,'','2014-07-22 17:15:56','2014-07-22 17:15:56'),
 (158,'','Jorge','','Andrade','',1,3,'','','','default1.png','1000',0,0,'','2014-07-22 17:16:25','2014-07-22 17:16:25'),
 (159,'','Jose','Luis','Gomez','De La Lastra',1,3,'','','','default1.png','1000',0,0,'','2014-07-22 17:17:30','2014-07-22 17:17:45'),
 (160,'','Renata','','Castaño','',0,3,'','','','default1.png','1000',0,0,'','2014-07-22 17:18:32','2014-07-22 17:18:32'),
 (161,'9','Velkis','Yolany','Beitia','Montes',0,21,'','6983-1236','','default1.png','2235',1,14,'','2014-07-22 17:21:09','2014-08-20 20:51:06'),
 (162,'','Humberto','','Cerrud','',1,39,'','','','default1.png','2079',3,1,'','2014-07-22 17:26:36','2014-07-22 17:26:36'),
 (163,'','Miguel','','Wong','',1,46,'','','','default1.png','2028',0,0,'','2014-07-22 17:28:25','2014-07-22 17:28:25');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (164,'','Hector','','Castro','',1,46,'','','','default1.png','2028',0,0,'','2014-07-22 17:28:56','2014-07-22 17:28:56'),
 (165,'','Rafael','','Camaño','',1,49,'','','','default1.png','2235',0,0,'','2014-07-22 17:29:55','2014-07-22 17:29:55'),
 (166,'','Alexeis','','Serrano','',1,25,'','','','default1.png','3216',0,0,'','2014-07-22 17:36:13','2014-07-22 17:36:13'),
 (167,'8-383-376','William','','Chong','Chung',1,25,'','6674-5677','willchong2001@hotmail.com','default1.png','2235',1,14,'','2014-07-22 17:37:16','2014-08-20 20:33:55'),
 (168,'4-715-1665','Indira','Del Carmen','Lee','Rodriguez',0,25,'','6674-2992','indira-lee24@hotmail.com','default1.png','2285',3,1,'','2014-07-22 17:38:18','2014-08-06 13:05:31'),
 (169,'','Evans','','Young','',1,40,'','','','default1.png','2225',0,0,'','2014-07-22 17:39:10','2014-07-22 17:39:10'),
 (170,'','Oscar','','Aistin','',1,41,'','','','default1.png','',0,0,'','2014-07-22 17:39:51','2014-07-22 17:39:51');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (171,'','Andres','','Almendral','',1,41,'777-8000 ','6274-0291','','default1.png','2110',1,0,'','2014-07-22 17:40:27','2014-08-07 19:44:04'),
 (172,'','Jose','Antonio','Molina','',1,41,'','','','default1.png','2150',0,0,'','2014-07-22 19:20:27','2014-07-22 19:20:27'),
 (173,'','Gabriela','','Carrillo','',0,42,'','','','default1.png','2200',0,0,'','2014-07-22 19:22:15','2014-07-22 19:22:15'),
 (174,'','Ada','','Castillo','',0,65,'','','','default1.png','2235',0,0,'','2014-07-22 19:23:40','2014-07-22 19:24:35'),
 (175,'8-413-572','Mirna','Edith','Escalona','Aparicio',0,65,'','6931-7725','sharpei1419@yahoo.com','default1.png','2142',1,3,'','2014-07-22 19:27:46','2014-08-02 17:30:37'),
 (176,'','Patricia','','Morales','',0,65,'777-9121','','','default1.png','',0,0,'','2014-07-22 19:28:22','2014-07-22 19:28:22'),
 (177,'','Carol','','Gonzalez','',0,25,'6126-6297','','','default1.png','',0,0,'','2014-07-22 19:30:30','2014-07-22 19:30:30');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (178,'','Estrellita','','Fernandez','',0,64,'','','','default1.png','2079',0,0,'','2014-07-22 19:31:02','2014-07-22 19:31:02'),
 (179,'','Jackeline','','Macias','',0,64,'','','','default1.png','2079',0,0,'','2014-07-22 19:31:34','2014-07-22 19:31:34'),
 (180,'','Zadia','','Mackay','',0,64,'','','','default1.png','2079',0,0,'','2014-07-22 19:32:37','2014-07-22 19:32:37'),
 (181,'','Doris','','Carbajal','',0,64,'6200-8781','','','default1.png','',0,0,'','2014-07-22 19:33:14','2014-07-22 19:33:14'),
 (182,'','Idalia','','Gomez','',0,64,'6090-5607','','','default1.png','',0,0,'','2014-07-22 19:33:51','2014-07-22 19:33:51'),
 (183,'','Pamela','','Ledezma','',0,64,'6550-2833','','','default1.png','',0,0,'','2014-07-22 19:34:30','2014-07-22 19:34:30'),
 (184,'','Agustin','','Montenegro','',1,64,'','','','default1.png','2079',0,0,'','2014-07-22 19:35:02','2014-07-22 19:35:02');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (185,'4-737-2221','Lilia','Gissell','Moreno','Flores',0,64,'6238-3627','6238-3627','liliagisselle@gmail.com','default1.png','',4,1,'','2014-07-22 19:35:34','2014-09-02 17:45:48'),
 (186,'','Ana','','Sagel','',0,64,'','','','default1.png','',0,0,'','2014-07-22 19:36:15','2014-07-22 19:36:15'),
 (187,'','Loira','','Olmedo','',0,52,'','','','default1.png','2079',0,0,'','2014-07-22 19:37:26','2014-07-22 19:37:26'),
 (188,'','Princesita','','Xatruch','',0,52,'','','','default1.png','3120',0,0,'','2014-07-22 19:37:56','2014-07-22 19:37:56'),
 (189,'8-419-554','Alejandro','','Yuil','Valdes',1,75,'777-8071','66165938','alejandroyuil@hotmail.com','m_189.jpg','2025',3,1,'','2014-07-29 13:13:43','2014-08-08 14:56:47'),
 (190,'4-744-318','Luz','Marisin','Gonzalez','Anguizola',0,64,'777-8080','6150-5432','luzmarisin18@hotmail.com','default1.png','2200',1,3,'','2014-08-02 17:32:20','2014-08-02 17:32:20'),
 (191,'8-815-1115','Cesar','Arturo','Rovira','Caballero',1,68,'774-0819','6664-9010','cesararovira09@hotmail.com','default1.png','3126',3,1,'','2014-08-20 14:32:37','2014-08-20 14:32:37');
INSERT INTO `medicos` (`id`,`cedula`,`primer_nombre`,`segundo_nombre`,`apellido_paterno`,`apellido_materno`,`sexo`,`id_especialidades_medicas`,`telefono`,`celular`,`email`,`foto`,`extension`,`id_nivel`,`id_ubicacion`,`observacion`,`created_at`,`updated_at`) VALUES 
 (192,'4-713-1799','Lineth','Sophia','Cedeño','Muñoz',0,44,'6678-5756','6678-5756','linethsophia@hotmail.com','default1.png','6678-5756',4,1,'Para citas directamente con la Licenciada 6678-5756','2014-08-26 20:42:13','2014-08-26 20:42:43'),
 (193,'4-259-543','Amarilis','','Serrano','',0,15,'777-8091','6554-9475','amarilis1773@gmail.com','default1.png','3225',4,1,'','2014-08-26 20:53:23','2014-08-26 20:53:23'),
 (194,'4-736-1565','Jeysi','Yamileth','Olmos','Gonzalez',0,71,'6948-6117','6948-6117','jeysiolmos@gmail.com','default1.png','',4,1,'','2014-08-26 20:57:48','2014-08-26 20:57:48'),
 (195,'4-744-1647','Gabriela','Enith','Arauz','Caballero',0,79,'6507-9572','6507-9572','gaby14arauz@gmail.com','default1.png','6507-9572',4,1,'','2014-09-06 15:12:33','2014-09-06 15:12:33');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;


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
  `nivel` varchar(45) NOT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`niveles`
--

/*!40000 ALTER TABLE `niveles` DISABLE KEYS */;
INSERT INTO `niveles` (`id`,`nivel`,`created_at`,`updated_at`) VALUES 
 (1,'Planta Baja','',''),
 (2,'Piso 1','',''),
 (3,'Piso 2',NULL,NULL),
 (4,'Piso 3',NULL,NULL),
 (5,'Piso 4',NULL,NULL);
/*!40000 ALTER TABLE `niveles` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`niveles_idiomas`
--

DROP TABLE IF EXISTS `niveles_idiomas`;
CREATE TABLE `niveles_idiomas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nivel` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`niveles_idiomas`
--

/*!40000 ALTER TABLE `niveles_idiomas` DISABLE KEYS */;
INSERT INTO `niveles_idiomas` (`id`,`nivel`) VALUES 
 (1,'BASICO'),
 (2,'INTERMEDIO'),
 (3,'AVANZADO');
/*!40000 ALTER TABLE `niveles_idiomas` ENABLE KEYS */;


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
-- Table structure for table `hospitalch`.`tipos_sanguineos`
--

DROP TABLE IF EXISTS `tipos_sanguineos`;
CREATE TABLE `tipos_sanguineos` (
  `id` int(11) NOT NULL,
  `tipo_sangre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`tipos_sanguineos`
--

/*!40000 ALTER TABLE `tipos_sanguineos` DISABLE KEYS */;
INSERT INTO `tipos_sanguineos` (`id`,`tipo_sangre`) VALUES 
 (1,'O+'),
 (2,'O-'),
 (3,'A+'),
 (4,'A-'),
 (5,'B+'),
 (6,'B-'),
 (7,'AB+'),
 (8,'AB-');
/*!40000 ALTER TABLE `tipos_sanguineos` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
CREATE TABLE `ubicacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(45) NOT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`ubicacion`
--

/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` (`id`,`ubicacion`,`created_at`,`updated_at`) VALUES 
 (1,'Torre A','',''),
 (2,'Torre B',NULL,NULL),
 (3,'Pasillo A',NULL,NULL),
 (4,'Pasillo B',NULL,NULL),
 (5,'CINAM',NULL,NULL),
 (6,'Urgencias',NULL,NULL),
 (7,'Intensivos',NULL,NULL),
 (8,'Laboratorio',NULL,NULL),
 (9,'Rayos X',NULL,NULL),
 (10,'Resonancia',NULL,NULL),
 (11,'Contabilidad',NULL,NULL),
 (12,'Deposito',NULL,NULL),
 (13,'Quirófano',NULL,NULL),
 (14,'Especializados',NULL,NULL);
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;


--
-- Table structure for table `hospitalch`.`usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_rol` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` varchar(45) NOT NULL DEFAULT '',
  `updated_at` varchar(45) NOT NULL DEFAULT '',
  `remember_token` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalch`.`usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (1,'admin','$2y$10$M9L6Tq29Er2724HRP5AAMew9TcsrGVj/Zog3LN8OfB7CSf8xyfTEa',1,'2014-10-08 23:05:58','2014-10-11 22:59:03','QuTLmRc2Hk6fXCi4hjH45pnD1YoxIhqYjJcUewHEUfxd8TBe8szzu6PQgyPl'),
 (2,'4-729-2360','$2y$10$SwgJhnVLvtczTta4.3Nmpu4KCmxBzQUSPWLK2/8huZ91fS6n7MClW',3,'2014-10-11 23:04:21','2014-10-11 23:04:21',''),
 (3,'4738-853','$2y$10$DSsMchcWJlIjelmjx/k03OmJtsxxOeFM/QhCc5WNQuUI8N3Tl7FuK',3,'2014-10-11 23:04:22','2014-10-11 23:04:22',''),
 (4,'2-718-2449','$2y$10$3awWGEezgTxBAs.LdWQivuIKxY.oIBEQtdcoAl3oNcQDqYmmQNxRC',3,'2014-10-11 23:04:23','2014-10-11 23:04:23',''),
 (5,'4-755-685','$2y$10$HRwUHn8cBTXhjawIt22dg.W7kbqtZINfpF8mKNFebhw1PA8pWgngy',3,'2014-10-11 23:04:23','2014-10-11 23:04:23',''),
 (6,'4-720-990','$2y$10$sSwGdeIbiGs5XZpzZOvonOfAwEXsC4Y9BsPtzl.7GTn72vwrRKCzS',3,'2014-10-11 23:04:23','2014-10-11 23:04:23',''),
 (7,'8-762-1128','$2y$10$fx5TOM2PnXWtFQj8OkgQKulVareLVcXwQz2Anmvk0QyiaGU2.i3i.',3,'2014-10-11 23:04:24','2014-10-11 23:04:24',''),
 (8,'9-151-478','$2y$10$t75h49BaUGLtUJhMLn7lM.iEGAJig1GUEc1O2PkZ6b6sl.EedvRZm',3,'2014-10-11 23:04:24','2014-10-11 23:04:24','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (9,'4-745-744','$2y$10$jbX5M1etIbZ2hemzcylOye4E1cDIXXB/WFfLn8xxBSRBNBSzSYOSS',3,'2014-10-11 23:04:25','2014-10-11 23:04:25',''),
 (10,'Pe 14-1590','$2y$10$Wb0SzmIQPC1OQWgDl.DeNOjeBW3/Z1GMoxTy..a0xeUbwASl9Wm6q',3,'2014-10-11 23:04:25','2014-10-11 23:04:25',''),
 (11,'4-770-144','$2y$10$Ab7kJSNZ7/ehJNzCy7SdqeL87rbCy96fmBAxDtA8I1bSUc72nXVlO',3,'2014-10-11 23:04:26','2014-10-11 23:04:26',''),
 (12,'4-756-809','$2y$10$IiHkOBTvQQda78sKCOJUyehPPQ9EDTbDFYhMPwfpRRejwZSd1VXFy',3,'2014-10-11 23:04:26','2014-10-11 23:04:26',''),
 (13,'4-220-788','$2y$10$jH4KqoKiCQkWf2jFtovRG.naLpcyiDVLukRVEo45Eyny969bWNIVa',3,'2014-10-11 23:04:27','2014-10-11 23:04:27',''),
 (14,'8-707-2195','$2y$10$uu1m1bqRQpn1pz.jTBK1SOxGNubWjNXMMPgo7cj4/0YmLkMegKcBS',3,'2014-10-11 23:04:27','2014-10-11 23:04:27',''),
 (15,'4-763-236','$2y$10$o3tbh32sgarKPOkwjHoOxu/UrY0svdklOEpe129Mc2LLLC6zVCoiy',3,'2014-10-11 23:04:28','2014-10-11 23:04:28',''),
 (16,'4-754-1945','$2y$10$pI7YLMp7XAzaVeHtGaXOc.xOwaWkd32g9l88Ea7hL2RVaKB33ss0K',3,'2014-10-11 23:04:28','2014-10-11 23:04:28','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (17,'9-730-836','$2y$10$aDS17Uvu2WSmeZMrkDgHnOhlNh61BB9yMg0W19sGAtrczLuV19wZ.',3,'2014-10-11 23:04:29','2014-10-11 23:04:29',''),
 (18,'4-220-83','$2y$10$xU.OWehnOC6eat.WeJ7PYuZc38jyzH8PA7yjoYyhiP0o7vNSXNxy6',3,'2014-10-11 23:04:29','2014-10-11 23:04:29',''),
 (19,'4-740-2162','$2y$10$3P570G/nKlmJ.SBLrNKnKOrGMGb/Bv.Md.ctTdMs9.4C1bsvsfNzC',3,'2014-10-11 23:04:30','2014-10-11 23:04:30',''),
 (20,'4-754-1945','$2y$10$jxR/v7Y1FSLg8RxtP9ZWXOkLEdfTwBeoP1J0dWxoc8CvC.DwzNccC',3,'2014-10-11 23:04:30','2014-10-11 23:04:30',''),
 (21,'4 750 923','$2y$10$TEIgE/9qmvjnxDeL5BdmTuDpgcV0iTCEHnb3dl1R.mffvh3gwX.ci',3,'2014-10-11 23:04:30','2014-10-11 23:04:30',''),
 (22,'4-254-389','$2y$10$gLu4s782lQztieUmrwFRyuP0wYTvpAox3qlY7n1MuxGBLy66c34kq',3,'2014-10-11 23:04:31','2014-10-11 23:04:31',''),
 (23,'4-285-763','$2y$10$/Yb.BKq/O5FxES5GXOJkxuXw1Bsc92/MfYKtPIOXjB/N8da/OsA5y',3,'2014-10-11 23:04:31','2014-10-11 23:04:31',''),
 (24,'4-731-1140','$2y$10$4bBQGSZQbrP/KZEHKiAhr.HW.S363fgAcsdjgthGHDKSXHmdbdzRu',3,'2014-10-11 23:04:32','2014-10-11 23:04:32','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (25,'4-758-2434','$2y$10$3LzG17mMZvm94C4x5SRF0eu2g7BCT/uwaK6APjESUUUdelKVKA8x2',3,'2014-10-11 23:04:32','2014-10-11 23:04:32',''),
 (26,'4-755-685','$2y$10$jycMTS7wNCFPOA5Dys.gBeYCI0ItHa88ywyUaNX2v/iFyGxt2Vg7e',3,'2014-10-11 23:04:33','2014-10-11 23:04:33',''),
 (27,'4-760-231','$2y$10$FzMqzIQko2gXbDknjwo4f.wvl/rgUv.6UvELsSuYLIajggx5Ou2au',3,'2014-10-11 23:04:33','2014-10-11 23:04:33',''),
 (28,'PE14745','$2y$10$T309mWEMzuVhAWqv9.0od.xZ0/NDQyoUQTUScJpBqzl/ipwVJk76.',3,'2014-10-11 23:04:34','2014-10-11 23:04:34',''),
 (29,'4-272-517','$2y$10$JsJYx0kQzEsZHRK/WuyAJu6..SuZn4Rj4W0Z91LPt7kgH/kRnwCB2',3,'2014-10-11 23:04:34','2014-10-11 23:04:34',''),
 (30,'4-240-174','$2y$10$wC1w4w28/j57kDVqHnCwU.PeakgCxr80hyOfLCtdtCEteRXBT2r76',3,'2014-10-11 23:04:35','2014-10-11 23:04:35',''),
 (31,'4-710-2290','$2y$10$LGWPP/YZnEB/l8tw7JZJJOIBEHOszB5jzGNjuv3.KttrftkiL9iGK',3,'2014-10-11 23:04:35','2014-10-11 23:04:35',''),
 (32,'4-718-195','$2y$10$7w5hmKIpbxo8YWiaw6eZRuBsMQsBqhsxeUTdWmrf3fpay6N/ziMme',3,'2014-10-11 23:06:54','2014-10-11 23:06:54','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (33,'8-732-2237','$2y$10$xGWsVny6fHZCVM/hqxTdvOnWeDQyH6XVuedt90hhlXC93dn7PJQDe',3,'2014-10-11 23:06:55','2014-10-11 23:06:55',''),
 (34,'4-191-36','$2y$10$cIW4y1MgEtj5h.6iItkRde1RXIL/PpLi6DXClxGj2u8DNZD16HmBe',3,'2014-10-11 23:06:55','2014-10-11 23:06:55',''),
 (35,'4-726-1565','$2y$10$3ag1FhpEaK5AaGz2bqCTreu.g9PfjOdBwuiq1S7UMzI8iOWobVGj.',3,'2014-10-11 23:06:56','2014-10-11 23:06:56',''),
 (36,'4-728-2431','$2y$10$AJIDGKEdI8bDoCqYJx6EGORa/.7imwc3yJylrMDQP2vsXjRNhxCA2',3,'2014-10-11 23:06:57','2014-10-11 23:06:57',''),
 (37,'4-759-1754','$2y$10$veZCLki9XS1KEPX26h969un2YCGFHLAdjuxcOZh4WGK4Seyg8dk0K',3,'2014-10-11 23:06:57','2014-10-11 23:06:57',''),
 (38,'4-748-1601','$2y$10$CUvlUELCjuhmXWpQdoG6X.Pk10W/B1ESYO3RlCIrB/0Ofw5zOMe0O',3,'2014-10-11 23:06:58','2014-10-11 23:06:58',''),
 (39,'4-281-237','$2y$10$WmvRime2LfetMc1i3PAdIuy3bOqLlEvEXzWJESZBlOg0c2OuZX7YG',3,'2014-10-11 23:06:58','2014-10-11 23:06:58',''),
 (40,'4-278-607','$2y$10$aGGuhbO0fASkFjDReEi2m.IqzjbNiJ2HhzZuaScWkwN/zCw7.qDaG',3,'2014-10-11 23:06:59','2014-10-11 23:06:59','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (41,'1-721-1259','$2y$10$34VLQhYJwpAaCGy3dfSFcewDzFFiQSjGg87KPpw3SVBrvYhbX02j.',3,'2014-10-11 23:06:59','2014-10-11 23:06:59',''),
 (42,'4-744-906','$2y$10$YCE8zeMmIeC0oZQOe47opeQJJPt8m8OY9pMfe9YFgvjiCtRSOrJFC',3,'2014-10-11 23:07:00','2014-10-11 23:07:00',''),
 (43,'4-752-297','$2y$10$AyrhfhSYAVzSwWL3Jf9xj.q8Vwqlv9b0GLFCg60NWcO4pQKZnHHo.',3,'2014-10-11 23:07:00','2014-10-11 23:07:00',''),
 (44,'4-755-685','$2y$10$ggFlch.Vki3njg06e2LICOzWOj6QFp/xBIzyUYs8u0Sj3QS9H8VZC',3,'2014-10-11 23:07:00','2014-10-11 23:07:00',''),
 (45,'4-744-1440','$2y$10$F2JoBrHUdkAS7SYcwIQ2V.G2SlB9GNThO9xQuuC60.JWwFXF5EyTu',3,'2014-10-11 23:07:01','2014-10-11 23:07:01',''),
 (46,'PE-14-745','$2y$10$9p.GO7fDLby31pWseNydMep9nfCdrkw8lduLRH5tApyKwNG89nGpS',3,'2014-10-11 23:07:01','2014-10-11 23:07:01',''),
 (47,'4-727-1999','$2y$10$p.3vROSyUE.5LrYT.yn6heXM3bXvMZZlkFXV46N/rf/bWDPluUvLq',3,'2014-10-11 23:07:02','2014-10-11 23:07:02',''),
 (48,'4-758-1302','$2y$10$utLW8DDLcmJduf.94n5qbOEvv93w4shnHry0uHjDfL4yuB.3o4.ZO',3,'2014-10-11 23:07:02','2014-10-11 23:07:02','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (49,'4-736-1118','$2y$10$xdy8CP5vHw4wXLuQlZL5XOpwkO37CQUGR4k8AWVaTBZD4xbRTiBcq',3,'2014-10-11 23:07:03','2014-10-11 23:07:03',''),
 (50,'4-740-2162','$2y$10$jyhe2z5TzgKeeS92r4UtHOSINvn2V6v3s6Thx9zSg.0GGhyf5Hkha',3,'2014-10-11 23:07:03','2014-10-11 23:07:03',''),
 (51,'8-753-1101','$2y$10$P.882br5qnNGArdCbJuEveqAyqi3dQt3og6FJDA.46duAknfDKM/y',3,'2014-10-11 23:07:04','2014-10-11 23:07:04',''),
 (52,'4-740-2161','$2y$10$ZThOt.itPvgPetw48QknsObH1xWVlsckrNiJ6GEZxYVSIPHreet1W',3,'2014-10-11 23:07:04','2014-10-11 23:07:04',''),
 (53,'4-717-2131','$2y$10$cV4XViirqS8iN0MPneBdNOGMhOXVgAK/E/2nAiNgAtQV947sk4og6',3,'2014-10-11 23:07:05','2014-10-11 23:07:05',''),
 (54,'4-718-195','$2y$10$sWTNlKNnhWnt8hVAG7gyVefeOmQ5zybC.K3yugJCfB86o4kfYEZ/S',3,'2014-10-11 23:07:05','2014-10-11 23:07:05',''),
 (55,'4-755-322','$2y$10$xpfqShIPvTEyEo8ArhQitOeHQSwVsdBnWZN5QvY3EsXTuShAwhUI2',3,'2014-10-11 23:07:06','2014-10-11 23:07:06',''),
 (56,'4-713-1651','$2y$10$/vEW.E3R0/b.Wfgk5FpXm.i2WtQKdirYkfCBSyXMiN5UQaZedT1p2',3,'2014-10-11 23:07:06','2014-10-11 23:07:06','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (57,'4-738-885','$2y$10$S4unyuqjIQNT.ur/MI3v1Oyf9sHojfOv44LOgwoFtfcGiTlmPPP8W',3,'2014-10-11 23:07:06','2014-10-11 23:07:06',''),
 (58,'4-738-885','$2y$10$FB6k70N6oJ98Zb3eGqvxuutp31Ne9zrbL0sc4FrEWetM.AOwzf5Om',3,'2014-10-11 23:07:07','2014-10-11 23:07:07',''),
 (59,'4-743-2345','$2y$10$M/AIHXjAShGlYb8DO7k4oOl.sUq/uw9x9q9HrvxTPDeJDIP.m4Bv.',3,'2014-10-11 23:07:08','2014-10-11 23:07:08',''),
 (60,'4-738-504','$2y$10$aEk6iHZDnlUj.bLL370qYOo4BqanH85tQ3SSf7kwSw/60v735BIIO',3,'2014-10-11 23:07:08','2014-10-11 23:07:08',''),
 (61,'4-760-391','$2y$10$r6JtUPDZ04HB.uJkhja55ukcaH9yds8h8lwvTss6eVm2FBHuM2cWa',3,'2014-10-11 23:07:09','2014-10-11 23:07:09',''),
 (62,'4-760-391','$2y$10$0099yZgMvgWZGD1LNEauiORdUqj5UTlRAvOB2TcoQAO9hzAAPzy5S',3,'2014-10-11 23:07:34','2014-10-11 23:07:34',''),
 (63,'4-740-640','$2y$10$/VGna46t2XY3yLMtC80XAe6TbzcYYz.8a33oSGokPufjPhRlEks46',3,'2014-10-11 23:07:34','2014-10-11 23:07:34',''),
 (64,'4-721-235','$2y$10$021s7qXZS9iD7a9uR6PdNuvV6WF5BSiFdAJpdqCOZ2cGS7AvksOCe',3,'2014-10-11 23:07:35','2014-10-11 23:07:35','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (65,'4-745-744','$2y$10$k1z0.sLjG3vrk/008Vfx1u1DyVuibmbQ/I3uYT2CMmHp14j8KFYWO',3,'2014-10-11 23:07:35','2014-10-11 23:07:35',''),
 (66,'4-126-2178','$2y$10$y7ecDM5cK.Yyqk/8fmlnv.avPIP4PsEFDBDues2IS3ZxjuaWr4RH.',3,'2014-10-11 23:07:35','2014-10-11 23:07:35',''),
 (67,'4-721-238','$2y$10$UJI8zMhQaDTsNyxjpKSdVewBoCEJ6hE.J91fE0LDidVH2PCFV7cPO',3,'2014-10-11 23:07:36','2014-10-11 23:07:36',''),
 (68,'PE-12-1143','$2y$10$okb9Gdm7bXAbVho08XTRtO97Se1lWm6NaProApdZCRYJ2PaOfwkOK',3,'2014-10-11 23:07:37','2014-10-11 23:07:37',''),
 (69,'8-732-2237','$2y$10$zqPmzsiteDTgvuM.aCqv8OV1rL6OPrOmN6Vwjan2B9OfXmSmecMMK',3,'2014-10-11 23:07:37','2014-10-11 23:07:37',''),
 (70,'4-751-320','$2y$10$ycTl85vzLOmP6TwJeYAxCO9uS80Jg/vcUXTrrg46x6uFMgCDpwQSq',3,'2014-10-11 23:07:38','2014-10-11 23:07:38',''),
 (71,'4-736-1118','$2y$10$.GwIx7GG32zzal0oIcxvsuaxvKA5kh4AND.0b2l4jkqla.ZTDC6TS',3,'2014-10-11 23:07:38','2014-10-11 23:07:38',''),
 (72,'6-702-1476','$2y$10$6yW2.ORYT86XI.slYYTHOeDzUpup5JGWwR4U1PXvAXyPBjeLJ4I4C',3,'2014-10-11 23:07:39','2014-10-11 23:07:39','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (73,'4-705-1','$2y$10$qVKUc43irKnurDJQhvHOvOPqjqN8XsDrZqm3H32gpTUMvgaq1Vfwa',3,'2014-10-11 23:07:39','2014-10-11 23:07:39',''),
 (74,'4-705-1411','$2y$10$EJgLWI04HnPbo/.MaDNsHOpowJpTBBqgm0OW4ndKGD0bFIzCsqLiG',3,'2014-10-11 23:07:40','2014-10-11 23:07:40',''),
 (75,'PE92480','$2y$10$tRqwYGyfbCc7oBnlFrVwO.8ukn..RndT6f3HS9bWU2C4JAKmFrb.e',3,'2014-10-11 23:07:40','2014-10-11 23:07:40',''),
 (76,'4-739-488','$2y$10$6o7bWTipgBdNMcIPtP8WkO98RaMmuIhr848yIJe0am6N5Mqu0OLqe',3,'2014-10-11 23:07:41','2014-10-11 23:07:41',''),
 (77,'110480572','$2y$10$A30xuQu5v9PrMeE5HDB.9OCfqxWBwFqaOtfvS7iLLjrIjaw/N99BK',3,'2014-10-11 23:07:41','2014-10-11 23:07:41',''),
 (78,'4-735-2450','$2y$10$.GBbQVDMd/qWoRT7e6nQPuMEi0Levwc2j38sQUPAGJ1w.irSUAbBS',3,'2014-10-11 23:07:42','2014-10-11 23:07:42',''),
 (79,'4-749-2042','$2y$10$5HAvjrSb3G5.tYtmE0Y2N.APn8NZ99RSlsgqEUrh.OZcldaxq3DeW',3,'2014-10-11 23:07:42','2014-10-11 23:07:42',''),
 (80,'1-715-518','$2y$10$i0uaFSRvTKLQo8KG7xO2A.OJRqNlLEEAop8lKbieR1YYsyT7GZcFC',3,'2014-10-11 23:07:43','2014-10-11 23:07:43','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (81,'4-725-2047','$2y$10$3ENnNQ84sXNOyEvjZF9dF.VwvN6UVKTHTIkSWDH0VGk.C9M3dk8Di',3,'2014-10-11 23:07:43','2014-10-11 23:07:43',''),
 (82,'4-741-223','$2y$10$dC.60RVCcVJlIFPmpEH4tuMdrYQYgCmI5qhKdL6i9Isa15HF590Hy',3,'2014-10-11 23:07:43','2014-10-11 23:07:43',''),
 (83,'4-758-1510','$2y$10$zjs6lDJa32OogoJ0k6FItOB5x/rxAQehs89BOXWVSmHMsgXbwrWa2',3,'2014-10-11 23:07:44','2014-10-11 23:07:44',''),
 (84,'4-731-671','$2y$10$gTP79H4MqD6jozkZ0d8f2OaTf0wm1sETRA3YILtf6bjb8c2489WPC',3,'2014-10-11 23:07:44','2014-10-11 23:07:44',''),
 (85,'4-750-837','$2y$10$7wl61OTOdF1qKEtiIXhZ6O2CJLnCqNhVZ/zcIPk322jDSwSY9zdqm',3,'2014-10-11 23:07:45','2014-10-11 23:07:45',''),
 (86,'4-749-821','$2y$10$00GxUBdBgr972XoXnyl9Rehe75ynhIm1htKda0vUZX8x8opf5tl6G',3,'2014-10-11 23:07:45','2014-10-11 23:07:45',''),
 (87,'4-703-867','$2y$10$fdKcxWFOjtZymnBs14f74uqp2hl5N5KM0O5HalN4dnNgDtqC6vn6i',3,'2014-10-11 23:07:46','2014-10-11 23:07:46',''),
 (88,'4-234-920','$2y$10$O5UJLNXRwAGNJmEbfOMDreh1YfqkQr91UgdLpZtNSzLeC30ZkBytS',3,'2014-10-11 23:07:46','2014-10-11 23:07:46','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (89,'4-756-595','$2y$10$4OkgEJ8UiP65vr6ytEoTbOTsAXHkMq1ou8S1AldmH8rm0oP7Qei1K',3,'2014-10-11 23:07:47','2014-10-11 23:07:47',''),
 (90,'4-738-783','$2y$10$klhEywD6FUJfZThwVVsuBOXkQ8PI95jEvMBWyPj18hFBFGmBPiOZK',3,'2014-10-11 23:07:47','2014-10-11 23:07:47',''),
 (91,'8-371-577','$2y$10$/m7./uP3ay67lPAJOdlnY.S5NSkMHhX1Ur/v.9O/sBnoXSgsvfvUK',3,'2014-10-11 23:07:48','2014-10-11 23:07:48',''),
 (92,'4-785-2276','$2y$10$sBMcuF4XPt0UIbQDqQj9FeoOlX0pDuCbSbUEmyaWl21Uiri4tx5y2',3,'2014-10-11 23:08:43','2014-10-11 23:08:43',''),
 (93,'4-745-1692','$2y$10$TK/CEnrYweDksaxI1wGveegyPTZJ0l6KoI.xdJ2C3HyCVFXgF80TS',3,'2014-10-11 23:08:44','2014-10-11 23:08:44',''),
 (94,'4-746-1','$2y$10$Y25MbwbN7omJZ/COU4P9aOSaQkSmGMr0DqTefUA0rlSFovA7Bm2Tu',3,'2014-10-11 23:08:44','2014-10-11 23:08:44',''),
 (95,'4-729-1819','$2y$10$5on406Cn74eTW2B3qqAB5e09o2xXoJkFH75h29YBNX.wLt.N2t1v2',3,'2014-10-11 23:08:45','2014-10-11 23:08:45',''),
 (96,'4-720-1153','$2y$10$WME7R2Vg0YF3z5XDvuCbB.26Z3hZki9yjMY1uRjVcfYIdxPvUr.16',3,'2014-10-11 23:08:45','2014-10-11 23:08:45','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (97,'4-757-1570','$2y$10$4n7Jm/Tkvl4rXRJG4RsjBuL50XZqmp/r4qR11nKmGBXcCqAeFsXKC',3,'2014-10-11 23:08:46','2014-10-11 23:08:46',''),
 (98,'8-762-1128','$2y$10$UzfU57QIfGw4daxwExjmyO28KyN/Sr.mHn90LgscNk08pLkhDNBMa',3,'2014-10-11 23:08:46','2014-10-11 23:08:46',''),
 (99,'8-757-570','$2y$10$Mnrf2FSv4uv3cbfdULKGcuVpOH5PQY6yUNIdJZYEH7y5gNOOBK16S',3,'2014-10-11 23:08:47','2014-10-11 23:08:47',''),
 (100,'4-760-188','$2y$10$pJ6AzPQ2VBYVyxfvvnCn4eTWwWK/Obh3YWj9TGdjbQFCIa4qZ40ZG',3,'2014-10-11 23:08:47','2014-10-11 23:08:47',''),
 (101,'4-752-297','$2y$10$f4294y8676rDtASASAjDZ.wqup8dPMHKu2ygpkmFYOPyj1sEzgKCC',3,'2014-10-11 23:08:48','2014-10-11 23:08:48',''),
 (102,'4-740-241','$2y$10$HE2TIU9jIP6i7c2ykp.lTOahtoLxiiuG3EZDer47uwK3Q2gRE5bsC',3,'2014-10-11 23:08:48','2014-10-11 23:08:48',''),
 (103,'4-736-729','$2y$10$Vf/ToAgo1BWqxzAwBduhOu1wFgTs25sUgeLiQcJVUhqc1zS9gK3yK',3,'2014-10-11 23:08:49','2014-10-11 23:08:49',''),
 (104,'8-7072195','$2y$10$0R1My2uarPTmETXzOGvzBugz24ErIUH43laWB7/3AHRbM9fOeixKC',3,'2014-10-11 23:08:49','2014-10-11 23:08:49','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (105,'4-770-2140','$2y$10$u5Yj1bF3dbDauBILwSLkVuHKIBoERplZIKuhCgzChTtcVq7edp6vy',3,'2014-10-11 23:08:50','2014-10-11 23:08:50',''),
 (106,'4-729-1032','$2y$10$lvCzfJK.Tr3aYxE9Ys9w/uWJpjnyfNGlGktY3oXy2a4PoHGFck7X2',3,'2014-10-11 23:08:50','2014-10-11 23:08:50',''),
 (107,'4-758-2436','$2y$10$IBojYl.HuqzFAC1HJTGH1O6mTfnPL4DjDkM/jzyz5mQbQQwiVry0u',3,'2014-10-11 23:08:51','2014-10-11 23:08:51',''),
 (108,'4-154-625','$2y$10$QH4x/7Rj3Ith2FC/qupO4e7DXuGKOVabHoSRqsZKQv.sZO3YasqpS',3,'2014-10-11 23:08:51','2014-10-11 23:08:51',''),
 (109,'4-717-2297','$2y$10$3HXQN7kdL80Jll7z5I4PFuH1Uqe2f3t1GRXgahfae5DgXabftOEgO',3,'2014-10-11 23:08:52','2014-10-11 23:08:52',''),
 (110,'4-724-497','$2y$10$vmhM3zJYqy9phdNSjnSJ/.tA740VTUYkwhAC/s1u3BP8SC7bla1Ku',3,'2014-10-11 23:08:52','2014-10-11 23:08:52',''),
 (111,'1-39-5','$2y$10$EAD1XfX1QGWdOS.Rin/I1u3X4kJQcv6XC1ZaYlASEKkU6lEjanAzq',3,'2014-10-11 23:08:53','2014-10-11 23:08:53',''),
 (112,'4-752-2086','$2y$10$9eaczkTJYd0Whu2MVIfeDu14QgwmGdbyE8McWSuzMWjvSEXv4UVN6',3,'2014-10-11 23:08:54','2014-10-11 23:08:54','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (113,'41537912G','$2y$10$67zXlQ.nNIlR8Yt/ZxCmm.qXs6JPvOXNxsgRrB.uPZYEUPD5OLLtm',3,'2014-10-11 23:08:54','2014-10-11 23:08:54',''),
 (114,'8-732-348','$2y$10$gFX4fNnMhwQeLhIyNWcP7u1.q2HxFt.2yPq5kTdCTlKZfCmQjeEPG',3,'2014-10-11 23:08:55','2014-10-11 23:08:55',''),
 (115,'4-714-348','$2y$10$E03PgRgLGl52Ip.QMCyf4ulSAktEvVMlTm3zzXW813adf8y/rN5jC',3,'2014-10-11 23:08:55','2014-10-11 23:08:55',''),
 (116,'4745492','$2y$10$GfV9NBi56FGnkxwOlipi8.WD4J/92xzPNfpFk.3FufzQrdHSIlecK',3,'2014-10-11 23:08:56','2014-10-11 23:08:56',''),
 (117,'4-721-2419','$2y$10$C1FH1wuszhh8P1zW01677uudS4PiEuaHa2BTnrAXEhGALjSByBjgq',3,'2014-10-11 23:08:56','2014-10-11 23:08:56',''),
 (118,'4-770-1719','$2y$10$4YHbesLby8tVvc4iBxkMxuJKyBA83CRFHpnEJmUxymgjGj.5yoHTq',3,'2014-10-11 23:08:57','2014-10-11 23:08:57',''),
 (119,'4-259-151','$2y$10$IsMkBZx4zCGpxjSibGIl9.OcCWLgN1/g2LkmgubswqvOMhrDgoMzy',3,'2014-10-11 23:08:57','2014-10-11 23:08:57',''),
 (120,'4-724-997','$2y$10$JlMwdWrIYMXoQDRLexJ.wOrxE0jPSeSC0ZyxJD00tBjtAQtfJgfHO',3,'2014-10-11 23:08:58','2014-10-11 23:08:58','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (121,'8-760-2342','$2y$10$8XjWvoBcKmPlo5JGHJx.Zu..cDEheApNig68vSCn5PGioV2oOEEqO',3,'2014-10-11 23:08:59','2014-10-11 23:08:59',''),
 (122,'4-755-1522','$2y$10$/nDAxuRx1jWTqHHbZUTpg.itlRjPOJQCBTqxcL4oPTX4v/E6/BTBS',3,'2014-10-11 23:09:55','2014-10-11 23:09:55',''),
 (123,'4-744-1127','$2y$10$QLpt5E0udGt1aETtImhHr.o41KiyKVNlDVWjekHbOQ8G9VV8NKEQO',3,'2014-10-11 23:09:55','2014-10-11 23:09:55',''),
 (124,'4-717-713','$2y$10$SSRLgz8kVsbK2PR3lnJUGelGZtIzXDI4jedGEJ/VbyfffnmvpL.Eq',3,'2014-10-11 23:09:56','2014-10-11 23:09:56',''),
 (125,'8-736-439','$2y$10$7Sshc1tImRWHJEeKGLg7Peyl1PLEnllI.Htyz6KpaGcRwJqznfo6y',3,'2014-10-11 23:09:57','2014-10-11 23:09:57',''),
 (126,'4-733-1687','$2y$10$S/OVOvaWYCuODhErN1KF9erGykstYgQc2nTyU/YdrxgoKIiB7oeRC',3,'2014-10-11 23:09:57','2014-10-11 23:09:57',''),
 (127,'4-753-1283','$2y$10$wLYs8XQ4/il5yOWBM1me0OBmGa161tY7vuhC9kF7vvw9m9tPTIxnm',3,'2014-10-11 23:09:58','2014-10-11 23:09:58',''),
 (128,'4-726-1472','$2y$10$RhKCdTcv0CuapCZOLZ82rekCyOcApW9M/b5q2.eXGPAFSHfg/PtHe',3,'2014-10-11 23:09:58','2014-10-11 23:09:58','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (129,'4-713-570','$2y$10$Z1Nw/hWiJj/JP94iuZjnmujwOMApE1Gs0S4RVRfklxxsS4h1MKv7m',3,'2014-10-11 23:09:59','2014-10-11 23:09:59',''),
 (130,'4-729-83','$2y$10$njR3duyfQ/mTcdnLdEML7Oj6Zis6HQbMI.TGEW8.qLqzhYXJkbwh2',3,'2014-10-11 23:09:59','2014-10-11 23:09:59',''),
 (131,'4-721-578','$2y$10$kYYDTLymShIv1jFFfatcOe.9oKyGZ.a4vA.44hvoRor9MAbtj/4O6',3,'2014-10-11 23:10:00','2014-10-11 23:10:00',''),
 (132,'4-743-2350','$2y$10$Xqx6yxfp5.uF6oLIi6KkretiKmxUTTWfbeQ0W70UJu4pPE8H/abO6',3,'2014-10-11 23:10:01','2014-10-11 23:10:01',''),
 (133,'4-747-2455','$2y$10$NsIDJbNS0zkns9RVoG3foOguW64VelnpaA/6av2mKfHWCuF.xU88G',3,'2014-10-11 23:10:01','2014-10-11 23:10:01',''),
 (134,'4-750-1681','$2y$10$fKliOWfmu8Rj4l3SQz8f/O9SPxeACmr26wU6EAf/36CmJ0TZR2dRm',3,'2014-10-11 23:10:02','2014-10-11 23:10:02',''),
 (135,'4-720-1004','$2y$10$lZgPqQBmpdTm8r0r/jlo/.m9sVWuDSlgkQvDWueR0Ym6x7t7sqWHK',3,'2014-10-11 23:10:02','2014-10-11 23:10:02',''),
 (136,'4-772-236','$2y$10$V7HmYIi70VB3YzajjWLXv.lF8uQhpQGlwyBHi/fZmhQhJ5rVfjkDy',3,'2014-10-11 23:10:03','2014-10-11 23:10:03','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (137,'4-763-312','$2y$10$uzuRTIohAlCgRO3o8KWhP.9VF5ODD4xaWDn.Zx6foprcSxX3IySia',3,'2014-10-11 23:10:04','2014-10-11 23:10:04',''),
 (138,'8-853-1062','$2y$10$m.K/8b3UP9zv/2LG9VkqT.9mfdCxAnOAEMtDU33A64UCoavCyj0PO',3,'2014-10-11 23:10:04','2014-10-11 23:10:04',''),
 (139,'4-760-52','$2y$10$oNQUtOHKqgb2mgA87m9C4eki4y2qCnEVVpDjOXj5dBhMEJdaUUK5a',3,'2014-10-11 23:10:05','2014-10-11 23:10:05',''),
 (140,'4-738-783','$2y$10$prQks.HO6vMiW6BnO1dC7OKQ9nFKR1e4TcAGwuaY52frfXQgcL8e.',3,'2014-10-11 23:10:05','2014-10-11 23:10:05',''),
 (141,'4-721-241','$2y$10$ijNcG3YNRSc./cvJ8PrF9OIDSNnoxxtkei29KlK7w4wBm5tte4jt.',3,'2014-10-11 23:10:06','2014-10-11 23:10:06',''),
 (142,'4-750-2287','$2y$10$SrX8z3SEnL4DiRLrF9KNzu8wfdhaQv8WMZJM9XgI6dMhl8itFJgjm',3,'2014-10-11 23:10:07','2014-10-11 23:10:07',''),
 (143,'47192058','$2y$10$6r4MZe8Opv25ihUEh8fch.XTqD/zQBvqfHnUBCvCMVj46gwAwLwia',3,'2014-10-11 23:10:07','2014-10-11 23:10:07',''),
 (144,'4742215','$2y$10$tQ9G0RGNhw00KuKELa4/K.5l5IyOJmlvmegpbQEfZXyYeI/24HvBq',3,'2014-10-11 23:10:08','2014-10-11 23:10:08','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (145,'811401274','$2y$10$PF2uTg/zcRAjIrbu/iK3Le/rsP.HBAQ.xPOaifh3m2IUbJLvJ/6rm',3,'2014-10-11 23:10:08','2014-10-11 23:10:08',''),
 (146,'4-763-2016','$2y$10$Xgw9PJZUHxOMD087.PamueNo3vRu2XjL5coU7SB0LzukzH0CSkckO',3,'2014-10-11 23:10:09','2014-10-11 23:10:09',''),
 (147,'4-731-671','$2y$10$HmKyEM1vUz2EAmTwxVVoKeoFt3dpyuaG1BycyQSmStEKLOl2HbAeW',3,'2014-10-11 23:10:09','2014-10-11 23:10:09',''),
 (148,'4-732-315','$2y$10$qTt3dwaHW4gBskhaE3wxFebP39G24A.fdMj6RJc2n5RAOn1EGEwfO',3,'2014-10-11 23:10:10','2014-10-11 23:10:10',''),
 (149,'1-720-2085','$2y$10$o/ExcixzUH4MOySTbAbKfuCetB7oedBMIx1P9n3oM1/lbcLVPaQG.',3,'2014-10-11 23:10:11','2014-10-11 23:10:11',''),
 (150,'4-756-940','$2y$10$m5CkC/cb.0NUQugNr.4Wg.tUrE2Jh5j02QfWnupOY0dEqGJONOZw2',3,'2014-10-11 23:10:11','2014-10-11 23:10:11',''),
 (151,'4-721-167','$2y$10$PkJIsPCjnUn8UmafmlYB6u.jlS2/uFMdQHy1gvcFl3BOL3AFBUNlO',3,'2014-10-11 23:10:12','2014-10-11 23:10:12',''),
 (152,'8-853-1062','$2y$10$JxIoI1dn.b/K167fDBqAqORpGYyyutJqGMaQiZsBSp36Wz/Ug.N8u',3,'2014-10-11 23:10:24','2014-10-11 23:10:24','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (153,'4 704 2434','$2y$10$aNbKyppddueK1aqj9lr9H.15SoH4bIuuVh0yAYxiBU4XMhivfw3AG',3,'2014-10-11 23:10:25','2014-10-11 23:10:25',''),
 (154,'4-770-1719','$2y$10$eqB3POZU9yFWInqmhYhHZ.LrttjpIcKFu7nfrK5qc0UmB0QSmI8vW',3,'2014-10-11 23:10:26','2014-10-11 23:10:26',''),
 (155,'8478251','$2y$10$rmTRH73YjGxcXeEcqtdKIetZrURjs8H3cI8.7EVIKzeiZDUPKnUJW',3,'2014-10-11 23:10:26','2014-10-11 23:10:26',''),
 (156,'114010348','$2y$10$jsn8EZHADJzdcqPLSWOIPeOyyCT.sw4N1fShOicpaDqZNzV7t74m6',3,'2014-10-11 23:10:27','2014-10-11 23:10:27',''),
 (157,'1-1028-0773','$2y$10$TTvD/sGAwpr/oOH2IS5.ZeOTyxVPBd/2PoGTrgPNKadMbzYkdwYsG',3,'2014-10-11 23:10:27','2014-10-11 23:10:27',''),
 (158,'4-739-2067','$2y$10$CpC3N2b9SnM/B9Xwbw6NJ.yDIv7gD7W12m0/uVInXBOHSXDojYjc6',3,'2014-10-11 23:10:28','2014-10-11 23:10:28',''),
 (159,'4-740-1633','$2y$10$uleEvY6a8i.vJz061xTk4uZNvj6BOzU//spnVACH03ySCOZvKjApm',3,'2014-10-11 23:10:29','2014-10-11 23:10:29',''),
 (160,'4-754-848','$2y$10$lxicb3w1haf2P9eXBVbTBugfyGKq/ydd3BmAgwN1mxKIIQ9kJ.sYa',3,'2014-10-11 23:10:29','2014-10-11 23:10:29','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (161,'8-813-317','$2y$10$V/AJFRR6.Kv9NiCGvEKwceuCcKpxiA50NuQdjLhL5QSFkmTLrYc/G',3,'2014-10-11 23:10:30','2014-10-11 23:10:30',''),
 (162,'4-758-1976','$2y$10$jUSf5Wc3X2CZ4icUxF7JIeBWW.9GMZ0OK5Jw35V6Um/LYOPGc7Pp.',3,'2014-10-11 23:10:31','2014-10-11 23:10:31',''),
 (163,'4-736-729','$2y$10$zWmwjGZXoZrwNsyFKKiGSe8duBUSt9Kql0UejwNL55Rulj8oTtf.S',3,'2014-10-11 23:10:31','2014-10-11 23:10:31',''),
 (164,'4-738-885','$2y$10$9dysiFXIymc3LWGwNpmhCeF2Sy5SDOPsl85/vmQHnXsapXLsZNwuy',3,'2014-10-11 23:10:32','2014-10-11 23:10:32',''),
 (165,'4-731-671','$2y$10$k1ENt38bthwYlRHI7k.Jo.0HnOzYVua36920DIfN35N1PlMPkGc82',3,'2014-10-11 23:10:32','2014-10-11 23:10:32',''),
 (166,'4-752-260','$2y$10$pcNfQQ43vff/3qeGE961DOcKiyVVHr.4jKsIvypigcN3UrBzVw2lW',3,'2014-10-11 23:10:33','2014-10-11 23:10:33',''),
 (167,'4-754-848','$2y$10$BQpTz8DmzkDAsmxPQpgMAeuC.sAHUIKI0ZnlHXyuJJZz85/EeuIqC',3,'2014-10-11 23:10:34','2014-10-11 23:10:34',''),
 (168,'4-733-1462','$2y$10$0MpLNvuuxQ9inqdfXJMFcuSrOOcbJ72stPgWUln55DyfTbAAMqCYS',3,'2014-10-11 23:10:34','2014-10-11 23:10:34','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (169,'4-750-1376','$2y$10$FCY3/cdoVzmZIuEIypov7OJ/1fQEzQsRqQ5DcZF3nFX4oLTdmFCqW',3,'2014-10-11 23:10:35','2014-10-11 23:10:35',''),
 (170,'4-713-1651','$2y$10$37LJOo8MYNUBjsoS/el51ulqM6rRHMNv5siy6Wh94mtv8WNK9iEZa',3,'2014-10-11 23:10:35','2014-10-11 23:10:35',''),
 (171,'8-244-490','$2y$10$qDyk7/N6YP16q/r3sOxvNun2th4pzM10kbtV4g6sCDk.tO0QVNfdu',3,'2014-10-11 23:10:36','2014-10-11 23:10:36',''),
 (172,'4-738-231','$2y$10$qEXVb8VQiLfnkDz1FBCqWOifRYXEPBgCMwIMFmoXA2.BS/Ns8mUtm',3,'2014-10-11 23:10:37','2014-10-11 23:10:37',''),
 (173,'4-742-2182','$2y$10$EX/Na1mqlyVdEdOqpxqHW.SjMSsxk24ZFJJkOOwUGQ0VhwU9wHqW2',3,'2014-10-11 23:10:37','2014-10-11 23:10:37',''),
 (174,'4-745-1611','$2y$10$5navkGyCRkGj9YhSb01pCOIGutEajsLNnMOrReqdA1g4lBYNzGgnm',3,'2014-10-11 23:10:38','2014-10-11 23:10:38',''),
 (175,'47591','$2y$10$zpv/qDi/tSJVAfXvsQOVwec2xgqY7TAdzBJ6xkBc3anHa10mmDy7G',3,'2014-10-11 23:10:38','2014-10-11 23:10:38',''),
 (176,'4-184-987','$2y$10$HtUE2x.oYWyf8WMMkzosO.1b./cUzcKJdaJ9l2K1d9XeqUVQlO0Pq',3,'2014-10-11 23:10:39','2014-10-11 23:10:39','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (177,'4-732-1908','$2y$10$iUuKq8.ik/8mRwMmWZCLeuxVN38CGsd2jB14C3jkM45T1D9daqaFW',3,'2014-10-11 23:10:39','2014-10-11 23:10:39',''),
 (178,'8-783-1220','$2y$10$lcC4VKDW9j191aCDoI5wTe6kBBtA920iCz80Ld3ARtRmMQuajYh1G',3,'2014-10-11 23:10:40','2014-10-11 23:10:40',''),
 (179,'4-730-208','$2y$10$PoxxZcyFvH8VZS9yxRFyp.xZMcOcLv8TBU2chSdfz0jPi4n.kLcMO',3,'2014-10-11 23:10:41','2014-10-11 23:10:41',''),
 (180,'4-763-1152','$2y$10$y.2MojQ/mvmdWvyhYTUFc.TcqLFbku62GIveXKX.1hIVXiZ7O0Tca',3,'2014-10-11 23:10:42','2014-10-11 23:10:42',''),
 (181,'4-753-280','$2y$10$dXC.WxBE/ufalD8KmW3Hnuw9x2sI/JjY2YhXeveAAGoLCG.VDzFNK',3,'2014-10-11 23:10:42','2014-10-11 23:10:42',''),
 (182,'4-746-377','$2y$10$ElaeI8D3nDKWg5SI8uo7euSLAIdp2ZM1wDJngj8iwZwOQdbrBGtDW',3,'2014-10-11 23:10:57','2014-10-11 23:10:57',''),
 (183,'8-837-2162','$2y$10$0tA.VsOh3OGRc7Mn1QdIGOgNGVmEQ5KVsIUEcP3tVUVEO5rRVHwCe',3,'2014-10-11 23:10:58','2014-10-11 23:10:58',''),
 (184,'4-757-1053','$2y$10$Dj1GAEk5sLxwH3k3zceUS.VOxYeGG9ZEonKUUx0iJVzAuK3RwGE42',3,'2014-10-11 23:10:58','2014-10-11 23:10:58','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (185,'4-762-288','$2y$10$xWNBKuCntVWTBL6LeVTqk.j9h9BuPKdKC8wk4EhZAeg5ugImae6Au',3,'2014-10-11 23:10:59','2014-10-11 23:10:59',''),
 (186,'4-743-998','$2y$10$q1itdC6lz/ZFhG.W647UReQRDou7Uhwqk9WVv80Ygb6GQAXS.Exa6',3,'2014-10-11 23:10:59','2014-10-11 23:10:59',''),
 (187,'4-267-526','$2y$10$Mxh/XBE31IjH7rKOvsMX6O.WM/gOVQcbAu9wfWSi1kxx.0m1xQAo.',3,'2014-10-11 23:11:00','2014-10-11 23:11:00',''),
 (188,'4-745-421','$2y$10$OwcSAJ4nR33kHx8inrP7T.xJ8MPxyTPxDxx0PPQYg9OuS6w5kFf9S',3,'2014-10-11 23:11:01','2014-10-11 23:11:01',''),
 (189,'4-777-1878','$2y$10$LgM/A4tTx4ixgUNgCmMIcO.4S1haiM9afjgFbZ2CJoy7qmQlNmc0O',3,'2014-10-11 23:11:01','2014-10-11 23:11:01',''),
 (190,'4-755-1928','$2y$10$wRBTEBqYengJHYeuvMBTOeF0DS5Y.pmBzJwq6yGBNHqHoCOWtJwEu',3,'2014-10-11 23:11:02','2014-10-11 23:11:02',''),
 (191,'4-737-1687','$2y$10$MtPHDSCRPAUMn.iDYaUKa.jP3Utb4TvrNA5fJKjrTEUdrnl.rHjBq',3,'2014-10-11 23:11:02','2014-10-11 23:11:02',''),
 (192,'4-750-1759','$2y$10$u7E.CeT8kMXEJcf.CxyZeeR1Uljj40xha7RdPYpWAeqOZ.LUxRoAO',3,'2014-10-11 23:11:03','2014-10-11 23:11:03','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (193,'4-721-241','$2y$10$0EVpLD/g/wxZLNLZCqaBgO531WeZl/pAxHdvpZYlS48QT0S9XeAd6',3,'2014-10-11 23:11:04','2014-10-11 23:11:04',''),
 (194,'47421905','$2y$10$cwPICP837KXsfkWS0Kl/xul1c.zevkWbzreETJdB5YplXGbV.jkMK',3,'2014-10-11 23:11:04','2014-10-11 23:11:04',''),
 (195,'4-759-2462','$2y$10$iO2uWwNNfDd6t3mPBnchKehzStPqhfojuXUYrbn4ZG8hcQFbAJs2C',3,'2014-10-11 23:11:05','2014-10-11 23:11:05',''),
 (196,'4 727 1793','$2y$10$/hMDjA8eDFZNxxnGFOnjduYnQu3ueSiOKnkWcqz6GVpCIopz4n9UC',3,'2014-10-11 23:11:05','2014-10-11 23:11:05',''),
 (197,'1-725-111','$2y$10$atFfZ5h32FmjxES8DsHEOunX4hJz9Y9Y43Hyov4lExdEsQGvBeiGS',3,'2014-10-11 23:11:06','2014-10-11 23:11:06',''),
 (198,'4-746-1','$2y$10$DLf42VA0nPzznO8PBI0zouUjnBBiCnnG8GGqTpp9cLzo1zsPlCa7e',3,'2014-10-11 23:11:06','2014-10-11 23:11:06',''),
 (199,'4-293-36','$2y$10$BSQIRh6VZucA5TYBvLNi1..CsqHVsgWPOXdlTZm0h0PDxRPCIubA6',3,'2014-10-11 23:11:07','2014-10-11 23:11:07',''),
 (200,'4-724-177','$2y$10$1VC5Ird9lO5g8EbGBT6zgOD4NISnk.wW06Kti624/tCMd/7AcGKI2',3,'2014-10-11 23:11:08','2014-10-11 23:11:08','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (201,'4-744-414','$2y$10$nAopVDxjtEjA7TESePyiMu/of7jWwTMYQiWdDE6h1ohzjf7AkVsDu',3,'2014-10-11 23:11:08','2014-10-11 23:11:08',''),
 (202,'4-248-771','$2y$10$HllyOl6frfH3xGdNXMM5M.HbCrpbUiGEzxunjnAISIuO0hXHVjuQe',3,'2014-10-11 23:11:09','2014-10-11 23:11:09',''),
 (203,'4-211-12','$2y$10$3uTpwPRzrad5.vLtTarpzu1mDUNa59f0VyKD49KgXvFObRJ5m9Itu',3,'2014-10-11 23:11:09','2014-10-11 23:11:09',''),
 (204,'4-752-1430','$2y$10$psNSVzxaWJEXtnH6GDRqFOKHZQKiUAxyd.5U/..UyMWoYulDFFlOS',3,'2014-10-11 23:11:10','2014-10-11 23:11:10',''),
 (205,'4-749-461','$2y$10$AXJFCE1JI02WgohIuMNxjOb1cHEHPRuF2pxJgFkcy/PWnsFHCx6n2',3,'2014-10-11 23:11:11','2014-10-11 23:11:11',''),
 (206,'4-742-32','$2y$10$PWIFa8G5bMEgb.xFvPjNlO7IIB2oTryBDGrKsyk3sJQMUCHw3osbC',3,'2014-10-11 23:11:11','2014-10-11 23:11:11',''),
 (207,'4-739-673','$2y$10$peG0vAn0K6osrEP0CvY7K.2nOfsghPKzTIV0UdIct1Ui.0H9V6MlO',3,'2014-10-11 23:11:12','2014-10-11 23:11:12',''),
 (208,'4-772-2271','$2y$10$oOrAwcDGb0KhA.tfzI0q0OJ/fjF6A9cte8pSnM2NYfCUt7jVsgfwe',3,'2014-10-11 23:11:13','2014-10-11 23:11:13','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (209,'4-757-873','$2y$10$g.4q6GPoS8gguiCUTmEFlunfWBqRbVMKewXyje3NOfV.Dm4zAom9u',3,'2014-10-11 23:11:13','2014-10-11 23:11:13',''),
 (210,'47581374','$2y$10$8KMvEF80pYR.xYhhIj8ZPuP42Y9yg0cbubwIWQyXZGSvuY7PZm5.2',3,'2014-10-11 23:11:14','2014-10-11 23:11:14',''),
 (211,'4-766 435','$2y$10$wIk1nvJx2C/QpabAeHbzK.6ZtXRx8LmIUALyCinscVL8G.p50..Rm',3,'2014-10-11 23:11:15','2014-10-11 23:11:15',''),
 (212,'4-758-1686','$2y$10$/CGv6GcCahemyI2dQBjwHu61NdhLKv4/tH7zV2gw9Chjt3ARGy1Fy',3,'2014-10-11 23:11:30','2014-10-11 23:11:30',''),
 (213,'4-721-241','$2y$10$0UAu0/mCZpLc.l2luaKvKOMgVab0syzWugPFbCk/qTaXSON994b4m',3,'2014-10-11 23:11:30','2014-10-11 23:11:30',''),
 (214,'9-735-2268','$2y$10$yfEI1dPWk4opHE3cEr0VeudG3V0uhM.wcwPacb55g.1iQwQ0W5f3C',3,'2014-10-11 23:11:31','2014-10-11 23:11:31',''),
 (215,'4-242-805','$2y$10$C5RUGuw8C3trPYF9PyUar.tIOmR6uhCqUMfS/ubHdJ1jLsfHp0lgS',3,'2014-10-11 23:11:31','2014-10-11 23:11:31',''),
 (216,'1-703-2008','$2y$10$Oe5jws.vdpxmFqmzUm9tk.0xuTNKeutXyXu48PdZxn9M.6vrbPeCe',3,'2014-10-11 23:11:32','2014-10-11 23:11:32','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (217,'4-220-504','$2y$10$QaBFUqZqLEIZmE8uUwRyJe9okXx1YvTPgTTW3IAq9AkTwuYkZisFK',3,'2014-10-11 23:11:32','2014-10-11 23:11:32',''),
 (218,'4-235-866','$2y$10$QgNysT1zyF0qDJ.xq.DmDuUcwGJYZ0OKfcYHze2c.e.KzCGunN82G',3,'2014-10-11 23:11:33','2014-10-11 23:11:33',''),
 (219,'4-715-1120','$2y$10$ICB0Xf.P6owNGRLMKg3o0e6OCvdye6BoJphF44QkkZxa31GSH5syy',3,'2014-10-11 23:11:34','2014-10-11 23:11:34',''),
 (220,'8-843-2050','$2y$10$M0gxZqswCMvxX7GI0anwq.LAco8T8ukfIkAVHD/YJeF9iouteoIDC',3,'2014-10-11 23:11:34','2014-10-11 23:11:34',''),
 (221,'4-758-1302','$2y$10$EX79pwdRMwV0J0ts.7v2/OVy76inCedTihnlaxb3QgJMh680y3BiS',3,'2014-10-11 23:11:35','2014-10-11 23:11:35',''),
 (222,'4-774-55','$2y$10$cZE.fraQ8lCGl15TixeIPen/XAFiS3EheG3Fqxb4Pu2SV1p5SuW2.',3,'2014-10-11 23:11:35','2014-10-11 23:11:35',''),
 (223,'8-732-24','$2y$10$Kpr3cPqfTqq8G8iLx6exOuXinrAkf/WsO6XMwgOIbe5Xt2tMd4aFa',3,'2014-10-11 23:11:36','2014-10-11 23:11:36',''),
 (224,'4-718-1148','$2y$10$5aZhZ.cSoAdMgCqjlVbpbuG0HtoDo1fV578Y6lO.OqHDeiHUT6HGK',3,'2014-10-11 23:11:37','2014-10-11 23:11:37','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (225,'4-282-148','$2y$10$M7q23BSZVZB19LVtKSMDmebO5/Ds6T/u2Drpz0Z7El/yRH7V2KWGe',3,'2014-10-11 23:11:37','2014-10-11 23:11:37',''),
 (226,'47391015','$2y$10$/EG6LuQE6mVa5k7WdHwNQOY5P2dNEdG.tgFBZ4WUoOhF/Gw79BMrC',3,'2014-10-11 23:11:38','2014-10-11 23:11:38',''),
 (227,'4-758-1686','$2y$10$sY5tEyiF.N5usggPwCmyWu/DlTGXhw4JVYxyQqB0D.N9naRNCBBSm',3,'2014-10-11 23:11:38','2014-10-11 23:11:38',''),
 (228,'5-764-716','$2y$10$9m95REKhCtB.n3yj8stFC.4uYNQNNIa/Y1w603Y1sn4v.ohKGLuEC',3,'2014-10-11 23:11:39','2014-10-11 23:11:39',''),
 (229,'4-714-1082','$2y$10$OC6Km0eaaNOdF4qV3383V.qHfGNsaL40sx4kU/5JiIS99lve9vHqa',3,'2014-10-11 23:11:39','2014-10-11 23:11:39',''),
 (230,'4-754-1005','$2y$10$u.hBuwS8rTAKn2LN.MSkkuw.Wu/FEyibbragO3z/BSErKpzr3bDm2',3,'2014-10-11 23:11:40','2014-10-11 23:11:40',''),
 (231,'4753-411','$2y$10$gGXU8yeotQgcnrEXEmRVMu.wXXqSP8CmvGyUyWtl9R6sqFVvfmqxu',3,'2014-10-11 23:11:41','2014-10-11 23:11:41',''),
 (232,'4-715-384','$2y$10$NPXEv81kvSHc/VP8bV7RyuTfAuvVtu0MEJmB7e44WszzBCPW1vcQy',3,'2014-10-11 23:11:41','2014-10-11 23:11:41','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (233,'8-756-680','$2y$10$Cu/YLsruh126MF14xRtzBuLDXm6SUlpJ7oPN6VFwC0kygVr2BdgsS',3,'2014-10-11 23:11:42','2014-10-11 23:11:42',''),
 (234,'4-732-1855','$2y$10$SB9FrUCMYr.OZm2UanxFkOIlkYQVJJGh7e2uzfzhsHXClcOvDeyda',3,'2014-10-11 23:11:42','2014-10-11 23:11:42',''),
 (235,'4-752-1914','$2y$10$CALnZJaLROC7HYdhwjDKPuK5W59Kc/DfG5EJYzJPa0vaFb.PlaeQ.',3,'2014-10-11 23:11:43','2014-10-11 23:11:43',''),
 (236,'4-756-416','$2y$10$UOy2JwjUM5zpF.JcBlOc9uimv4d5eZj9DYZexTACWiu./DTMFDNiK',3,'2014-10-11 23:11:44','2014-10-11 23:11:44',''),
 (237,'9-736-1519','$2y$10$m/v8M4odWQ1Ek5/WJjh0bu9NHZkLOr/SBeyE3zzW4ZIPb1OeVsm6K',3,'2014-10-11 23:11:44','2014-10-11 23:11:44',''),
 (238,'04-785-2260','$2y$10$.QNe0bDVWYaWokAVhXBHue.TO47XYK8wWSJvaYvk7PGRTHHjqfB3q',3,'2014-10-11 23:11:45','2014-10-11 23:11:45',''),
 (239,'4-145-609','$2y$10$mO5fAFb0Bc18o49xjZRCsO7jIoCGn.l5pYe4d8sXby/WfLe/Cuz0u',3,'2014-10-11 23:11:46','2014-10-11 23:11:46',''),
 (240,'4-740-356','$2y$10$GL2TKEd9KcVMElwCa9QsfOkx5s7fRLt1274rVAFIYEY9FQWB24qTa',3,'2014-10-11 23:11:46','2014-10-11 23:11:46','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (241,'4-757-561','$2y$10$PVvA6MaUq9Ej2Wdidwb4vuS/6LQiCv29VAKYRgVLubHikOjPka.qW',3,'2014-10-11 23:11:47','2014-10-11 23:11:47',''),
 (242,'4-727-1937','$2y$10$ZYyH0KU6abh7yf.cCAtkNOyxeYQqEHY6SnbBy03KSMLh7VSvAYs3G',3,'2014-10-11 23:12:30','2014-10-11 23:12:30',''),
 (243,'4-728-2367','$2y$10$T7pMVoepN.jtWBZWPL9hnujo5dyyyMVv7oLS0rwqMF8Pw4/Wzutjq',3,'2014-10-11 23:12:30','2014-10-11 23:12:30',''),
 (244,'8-810-457','$2y$10$nETjfKAIPkq8mrRzcNPPrOsBxn/0Q/XWvo/agKRFVQmtNl78Eq.oS',3,'2014-10-11 23:12:31','2014-10-11 23:12:31',''),
 (245,'PE-12-2119','$2y$10$LxWB1MYKzKY2zqcrLAcq4eaZgX82/91lvR6uBB8CeKTwu524rMk7W',3,'2014-10-11 23:12:32','2014-10-11 23:12:32',''),
 (246,'8-853-1062','$2y$10$Jd93VD5ETqURvZAWUyi9H.RhEQ1xj8hEjj3Cd0NZuCv/bq4HN6vKe',3,'2014-10-11 23:12:32','2014-10-11 23:12:32',''),
 (247,'67022034','$2y$10$IbLBkqxTysfLuw5iiMQQ7u6QLRj6eSxaBQQWtVAm4cAjscNQk2oae',3,'2014-10-11 23:12:33','2014-10-11 23:12:33',''),
 (248,'4-758-1747','$2y$10$4c2cyxbOOUb6mARrhQ./JOQ8/p3RyOI7uFq8uU.TuwkE3QqNKm02q',3,'2014-10-11 23:12:33','2014-10-11 23:12:33','');
INSERT INTO `usuarios` (`id`,`user`,`password`,`id_rol`,`created_at`,`updated_at`,`remember_token`) VALUES 
 (249,'4-7306-263','$2y$10$q4s2/t2tSJiIEMFOfpompOowdUid8jAGdvXFZKx9CSLkuju71pYXS',3,'2014-10-11 23:12:34','2014-10-11 23:12:34',''),
 (250,'4-733-2275','$2y$10$szOGKcHVibBqAy4iV.4awOBGeOYMe0G6duCXcdxjWVeaTJofDRw1u',3,'2014-10-11 23:12:34','2014-10-11 23:12:34',''),
 (251,'4-735-2426','$2y$10$KTdyp.qvsA8qx0p5JVGIDOXbT2XSoe0XF.r3QS2WyrM7er37AGTDy',3,'2014-10-11 23:12:35','2014-10-11 23:12:35',''),
 (252,'4-736-2246','$2y$10$smgJCYLhfrMym8N2zOUJbuD9ovadJAW7lf4BxQx1h/QNpmCyy2WJy',3,'2014-10-11 23:12:35','2014-10-11 23:12:35','');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
