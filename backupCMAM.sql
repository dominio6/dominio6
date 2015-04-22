-- Dump de la Base de Datos
-- Fecha: domingo 03 marzo 2013 - 12:59:44
--
-- Version: Str_VERS, del Str_DATE, insidephp@gmail.com
-- Soporte y Updaters: http://insidephp.sytes.net
--
-- Host: `localhost`    Database: `interplanet_cmam`
-- ------------------------------------------------------
-- Server version	5.0.77

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS alumnos;
CREATE TABLE `alumnos` (
  `id_grupo` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY  (`id_grupo`,`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES alumnos WRITE;
INSERT INTO alumnos VALUES('1', '11');
INSERT INTO alumnos VALUES('1', '12');
INSERT INTO alumnos VALUES('1', '17');
INSERT INTO alumnos VALUES('3', '25');
INSERT INTO alumnos VALUES('7', '10');
UNLOCK TABLES;


--
-- Table structure for table `apertura`
--

DROP TABLE IF EXISTS apertura;
CREATE TABLE `apertura` (
  `id` int(11) NOT NULL auto_increment,
  `id_per` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `fecha` date default NULL,
  `status` varchar(7) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `apertura`
--

LOCK TABLES apertura WRITE;
UNLOCK TABLES;


--
-- Table structure for table `arrestos`
--

DROP TABLE IF EXISTS arrestos;
CREATE TABLE `arrestos` (
  `id` int(11) NOT NULL auto_increment,
  `fecha` date default NULL,
  `id_per` int(11) NOT NULL,
  `id_alum` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `motivo` varchar(200) collate utf8_spanish_ci NOT NULL,
  `pts` int(11) NOT NULL,
  `hrs` int(11) NOT NULL,
  PRIMARY KEY  (`id`,`id_alum`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `arrestos`
--

LOCK TABLES arrestos WRITE;
INSERT INTO arrestos VALUES('1', '2012-04-23', '1', '2', '0', 'E', '2', '3');
INSERT INTO arrestos VALUES('2', '2012-04-24', '1', '23', '0', 'TRAER UNA CAJETILLA DE CIGARROS, REPORTADO POR OF. RAFAEL GUZMAN', '80', '96');
INSERT INTO arrestos VALUES('3', '2012-04-24', '1', '24', '0', 'CAUSAR DAÑOS AL PORTON DEL DORMITORIO, DESPEGAR UNA LAMINA', '60', '72');
INSERT INTO arrestos VALUES('4', '2012-04-24', '1', '25', '0', 'CAUSAR DAÑOS AL PORTON DEL DORMITORIO, DESPEGADO UNA LAMINA', '60', '72');
INSERT INTO arrestos VALUES('5', '2012-04-24', '1', '26', '0', 'CAUSAR DAÑOR AL PORTON DEL DORMITORIO, DESPEGAR UNA LAMINA', '60', '72');
INSERT INTO arrestos VALUES('6', '2012-04-24', '1', '27', '0', 'CAUSAR DAÑOS AL PORTON DEL DORMITORIO, DESPEGANDO UNA LAMINA', '60', '72');
INSERT INTO arrestos VALUES('7', '2012-04-24', '1', '28', '0', 'FALTAR EL RESPETO DE PALABRA A SU MAESTRA DE ESPAÑOL.', '80', '96');
INSERT INTO arrestos VALUES('8', '2012-04-25', '1', '23', '0', 'PRESENTAR CON ALIENTO ALCOHOLICO AL REGRESAR DE FRANQUICIA.', '20', '24');
INSERT INTO arrestos VALUES('9', '2012-06-05', '1', '12', '0', 'FALTAR A LA PRIMERA HORA DE CLASES Y POR NO PRESENTAR EL EXAMEN DE LA MISMA', '40', '48');
INSERT INTO arrestos VALUES('10', '2012-06-08', '1', '12', '0', 'Reincidencia en la tardanza para salir a sus actividades diarias (LEVANTE, EDUCACION FISICA, TERCIOS)', '30', '36');
INSERT INTO arrestos VALUES('11', '2012-06-08', '1', '96', '0', 'Faltar a clase de educacion fisica', '20', '24');
INSERT INTO arrestos VALUES('12', '2012-06-08', '1', '12', '0', 'Faltar a clase de educacion fisica', '20', '24');
INSERT INTO arrestos VALUES('13', '2012-06-08', '1', '73', '0', 'Faltar a clase de educacion fisica', '20', '24');
INSERT INTO arrestos VALUES('14', '2012-06-08', '1', '89', '0', 'Faltar a clase de educacion fisica', '20', '24');
INSERT INTO arrestos VALUES('15', '2012-06-08', '1', '91', '0', 'Faltar a clase de educacion fisica', '20', '24');
INSERT INTO arrestos VALUES('16', '2012-06-08', '1', '28', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('17', '2012-06-08', '1', '23', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('18', '2012-06-12', '1', '12', '0', 'Retirarse del plantel el domingo 10-VI-012, ESTANDO ARRESTADO Y PRESENTARSE CON ALIENTO ALCOHOLICO. ', '60', '72');
INSERT INTO arrestos VALUES('27', '2012-06-20', '1', '64', '0', 'Faltar a la lista de las 18:00 hrs.', '20', '24');
INSERT INTO arrestos VALUES('28', '2012-06-20', '1', '27', '0', 'Faltar a la lista de las 18:00 hrs.', '20', '24');
INSERT INTO arrestos VALUES('20', '2012-06-12', '1', '86', '0', 'POR NO PORTAR EL UNIFORME.', '30', '36');
INSERT INTO arrestos VALUES('22', '2012-06-15', '1', '86', '0', 'Haberselé encontrado fumando, en el interior del dormitorio.', '120', '144');
INSERT INTO arrestos VALUES('23', '2012-06-15', '1', '12', '0', 'INSULTAR A UN SUPERIOR, CONSISTENTE EN DECIRLE \"PENDEJO\" A SU SARGENTO', '80', '96');
INSERT INTO arrestos VALUES('24', '2012-06-15', '1', '12', '0', 'LLEGAR TARDE AL PRIMER TERCIO, (DESAYUNO)', '10', '12');
INSERT INTO arrestos VALUES('25', '2012-06-15', '1', '91', '0', 'POR HACER OBSERVACIONES A UN SUPERIOR SIN CAUSA ALGUNA, CONSISTENTES EN DECIR QUE ERA INJUSTO LA CALIFICACION DEMOSTRANDOSELE LO CONTRARIO.', '30', '36');
INSERT INTO arrestos VALUES('29', '2012-06-20', '1', '68', '0', 'Faltar a la lista de las 18:00 hrs.', '20', '24');
INSERT INTO arrestos VALUES('30', '2012-06-27', '1', '12', '0', 'Presentarse en estado inconveniente al regresar de franquicia. BAJO EFECTOS DE BEBIDAS EMBRIAGANTES.', '60', '72');
INSERT INTO arrestos VALUES('31', '2012-06-27', '1', '86', '0', 'NO PRESENTARSE A LA LISTA DE LAS 21:00 HRS.', '20', '24');
INSERT INTO arrestos VALUES('32', '2012-06-27', '1', '10', '0', 'POR HABER CAUSADO LESIONES A UN COMPAÑERO EN UNA RIÑA AL INTERIOR DE LAS INSTALACIONES', '100', '120');
INSERT INTO arrestos VALUES('33', '2012-06-27', '1', '11', '0', 'POR PARTICIPAR EN DESMANES Y MANTENERSE INDIFERENTE EN UNA PELEA DE COMPAÑEROS. ', '80', '96');
INSERT INTO arrestos VALUES('34', '2012-08-30', '1', '10', '0', 'pagadas', '0', '120');
INSERT INTO arrestos VALUES('35', '2012-08-30', '1', '11', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('36', '2012-08-30', '1', '12', '0', 'pagadas', '0', '360');
INSERT INTO arrestos VALUES('37', '2012-08-30', '1', '23', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('38', '2012-08-30', '1', '24', '0', 'pagadas', '0', '72');
INSERT INTO arrestos VALUES('39', '2012-08-30', '1', '25', '0', 'pagadas', '0', '72');
INSERT INTO arrestos VALUES('40', '2012-08-30', '1', '26', '0', 'pagadas', '0', '72');
INSERT INTO arrestos VALUES('41', '2012-08-30', '1', '27', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('42', '2012-08-30', '1', '64', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('43', '2012-08-30', '1', '68', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('44', '2012-08-30', '1', '73', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('45', '2012-08-30', '1', '86', '0', 'pagadas', '0', '204');
INSERT INTO arrestos VALUES('46', '2012-08-30', '1', '89', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('47', '2012-08-30', '1', '89', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('48', '2012-08-30', '1', '91', '0', 'pagadas', '0', '60');
INSERT INTO arrestos VALUES('49', '2012-08-30', '1', '96', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('51', '2012-08-30', '1', '150', '0', 'SALIRSE DEL SALON Y METERSE EN OTRO SALON, ALTERANDO EL ORDEN EN CLASES.', '20', '24');
INSERT INTO arrestos VALUES('52', '2012-08-30', '1', '150', '0', 'POSEER SUSTANCIAS TOXICAS EN EL INTERIOR DEL PLANTEL', '200', '240');
INSERT INTO arrestos VALUES('53', '2012-08-30', '1', '137', '0', 'REÑIR CON UN COMPAÑERO.', '40', '48');
INSERT INTO arrestos VALUES('54', '2012-08-30', '1', '137', '0', 'POR NO PORTAR LA CAMISOLA EN FORMACION, Y NO PRESTAR ATENCION', '20', '24');
INSERT INTO arrestos VALUES('55', '2012-08-30', '1', '75', '0', 'NO PORTAR DEBIDAMENTE EL UNIFORME Y COMBINARLO CON ROPA CIVIL. ', '20', '24');
INSERT INTO arrestos VALUES('56', '2012-08-30', '1', '141', '0', 'REÑIR CON UN COMPAÑERO', '40', '48');
INSERT INTO arrestos VALUES('57', '2012-08-30', '1', '154', '0', 'NO PRESENTARSE DEBIDAMENTE UNIFORMADO EN LA LISTA DE LAS 0700 HRS.', '20', '24');
INSERT INTO arrestos VALUES('58', '2012-08-30', '1', '68', '0', 'FALTARLE EL RESPETO Y EMPUJAR A UN SUPERIOR (CABO)', '80', '96');
INSERT INTO arrestos VALUES('59', '2012-08-30', '1', '158', '0', 'QUITARSE LA CAMISOLA EN FORMACION Y NO PRESTAR ATENCION', '20', '24');
INSERT INTO arrestos VALUES('60', '2012-08-30', '1', '133', '0', 'NO PORTAR ADECUADAMENTE EL UNIFORME, PORTANDOLO SUCIO, Y NO MANTENERSE ASEADO COMO ED DEBIDO EN SU PERSONA Y EN SU VESTUARIO. ', '20', '24');
INSERT INTO arrestos VALUES('82', '2012-09-21', '1', '133', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('81', '2012-09-21', '1', '68', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('62', '2012-08-31', '1', '96', '0', 'FALTAS AL PUDOR (Salir semidesnudo enfrente de personal femenil)', '30', '36');
INSERT INTO arrestos VALUES('63', '2012-08-31', '1', '143', '0', 'CONDUCTA INAPROPIADA, DANDO MUESTRAS DE AFECTO A UN COMPAÑERO, NO PERMITIDAS EN EL COLEGIO.', '30', '36');
INSERT INTO arrestos VALUES('64', '2012-08-31', '1', '68', '0', 'CONDUCTA INAPROPIADA DANDO MUESTRAS DE AFECTO A UNA COMPAÑERA, NO PERMITIDAS EN EL COLEGIO. ', '30', '36');
INSERT INTO arrestos VALUES('65', '2012-09-04', '1', '68', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('66', '2012-09-04', '1', '75', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('67', '2012-09-04', '1', '96', '0', 'pagadas', '0', '36');
INSERT INTO arrestos VALUES('68', '2012-09-04', '1', '133', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('69', '2012-09-04', '1', '137', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('70', '2012-09-04', '1', '141', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('71', '2012-09-04', '1', '150', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('72', '2012-09-04', '1', '154', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('73', '2012-09-04', '1', '158', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('74', '2012-09-04', '1', '160', '0', 'INTENTAR INTRODUCIR CIGARROS EN EL PLANTEL.', '40', '48');
INSERT INTO arrestos VALUES('75', '2012-09-04', '1', '136', '0', 'PRESENTARSE CON EL CALZADO SUCIO AL COMEDOR. ', '12', '10');
INSERT INTO arrestos VALUES('76', '2012-09-04', '1', '133', '0', 'FALTA DE HIGIENE (NO BAÑARSE, PORTAR UNIFORME SUCIO, ITULIZAR ROPA INTERIOR SUCIA Y MOJADA)', '36', '30');
INSERT INTO arrestos VALUES('77', '2012-09-04', '1', '68', '0', 'PRESENTARSE MAL LUSTRADO DEL CALZADO EN EL COMEDOR', '10', '12');
INSERT INTO arrestos VALUES('78', '2012-09-04', '1', '133', '0', 'INDISCIPLINA EN CLASE', '20', '24');
INSERT INTO arrestos VALUES('79', '2012-09-06', '1', '139', '0', 'MOLESTAR A UN COMPAÑERO EN CLASE Y DANDOLE UN MANOTAZO EN LA CABEZA.', '20', '24');
INSERT INTO arrestos VALUES('83', '2012-09-21', '1', '136', '0', 'pagadas', '0', '10');
INSERT INTO arrestos VALUES('84', '2012-09-21', '1', '137', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('85', '2012-09-21', '1', '139', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('86', '2012-09-21', '1', '150', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('87', '2012-09-21', '1', '160', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('88', '2012-10-05', '1', '68', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('89', '2012-10-05', '1', '133', '0', 'pagadas', '0', '6');
INSERT INTO arrestos VALUES('90', '2012-10-05', '1', '150', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('91', '2012-10-05', '1', '153', '0', 'renegar y vociferar al recibir una orden. DESACATANDO LA ORDEN RECIBIDA', '30', '36');
INSERT INTO arrestos VALUES('92', '2012-10-05', '1', '153', '0', 'DORMITAR DENTRO DEL SALON DE CLASES', '10', '12');
INSERT INTO arrestos VALUES('93', '2012-10-05', '1', '82', '0', 'POR ALTERAR EL ORDEN EN LA COMANDANCIA, EN HORAS DE CLASES', '20', '24');
INSERT INTO arrestos VALUES('94', '2012-10-05', '1', '75', '0', 'DORMITAR EN EL SALON DE CLASES', '10', '12');
INSERT INTO arrestos VALUES('95', '2012-10-05', '1', '150', '0', 'NO SALIR A CORRER COMO SE LE ORDENO. ', '20', '24');
INSERT INTO arrestos VALUES('96', '2012-10-05', '1', '144', '0', 'INSULTAR A UN SUPERIOR', '80', '96');
INSERT INTO arrestos VALUES('97', '2012-10-05', '1', '143', '0', 'INDISPOSICIÓN EN CLASE Y ABANDONAR EL AULA SIN PERMISO DEL DOCENTE. ', '20', '24');
INSERT INTO arrestos VALUES('98', '2012-10-05', '1', '155', '0', 'NO SALIR UNIFORMADO, PONIENDO PRETEXTO DE QUE NO LO HA COSTURADO', '20', '24');
INSERT INTO arrestos VALUES('99', '2012-10-05', '1', '64', '0', 'NO ESTAR BIEN UNIFORMADOS EN HORARIOS DE CLASES', '10', '12');
INSERT INTO arrestos VALUES('100', '2012-10-05', '1', '143', '0', 'NO ESTAR BIEN UNIFORMADA Y SALIRSE DEL SALON DE CLASES', '20', '24');
INSERT INTO arrestos VALUES('101', '2012-10-05', '1', '161', '0', 'POR PORTAR SUCIO Y ROTO EL UNIFORME, Y NO LUSTRAR SU CALZADO. ', '20', '24');
INSERT INTO arrestos VALUES('102', '2012-10-05', '1', '160', '0', 'ALTERAR EL ORDEN Y LA DISCIPLINA EN EL SALON DE CLASES', '20', '24');
INSERT INTO arrestos VALUES('103', '2012-10-05', '1', '147', '0', 'ALTERAR EL ORDEN Y LA DISCIPLINA EN EL SALON DE CLASES', '20', '24');
INSERT INTO arrestos VALUES('104', '2012-10-05', '1', '143', '0', 'FALTARLE EL RESPETO A UN SUPERIOR (SGTO. VICENTE QUIROZ)', '80', '96');
INSERT INTO arrestos VALUES('105', '2012-10-05', '1', '148', '0', 'FALTAR A DEPORTES', '20', '24');
INSERT INTO arrestos VALUES('106', '2012-10-05', '1', '137', '0', 'NO PORTAR CORRECTAMENTE EL UNIFORME, Y NO COSTURAR UN BOTON. ', '20', '24');
INSERT INTO arrestos VALUES('107', '2012-10-05', '1', '133', '0', 'NO PORTAR SU UNIFORME DEBIDAMENTE Y ANDAR SUCIO. ', '20', '24');
INSERT INTO arrestos VALUES('108', '2012-10-05', '1', '161', '0', 'NO PORTAR SU UNIFORME COMPLETO Y SALIRSE DE CLASE. ', '20', '24');
INSERT INTO arrestos VALUES('109', '2012-10-05', '1', '134', '0', 'NO PORTAR SU UNIFORME DEBIDAMENTE ', '20', '24');
INSERT INTO arrestos VALUES('110', '2012-10-05', '1', '150', '0', 'DESACARTAR LAS ORDENES DE UN SUPERIOR Y POR NO SABER SU MATRICULA. (21-SEP-2012)', '20', '24');
INSERT INTO arrestos VALUES('111', '2012-10-09', '1', '153', '0', 'DORMIR EN HORAS DE CLASE, SIENDO REINCIDENTE EN ESTA ACCION. ', '20', '24');
INSERT INTO arrestos VALUES('112', '2012-10-10', '1', '75', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('113', '2012-10-10', '1', '82', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('114', '2012-10-10', '1', '133', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('115', '2012-10-10', '1', '134', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('116', '2012-10-10', '1', '137', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('117', '2012-10-10', '1', '147', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('118', '2012-10-10', '1', '148', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('119', '2012-10-10', '1', '150', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('120', '2012-10-10', '1', '155', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('121', '2012-10-10', '1', '161', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('122', '2012-10-10', '1', '75', '0', 'REÑIR CON UN COMPAÑERO', '40', '48');
INSERT INTO arrestos VALUES('123', '2012-10-10', '1', '133', '0', 'reñir con un compañero en el salon de clases, expulsandolo el maestro de SU CLASE. ', '40', '48');
INSERT INTO arrestos VALUES('124', '2012-10-10', '1', '160', '0', 'INTRODUCIRSE AL DORMITORIO DEL PERSONAL FEMENIL SIN AUTORIZACION', '80', '96');
INSERT INTO arrestos VALUES('125', '2012-10-10', '1', '75', '0', 'DORMIR CON EL UNIFORME PUESTO, FALTANDO A LA HIGIENE PERSONAL. ', '20', '24');
INSERT INTO arrestos VALUES('126', '2012-10-11', '1', '95', '0', 'POR CAUSAR UNA LESION MENOR A UN COMPAÑERO, CON UN ENCENDEDOR.  ', '40', '48');
INSERT INTO arrestos VALUES('131', '2012-10-11', '1', '161', '0', 'NO PORTAR EL UNIFORME COMPLETO. ', '10', '12');
INSERT INTO arrestos VALUES('132', '2012-10-19', '1', '75', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('133', '2012-10-19', '1', '133', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('134', '2012-10-19', '1', '143', '0', 'pagadas', '0', '40');
INSERT INTO arrestos VALUES('135', '2012-10-19', '1', '150', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('136', '2012-10-19', '1', '160', '0', 'ENTRAR AL SALON DE CLASES SIN AUTORIZACION', '20', '24');
INSERT INTO arrestos VALUES('137', '2012-10-19', '1', '68', '0', 'ENTRAR AL SALON DE CLASES SIN AUTORIZACION', '20', '24');
INSERT INTO arrestos VALUES('138', '2012-10-26', '1', '68', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('139', '2012-10-26', '1', '75', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('140', '2012-10-26', '1', '95', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('141', '2012-10-26', '1', '143', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('142', '2012-10-26', '1', '160', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('143', '2012-10-26', '1', '161', '0', 'pagadas', '0', '36');
INSERT INTO arrestos VALUES('144', '2012-10-26', '1', '143', '0', 'FALTA DE RESPETO AL PROFESOR DURANTE LA CLASE. ', '20', '24');
INSERT INTO arrestos VALUES('145', '2012-10-26', '1', '139', '0', 'INTENTAR INTRODUCIR SUSTENCIAS NO PERMITIDAS AL INTERIOR DEL PLANTEL. ', '200', '240');
INSERT INTO arrestos VALUES('146', '2012-10-26', '1', '69', '0', 'No impedir el acceso de personal varonil al dormitorio femenil. ', '10', '12');
INSERT INTO arrestos VALUES('147', '2012-10-26', '1', '85', '0', 'REGRESAR A LAS 4:00 A.M. EL DÍA 23 DE OCTUBRE 2012, SIN AUTORIZACION, REGRESANDO DE FRANQUICIA. ', '80', '96');
INSERT INTO arrestos VALUES('148', '2012-11-15', '1', '69', '0', 'NO PORTAR EL UNIFORME EN LA LISTA NI EN HORAS DE CLASE', '20', '24');
INSERT INTO arrestos VALUES('149', '2012-11-15', '1', '153', '0', 'SALIR CONTINUAMENTE DEL SALON DE CLASES (4 VECES) ', '20', '24');
INSERT INTO arrestos VALUES('150', '2012-11-15', '1', '69', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('151', '2012-11-15', '1', '85', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('152', '2012-11-15', '1', '139', '0', 'pagadas', '0', '240');
INSERT INTO arrestos VALUES('153', '2012-11-15', '1', '144', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('154', '2012-11-15', '1', '144', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('155', '2012-11-15', '1', '143', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('156', '2012-11-15', '1', '150', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('157', '2012-11-15', '1', '160', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('158', '2012-11-15', '1', '68', '0', 'NO TENER TENDIDA SU CAMA', '10', '12');
INSERT INTO arrestos VALUES('159', '2012-11-15', '1', '67', '0', 'FALTAR A DEPORTES LOS DIAS 12 Y 13 DE NOVIEMBRE, RETIRANDOSE SIN PERMISO', '20', '24');
INSERT INTO arrestos VALUES('160', '2012-11-15', '1', '64', '0', 'NO PRESENTARSE A DEPORTE LOS DIAS 12 Y 13 DE NOVIEMBRE', '20', '24');
INSERT INTO arrestos VALUES('161', '2012-11-15', '1', '147', '0', 'NO PRESENTAR UNIFORME COMPLETO', '10', '12');
INSERT INTO arrestos VALUES('162', '2012-11-15', '1', '145', '0', 'PRESENTAR UNIFORME INCOMPLETO', '10', '12');
INSERT INTO arrestos VALUES('163', '2012-11-15', '1', '155', '0', 'NO PRESENTAR UNIFORME COMPLETO Y NO TENER ARREGLADO EL LOCKER', '20', '24');
INSERT INTO arrestos VALUES('164', '2012-11-15', '1', '136', '0', 'NO TENER TENDIDA ADECUADAMENTE SU CAMA', '10', '12');
INSERT INTO arrestos VALUES('165', '2012-11-15', '1', '161', '0', 'PRESENTAR UNIFORME INCOMPLETO', '10', '12');
INSERT INTO arrestos VALUES('166', '2012-11-15', '1', '133', '0', 'PRESENTAR UNIFORME INCOMPLETO', '10', '12');
INSERT INTO arrestos VALUES('167', '2012-11-23', '1', '159', '0', 'No cumplir con sus responsabilidades en el acto civico-deportivo del 20 de noviembre del 20112', '40', '48');
INSERT INTO arrestos VALUES('168', '2012-11-23', '1', '137', '0', 'INTENTO DE RIÑA CON UN COMPAÑERO', '10', '12');
INSERT INTO arrestos VALUES('169', '2012-11-23', '1', '82', '0', 'INTENTO DE RIÑA CON UN COMPAÑERO', '10', '12');
INSERT INTO arrestos VALUES('170', '2012-11-23', '1', '68', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('171', '2012-11-23', '1', '69', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('172', '2012-11-23', '1', '133', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('173', '2012-11-23', '1', '136', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('174', '2012-11-23', '1', '145', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('175', '2012-11-23', '1', '147', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('176', '2012-11-23', '1', '161', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('177', '2012-11-23', '1', '153', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('178', '2012-11-23', '1', '155', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('179', '2012-11-23', '1', '155', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('180', '2012-11-30', '1', '82', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('181', '2012-11-30', '1', '137', '0', 'pagadas', '0', '12');
INSERT INTO arrestos VALUES('182', '2012-11-30', '1', '143', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('183', '2012-11-30', '1', '143', '0', 'pagadas', '0', '20');
INSERT INTO arrestos VALUES('184', '2012-11-30', '1', '143', '0', 'pagadas', '0', '20');
INSERT INTO arrestos VALUES('185', '2012-11-30', '1', '153', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('186', '2012-11-30', '1', '159', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('187', '2012-11-30', '1', '67', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('188', '2012-11-30', '1', '64', '0', 'pagadas', '0', '36');
INSERT INTO arrestos VALUES('189', '2012-12-06', '1', '75', '0', 'Portar aparatos electronicos (CELULAR) EN DIAS Y HORARIOS NO PERMITIDOS', '40', '48');
INSERT INTO arrestos VALUES('190', '2012-12-06', '1', '147', '0', 'Portar aparatos electronicos (CELULAR) EN DIAS Y HORARIOS NO PERMITIDOS', '40', '48');
INSERT INTO arrestos VALUES('191', '2012-12-06', '1', '17', '0', 'Portar aparatos electronicos (CELULAR) EN DIAS Y HORARIOS NO PERMITIDOS', '40', '48');
INSERT INTO arrestos VALUES('192', '2012-12-06', '1', '143', '0', 'NO PORTAR SU UNIFORME COMPLETO', '10', '12');
INSERT INTO arrestos VALUES('193', '2012-12-06', '1', '137', '0', 'DESOBEDECER ORDENES DE UN SUPERIOR: Consistentes en no limpiar debidamente la compañia. ', '15', '18');
INSERT INTO arrestos VALUES('194', '2012-12-06', '1', '143', '0', 'NO CUMPLIR ADECUADAMENTE LAS ORDENES DE UN SUPERIOR. ', '10', '12');
INSERT INTO arrestos VALUES('195', '2012-12-06', '1', '142', '0', 'ALTERAR EL ORDEN DENTRO DEL SALON DE CLASE el dia 5 DE DICIEMBRE DEL 2012', '20', '24');
INSERT INTO arrestos VALUES('196', '2013-02-21', '1', '17', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('197', '2013-02-21', '1', '75', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('198', '2013-02-21', '1', '137', '0', 'pagadas', '0', '18');
INSERT INTO arrestos VALUES('199', '2013-02-21', '1', '142', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('200', '2013-02-21', '1', '143', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('201', '2013-02-21', '1', '147', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('202', '2013-02-21', '1', '16', '0', 'Fumar dentro de las instalaciones del COLEGIO (10-i-2013)', '20', '24');
INSERT INTO arrestos VALUES('203', '2013-02-21', '1', '85', '0', 'NO PRESENTARSE A LA LISTA DE LAS 18 HRS EL DIA (11-i-2013)', '20', '24');
INSERT INTO arrestos VALUES('204', '2013-02-21', '1', '16', '0', 'AGREDER FISICAMENTE A UN COMPAÑERO (18-i-2013)', '100', '120');
INSERT INTO arrestos VALUES('205', '2013-02-21', '1', '85', '0', 'NO PRESENTARSE A LA LISTA DE LAS 18:00 HRS (18-1-2013)', '20', '24');
INSERT INTO arrestos VALUES('206', '2013-02-21', '1', '143', '0', 'VOCIFERAR CUANDO SE LE DA UNA UNA ORDEN (17-1-013)', '20', '24');
INSERT INTO arrestos VALUES('207', '2013-02-21', '1', '143', '0', 'MOSTRAR APATIA Y FALTA DE COMPAÑERISMO EN LA MARCHA, REGRESANDOSE SIN AUTORIZACION Y SIN DAR PARTE A UN SUPERIOR (17-1-2013)', '30', '36');
INSERT INTO arrestos VALUES('208', '2013-02-21', '1', '143', '0', 'REHUSARSE A FIRMAR UNA BOLETA DE ARRESTO (17-1-2013)', '20', '24');
INSERT INTO arrestos VALUES('209', '2013-02-21', '1', '69', '0', 'MOSTRAR APATIA Y FALTA DE COMPAÑERISMO EN LA MARCHA, REGRESANDOSE SIN AUTORIZACION Y SIN DAR PARTE A UN SUPERIOR ( 17-1-2013)', '30', '36');
INSERT INTO arrestos VALUES('210', '2013-02-21', '1', '196', '0', 'GOLPEAR A UN COMPAÑERO Y NO TRABAJAR EN CLASE (16-1-2013)', '40', '48');
INSERT INTO arrestos VALUES('212', '2013-02-21', '1', '143', '0', 'INDISCIPLINA EN EL SALON DE CLASE Y GOLPEAR A UN COMPAÑERO (16-1-2013)', '40', '48');
INSERT INTO arrestos VALUES('213', '2013-02-21', '1', '161', '0', 'EXTRAER ALIMENTOS DE LA COCINA SUN AUTORIZACION (6-2-2013)', '80', '96');
INSERT INTO arrestos VALUES('214', '2013-02-21', '1', '63', '0', 'EXTRAER ALIMENTOS DE LA COCINA SIN AUTORIZACION (6-2-2013)', '80', '96');
INSERT INTO arrestos VALUES('215', '2013-02-21', '1', '183', '0', 'NO PRESENTARSE A LISTA (8-02-2013)', '20', '24');
INSERT INTO arrestos VALUES('216', '2013-02-22', '1', '148', '0', 'NO PRESNTARSE A GUARDIA Y DESOBEDECER UNA ORDEN', '60', '72');
INSERT INTO arrestos VALUES('217', '2013-02-22', '1', '68', '0', 'SALIR DEL SALON EN HORA DE CLASES', '10', '12');
INSERT INTO arrestos VALUES('218', '2013-02-22', '1', '160', '0', 'ALTERACION DE LA DICIPLINA DENTRO DEL COLEGIO', '20', '24');
INSERT INTO arrestos VALUES('219', '2013-02-22', '1', '196', '0', 'MOSTRAR INDICIPLINA EN EL SALON DE CLASES (MAESTRA FABIOLA)', '20', '24');
INSERT INTO arrestos VALUES('220', '2013-02-22', '1', '16', '0', 'pagadas', '0', '144');
INSERT INTO arrestos VALUES('221', '2013-02-22', '1', '63', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('222', '2013-02-22', '1', '69', '0', 'pagadas', '0', '36');
INSERT INTO arrestos VALUES('223', '2013-02-22', '1', '85', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('224', '2013-02-22', '1', '143', '0', 'pagadas', '0', '112');
INSERT INTO arrestos VALUES('225', '2013-02-22', '1', '161', '0', 'pagadas', '0', '96');
INSERT INTO arrestos VALUES('226', '2013-02-22', '1', '183', '0', 'pagadas', '0', '24');
INSERT INTO arrestos VALUES('227', '2013-02-22', '1', '196', '0', 'pagadas', '0', '48');
INSERT INTO arrestos VALUES('228', '2013-02-22', '1', '204', '0', 'QUEMAR PAPEL EN EL SALON Y MOSTRAR INDISCIPLINA', '20', '24');
INSERT INTO arrestos VALUES('229', '2013-02-22', '1', '203', '0', 'SALIRSE DEL SALON DE CLASES SIN AUTORIZACION', '10', '12');
INSERT INTO arrestos VALUES('230', '2013-02-22', '1', '205', '0', 'Presentar actitud inmoral', '80', '96');
INSERT INTO arrestos VALUES('231', '2013-02-22', '1', '206', '0', 'QUEMAR PAPEL DENTRO DEL SALON DE CLASE', '20', '24');
INSERT INTO arrestos VALUES('232', '2013-02-22', '1', '205', '0', 'MALTRATAR INMOBILIARIO (PINTAR Y RAYAR LOCKERS) (21-2-2013)', '40', '48');
INSERT INTO arrestos VALUES('233', '2013-02-22', '1', '203', '0', 'PRESENTARSE CON UNIFORME SUCIO (19-2-2013)', '20', '24');
INSERT INTO arrestos VALUES('234', '2013-02-22', '1', '183', '0', 'AGREDIR FISICA Y VERBALMENTE EN HORAS DE CLASE. ', '40', '48');
INSERT INTO arrestos VALUES('235', '2013-02-22', '1', '142', '0', 'AGRESION FISICA Y VERBAL EN HORAS DE CLASE (22-2-2013)', '40', '48');
INSERT INTO arrestos VALUES('236', '2013-02-22', '1', '205', '0', 'AGRESION FISICA Y VERBAL EN HORAS DE CLASE (22-2-2013)', '40', '48');
INSERT INTO arrestos VALUES('237', '2013-02-22', '1', '75', '0', 'DORMIR EN CLASE (21-02-2013)', '10', '12');
INSERT INTO arrestos VALUES('238', '2013-02-25', '1', '95', '0', 'NO PRESENTARSE A LA LISTA DE LAS 22 HORAS', '20', '24');
UNLOCK TABLES;


--
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS calendario;
CREATE TABLE `calendario` (
  `dia` varchar(5) collate utf8_spanish_ci NOT NULL,
  `mes` varchar(5) collate utf8_spanish_ci NOT NULL,
  `anio` varchar(5) collate utf8_spanish_ci NOT NULL,
  `actividad` varchar(200) collate utf8_spanish_ci NOT NULL,
  `comentario` varchar(500) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`actividad`,`dia`,`mes`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `calendario`
--

LOCK TABLES calendario WRITE;
INSERT INTO calendario VALUES('2', '10', '2012', 'Hallowen', 'asda dadadasd adas dasdasdas das dasd a das dasdasda');
INSERT INTO calendario VALUES('1', '01', '2012', 'H', 'asdasdasd\r\nasdasd\r\nasdas\r\nasdasd\r\nasdasd\r\nasdasdasdasdasdas\r\n');
INSERT INTO calendario VALUES('18', '12', '2012', 'Posadas de Navidad', 'posadas de navidad antes de salir de vacasiones');
INSERT INTO calendario VALUES('26', '11', '2012', 'Dia de Accion de Gracias', 'Dia de accion de gracias segun la cultura americana');
UNLOCK TABLES;


--
-- Table structure for table `calificaciones`
--

DROP TABLE IF EXISTS calificaciones;
CREATE TABLE `calificaciones` (
  `id_user` int(11) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `id_per` int(11) NOT NULL,
  `pp` decimal(4,1) NOT NULL,
  `sp` decimal(4,1) NOT NULL,
  `tp` decimal(4,1) NOT NULL,
  `cp` decimal(4,1) NOT NULL,
  `qp` decimal(4,1) NOT NULL,
  `ep` decimal(4,1) NOT NULL,
  PRIMARY KEY  (`id_user`,`id_mat`,`id_per`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `calificaciones`
--

LOCK TABLES calificaciones WRITE;
INSERT INTO calificaciones VALUES('77', '40', '2', '10.0', '9.0', '9.0', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '40', '2', '8.0', '6.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '40', '2', '6.5', '8.0', '5.0', '7.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '40', '2', '10.0', '9.7', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('27', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '40', '2', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '40', '2', '5.0', '6.0', '5.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '40', '2', '8.6', '8.0', '8.5', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '40', '2', '10.0', '10.0', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '40', '2', '8.0', '9.0', '8.5', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '40', '2', '9.0', '9.5', '7.5', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('61', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '32', '1', '9.0', '10.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '32', '1', '7.0', '8.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '32', '1', '10.0', '9.0', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '32', '1', '6.0', '8.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('24', '32', '1', '5.0', '7.5', '6.0', '7.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '32', '1', '8.0', '9.5', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '32', '1', '9.0', '8.5', '5.0', '7.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '88', '4', '9.3', '9.5', '9.0', '9.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '88', '4', '10.0', '7.2', '9.5', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '88', '4', '9.3', '7.0', '7.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '88', '4', '9.0', '10.0', '10.0', '9.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '88', '4', '9.5', '8.4', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '88', '4', '10.0', '10.0', '7.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '103', '6', '7.0', '9.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '103', '6', '9.0', '7.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('61', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '36', '1', '10.0', '9.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '36', '1', '10.0', '9.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '36', '1', '8.0', '6.0', '6.5', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '36', '1', '7.0', '8.0', '8.5', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('24', '36', '1', '9.0', '7.0', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '36', '1', '9.0', '8.5', '7.5', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '36', '1', '8.0', '9.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('61', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '33', '1', '9.0', '9.7', '8.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '33', '1', '8.0', '7.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '33', '1', '8.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '33', '1', '6.6', '7.0', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('24', '33', '1', '7.0', '6.0', '5.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '33', '1', '5.0', '6.0', '6.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '33', '1', '8.6', '8.2', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('61', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '34', '1', '8.5', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '34', '1', '7.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '34', '1', '7.0', '7.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '34', '1', '6.0', '9.0', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('24', '34', '1', '6.0', '8.5', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '34', '1', '6.0', '7.0', '7.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '34', '1', '9.0', '9.5', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('61', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '35', '1', '9.5', '9.5', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '35', '1', '7.5', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '35', '1', '7.5', '5.0', '6.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '35', '1', '7.0', '6.5', '6.3', '6.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('24', '35', '1', '5.0', '5.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '35', '1', '6.5', '8.5', '7.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '35', '1', '8.5', '6.0', '7.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('61', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '37', '1', '9.6', '9.2', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '37', '1', '7.5', '6.2', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '37', '1', '8.3', '8.0', '5.7', '8.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '37', '1', '8.0', '8.9', '8.0', '8.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('24', '37', '1', '5.0', '8.0', '5.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '37', '1', '8.4', '6.9', '7.3', '7.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '37', '1', '9.5', '8.5', '5.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('61', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '38', '1', '9.6', '9.3', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '38', '1', '6.8', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '38', '1', '7.1', '7.0', '9.0', '8.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '38', '1', '7.0', '7.7', '9.7', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('24', '38', '1', '5.0', '5.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '38', '1', '6.0', '5.0', '6.1', '7.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '38', '1', '6.8', '8.3', '7.5', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('61', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '39', '1', '7.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '39', '1', '7.0', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '39', '1', '7.0', '7.0', '6.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '39', '1', '8.0', '7.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('24', '39', '1', '6.0', '6.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '39', '1', '6.0', '7.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '39', '1', '6.0', '7.0', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '41', '2', '9.0', '8.0', '8.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '41', '2', '7.0', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '41', '2', '7.0', '7.0', '6.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '41', '2', '9.5', '9.2', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('27', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '41', '2', '6.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '41', '2', '6.0', '7.0', '7.5', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '41', '2', '8.0', '8.0', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '41', '2', '8.0', '9.1', '8.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '41', '2', '8.0', '8.0', '7.5', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '41', '2', '9.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '42', '2', '9.0', '8.5', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '42', '2', '5.0', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '42', '2', '8.0', '10.0', '8.0', '9.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '42', '2', '9.5', '9.5', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('27', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '42', '2', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '42', '2', '6.0', '9.5', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '42', '2', '9.0', '9.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '42', '2', '8.5', '8.5', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '42', '2', '8.0', '8.0', '9.0', '9.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '42', '2', '8.0', '9.5', '9.0', '8.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '43', '2', '7.4', '9.5', '9.7', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '43', '2', '6.5', '7.3', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '43', '2', '7.0', '7.0', '6.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '43', '2', '9.4', '9.9', '10.0', '9.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('27', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '43', '2', '5.0', '5.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '43', '2', '5.0', '6.0', '7.2', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '43', '2', '7.5', '8.1', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '43', '2', '5.0', '5.0', '6.9', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '43', '2', '5.0', '6.3', '5.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '43', '2', '9.9', '10.0', '9.0', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '44', '2', '10.0', '10.0', '9.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '44', '2', '7.0', '7.0', '0.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '44', '2', '9.0', '8.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '44', '2', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('27', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '44', '2', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '44', '2', '7.0', '9.0', '8.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '44', '2', '10.0', '8.0', '7.5', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '44', '2', '10.0', '9.0', '9.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '44', '2', '8.0', '10.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '44', '2', '10.0', '9.0', '8.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '45', '2', '9.9', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '45', '2', '6.8', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '45', '2', '9.9', '9.0', '9.6', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '45', '2', '9.7', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('27', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '45', '2', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '45', '2', '9.5', '9.2', '8.5', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '45', '2', '9.0', '9.0', '9.3', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '45', '2', '9.8', '9.2', '9.1', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '45', '2', '9.7', '9.2', '8.9', '9.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '45', '2', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '46', '2', '10.0', '8.7', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '46', '2', '5.0', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '46', '2', '6.0', '7.0', '5.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '46', '2', '9.7', '9.5', '9.6', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('27', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '46', '2', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '46', '2', '8.0', '7.6', '6.1', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '46', '2', '7.7', '9.0', '6.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '46', '2', '7.5', '9.4', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '46', '2', '7.0', '9.9', '9.7', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '46', '2', '8.5', '9.4', '9.7', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '47', '2', '8.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '47', '2', '7.0', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '47', '2', '7.0', '6.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '47', '2', '7.0', '8.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('27', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '47', '2', '7.0', '6.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '47', '2', '6.0', '7.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '47', '2', '8.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '47', '2', '7.0', '7.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '47', '2', '8.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '47', '2', '8.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '48', '3', '10.0', '10.0', '8.9', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '49', '3', '9.0', '9.1', '9.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '50', '3', '9.3', '9.0', '9.2', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '51', '3', '9.6', '10.0', '9.2', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '52', '3', '10.0', '9.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '53', '3', '10.0', '10.0', '9.7', '9.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '56', '3', '8.0', '7.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '85', '3', '9.5', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '86', '3', '9.4', '9.5', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('80', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('70', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '57', '4', '7.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '57', '4', '8.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '57', '4', '8.0', '8.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '57', '4', '7.0', '8.0', '7.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '57', '4', '7.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '57', '4', '8.0', '9.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '60', '4', '9.0', '8.0', '8.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '60', '4', '8.0', '8.0', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '60', '4', '9.0', '9.0', '8.0', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '60', '4', '9.0', '9.0', '8.5', '6.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '60', '4', '8.0', '8.3', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '60', '4', '7.5', '9.0', '7.5', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '61', '4', '9.0', '8.9', '6.0', '8.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '61', '4', '10.0', '8.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '61', '4', '8.5', '8.2', '9.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '61', '4', '8.5', '8.5', '9.0', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '61', '4', '9.0', '8.7', '9.0', '9.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '61', '4', '10.0', '8.5', '9.5', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '62', '4', '8.5', '9.2', '8.3', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '62', '4', '9.1', '8.5', '9.2', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '62', '4', '8.6', '8.9', '8.6', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '62', '4', '8.5', '9.4', '8.9', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '62', '4', '9.1', '7.5', '8.0', '7.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '62', '4', '8.6', '9.5', '9.1', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '63', '4', '10.0', '10.0', '7.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '63', '4', '9.8', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '63', '4', '9.8', '10.0', '9.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '63', '4', '9.8', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '63', '4', '9.8', '10.0', '9.0', '9.9', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '63', '4', '9.8', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '64', '4', '10.0', '10.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '64', '4', '9.0', '8.5', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '64', '4', '9.0', '7.0', '9.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '64', '4', '9.0', '10.0', '9.3', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '64', '4', '10.0', '10.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '64', '4', '9.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '65', '4', '9.7', '9.6', '8.0', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '65', '4', '9.3', '8.0', '10.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '65', '4', '9.3', '7.1', '8.7', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '65', '4', '9.7', '9.5', '9.2', '9.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '65', '4', '9.5', '9.0', '9.7', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '65', '4', '9.3', '9.5', '9.2', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('86', '87', '4', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '87', '4', '10.0', '8.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '87', '4', '8.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '87', '4', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('88', '87', '4', '9.5', '8.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '87', '4', '10.0', '9.8', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '98', '5', '9.0', '8.0', '6.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '99', '5', '8.0', '8.2', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '58', '5', '6.0', '7.0', '6.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '69', '5', '7.4', '5.0', '9.7', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '101', '5', '7.9', '8.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '102', '5', '8.0', '9.0', '5.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '100', '5', '8.0', '8.2', '8.6', '9.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '95', '5', '10.0', '10.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '96', '5', '8.0', '9.0', '5.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '59', '6', '7.0', '7.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '59', '6', '7.0', '6.0', '6.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '104', '6', '9.1', '8.4', '9.0', '8.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '104', '6', '9.8', '5.0', '9.2', '8.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '105', '6', '9.0', '9.0', '8.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '105', '6', '9.0', '9.0', '8.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '106', '6', '6.2', '9.0', '9.7', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '106', '6', '9.6', '9.0', '9.8', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '4', '1', '0.0', '0.0', '10.0', '9.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('60', '4', '1', '8.0', '10.0', '9.0', '8.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('61', '4', '1', '6.0', '6.0', '7.0', '6.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('62', '4', '1', '7.0', '9.0', '8.0', '9.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('17', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '4', '1', '0.0', '0.0', '0.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '4', '1', '7.0', '6.0', '6.0', '9.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('24', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '4', '1', '7.0', '7.0', '7.0', '6.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('76', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('25', '3', '1', '10.0', '10.0', '9.0', '7.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('25', '5', '1', '8.0', '10.0', '9.0', '7.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('25', '6', '1', '7.0', '7.0', '6.0', '5.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('25', '7', '1', '9.0', '9.0', '7.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('25', '8', '1', '6.0', '7.0', '8.0', '6.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('25', '9', '1', '8.0', '8.0', '6.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('25', '10', '1', '7.0', '7.0', '8.0', '5.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('25', '11', '1', '7.0', '7.0', '6.0', '6.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('28', '13', '2', '10.0', '10.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '14', '2', '7.0', '8.0', '6.0', '8.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('28', '15', '2', '9.0', '6.0', '6.0', '8.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('28', '16', '2', '9.0', '10.0', '8.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '17', '2', '8.0', '9.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '18', '2', '10.0', '9.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '19', '2', '7.0', '7.0', '7.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '20', '2', '9.0', '7.0', '5.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('28', '21', '2', '7.0', '8.0', '6.0', '8.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('23', '3', '1', '0.0', '0.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '5', '1', '0.0', '0.0', '10.0', '8.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('23', '6', '1', '0.0', '0.0', '8.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '7', '1', '0.0', '0.0', '10.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '8', '1', '0.0', '0.0', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '9', '1', '0.0', '0.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('23', '10', '1', '0.0', '0.0', '8.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('23', '11', '1', '0.0', '0.0', '6.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '77', '6', '9.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '77', '6', '9.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '78', '6', '9.3', '7.0', '8.3', '8.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '78', '6', '9.8', '8.0', '8.7', '9.1', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '93', '6', '9.0', '9.3', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '93', '6', '9.6', '10.0', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '94', '6', '8.5', '8.0', '8.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '94', '6', '10.0', '8.0', '8.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '3', '1', '10.0', '9.0', '9.0', '10.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('61', '3', '1', '9.0', '8.0', '9.0', '7.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('62', '3', '1', '10.0', '10.0', '8.0', '7.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('17', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '3', '1', '0.0', '0.0', '0.0', '8.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('74', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '3', '1', '6.0', '8.0', '6.0', '10.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('24', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '5', '1', '10.0', '10.0', '7.0', '10.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('61', '5', '1', '9.0', '9.0', '10.0', '7.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('62', '5', '1', '10.0', '9.0', '8.0', '7.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('17', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '5', '1', '0.0', '0.0', '0.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '5', '1', '9.0', '8.0', '8.0', '10.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('24', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '6', '1', '10.0', '10.0', '9.0', '8.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('61', '6', '1', '9.0', '5.0', '6.0', '6.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('62', '6', '1', '8.0', '7.0', '8.0', '7.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('17', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '6', '1', '0.0', '0.0', '0.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '6', '1', '6.0', '6.0', '5.0', '9.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('24', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '7', '1', '10.0', '9.0', '6.0', '6.0', '7.5', '0.0');
INSERT INTO calificaciones VALUES('61', '7', '1', '9.0', '9.0', '8.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('62', '7', '1', '9.0', '9.0', '8.0', '6.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('17', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '7', '1', '0.0', '0.0', '0.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '7', '1', '6.0', '6.0', '5.0', '10.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('24', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '8', '1', '7.0', '7.0', '8.0', '7.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('61', '8', '1', '7.0', '6.0', '5.0', '5.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('62', '8', '1', '6.0', '7.0', '7.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('17', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '8', '1', '0.0', '0.0', '0.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '8', '1', '9.0', '7.0', '10.0', '8.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('24', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '9', '1', '10.0', '8.0', '7.0', '7.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('61', '9', '1', '8.0', '7.0', '7.0', '8.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('62', '9', '1', '10.0', '8.0', '9.0', '6.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('17', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '9', '1', '0.0', '0.0', '0.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '9', '1', '8.0', '8.0', '7.0', '9.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('24', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('34', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '32', '1', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '33', '1', '5.0', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '35', '1', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '36', '1', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '37', '1', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '38', '1', '5.0', '5.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '13', '2', '8.0', '7.0', '8.0', '9.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('27', '13', '2', '9.0', '9.0', '9.0', '5.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('65', '13', '2', '10.0', '9.0', '8.0', '5.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('78', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '13', '2', '5.0', '5.0', '5.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('82', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '13', '2', '0.0', '0.0', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '13', '2', '10.0', '10.0', '9.0', '10.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('77', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '14', '2', '7.0', '8.0', '6.0', '6.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('27', '14', '2', '6.0', '6.0', '6.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('65', '14', '2', '7.0', '8.0', '7.0', '7.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('78', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '14', '2', '6.0', '5.0', '5.0', '6.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('82', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '14', '2', '0.0', '0.0', '6.0', '6.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('67', '14', '2', '10.0', '9.0', '9.0', '9.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('77', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '15', '2', '6.0', '5.0', '6.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('27', '15', '2', '5.0', '5.0', '5.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('65', '15', '2', '5.0', '6.0', '5.0', '8.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('78', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '15', '2', '5.0', '5.0', '6.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('82', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '15', '2', '0.0', '0.0', '5.0', '6.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('67', '15', '2', '9.0', '10.0', '10.0', '9.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('77', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '16', '2', '7.0', '5.0', '6.0', '6.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('27', '16', '2', '8.0', '6.0', '6.0', '5.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('65', '16', '2', '8.0', '5.0', '7.0', '7.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('78', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '16', '2', '6.0', '5.0', '5.0', '5.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('82', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '16', '2', '0.0', '0.0', '6.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '16', '2', '9.0', '10.0', '9.0', '9.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('77', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '17', '2', '8.0', '8.0', '8.0', '5.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('27', '17', '2', '5.0', '5.0', '7.0', '5.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('65', '17', '2', '9.0', '9.0', '9.0', '9.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('78', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '17', '2', '6.0', '5.0', '7.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('82', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '17', '2', '0.0', '0.0', '6.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '17', '2', '10.0', '9.0', '10.0', '9.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('77', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '18', '2', '9.0', '8.0', '6.0', '5.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('27', '18', '2', '9.0', '8.0', '5.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('65', '18', '2', '8.0', '9.0', '9.0', '9.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('78', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '18', '2', '6.0', '6.0', '7.0', '7.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('82', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '18', '2', '0.0', '0.0', '6.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '18', '2', '10.0', '10.0', '9.0', '9.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('77', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '19', '2', '7.0', '7.0', '7.0', '7.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('27', '19', '2', '6.0', '6.0', '7.0', '6.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('65', '19', '2', '8.0', '7.0', '7.0', '7.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('78', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '19', '2', '8.0', '8.0', '6.0', '6.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('82', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '19', '2', '0.0', '0.0', '7.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '19', '2', '8.0', '8.0', '7.0', '7.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('77', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '20', '2', '8.0', '5.0', '8.0', '6.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('27', '20', '2', '8.0', '6.0', '5.0', '5.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('65', '20', '2', '10.0', '8.0', '6.0', '9.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('78', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '20', '2', '6.0', '6.0', '6.0', '5.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('82', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '20', '2', '0.0', '0.0', '5.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '20', '2', '10.0', '10.0', '8.0', '9.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('77', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('26', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('12', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '21', '2', '7.0', '8.0', '6.0', '5.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('27', '21', '2', '7.0', '6.0', '7.0', '6.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('65', '21', '2', '8.0', '7.0', '7.0', '6.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('78', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('79', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '21', '2', '7.0', '6.0', '7.0', '5.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('82', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('66', '21', '2', '0.0', '0.0', '7.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '21', '2', '10.0', '9.0', '8.0', '8.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('60', '10', '1', '8.0', '7.0', '5.0', '6.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('61', '10', '1', '7.0', '7.0', '6.0', '5.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('62', '10', '1', '7.0', '7.0', '5.0', '5.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('17', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '10', '1', '0.0', '0.0', '0.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '10', '1', '7.0', '7.0', '6.0', '6.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('24', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('60', '11', '1', '5.0', '9.0', '6.0', '9.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('61', '11', '1', '7.0', '6.0', '6.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('62', '11', '1', '8.0', '9.0', '9.0', '8.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('17', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('72', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('73', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('81', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('74', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '11', '1', '10.0', '8.0', '6.0', '10.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('24', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('76', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '23', '3', '10.0', '10.0', '9.0', '10.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('80', '23', '3', '6.0', '6.0', '6.0', '9.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('70', '23', '3', '0.0', '0.0', '0.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '23', '3', '0.0', '0.0', '0.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '24', '3', '10.0', '10.0', '9.0', '10.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('80', '24', '3', '6.0', '6.0', '6.0', '8.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('70', '24', '3', '0.0', '0.0', '0.0', '8.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('71', '24', '3', '0.0', '0.0', '0.0', '9.0', '5.0', '0.0');
INSERT INTO calificaciones VALUES('85', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '25', '3', '10.0', '10.0', '9.0', '9.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('80', '25', '3', '7.0', '6.0', '6.0', '8.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('70', '25', '3', '0.0', '0.0', '0.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '25', '3', '0.0', '0.0', '0.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '26', '3', '7.0', '10.0', '8.0', '10.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('80', '26', '3', '10.0', '6.0', '6.0', '8.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('70', '26', '3', '0.0', '0.0', '0.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '26', '3', '0.0', '0.0', '0.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '27', '3', '8.0', '9.0', '8.0', '8.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('80', '27', '3', '6.0', '6.0', '6.0', '5.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('70', '27', '3', '0.0', '0.0', '0.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '27', '3', '0.0', '0.0', '0.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '28', '3', '10.0', '9.0', '9.0', '9.0', '9.0', '0.0');
INSERT INTO calificaciones VALUES('80', '28', '3', '8.0', '6.0', '6.0', '9.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('70', '28', '3', '0.0', '0.0', '0.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '28', '3', '0.0', '0.0', '0.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '29', '3', '7.0', '7.0', '8.0', '7.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('80', '29', '3', '10.0', '6.0', '6.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('70', '29', '3', '0.0', '0.0', '0.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '29', '3', '0.0', '0.0', '0.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '30', '3', '10.0', '10.0', '9.0', '10.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('80', '30', '3', '6.0', '6.0', '6.0', '5.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('70', '30', '3', '0.0', '0.0', '0.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '30', '3', '0.0', '0.0', '0.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '97', '3', '10.0', '10.0', '9.0', '9.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('80', '97', '3', '7.0', '6.0', '6.0', '8.0', '10.0', '0.0');
INSERT INTO calificaciones VALUES('70', '97', '3', '0.0', '0.0', '0.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('71', '97', '3', '0.0', '0.0', '0.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('90', '76', '6', '9.5', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('91', '76', '6', '9.8', '9.0', '9.5', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('97', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('33', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '48', '3', '9.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '49', '3', '9.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '50', '3', '8.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '51', '3', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '52', '3', '9.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '53', '3', '9.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '56', '3', '8.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '85', '3', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '86', '3', '9.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('65', '4', '1', '7.0', '7.0', '7.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('65', '3', '1', '6.0', '6.0', '6.0', '6.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('65', '5', '1', '8.0', '8.0', '8.0', '8.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('65', '6', '1', '6.0', '6.0', '6.0', '6.0', '6.0', '0.0');
INSERT INTO calificaciones VALUES('65', '7', '1', '7.0', '7.0', '7.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('65', '8', '1', '7.0', '7.0', '7.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('65', '9', '1', '8.0', '8.0', '8.0', '8.0', '8.0', '0.0');
INSERT INTO calificaciones VALUES('65', '10', '1', '7.0', '7.0', '7.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('65', '11', '1', '7.0', '7.0', '7.0', '7.0', '7.0', '0.0');
INSERT INTO calificaciones VALUES('124', '98', '5', '9.0', '9.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '99', '5', '10.0', '7.0', '8.3', '8.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '58', '5', '10.0', '9.0', '6.0', '8.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '69', '5', '7.5', '9.6', '6.2', '7.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '101', '5', '10.0', '10.0', '7.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '102', '5', '9.6', '9.2', '9.5', '9.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '100', '5', '9.9', '9.4', '7.6', '8.9', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '95', '5', '9.6', '9.0', '7.0', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '96', '5', '9.6', '9.0', '7.0', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '32', '1', '9.0', '10.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '33', '1', '10.0', '8.0', '9.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '34', '1', '9.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '35', '1', '10.0', '8.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '36', '1', '10.0', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '37', '1', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '38', '1', '10.0', '7.0', '7.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '39', '1', '7.0', '8.0', '7.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '32', '1', '8.6', '10.0', '9.0', '9.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '33', '1', '8.8', '8.0', '8.5', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '34', '1', '6.0', '8.0', '7.5', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '35', '1', '7.5', '6.0', '5.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '36', '1', '8.8', '8.4', '8.2', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '37', '1', '7.7', '9.1', '9.0', '8.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '38', '1', '9.4', '6.0', '9.0', '8.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '39', '1', '7.0', '8.0', '7.0', '7.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '62', '4', '9.0', '8.5', '9.4', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '62', '4', '9.1', '8.5', '9.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '50', '3', '9.4', '9.4', '9.4', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '50', '3', '9.5', '6.0', '6.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '50', '3', '9.0', '7.2', '8.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '50', '3', '8.6', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '50', '3', '8.0', '9.7', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '50', '3', '8.9', '6.8', '6.0', '7.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('83', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '50', '3', '8.1', '8.1', '8.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '50', '3', '8.0', '8.0', '9.0', '7.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('140', '50', '3', '6.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '41', '2', '9.8', '9.2', '8.3', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '41', '2', '6.0', '6.1', '6.4', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '49', '3', '9.2', '9.0', '8.2', '6.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '49', '3', '9.5', '5.2', '6.2', '8.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '49', '3', '9.4', '9.8', '9.7', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '49', '3', '9.6', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '49', '3', '9.1', '9.4', '9.5', '9.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '49', '3', '9.5', '9.0', '9.7', '9.9', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '49', '3', '8.9', '9.8', '8.6', '9.1', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '49', '3', '9.8', '9.1', '9.6', '9.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('140', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '61', '4', '7.5', '9.3', '9.1', '6.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '61', '4', '8.8', '9.5', '9.8', '8.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '113', '5', '8.0', '6.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '113', '5', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '113', '5', '9.5', '9.5', '10.0', '9.9', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '113', '5', '9.9', '8.0', '8.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('124', '113', '5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '113', '5', '10.0', '7.0', '0.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '109', '5', '7.5', '6.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '109', '5', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '109', '5', '9.5', '9.5', '10.0', '9.9', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '109', '5', '9.9', '8.2', '8.0', '9.9', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '109', '5', '9.9', '8.5', '0.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '63', '4', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '63', '4', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '86', '3', '8.0', '9.2', '9.2', '8.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '86', '3', '9.3', '8.5', '8.8', '7.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '86', '3', '9.8', '9.7', '9.5', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '86', '3', '8.7', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '86', '3', '9.5', '9.5', '8.8', '8.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '86', '3', '8.7', '9.0', '9.1', '6.9', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '86', '3', '8.2', '9.7', '9.4', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '86', '3', '9.4', '9.5', '8.2', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('140', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '112', '5', '9.3', '8.1', '9.7', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '112', '5', '10.0', '10.0', '9.8', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '112', '5', '9.2', '9.0', '10.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '112', '5', '9.3', '7.0', '7.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '112', '5', '7.6', '9.8', '0.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '114', '6', '9.4', '9.4', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '105', '6', '7.3', '9.4', '7.8', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '52', '3', '9.8', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '52', '3', '10.0', '8.0', '8.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '52', '3', '10.0', '10.0', '9.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '52', '3', '10.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '52', '3', '10.0', '10.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '52', '3', '8.5', '9.0', '9.3', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '52', '3', '9.0', '10.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '52', '3', '9.2', '10.0', '9.3', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('140', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '64', '4', '9.5', '10.0', '9.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '64', '4', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '36', '1', '6.5', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '36', '1', '6.0', '8.5', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '36', '1', '6.0', '9.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '36', '1', '9.0', '9.5', '9.3', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '36', '1', '6.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '36', '1', '8.0', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '36', '1', '7.0', '9.0', '8.6', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '36', '1', '8.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '36', '1', '7.5', '9.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '36', '1', '8.0', '8.0', '8.5', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '36', '1', '8.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '36', '1', '8.7', '9.0', '8.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '36', '1', '9.2', '9.0', '9.2', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '44', '2', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '44', '2', '9.0', '8.0', '9.5', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '78', '6', '9.1', '8.8', '7.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '106', '6', '8.2', '8.2', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '104', '6', '9.1', '9.2', '9.3', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '76', '6', '10.0', '10.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '77', '6', '10.0', '9.0', '7.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '115', '6', '8.8', '9.1', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '111', '5', '9.5', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '111', '5', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '111', '5', '9.5', '9.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '111', '5', '9.5', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '111', '5', '9.5', '10.0', '0.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '108', '5', '9.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '108', '5', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '108', '5', '9.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '108', '5', '9.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '108', '5', '9.5', '10.0', '0.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '87', '4', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '87', '4', '9.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '65', '4', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '65', '4', '9.4', '7.3', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '85', '3', '10.0', '10.0', '9.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '85', '3', '10.0', '7.0', '7.0', '7.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '85', '3', '10.0', '9.5', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '85', '3', '10.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '85', '3', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '85', '3', '10.0', '9.5', '10.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '85', '3', '10.0', '10.0', '10.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '85', '3', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('140', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '53', '3', '8.6', '9.8', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '53', '3', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '53', '3', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '53', '3', '9.1', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '53', '3', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '53', '3', '9.2', '9.6', '9.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '53', '3', '9.0', '9.4', '9.4', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '53', '3', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('140', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '33', '1', '5.0', '8.4', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '33', '1', '7.7', '8.0', '7.8', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '33', '1', '7.0', '7.2', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '33', '1', '9.3', '8.3', '9.8', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '33', '1', '9.7', '9.6', '9.3', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '33', '1', '7.0', '6.5', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '33', '1', '6.3', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '33', '1', '8.2', '8.0', '8.2', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '33', '1', '6.0', '7.5', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '33', '1', '8.4', '6.2', '6.7', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '33', '1', '8.4', '6.8', '9.5', '9.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '33', '1', '9.0', '7.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '33', '1', '8.5', '8.5', '9.1', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '34', '1', '6.0', '6.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '34', '1', '5.0', '7.5', '7.5', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '34', '1', '6.0', '8.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '34', '1', '10.0', '9.8', '9.8', '9.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '34', '1', '9.2', '10.0', '10.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '34', '1', '8.3', '7.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '34', '1', '7.6', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '34', '1', '8.0', '7.5', '8.0', '9.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '34', '1', '7.0', '9.8', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '34', '1', '7.4', '9.5', '9.0', '6.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '34', '1', '8.5', '9.7', '10.0', '9.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '34', '1', '8.4', '9.8', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '34', '1', '9.5', '9.8', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '32', '1', '8.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '32', '1', '9.0', '9.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '32', '1', '5.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '32', '1', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '32', '1', '10.0', '10.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '32', '1', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '32', '1', '8.0', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '32', '1', '7.0', '9.0', '5.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '32', '1', '8.0', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '32', '1', '8.0', '9.0', '10.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '32', '1', '10.0', '10.0', '10.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '32', '1', '10.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '32', '1', '9.0', '9.0', '8.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '37', '1', '6.3', '7.7', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '37', '1', '8.8', '9.4', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '37', '1', '8.4', '8.6', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '37', '1', '9.5', '9.4', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '37', '1', '10.0', '10.0', '9.5', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '37', '1', '9.1', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '37', '1', '8.8', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '37', '1', '9.4', '8.6', '9.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '37', '1', '6.2', '7.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '37', '1', '9.0', '9.0', '8.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '37', '1', '9.2', '9.5', '9.4', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '37', '1', '9.4', '9.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '37', '1', '9.3', '6.7', '9.4', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '99', '6', '8.0', '9.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '69', '5', '8.6', '9.6', '9.9', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '69', '5', '9.7', '10.0', '9.7', '9.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '69', '5', '9.1', '9.7', '10.0', '9.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '69', '5', '9.4', '9.8', '10.0', '9.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '69', '5', '9.1', '10.0', '0.0', '9.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '60', '4', '6.0', '9.0', '9.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '60', '4', '9.8', '9.6', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '88', '4', '5.0', '9.6', '9.7', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '88', '4', '10.0', '8.3', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '48', '3', '8.1', '7.3', '6.7', '6.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '48', '3', '9.8', '6.3', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '48', '3', '7.9', '8.3', '9.2', '9.2', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '48', '3', '9.2', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '48', '3', '9.4', '9.0', '10.0', '9.8', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '48', '3', '9.0', '6.9', '9.6', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '48', '3', '7.0', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '48', '3', '8.6', '9.2', '10.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '48', '3', '8.0', '7.2', '6.8', '7.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '49', '3', '8.1', '8.6', '8.5', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '50', '3', '7.2', '8.1', '6.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '51', '3', '9.3', '9.4', '9.7', '9.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '51', '3', '9.2', '6.3', '8.4', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '51', '3', '7.8', '8.9', '9.8', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '51', '3', '9.3', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '51', '3', '8.8', '9.4', '10.0', '9.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '51', '3', '8.6', '8.9', '9.7', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '51', '3', '9.0', '8.6', '8.0', '8.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '51', '3', '9.2', '9.0', '8.8', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '51', '3', '8.7', '8.1', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '40', '2', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '40', '2', '9.0', '9.0', '9.5', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '42', '2', '9.8', '9.5', '9.8', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '42', '2', '8.7', '8.5', '8.7', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '43', '2', '8.6', '9.1', '9.5', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '43', '2', '7.1', '8.8', '9.2', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '45', '2', '10.0', '10.0', '9.4', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '45', '2', '6.7', '8.0', '8.5', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '46', '2', '9.4', '9.6', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '46', '2', '8.4', '9.4', '8.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '35', '1', '8.0', '6.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '35', '1', '8.0', '6.0', '7.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '35', '1', '9.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '35', '1', '9.0', '8.0', '10.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '35', '1', '9.0', '9.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '35', '1', '8.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '35', '1', '9.0', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '35', '1', '9.0', '8.0', '8.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '35', '1', '9.0', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '35', '1', '9.0', '8.0', '9.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '35', '1', '9.0', '8.0', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '35', '1', '8.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '35', '1', '9.0', '8.0', '8.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '38', '1', '7.2', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '38', '1', '7.3', '6.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '38', '1', '7.7', '6.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '38', '1', '10.0', '9.3', '10.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '38', '1', '10.0', '9.5', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '38', '1', '8.0', '8.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '38', '1', '8.3', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '38', '1', '8.9', '6.5', '6.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '38', '1', '8.2', '8.7', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '38', '1', '8.3', '8.7', '9.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '38', '1', '8.7', '8.8', '9.4', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '38', '1', '8.4', '8.3', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '38', '1', '8.4', '6.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '110', '5', '8.6', '7.6', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '110', '5', '10.0', '9.6', '7.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '110', '5', '8.6', '9.6', '8.0', '8.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '110', '5', '9.8', '9.0', '7.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '110', '5', '9.3', '9.3', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '39', '1', '8.3', '8.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '39', '1', '8.4', '8.7', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '39', '1', '9.1', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '39', '1', '9.2', '9.5', '10.0', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '39', '1', '9.8', '9.4', '10.0', '9.7', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '39', '1', '9.1', '8.5', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '39', '1', '8.8', '5.0', '5.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '39', '1', '9.0', '9.3', '9.3', '9.3', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '39', '1', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '39', '1', '9.0', '8.9', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '39', '1', '9.8', '9.4', '9.4', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '39', '1', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '39', '1', '8.4', '8.9', '9.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '47', '2', '9.2', '9.5', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '47', '2', '8.5', '9.5', '9.8', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '48', '3', '9.4', '9.2', '10.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '56', '3', '9.8', '8.9', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '56', '3', '8.3', '8.8', '10.0', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '56', '3', '9.9', '9.4', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '56', '3', '9.1', '0.0', '0.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '56', '3', '10.0', '9.4', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '56', '3', '9.4', '9.7', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('135', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '56', '3', '9.0', '9.3', '9.6', '9.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '56', '3', '8.1', '8.8', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '56', '3', '8.1', '9.7', '9.5', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '56', '3', '9.9', '9.4', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('85', '57', '4', '10.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('146', '57', '4', '9.0', '9.5', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '58', '5', '9.9', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '58', '5', '9.6', '8.4', '9.8', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '58', '5', '9.9', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '58', '5', '8.9', '9.5', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '58', '5', '9.0', '8.4', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '58', '5', '9.9', '9.5', '0.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('89', '59', '6', '8.3', '8.1', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '107', '5', '10.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('96', '107', '5', '10.0', '9.0', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('152', '107', '5', '10.0', '10.0', '9.0', '8.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('95', '107', '5', '8.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('16', '107', '5', '9.0', '9.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('10', '107', '5', '8.0', '8.0', '0.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '49', '3', '9.8', '9.0', '8.9', '9.1', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '50', '3', '9.2', '7.3', '7.0', '7.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '51', '3', '9.2', '9.2', '9.9', '9.4', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '52', '3', '10.0', '10.0', '9.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '53', '3', '9.5', '10.0', '9.5', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '85', '3', '8.0', '10.0', '10.0', '10.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '86', '3', '9.0', '9.7', '8.6', '8.6', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '109', '5', '9.9', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '108', '5', '9.0', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '112', '5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '69', '5', '10.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '111', '5', '10.0', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '113', '5', '9.9', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('166', '110', '5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '18', '2', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '18', '2', '8.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '18', '2', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '18', '2', '7.0', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '18', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '28', '3', '6.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '28', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '28', '3', '6.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '28', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '28', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '28', '3', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '7', '1', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '7', '1', '8.0', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '15', '2', '5.0', '0.0', '7.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '15', '2', '6.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '15', '2', '8.0', '9.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '15', '2', '8.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '14', '2', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '14', '2', '8.0', '0.0', '7.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '14', '2', '7.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '14', '2', '10.0', '8.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '14', '2', '8.0', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '4', '1', '9.0', '10.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '4', '1', '9.0', '6.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '4', '1', '5.0', '0.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '24', '3', '5.0', '5.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '24', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('141', '24', '3', '5.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '24', '3', '7.0', '6.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '24', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '24', '3', '9.0', '6.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '16', '2', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '16', '2', '5.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '16', '2', '9.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '16', '2', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '16', '2', '8.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '16', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '26', '3', '5.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '26', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '26', '3', '8.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '26', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '26', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '26', '3', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '6', '1', '9.0', '10.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '6', '1', '7.0', '8.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '6', '1', '0.0', '0.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '21', '2', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '21', '2', '9.0', '5.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '21', '2', '8.0', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '21', '2', '10.0', '10.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '21', '2', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '10', '1', '9.0', '9.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '10', '1', '9.0', '10.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '10', '1', '0.0', '0.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '30', '3', '9.0', '0.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '30', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '30', '3', '10.0', '10.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '30', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '30', '3', '10.0', '0.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '9', '1', '9.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '9', '1', '9.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '9', '1', '9.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '5', '1', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '5', '1', '10.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '17', '2', '9.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '17', '2', '7.0', '7.0', '5.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '17', '2', '9.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '17', '2', '9.0', '8.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '17', '2', '9.0', '6.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '27', '3', '6.0', '0.0', '7.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '27', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '27', '3', '8.0', '6.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '27', '3', '9.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '27', '3', '10.0', '0.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '15', '2', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '41', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '44', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '23', '3', '6.0', '9.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '23', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '23', '3', '7.0', '9.0', '7.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '23', '3', '8.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '23', '3', '9.0', '10.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '3', '1', '9.0', '10.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '3', '1', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '3', '1', '8.0', '9.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '3', '1', '8.0', '0.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '13', '2', '6.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '13', '2', '7.0', '10.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '13', '2', '6.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '13', '2', '10.0', '10.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '13', '2', '8.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '9', '1', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '97', '3', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '97', '3', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '97', '3', '8.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '97', '3', '8.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '97', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '97', '3', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '50', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '4', '1', '9.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '5', '1', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '6', '1', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '7', '1', '9.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '10', '1', '9.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '11', '1', '8.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '11', '1', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '11', '1', '6.0', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '11', '1', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('158', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '86', '3', '8.2', '9.5', '7.6', '8.9', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '86', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '48', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '40', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '20', '2', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '20', '2', '6.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '20', '2', '5.0', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '20', '2', '9.0', '7.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '20', '2', '5.0', '5.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '20', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '46', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '25', '3', '8.0', '10.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '25', '3', '0.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '25', '3', '10.0', '10.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '25', '3', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '25', '3', '10.0', '10.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '85', '3', '9.0', '10.0', '10.0', '9.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '85', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '29', '3', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '45', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '53', '3', '8.9', '8.9', '9.5', '9.5', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '53', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '47', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '42', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '43', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '49', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '4', '1', '9.0', '7.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('182', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '3', '1', '10.0', '10.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('182', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '5', '1', '10.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('182', '5', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '6', '1', '10.0', '9.0', '10.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('182', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '7', '1', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('182', '7', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '9', '1', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('182', '9', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '11', '1', '9.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('182', '11', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '10', '1', '9.0', '10.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('182', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '52', '3', '8.0', '8.0', '9.0', '5.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('62', '19', '2', '6.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '8', '1', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('180', '8', '1', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('106', '19', '2', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('161', '8', '1', '9.0', '9.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('157', '19', '2', '6.0', '7.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('63', '19', '2', '9.0', '9.0', '9.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '29', '3', '6.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '29', '3', '6.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('134', '29', '3', '0.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '18', '2', '5.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('177', '19', '2', '8.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('143', '8', '1', '7.0', '8.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '29', '3', '9.0', '10.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '52', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '37', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '51', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('64', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('68', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('136', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('67', '56', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '19', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('150', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('133', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('139', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('147', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('144', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('156', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('142', '8', '1', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('138', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '8', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('153', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('137', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('77', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('154', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('19', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('167', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('82', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('148', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('11', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('84', '29', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('183', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '32', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '36', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '33', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '38', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '34', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '39', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '35', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('203', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('210', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('204', '4', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '4', '1', '0.0', '0.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('206', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '14', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '24', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('203', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '6', '1', '0.0', '0.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('210', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('204', '6', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('203', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '10', '1', '0.0', '0.0', '8.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('210', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('204', '10', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('206', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '21', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '30', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '23', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('206', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '15', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('206', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '13', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('203', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('196', '3', '1', '0.0', '0.0', '6.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('210', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('204', '3', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '25', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('17', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('78', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('75', '27', '3', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('206', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('69', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('155', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('145', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('160', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
INSERT INTO calificaciones VALUES('159', '17', '2', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');
UNLOCK TABLES;


--
-- Table structure for table `cargamaster`
--

DROP TABLE IF EXISTS cargamaster;
CREATE TABLE `cargamaster` (
  `id_master` int(11) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `id_per` int(11) NOT NULL,
  PRIMARY KEY  (`id_master`,`id_mat`,`id_per`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cargamaster`
--

LOCK TABLES cargamaster WRITE;
INSERT INTO cargamaster VALUES('3', '1', '1');
INSERT INTO cargamaster VALUES('3', '2', '1');
INSERT INTO cargamaster VALUES('30', '86', '1');
INSERT INTO cargamaster VALUES('30', '88', '1');
INSERT INTO cargamaster VALUES('30', '101', '1');
INSERT INTO cargamaster VALUES('30', '110', '1');
INSERT INTO cargamaster VALUES('31', '20', '1');
INSERT INTO cargamaster VALUES('31', '38', '1');
INSERT INTO cargamaster VALUES('31', '46', '1');
INSERT INTO cargamaster VALUES('31', '88', '1');
INSERT INTO cargamaster VALUES('31', '93', '1');
INSERT INTO cargamaster VALUES('37', '8', '1');
INSERT INTO cargamaster VALUES('37', '17', '1');
INSERT INTO cargamaster VALUES('37', '19', '1');
INSERT INTO cargamaster VALUES('37', '27', '1');
INSERT INTO cargamaster VALUES('37', '29', '1');
INSERT INTO cargamaster VALUES('37', '39', '1');
INSERT INTO cargamaster VALUES('37', '47', '1');
INSERT INTO cargamaster VALUES('37', '56', '1');
INSERT INTO cargamaster VALUES('37', '57', '1');
INSERT INTO cargamaster VALUES('37', '58', '1');
INSERT INTO cargamaster VALUES('37', '59', '1');
INSERT INTO cargamaster VALUES('38', '40', '1');
INSERT INTO cargamaster VALUES('38', '48', '1');
INSERT INTO cargamaster VALUES('38', '60', '1');
INSERT INTO cargamaster VALUES('39', '76', '1');
INSERT INTO cargamaster VALUES('40', '85', '1');
INSERT INTO cargamaster VALUES('40', '87', '1');
INSERT INTO cargamaster VALUES('40', '95', '1');
INSERT INTO cargamaster VALUES('40', '105', '1');
INSERT INTO cargamaster VALUES('40', '108', '1');
INSERT INTO cargamaster VALUES('40', '109', '1');
INSERT INTO cargamaster VALUES('40', '111', '1');
INSERT INTO cargamaster VALUES('40', '113', '1');
INSERT INTO cargamaster VALUES('41', '63', '1');
INSERT INTO cargamaster VALUES('41', '96', '1');
INSERT INTO cargamaster VALUES('41', '109', '1');
INSERT INTO cargamaster VALUES('41', '113', '1');
INSERT INTO cargamaster VALUES('42', '4', '1');
INSERT INTO cargamaster VALUES('42', '14', '1');
INSERT INTO cargamaster VALUES('42', '24', '1');
INSERT INTO cargamaster VALUES('42', '32', '1');
INSERT INTO cargamaster VALUES('43', '10', '1');
INSERT INTO cargamaster VALUES('43', '21', '1');
INSERT INTO cargamaster VALUES('43', '30', '1');
INSERT INTO cargamaster VALUES('44', '5', '1');
INSERT INTO cargamaster VALUES('44', '25', '1');
INSERT INTO cargamaster VALUES('44', '77', '1');
INSERT INTO cargamaster VALUES('44', '98', '1');
INSERT INTO cargamaster VALUES('44', '107', '1');
INSERT INTO cargamaster VALUES('45', '49', '1');
INSERT INTO cargamaster VALUES('45', '61', '1');
INSERT INTO cargamaster VALUES('46', '100', '1');
INSERT INTO cargamaster VALUES('46', '104', '1');
INSERT INTO cargamaster VALUES('47', '15', '1');
INSERT INTO cargamaster VALUES('47', '33', '1');
INSERT INTO cargamaster VALUES('47', '41', '1');
INSERT INTO cargamaster VALUES('48', '9', '1');
INSERT INTO cargamaster VALUES('48', '94', '1');
INSERT INTO cargamaster VALUES('48', '97', '1');
INSERT INTO cargamaster VALUES('49', '7', '1');
INSERT INTO cargamaster VALUES('49', '18', '1');
INSERT INTO cargamaster VALUES('49', '28', '1');
INSERT INTO cargamaster VALUES('49', '102', '1');
INSERT INTO cargamaster VALUES('49', '106', '1');
INSERT INTO cargamaster VALUES('51', '6', '1');
INSERT INTO cargamaster VALUES('51', '16', '1');
INSERT INTO cargamaster VALUES('51', '26', '1');
INSERT INTO cargamaster VALUES('52', '25', '1');
INSERT INTO cargamaster VALUES('53', '43', '1');
INSERT INTO cargamaster VALUES('53', '51', '1');
INSERT INTO cargamaster VALUES('53', '69', '1');
INSERT INTO cargamaster VALUES('54', '3', '1');
INSERT INTO cargamaster VALUES('54', '13', '1');
INSERT INTO cargamaster VALUES('54', '23', '1');
INSERT INTO cargamaster VALUES('54', '36', '1');
INSERT INTO cargamaster VALUES('54', '44', '1');
INSERT INTO cargamaster VALUES('54', '52', '1');
INSERT INTO cargamaster VALUES('54', '64', '1');
INSERT INTO cargamaster VALUES('55', '37', '1');
INSERT INTO cargamaster VALUES('55', '45', '1');
INSERT INTO cargamaster VALUES('55', '53', '1');
INSERT INTO cargamaster VALUES('55', '65', '1');
INSERT INTO cargamaster VALUES('56', '17', '1');
INSERT INTO cargamaster VALUES('56', '27', '1');
INSERT INTO cargamaster VALUES('56', '99', '1');
INSERT INTO cargamaster VALUES('56', '103', '1');
INSERT INTO cargamaster VALUES('57', '15', '1');
INSERT INTO cargamaster VALUES('57', '50', '1');
INSERT INTO cargamaster VALUES('57', '62', '1');
INSERT INTO cargamaster VALUES('57', '78', '1');
INSERT INTO cargamaster VALUES('58', '11', '1');
INSERT INTO cargamaster VALUES('58', '35', '1');
INSERT INTO cargamaster VALUES('59', '34', '1');
INSERT INTO cargamaster VALUES('59', '42', '1');
INSERT INTO cargamaster VALUES('165', '86', '1');
INSERT INTO cargamaster VALUES('165', '105', '1');
INSERT INTO cargamaster VALUES('165', '112', '1');
INSERT INTO cargamaster VALUES('165', '114', '1');
INSERT INTO cargamaster VALUES('165', '115', '1');
INSERT INTO cargamaster VALUES('176', '10', '1');
INSERT INTO cargamaster VALUES('176', '21', '1');
INSERT INTO cargamaster VALUES('176', '30', '1');
INSERT INTO cargamaster VALUES('179', '11', '1');
INSERT INTO cargamaster VALUES('179', '35', '1');
UNLOCK TABLES;


--
-- Table structure for table `ciclos`
--

DROP TABLE IF EXISTS ciclos;
CREATE TABLE `ciclos` (
  `id` int(11) NOT NULL auto_increment,
  `fopen` date NOT NULL,
  `fclose` date NOT NULL,
  `estado` varchar(10) collate utf8_spanish_ci NOT NULL default '0',
  `categoria` varchar(12) collate utf8_spanish_ci NOT NULL,
  `descripcion` varchar(35) collate utf8_spanish_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `ciclos`
--

LOCK TABLES ciclos WRITE;
UNLOCK TABLES;


--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS cuenta;
CREATE TABLE `cuenta` (
  `id_pago` int(11) NOT NULL,
  `id_alum` int(11) NOT NULL,
  `fechacar` varchar(10) collate utf8_spanish_ci NOT NULL,
  `fechapag` date NOT NULL,
  `importe` decimal(7,2) NOT NULL,
  `estado` varchar(12) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_pago`,`id_alum`,`fechacar`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES cuenta WRITE;
INSERT INTO cuenta VALUES('11', '78', '05', '2012-05-21', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '25', '05', '2012-05-21', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('8', '25', '', '2012-05-21', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '28', '05', '2012-05-21', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '25', '01', '2012-05-21', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('4', '25', '', '2012-05-21', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '95', '05', '2012-05-21', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '95', '05', '2012-05-21', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '95', '04', '2012-05-21', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '25', '', '2012-05-21', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '25', '', '2012-05-21', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '25', '', '2012-05-21', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '25', '02', '2012-05-21', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '25', '08', '2012-05-21', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '86', '05', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '17', '05', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '25', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '90', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '23', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '17', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '78', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '33', '06', '2012-06-06', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '85', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '28', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '11', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '77', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '83', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '19', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '84', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '96', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '10', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '91', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '78', '03', '2012-06-08', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '78', '03', '2012-06-08', '6500.00', 'Anulado');
INSERT INTO cuenta VALUES('17', '85', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '19', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '84', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '96', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '16', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '16', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '95', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '95', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '10', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '83', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '11', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '82', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '82', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '90', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '77', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '88', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '88', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '86', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '86', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '91', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '79', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '79', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '74', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '74', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '75', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '75', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '60', '06', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '73', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '73', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '33', '10', '2012-06-14', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '33', '09', '2012-06-14', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '33', '12', '2012-06-15', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '33', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '27', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '33', '05', '2012-06-15', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '69', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '63', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('15', '67', '06', '0000-00-00', '1200.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '12', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('17', '12', '06', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('15', '62', '06', '0000-00-00', '1200.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '68', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('15', '65', '06', '0000-00-00', '1200.00', 'Pendiente');
INSERT INTO cuenta VALUES('15', '61', '06', '0000-00-00', '1200.00', 'Pendiente');
INSERT INTO cuenta VALUES('4', '65', '', '2012-06-20', '1900.00', 'Pendiente');
INSERT INTO cuenta VALUES('2', '62', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '88', '05', '2012-06-20', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('3', '88', '', '2012-06-20', '1900.00', 'Pendiente');
INSERT INTO cuenta VALUES('7', '88', '', '2012-06-20', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '88', '01', '2012-06-20', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('1', '88', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '89', '06', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('8', '62', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '60', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '60', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '60', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '60', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '60', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '63', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '63', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '63', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '63', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '63', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '71', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '71', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '71', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '71', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '71', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '80', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '80', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '64', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '64', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '64', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '96', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '11', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('7', '82', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '82', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '10', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '10', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '71', '07', '2012-07-02', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '82', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('3', '17', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '11', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '11', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '11', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '11', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '11', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '95', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '95', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '95', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '95', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '86', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '86', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '86', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '86', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '86', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '96', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '96', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '96', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '96', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '77', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '77', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '77', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '77', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '74', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '74', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '74', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '74', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '74', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '82', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '82', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '82', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '12', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '12', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '12', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '12', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '12', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '85', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '79', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '79', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '79', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '79', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '10', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '10', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '91', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '91', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '91', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '91', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '91', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '71', '06', '2012-06-29', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('7', '17', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '17', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '17', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '17', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '70', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '70', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '70', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '83', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '83', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '83', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '83', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '67', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '89', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '89', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '89', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '89', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '27', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '27', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '27', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '27', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '27', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '76', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '76', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '76', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '76', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '73', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '73', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '73', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '73', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '19', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '19', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '19', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '19', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '19', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '69', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '69', '', '2012-06-29', '1900.00', 'Pendiente');
INSERT INTO cuenta VALUES('2', '69', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '69', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '69', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '88', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '88', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '24', '', '2012-06-29', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '24', '', '2012-06-29', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '24', '', '2012-06-29', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '24', '', '2012-06-29', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '24', '', '2012-06-29', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '75', '07', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '19', '07', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('1', '90', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '90', '', '2012-07-02', '1900.00', 'Pendiente');
INSERT INTO cuenta VALUES('3', '147', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '16', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '16', '', '2012-07-02', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '85', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '84', '', '2012-07-02', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '84', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '84', '', '2012-07-02', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '84', '', '2012-07-02', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '84', '', '2012-07-02', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '133', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '147', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '78', '', '2012-07-02', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '78', '', '2012-07-02', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '78', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '78', '', '2012-07-02', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '78', '', '2012-07-02', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '75', '', '2012-07-02', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '75', '', '2012-07-02', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '75', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '75', '', '2012-07-02', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '75', '', '2012-07-02', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '72', '', '2012-07-02', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '72', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '72', '', '2012-07-02', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '72', '', '2012-07-02', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '72', '', '2012-07-02', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '73', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '76', '', '2012-07-02', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '80', '', '2012-07-02', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '80', '', '2012-07-02', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '74', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '73', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '85', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '27', '07', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('8', '68', '', '2012-07-03', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '68', '07', '2012-07-03', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '68', '', '2012-07-03', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '68', '', '2012-07-03', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '68', '', '2012-07-03', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '67', '', '2012-07-03', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '89', '12', '2012-12-18', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '67', '', '2012-07-03', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '67', '', '2012-07-03', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '67', '', '2012-07-03', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '65', '', '2012-07-03', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '61', '', '2012-07-03', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '61', '', '2012-07-03', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '61', '', '2012-07-03', '1350.00', 'Pendiente');
INSERT INTO cuenta VALUES('6', '61', '', '2012-07-03', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '61', '', '2012-07-03', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '81', '', '2012-07-03', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '81', '', '2012-07-03', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '81', '', '2012-07-03', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '81', '', '2012-07-03', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '81', '', '2012-07-03', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '25', '07', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '77', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '88', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '91', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '10', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '79', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '12', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '96', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '95', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '84', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '83', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '60', '07', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '16', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '78', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '69', '07', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '17', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '63', '07', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('15', '65', '07', '0000-00-00', '1200.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '90', '07', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '80', '07', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '83', '08', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '74', '08', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '10', '08', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '19', '08', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '16', '08', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '85', '08', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '75', '08', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '159', '08', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '141', '08', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '82', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '141', '09', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '83', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '10', '09', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('15', '157', '09', '0000-00-00', '1200.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '19', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '137', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '75', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '153', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '96', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '11', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '95', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('13', '16', '09', '0000-00-00', '2600.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '85', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '84', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '138', '09', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '150', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '144', '09', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '133', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '147', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '154', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '152', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '77', '09', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '160', '09', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '144', '10', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '155', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '10', '10', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '96', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '95', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '152', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('13', '16', '10', '0000-00-00', '2600.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '154', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '75', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '137', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '159', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '11', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '85', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '146', '10', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '149', '10', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '17', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '78', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '147', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '153', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '19', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '148', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '84', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '69', '10', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '63', '10', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '82', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '79', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '138', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '150', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '68', '10', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '145', '10', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('16', '143', '10', '0000-00-00', '2600.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '106', '10', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('16', '97', '10', '0000-00-00', '2600.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '161', '10', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '134', '10', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '177', '10', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '136', '10', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '160', '10', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '139', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '158', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '156', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '77', '10', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '153', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '148', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '11', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '85', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '82', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '144', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '160', '11', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '150', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '138', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '155', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '80', '11', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '133', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '34', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '77', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '75', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '147', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '19', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '69', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('16', '143', '11', '0000-00-00', '2600.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '96', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '159', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '156', '11', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '155', '', '2012-11-05', '1900.00', 'Pendiente');
INSERT INTO cuenta VALUES('7', '155', '', '2012-11-05', '300.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '138', '08', '2012-11-05', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '138', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '138', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '138', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '138', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '138', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '177', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '177', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '177', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '177', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '177', '08', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '177', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '143', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '143', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('16', '143', '08', '2012-11-05', '2600.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '143', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '143', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '143', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '136', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '136', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '136', '11', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '136', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '136', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '136', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '136', '08', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '136', '09', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('16', '143', '09', '2012-11-05', '2600.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '177', '09', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '134', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '134', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '134', '08', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '134', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '134', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '134', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '134', '09', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '106', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '106', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '106', '08', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '106', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '106', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '106', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '106', '09', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '63', '08', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '63', '09', '2012-11-05', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '69', '08', '2012-11-05', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '69', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '69', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '69', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '69', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '69', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '69', '09', '2012-11-05', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '144', '08', '2012-11-05', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '144', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '144', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '144', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '144', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '144', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '145', '', '2012-11-05', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '145', '08', '2012-11-05', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '145', '', '2012-11-05', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '145', '', '2012-11-05', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '145', '', '2012-11-05', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '145', '', '2012-11-05', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '145', '09', '2012-11-05', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '145', '11', '2012-11-05', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '177', '11', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '167', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '95', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '68', '11', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '158', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '139', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '140', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '137', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '154', '11', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '146', '11', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '161', '11', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('13', '16', '11', '0000-00-00', '2600.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '63', '11', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '106', '11', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('16', '97', '11', '0000-00-00', '2600.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '10', '11', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '63', '12', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '75', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '34', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '153', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '148', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '11', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '147', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '137', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '82', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '19', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '84', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '160', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '155', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '138', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '159', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '145', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('16', '143', '12', '0000-00-00', '2600.00', 'Pagado');
INSERT INTO cuenta VALUES('13', '16', '12', '0000-00-00', '2600.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '85', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '161', '12', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '133', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '77', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '156', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '96', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '95', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('16', '97', '12', '0000-00-00', '2600.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '69', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '183', '12', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '167', '12', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '68', '12', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '10', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '152', '12', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '148', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '148', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '148', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '148', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '148', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '159', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '159', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '159', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '159', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '159', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '25', '12', '2012-12-17', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '146', '12', '2012-12-17', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '146', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '146', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '146', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '146', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '146', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '28', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '28', '12', '2012-12-17', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '28', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '28', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '28', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '147', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '147', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '62', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '147', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '62', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '62', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '77', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '183', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '183', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '183', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '183', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '183', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '133', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '133', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '133', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '133', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '180', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '180', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '180', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '180', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '180', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '160', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '160', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '160', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '160', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '160', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '106', '12', '2012-12-17', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '85', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '85', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '85', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '153', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '153', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '153', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '153', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '153', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '161', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '161', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '161', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '161', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '161', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '137', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '137', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '137', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '137', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '137', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '17', '01', '2013-01-09', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '183', '01', '2013-01-09', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '156', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '156', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '156', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '156', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '156', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('2', '142', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('6', '142', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '142', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '142', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '142', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '64', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '64', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '152', '', '2012-12-17', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '152', '', '2012-12-17', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '152', '', '2012-12-17', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '152', '', '2012-12-17', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '152', '', '2012-12-17', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '83', '', '2012-12-18', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '89', '', '2012-12-18', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('4', '68', '', '2012-12-18', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '16', '', '2012-12-18', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '16', '', '2012-12-18', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '16', '', '2012-12-18', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '136', '12', '2012-12-18', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '154', '', '2012-12-18', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('9', '154', '', '2012-12-18', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('1', '154', '', '2012-12-18', '600.00', 'Pagado');
INSERT INTO cuenta VALUES('5', '154', '', '2012-12-18', '4200.00', 'Pagado');
INSERT INTO cuenta VALUES('7', '154', '', '2012-12-18', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '82', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '63', '01', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '153', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '146', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '160', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '154', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '155', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '77', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('16', '143', '01', '0000-00-00', '2600.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '11', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '85', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '137', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '146', '08', '2013-01-09', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '146', '09', '2013-01-09', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '10', '01', '2013-01-09', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('3', '10', '', '2013-01-09', '1900.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '95', '01', '2013-01-09', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '96', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '138', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('13', '16', '01', '0000-00-00', '2600.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '167', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '75', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '84', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '68', '01', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('15', '67', '01', '0000-00-00', '1200.00', 'Pendiente');
INSERT INTO cuenta VALUES('15', '64', '01', '0000-00-00', '1200.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '133', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '145', '01', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '148', '01', '2013-01-22', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '159', '01', '2013-01-22', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '161', '01', '2013-01-22', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '152', '01', '2013-01-22', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('15', '196', '01', '2013-01-22', '1200.00', 'Pagado');
INSERT INTO cuenta VALUES('8', '196', '', '2013-01-22', '300.00', 'Pagado');
INSERT INTO cuenta VALUES('10', '196', '', '2013-01-22', '1350.00', 'Pagado');
INSERT INTO cuenta VALUES('15', '196', '12', '2013-01-22', '1200.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '19', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '69', '01', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '10', '02', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '161', '02', '0000-00-00', '6000.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '75', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '137', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '148', '02', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '183', '02', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '63', '02', '0000-00-00', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '82', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '145', '02', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '84', '02', '0000-00-00', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '11', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '96', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '19', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '83', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '79', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '159', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('11', '146', '02', '2013-02-12', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '95', '02', '2013-02-12', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '77', '02', '2013-02-12', '6500.00', 'Pagado');
INSERT INTO cuenta VALUES('14', '68', '02', '2013-02-12', '6000.00', 'Pagado');
INSERT INTO cuenta VALUES('11', '85', '02', '0000-00-00', '6500.00', 'Pendiente');
INSERT INTO cuenta VALUES('14', '68', '03', '0000-00-00', '6000.00', 'Pendiente');
UNLOCK TABLES;


--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS empleado;
CREATE TABLE `empleado` (
  `id_user` int(11) NOT NULL,
  `fechan` date default NULL,
  `lugar` varchar(15) collate utf8_spanish_ci NOT NULL,
  `num` int(11) NOT NULL,
  `col` varchar(15) collate utf8_spanish_ci NOT NULL,
  `edo` varchar(30) collate utf8_spanish_ci NOT NULL,
  `mpo` varchar(40) collate utf8_spanish_ci NOT NULL,
  `zip` varchar(5) collate utf8_spanish_ci NOT NULL,
  `cel` varchar(15) collate utf8_spanish_ci default NULL,
  `expm` char(2) collate utf8_spanish_ci NOT NULL,
  `expd` char(2) collate utf8_spanish_ci NOT NULL,
  `expe` char(2) collate utf8_spanish_ci NOT NULL,
  `gm` varchar(30) collate utf8_spanish_ci NOT NULL,
  `oficio` varchar(30) collate utf8_spanish_ci NOT NULL,
  `espe` varchar(30) collate utf8_spanish_ci NOT NULL,
  `estatura` varchar(8) collate utf8_spanish_ci default NULL,
  `exp` varchar(200) collate utf8_spanish_ci NOT NULL,
  `nota` varchar(200) collate utf8_spanish_ci NOT NULL,
  `folio` varchar(8) collate utf8_spanish_ci NOT NULL,
  `curp` varchar(18) collate utf8_spanish_ci NOT NULL,
  `tipoa` varchar(10) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `empleado`
--

LOCK TABLES empleado WRITE;
INSERT INTO empleado VALUES('38', '1944-07-27', '', '23', '16 de septiembr', 'Jalisco', 'zapotlan el grande', '', '(341) 114-4528', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('37', '1952-04-24', '', '0', '', 'Jalisco', 'zapotlan el grande', '', '(331) 414-3661', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('20', '1979-12-12', '', '434', 'centro', 'Jalisco', 'ZAPOTLAN EL GRANDE', '49000', '', '', '', '', '', '', '', NULL, '', '', '', '', 'General');
INSERT INTO empleado VALUES('201', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 'Capitan');
INSERT INTO empleado VALUES('202', '1990-06-10', '', '68', 'la cebada', 'Jalisco', 'zapotlan el grande', '49000', '(341) 116-1752', '', '', '', '', '', '', NULL, '', '', '', '', 'General');
INSERT INTO empleado VALUES('6', '1111-11-11', '', '434', '', 'Jalisco', 'cd guzman', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 'General');
INSERT INTO empleado VALUES('30', '1974-08-11', '', '434', 'centro', 'Jalisco', 'ciudad guzman', '49000', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('31', '1979-01-17', '', '25', 'acueducto san j', 'Jalisco', 'ZAPOTLAN EL GRA', '', '(341) 117-4465', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('1', '0000-00-00', '', '409', 'CENTRO', 'Jalisco', 'cd guzman', '49000', '(341) 122-4092', '', '', '', '', '', '', NULL, '', '', '', '', 'Admin');
INSERT INTO empleado VALUES('39', '1981-08-09', '', '61', 'centro', 'Jalisco', 'tuxpan', '', '(341) 129-2031', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('40', '1973-10-06', '', '219', 'centro', 'Jalisco', 'zapotlan el grande', '', '(341) 118-9316', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('41', '1972-08-21', '', '402', 'solidaridad', 'Jalisco', 'zapotlan el grande', '', '(341) 134-1768', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('42', '1986-08-23', '', '143', 'centro', 'Jalisco', 'zapotlan el grande', '', '(341) 878-4132', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('43', '0000-00-00', '', '144', 'centro', 'Jalisco', 'tuxpan', '', '(341) 121-0154', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('44', '1960-07-06', '', '3', 'centro', 'Jalisco', 'zapotlan el grande', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('45', '1962-11-22', '', '31', 'cordero', 'Jalisco', 'zapotlan el grande', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('46', '1987-06-05', '', '63', 'centro', 'Jalisco', 'zapotlan el grande', '', '(341) 103-0058', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('47', '1987-07-01', '', '193', 'centro', 'Jalisco', 'ZAPOTILTIC', '', '(342) 101-0438', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('48', '1975-04-16', '', '40', 'los ocotillos', 'Jalisco', 'zapotlan el grande', '', '(341) 111-9817', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('49', '1986-03-20', '', '0', '', 'Jalisco', '', '', '(341) 106-1415', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('51', '0000-00-00', '', '0', '', 'Jalisco', 'zapotlan el grande', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('52', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('53', '1979-12-09', '', '27', 'centro', 'Jalisco', 'zapotlÁN EL GRANDE', '49000', '(341) 109-0271', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('54', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('55', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('56', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('57', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('58', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('59', '1984-09-01', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('87', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 'General');
INSERT INTO empleado VALUES('109', NULL, '', '0', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', 'Admin');
INSERT INTO empleado VALUES('113', '1990-07-23', '', '585', 'constituyentes', 'Jalisco', 'zapotlan el grande', '49088', '(341) 117-1910', '', '', '', '', '', '', NULL, '', '', '', '', 'Contable');
INSERT INTO empleado VALUES('181', '1990-02-11', '', '52', 'las haciendas', 'Jalisco', 'zapotlan el grande', '49055', '(341) 114-8107', '', '', '', '', '', '', NULL, '', '', '', '', 'General');
INSERT INTO empleado VALUES('165', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('176', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
INSERT INTO empleado VALUES('179', '0000-00-00', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '');
UNLOCK TABLES;


--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS grupos;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL auto_increment,
  `id_per` int(11) NOT NULL,
  `nombre` varchar(8) collate utf8_spanish_ci NOT NULL,
  `drescrip` varchar(150) collate utf8_spanish_ci default NULL,
  `nivel` varchar(1) collate utf8_spanish_ci NOT NULL,
  `categoria` varchar(12) collate utf8_spanish_ci NOT NULL,
  `capacidad` int(11) NOT NULL,
  PRIMARY KEY  (`id`,`id_per`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `grupos`
--

LOCK TABLES grupos WRITE;
INSERT INTO grupos VALUES('1', '1', 'A', NULL, '1', 'Bachillerato', '20');
INSERT INTO grupos VALUES('2', '1', 'A', NULL, '1', 'Secundaria', '20');
INSERT INTO grupos VALUES('3', '1', 'A', NULL, '2', 'Secundaria', '20');
INSERT INTO grupos VALUES('4', '1', 'A', NULL, '3', 'Secundaria', '20');
INSERT INTO grupos VALUES('5', '1', 'A', NULL, '2', 'Bachillerato', '20');
INSERT INTO grupos VALUES('6', '1', 'A', NULL, '3', 'Bachillerato', '20');
INSERT INTO grupos VALUES('7', '1', 'A', NULL, '4', 'Bachillerato', '20');
INSERT INTO grupos VALUES('8', '1', 'A', NULL, '5', 'Bachillerato', '20');
INSERT INTO grupos VALUES('9', '1', 'A', NULL, '6', 'Bachillerato', '20');
UNLOCK TABLES;


--
-- Table structure for table `maestros`
--

DROP TABLE IF EXISTS maestros;
CREATE TABLE `maestros` (
  `id_grupo` int(11) NOT NULL,
  `id_master` int(11) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `categoria` varchar(14) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_grupo`,`id_master`,`id_mat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `maestros`
--

LOCK TABLES maestros WRITE;
INSERT INTO maestros VALUES('2', '38', '40', 'Bachillerato');
INSERT INTO maestros VALUES('2', '47', '41', 'Bachillerato');
INSERT INTO maestros VALUES('2', '59', '42', 'Bachillerato');
INSERT INTO maestros VALUES('2', '53', '43', 'Bachillerato');
INSERT INTO maestros VALUES('2', '54', '44', 'Bachillerato');
INSERT INTO maestros VALUES('2', '55', '45', 'Bachillerato');
INSERT INTO maestros VALUES('2', '31', '46', 'Bachillerato');
INSERT INTO maestros VALUES('2', '37', '47', 'Bachillerato');
INSERT INTO maestros VALUES('3', '38', '48', 'Bachillerato');
INSERT INTO maestros VALUES('3', '45', '49', 'Bachillerato');
INSERT INTO maestros VALUES('3', '57', '50', 'Bachillerato');
INSERT INTO maestros VALUES('3', '53', '51', 'Bachillerato');
INSERT INTO maestros VALUES('3', '54', '52', 'Bachillerato');
INSERT INTO maestros VALUES('3', '55', '53', 'Bachillerato');
INSERT INTO maestros VALUES('3', '37', '56', 'Bachillerato');
INSERT INTO maestros VALUES('3', '40', '85', 'Bachillerato');
INSERT INTO maestros VALUES('3', '165', '86', 'Bachillerato');
INSERT INTO maestros VALUES('4', '37', '57', 'Bachillerato');
INSERT INTO maestros VALUES('4', '38', '60', 'Bachillerato');
INSERT INTO maestros VALUES('4', '45', '61', 'Bachillerato');
INSERT INTO maestros VALUES('4', '57', '62', 'Bachillerato');
INSERT INTO maestros VALUES('4', '41', '63', 'Bachillerato');
INSERT INTO maestros VALUES('4', '54', '64', 'Bachillerato');
INSERT INTO maestros VALUES('4', '55', '65', 'Bachillerato');
INSERT INTO maestros VALUES('4', '40', '87', 'Bachillerato');
INSERT INTO maestros VALUES('4', '31', '88', 'Bachillerato');
INSERT INTO maestros VALUES('1', '42', '32', 'Bachillerato');
INSERT INTO maestros VALUES('1', '47', '33', 'Bachillerato');
INSERT INTO maestros VALUES('1', '59', '34', 'Bachillerato');
INSERT INTO maestros VALUES('1', '179', '35', 'Bachillerato');
INSERT INTO maestros VALUES('1', '54', '36', 'Bachillerato');
INSERT INTO maestros VALUES('1', '55', '37', 'Bachillerato');
INSERT INTO maestros VALUES('1', '31', '38', 'Bachillerato');
INSERT INTO maestros VALUES('1', '37', '39', 'Bachillerato');
INSERT INTO maestros VALUES('5', '44', '98', 'Bachillerato');
INSERT INTO maestros VALUES('5', '56', '99', 'Bachillerato');
INSERT INTO maestros VALUES('5', '37', '58', 'Bachillerato');
INSERT INTO maestros VALUES('5', '53', '69', 'Bachillerato');
INSERT INTO maestros VALUES('5', '30', '101', 'Bachillerato');
INSERT INTO maestros VALUES('5', '49', '102', 'Bachillerato');
INSERT INTO maestros VALUES('5', '46', '100', 'Bachillerato');
INSERT INTO maestros VALUES('5', '40', '95', 'Bachillerato');
INSERT INTO maestros VALUES('5', '41', '96', 'Bachillerato');
INSERT INTO maestros VALUES('2', '54', '13', 'Secundaria');
INSERT INTO maestros VALUES('2', '42', '14', 'Secundaria');
INSERT INTO maestros VALUES('2', '47', '15', 'Secundaria');
INSERT INTO maestros VALUES('2', '51', '16', 'Secundaria');
INSERT INTO maestros VALUES('2', '56', '17', 'Secundaria');
INSERT INTO maestros VALUES('2', '49', '18', 'Secundaria');
INSERT INTO maestros VALUES('2', '37', '19', 'Secundaria');
INSERT INTO maestros VALUES('2', '31', '20', 'Secundaria');
INSERT INTO maestros VALUES('2', '176', '21', 'Secundaria');
INSERT INTO maestros VALUES('1', '42', '4', 'Secundaria');
INSERT INTO maestros VALUES('1', '54', '3', 'Secundaria');
INSERT INTO maestros VALUES('1', '44', '5', 'Secundaria');
INSERT INTO maestros VALUES('1', '51', '6', 'Secundaria');
INSERT INTO maestros VALUES('1', '49', '7', 'Secundaria');
INSERT INTO maestros VALUES('6', '37', '59', 'Bachillerato');
INSERT INTO maestros VALUES('6', '56', '103', 'Bachillerato');
INSERT INTO maestros VALUES('6', '46', '104', 'Bachillerato');
INSERT INTO maestros VALUES('6', '165', '105', 'Bachillerato');
INSERT INTO maestros VALUES('6', '49', '106', 'Bachillerato');
INSERT INTO maestros VALUES('6', '39', '76', 'Bachillerato');
INSERT INTO maestros VALUES('6', '44', '77', 'Bachillerato');
INSERT INTO maestros VALUES('6', '57', '78', 'Bachillerato');
INSERT INTO maestros VALUES('6', '165', '115', 'Bachillerato');
INSERT INTO maestros VALUES('6', '48', '94', 'Bachillerato');
INSERT INTO maestros VALUES('3', '54', '23', 'Secundaria');
INSERT INTO maestros VALUES('1', '37', '8', 'Secundaria');
INSERT INTO maestros VALUES('1', '48', '9', 'Secundaria');
INSERT INTO maestros VALUES('1', '176', '10', 'Secundaria');
INSERT INTO maestros VALUES('1', '179', '11', 'Secundaria');
INSERT INTO maestros VALUES('3', '42', '24', 'Secundaria');
INSERT INTO maestros VALUES('3', '51', '26', 'Secundaria');
INSERT INTO maestros VALUES('3', '56', '27', 'Secundaria');
INSERT INTO maestros VALUES('3', '49', '28', 'Secundaria');
INSERT INTO maestros VALUES('3', '37', '29', 'Secundaria');
INSERT INTO maestros VALUES('3', '176', '30', 'Secundaria');
INSERT INTO maestros VALUES('3', '48', '97', 'Secundaria');
INSERT INTO maestros VALUES('3', '44', '25', 'Secundaria');
INSERT INTO maestros VALUES('6', '165', '114', 'Bachillerato');
INSERT INTO maestros VALUES('6', '56', '99', 'Bachillerato');
INSERT INTO maestros VALUES('6', '31', '93', 'Bachillerato');
INSERT INTO maestros VALUES('5', '30', '110', 'Bachillerato');
INSERT INTO maestros VALUES('5', '165', '112', 'Bachillerato');
INSERT INTO maestros VALUES('5', '41', '109', 'Bachillerato');
INSERT INTO maestros VALUES('5', '40', '108', 'Bachillerato');
INSERT INTO maestros VALUES('5', '40', '111', 'Bachillerato');
INSERT INTO maestros VALUES('5', '41', '113', 'Bachillerato');
INSERT INTO maestros VALUES('5', '44', '107', 'Bachillerato');
UNLOCK TABLES;


--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS materias;
CREATE TABLE `materias` (
  `id` int(11) NOT NULL auto_increment,
  `clave` varchar(8) collate utf8_spanish_ci default NULL,
  `titulo` varchar(160) collate utf8_spanish_ci NOT NULL,
  `categoria` varchar(12) collate utf8_spanish_ci NOT NULL,
  `nivel` varchar(1) collate utf8_spanish_ci NOT NULL,
  `tipo` varchar(12) collate utf8_spanish_ci NOT NULL,
  `especial` varchar(14) collate utf8_spanish_ci NOT NULL,
  `creditos` int(11) NOT NULL,
  `hrs` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `materias`
--

LOCK TABLES materias WRITE;
INSERT INTO materias VALUES('4', NULL, 'MATEMÁTICAS I', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '5');
INSERT INTO materias VALUES('3', NULL, 'ESPAÑOL I', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '5');
INSERT INTO materias VALUES('5', NULL, 'CIENCIAS I (ÉNFASIS EN BIOLOGÍA)', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '6');
INSERT INTO materias VALUES('6', NULL, 'GEOGRAFÍA DE MÉXICO Y DEL MUNDO', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '5');
INSERT INTO materias VALUES('7', NULL, 'LENGUA EXTRANJERA I', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('8', NULL, 'EDUCACIÓN FÍSICA I', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '2');
INSERT INTO materias VALUES('9', NULL, 'TECNOLOGÍA I', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('10', NULL, 'ARTES I (MÚSICA, DANZA, TEATRO O ARTES VISUALES)', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '2');
INSERT INTO materias VALUES('11', NULL, 'ASIGNATURA ESTATAL', 'Secundaria', '1', 'Basico', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('109', NULL, 'ADMINISTRACIÓN I', 'Bachillerato', '5', 'Especialidad', 'Administracion', '6', '3');
INSERT INTO materias VALUES('13', NULL, 'ESPAÑOL II', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '5');
INSERT INTO materias VALUES('14', NULL, 'MATEMÁTICAS II', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '5');
INSERT INTO materias VALUES('15', NULL, 'CIENCIAS II (ÉNFASIS EN FÍSICA)', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '6');
INSERT INTO materias VALUES('16', NULL, 'HISTORIA I', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '4');
INSERT INTO materias VALUES('17', NULL, 'FORMACIÓN CÍVICA Y ÉTICA I', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '4');
INSERT INTO materias VALUES('18', NULL, 'LENGUA EXTRANJERA II', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('19', NULL, 'EDUCACIÓN FÍSICA II', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('20', NULL, 'TECNOLOGÍA II', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('21', NULL, 'ARTES II (MÚSICA, DANZA, TEATRO O ARTES VISUALES)', 'Secundaria', '2', 'Basico', 'Ninguna', '0', '2');
INSERT INTO materias VALUES('108', NULL, 'CALCULO DIFERENCIAL', 'Bachillerato', '5', 'Especialidad', 'Administracion', '6', '3');
INSERT INTO materias VALUES('23', NULL, 'ESPAÑOL III', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '5');
INSERT INTO materias VALUES('24', NULL, 'MATEMÁTICAS III', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '5');
INSERT INTO materias VALUES('25', NULL, 'CIENCIAS III (ÉNFASIS EN QUÍMICA)', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '6');
INSERT INTO materias VALUES('26', NULL, 'HISTORIA II', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '4');
INSERT INTO materias VALUES('27', NULL, 'FORMACIÓN CÍVICA Y ÉTICA II', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '4');
INSERT INTO materias VALUES('28', NULL, 'LENGUA EXTRANJERA III', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('29', NULL, 'EDUCACIÓN FÍSICA III', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('30', NULL, 'ARTES III (MÚSICA, DANZA, TEATRO O ARTES VISUALES)', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '2');
INSERT INTO materias VALUES('107', NULL, 'GEOGRAFÍA', 'Bachillerato', '5', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('32', NULL, 'MATEMÁTICAS I', 'Bachillerato', '1', 'Tronco Comun', 'Ninguna', '10', '5');
INSERT INTO materias VALUES('33', NULL, 'QUÍMICA I', 'Bachillerato', '1', 'Tronco Comun', 'Ninguna', '10', '5');
INSERT INTO materias VALUES('34', NULL, 'ÉTICA Y VALORES I', 'Bachillerato', '1', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('35', NULL, 'INTRODUCCIÓN A LAS CIENCIAS SOCIALES', 'Bachillerato', '1', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('36', NULL, 'TALLER DE LECTURA Y REDACCIÓN I', 'Bachillerato', '1', 'Tronco Comun', 'Ninguna', '8', '4');
INSERT INTO materias VALUES('37', NULL, 'LENGUA ADICIONAL AL ESPAÑOL I', 'Bachillerato', '1', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('38', NULL, 'INFORMÁTICA I', 'Bachillerato', '1', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('39', NULL, 'ACTIVIDADES PARAESCOLARES I', 'Bachillerato', '1', 'Tronco Comun', 'Ninguna', '0', '4');
INSERT INTO materias VALUES('40', NULL, 'MATEMÁTICAS II', 'Bachillerato', '2', 'Tronco Comun', 'Ninguna', '10', '5');
INSERT INTO materias VALUES('41', NULL, 'QUÍMICA II', 'Bachillerato', '2', 'Tronco Comun', 'Ninguna', '10', '5');
INSERT INTO materias VALUES('42', NULL, 'ÉTICA Y VALORES II', 'Bachillerato', '2', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('43', NULL, 'HISTORIA DE MÉXICO I', 'Bachillerato', '2', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('44', NULL, 'TALLER DE LECTURA Y REDACCIÓN II', 'Bachillerato', '2', 'Tronco Comun', 'Ninguna', '8', '4');
INSERT INTO materias VALUES('45', NULL, 'LENGUA ADICIONAL AL ESPAÑOL II', 'Bachillerato', '2', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('46', NULL, 'INFORMÁTICA II', 'Bachillerato', '2', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('47', NULL, 'ACTIVIDADES PARAESCORALES II', 'Bachillerato', '2', 'Tronco Comun', 'Ninguna', '0', '4');
INSERT INTO materias VALUES('48', NULL, 'MATEMÁTICAS III', 'Bachillerato', '3', 'Tronco Comun', 'Ninguna', '10', '5');
INSERT INTO materias VALUES('49', NULL, 'BIOLOGÍA I', 'Bachillerato', '3', 'Tronco Comun', 'Ninguna', '8', '4');
INSERT INTO materias VALUES('50', NULL, 'FÍSICA I', 'Bachillerato', '3', 'Tronco Comun', 'Ninguna', '10', '5');
INSERT INTO materias VALUES('51', NULL, 'HISTORIA DE MÉXICO II', 'Bachillerato', '3', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('52', NULL, 'LITERATURA I', 'Bachillerato', '3', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('53', NULL, 'LENGUA ADICIONAL AL ESPAÑOL III', 'Bachillerato', '3', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('112', NULL, 'ACTUALIZAR LOS SISTEMAS DE INFORMACIÓN DE LA EMPRESA', 'Bachillerato', '5', 'Especialidad', 'Administracion', '6', '3');
INSERT INTO materias VALUES('99', NULL, 'DERECHO II', 'Bachillerato', '6', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('56', NULL, 'ACTIVIDADES PARAESCORALES III', 'Bachillerato', '3', 'Tronco Comun', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('57', NULL, 'ACTIVIDADES PARAESCORALES IV', 'Bachillerato', '4', 'Tronco Comun', 'Ninguna', '0', '2');
INSERT INTO materias VALUES('58', NULL, 'ACTIVIDADES PARAESCORALES V', 'Bachillerato', '5', 'Tronco Comun', 'Ninguna', '0', '4');
INSERT INTO materias VALUES('59', NULL, 'ACTIVIDADES PARAESCORALES VI', 'Bachillerato', '6', 'Tronco Comun', 'Ninguna', '0', '3');
INSERT INTO materias VALUES('60', NULL, 'MATEMÁTICAS IV', 'Bachillerato', '4', 'Tronco Comun', 'Ninguna', '10', '5');
INSERT INTO materias VALUES('61', NULL, 'BIOLOGÍA II', 'Bachillerato', '4', 'Tronco Comun', 'Ninguna', '8', '4');
INSERT INTO materias VALUES('62', NULL, 'FÍSICA II', 'Bachillerato', '4', 'Tronco Comun', 'Ninguna', '10', '5');
INSERT INTO materias VALUES('63', NULL, 'ESTRUCTURA SOCIOECONOMICA DE MÉXICO', 'Bachillerato', '4', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('64', NULL, 'LITERATURA II', 'Bachillerato', '4', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('65', NULL, 'LENGUA ADICIONAL AL ESPAÑOL IV', 'Bachillerato', '4', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('104', NULL, 'TEMAS SELECTOS DE PSICOLOGIA II', 'Bachillerato', '6', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('105', NULL, 'CIENCIAS DE LA COMUNICACION II', 'Bachillerato', '6', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('106', NULL, 'ETIMOLOGIAS GRECOLATINAS II', 'Bachillerato', '6', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('69', NULL, 'HISTORIA UNIVERSAL CONTEMPORANEA', 'Bachillerato', '5', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('111', NULL, 'ECONOMÍA', 'Bachillerato', '5', 'Especialidad', 'Administracion', '6', '3');
INSERT INTO materias VALUES('113', NULL, 'ATENDER AL CLIENTE EN SU ENTORNO SOCIAL DE MANERA PRESENCIAL', 'Bachillerato', '5', 'Especialidad', 'Administracion', '8', '4');
INSERT INTO materias VALUES('76', NULL, 'FILOSOFÍA', 'Bachillerato', '6', 'Tronco Comun', 'Ninguna', '8', '4');
INSERT INTO materias VALUES('77', NULL, 'ECOLOGÍA Y MEDIO AMBIENTE', 'Bachillerato', '6', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('78', NULL, 'METODOLOGÍA DE LA INVESTIGACIÓN', 'Bachillerato', '6', 'Tronco Comun', 'Ninguna', '6', '3');
INSERT INTO materias VALUES('115', NULL, 'PLANEACIÓN FINANCIERA II', 'Bachillerato', '6', 'Especialidad', 'Administracion', '6', '3');
INSERT INTO materias VALUES('110', NULL, 'CONTABILIDAD I', 'Bachillerato', '5', 'Especialidad', 'Administracion', '6', '3');
INSERT INTO materias VALUES('114', NULL, 'CALIDAD E INNOVACIÓN TECNOLÓGICA', 'Bachillerato', '6', 'Especialidad', 'Administracion', '8', '4');
INSERT INTO materias VALUES('85', NULL, 'DIRECCION Y EVALUACION DEL PLAN DE ACCION', 'Bachillerato', '3', 'Especialidad', 'Administracion', '6', '3');
INSERT INTO materias VALUES('86', NULL, 'PLANEAR ACTIVIDADES Y ASIGNAR RECURSOS', 'Bachillerato', '3', 'Especialidad', 'Administracion', '8', '4');
INSERT INTO materias VALUES('87', NULL, 'CONTROLAR LA INFORMACION DOCUMENTAL DE LA EMPRESA DE MANERA FISICA O ELECTRONICA', 'Bachillerato', '4', 'Especialidad', 'Administracion', '6', '3');
INSERT INTO materias VALUES('88', NULL, 'GENERAR LA COMUNICACION DE LA EMPRESA DE MANERA MANUAL O ELECTRONICA', 'Bachillerato', '4', 'Especialidad', 'Administracion', '8', '4');
INSERT INTO materias VALUES('97', NULL, 'TECNOLOGíAS III', 'Secundaria', '3', 'Basico', 'Ninguna', '0', '3');
UNLOCK TABLES;


--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS pagos;
CREATE TABLE `pagos` (
  `id` int(11) NOT NULL auto_increment,
  `categoria` varchar(12) collate utf8_spanish_ci NOT NULL,
  `periodicidad` varchar(12) collate utf8_spanish_ci NOT NULL,
  `modalidad` varchar(12) collate utf8_spanish_ci NOT NULL,
  `concepto` varchar(100) collate utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) collate utf8_spanish_ci NOT NULL,
  `importe` float(7,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `pagos`
--

LOCK TABLES pagos WRITE;
INSERT INTO pagos VALUES('1', 'Bachillerato', 'Un Solo Pago', 'Todos', 'EXÁMENES DE ADMISIÓN', '', '600.00');
INSERT INTO pagos VALUES('2', 'Secundaria', 'Un Solo Pago', 'Todos', 'EXÁMENES DE ADMISIÓN', '', '600.00');
INSERT INTO pagos VALUES('3', 'Bachillerato', 'Semestral', 'Todos', 'INSCRIPCIÓN', '', '1900.00');
INSERT INTO pagos VALUES('4', 'Secundaria', 'Anual', 'Todos', 'INSCRIPCIÓN', '', '1900.00');
INSERT INTO pagos VALUES('5', 'Bachillerato', 'Un Solo Pago', 'Todos', 'PAQUETE DE UNIFORMES', '', '4200.00');
INSERT INTO pagos VALUES('6', 'Secundaria', 'Un Solo Pago', 'Todos', 'PAQUETE DE UNIFORMES', '', '4200.00');
INSERT INTO pagos VALUES('7', 'Bachillerato', 'Semestral', 'Todos', 'SEGURO ESCOLAR', '', '300.00');
INSERT INTO pagos VALUES('8', 'Secundaria', 'Anual', 'Todos', 'SEGURO ESCOLAR', '', '300.00');
INSERT INTO pagos VALUES('9', 'Bachillerato', 'Semestral', 'Todos', 'PAQUETE DE LIBROS', '', '1350.00');
INSERT INTO pagos VALUES('10', 'Secundaria', 'Un Solo Pago', 'Todos', 'PAQUETE DE LIBROS', '', '1350.00');
INSERT INTO pagos VALUES('11', 'Bachillerato', 'Mensual', 'Interno', 'COLEGIATURA PARA INTERNADO', 'Incluye Alojamiento y Alimentacion', '6500.00');
INSERT INTO pagos VALUES('12', 'Bachillerato', 'Mensual', 'Externo', 'COLEGIATURA PARA EXTERNO', '', '1400.00');
INSERT INTO pagos VALUES('13', 'Bachillerato', 'Mensual', 'Semi-Interno', 'COLEGIATURA PARA SEMI-INTERNO', '', '2600.00');
INSERT INTO pagos VALUES('14', 'Secundaria', 'Mensual', 'Interno', 'COLEGIATURA PARA INTERNO', 'Incluye Alojamiento y Alimentacion', '6000.00');
INSERT INTO pagos VALUES('15', 'Secundaria', 'Mensual', 'Externo', 'COLEGIATURA PARA EXTERNO', '', '1200.00');
INSERT INTO pagos VALUES('16', 'Secundaria', 'Mensual', 'Semi-Interno', 'COLEGIATURA PARA SEMI-INTERNO', '', '2600.00');
UNLOCK TABLES;


--
-- Table structure for table `periodos`
--

DROP TABLE IF EXISTS periodos;
CREATE TABLE `periodos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(20) collate utf8_spanish_ci NOT NULL,
  `cicloi` date default NULL,
  `ciclof` date default NULL,
  `estado` varchar(8) collate utf8_spanish_ci NOT NULL,
  `categoria` varchar(12) collate utf8_spanish_ci NOT NULL,
  `ppi` date default NULL,
  `ppf` date default NULL,
  `spi` date default NULL,
  `spf` date default NULL,
  `tpi` date default NULL,
  `tpf` date default NULL,
  `cpi` date NOT NULL,
  `cpf` date NOT NULL,
  `qpi` date NOT NULL,
  `qpf` date NOT NULL,
  `xpi` date NOT NULL,
  `xpf` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `periodos`
--

LOCK TABLES periodos WRITE;
INSERT INTO periodos VALUES('1', '', NULL, NULL, '', 'Bachillerato', '2012-08-20', '2012-11-05', '2012-10-27', '2012-11-07', '2012-12-03', '2012-12-10', '2013-01-25', '2013-01-31', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00');
INSERT INTO periodos VALUES('2', '', NULL, NULL, '', 'Secundaria', '2012-10-19', '2012-11-10', '0000-00-00', '0000-00-00', '2013-03-01', '2013-03-08', '0000-00-00', '0000-00-00', '2012-06-29', '2012-07-06', '0000-00-00', '0000-00-00');
UNLOCK TABLES;


--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS permisos;
CREATE TABLE `permisos` (
  `id` int(11) NOT NULL auto_increment,
  `id_master` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `categoria` varchar(12) collate utf8_spanish_ci NOT NULL,
  `parcial` char(1) collate utf8_spanish_ci NOT NULL,
  `estado` char(1) collate utf8_spanish_ci NOT NULL default '0',
  `causa` varchar(50) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `permisos`
--

LOCK TABLES permisos WRITE;
INSERT INTO permisos VALUES('3', '30', '2012-05-22', 'Bachillerato', '1', '1', '');
UNLOCK TABLES;


--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS solicitud;
CREATE TABLE `solicitud` (
  `id_alum` int(11) NOT NULL,
  `pass2` varchar(10) collate utf8_spanish_ci NOT NULL,
  `modalidad` varchar(12) collate utf8_spanish_ci default NULL,
  `especialidad` varchar(14) collate utf8_spanish_ci NOT NULL,
  `curp` varchar(18) collate utf8_spanish_ci NOT NULL,
  `fechan` date default NULL,
  `lugar` varchar(15) collate utf8_spanish_ci NOT NULL,
  `deporte` varchar(15) collate utf8_spanish_ci NOT NULL,
  `pasatiempo` varchar(15) collate utf8_spanish_ci NOT NULL,
  `religion` varchar(15) collate utf8_spanish_ci NOT NULL,
  `num` int(11) NOT NULL,
  `col` varchar(40) collate utf8_spanish_ci NOT NULL,
  `edo` varchar(40) collate utf8_spanish_ci NOT NULL,
  `mpo` varchar(40) collate utf8_spanish_ci NOT NULL,
  `zip` varchar(5) collate utf8_spanish_ci NOT NULL,
  `cel` varchar(15) collate utf8_spanish_ci default NULL,
  `secant` varchar(50) collate utf8_spanish_ci NOT NULL,
  `sectipo` varchar(10) collate utf8_spanish_ci NOT NULL,
  `seccd` varchar(50) collate utf8_spanish_ci NOT NULL,
  `secper` varchar(40) collate utf8_spanish_ci NOT NULL,
  `secpro` varchar(15) collate utf8_spanish_ci NOT NULL,
  `leng` varchar(80) collate utf8_spanish_ci NOT NULL,
  `nadar` varchar(2) collate utf8_spanish_ci NOT NULL,
  `matmas` varchar(50) collate utf8_spanish_ci NOT NULL,
  `matmen` varchar(50) collate utf8_spanish_ci NOT NULL,
  `insti` varchar(100) collate utf8_spanish_ci NOT NULL,
  `nohrmo` int(11) NOT NULL,
  `nohrma` int(11) NOT NULL,
  `civil` varchar(15) collate utf8_spanish_ci NOT NULL,
  `nombrep` varchar(40) collate utf8_spanish_ci NOT NULL,
  `edadp` varchar(2) collate utf8_spanish_ci NOT NULL,
  `nacip` varchar(15) collate utf8_spanish_ci NOT NULL,
  `domp` varchar(30) collate utf8_spanish_ci NOT NULL,
  `oficiop` varchar(30) collate utf8_spanish_ci NOT NULL,
  `emprep` varchar(30) collate utf8_spanish_ci NOT NULL,
  `telp` varchar(15) collate utf8_spanish_ci default NULL,
  `celp` varchar(15) collate utf8_spanish_ci default NULL,
  `emailp` varchar(40) collate utf8_spanish_ci default NULL,
  `nombrem` varchar(40) collate utf8_spanish_ci NOT NULL,
  `edadm` varchar(2) collate utf8_spanish_ci NOT NULL,
  `nacim` varchar(15) collate utf8_spanish_ci NOT NULL,
  `domm` varchar(30) collate utf8_spanish_ci NOT NULL,
  `oficiom` varchar(30) collate utf8_spanish_ci NOT NULL,
  `emprem` varchar(30) collate utf8_spanish_ci NOT NULL,
  `telm` varchar(15) collate utf8_spanish_ci default NULL,
  `celm` varchar(15) collate utf8_spanish_ci default NULL,
  `emailm` varchar(40) collate utf8_spanish_ci default NULL,
  `estatura` varchar(8) collate utf8_spanish_ci default NULL,
  `peso` varchar(8) collate utf8_spanish_ci default NULL,
  `tallapan` varchar(8) collate utf8_spanish_ci default NULL,
  `tallacam` varchar(8) collate utf8_spanish_ci NOT NULL,
  `calzado` varchar(8) collate utf8_spanish_ci NOT NULL,
  `gorra` varchar(8) collate utf8_spanish_ci NOT NULL,
  `sangre` varchar(4) collate utf8_spanish_ci NOT NULL,
  `motivo` varchar(500) collate utf8_spanish_ci NOT NULL,
  `razon` varchar(200) collate utf8_spanish_ci NOT NULL,
  `folio` varchar(8) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_alum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES solicitud WRITE;
INSERT INTO solicitud VALUES('50', 'TUTOR588SH', 'Interno', '', 'yBSUieeZBPhNALP', '0000-00-00', 'aaGsUiul', 'Ninguno', 'Ninguno', 'Ninguno', '0', 'saQNvREKLcakXpQ', 'Jalisco', 'yLPOcBLEO', 'dXHzr', 'BWwFuOwesQxKy', 'CdvYVAtSzxKA', 'Federal', 'QxmSUbHfqifOokGafhU', 'ubAVJhyoWSLpGWlcEad', 'nmtIYO', 'vjENpuqXEdV', 'No', 'QqSuOUnQTuPHY', 'WRpoivDopVWgUn', 'Buenos dias Jose9.Todas muy buenas ptrugneas.1- El costo de inversif3n es mednima, incluyendo capita', '0', '0', 'Casados', 'Cherry', 'yV', 'Mexicana', 'fQdstzWPlGIrokbMC', 'TinTpaGvQaWs', 'vGnsrvJNH', 'QuKYrufFRnG', 'ldRybeZvhhgIIMm', 'dslee@joseilbo.com', 'Cherry', 'pG', 'Mexicana', 'WgTKcAKvBadgT', 'jWaUeyYXmaNIDHjTWn', 'ztXSmEJOhgGkRRpr', 'JvSZADaYJotKGMp', 'iGOuqkVwo', 'dslee@joseilbo.com', 'jmDD', 'Lck', 'KiwIq', 'SHoVO', 'SGrYQ', 'ijoYA', 'null', 'Buenos dias Jose9.Todas muy buenas ptrugneas.1- El costo de inversif3n es mednima, incluyendo capital de trabajo y el paquete de entrenamiento ronda por los RD$10,000.00 pesos.2- Es tan rentable que somos la empresa mas grande del mundo con mas de 10 millones de empresarios, activa en 84 paedses. Trabajamos con un 35-50% de margen.3- Es como adquirir un Master Franchise . Usted tiene su propia operacif3n pero cuando expande su red, genera beneficios residuales de sus afiliados.4- Este sistema ti', 'datos incorrectos\n', '5U4YBUHV');
INSERT INTO solicitud VALUES('10', 'TUTORNNU7O', 'Externo', 'Administracion', '', '2012-04-24', '', '', '', '', '434', '', 'Jalisco', 'CD. GUZMAN', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('11', 'TUTORI346B', 'Interno', 'Administracion', '', '2012-04-24', '', '', '', '', '434', 'SAN AGUSTIN', 'Jalisco', 'CD. GUZMAN', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('12', 'TUTORL3IM5', 'Interno', 'Ninguna', '', '1985-10-10', '', '', '', '', '434', '', 'Jalisco', 'CD. GUZMAN', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('16', 'TUTORY6ZJ', 'Semi-Interno', 'Administracion', '', '1985-02-07', '', '', '', '', '434', '', 'Jalisco', 'ZAPOTLAN EL GRANDE', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('17', 'TUTORY6ZJ', 'Interno', 'Ninguna', '', '1990-11-11', '', '', '', '', '343', '', 'Jalisco', 'zapotlan el grande', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('18', 'TUTORY6ZJ', 'Interno', '', '', '1990-11-11', '', '', '', '', '434', '', 'Jalisco', 'zapotlan el grande', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('19', 'TUTORY6ZJ', 'Interno', 'Administracion', '', '1990-11-11', '', '', '', '', '434', '', 'Jalisco', 'zapotlan el grande', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('23', 'TUTORI92UB', 'Interno', '', '', '2005-01-01', '', '', '', '', '434', '', 'Jalisco', 'ZAPOTLAN EL GRANDE', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('24', 'TUTORG5L4Z', 'Interno', 'Ninguna', '', '1994-01-01', '', '', '', '', '434', '', 'Jalisco', 'ZAPOTLAN EL GRANDE', '49000', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('25', 'TUTORDP61Z', 'Interno', '', '', '1999-05-10', '', '', '', '', '304', 'centro', 'Jalisco', 'valle de juarez', '49540', '(331) 093-3936', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('26', 'TUTOR6WBZ2', 'Interno', 'Ninguna', '', '2000-01-01', '', '', '', '', '434', '', 'Jalisco', 'ZAPOTLAN EL GRANDE', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('27', 'TUTOR4WZ4B', 'Interno', '', '', '2000-01-01', '', '', '', '', '434', '', 'Jalisco', 'ZAPOTLAN EL GRANDE', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('28', 'TUTORX383D', 'Interno', '', '', '2000-01-01', '', '', '', '', '434', '', 'Jalisco', 'ZAPOTLAN EL GRANDE', '49000', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('32', 'TUTORQ51UG', 'Interno', '', 'AELP950913MCLCNL08', '1995-09-13', 'SALTILLO COAHUI', 'Ninguno', 'Ninguno', 'Catolica', '483', 'SATELITE SUR', 'Coahuila', 'SALTILLO', '25113', '', 'ESCUELA SECUNDARIA TECNICA 4 \' ARQUITECTO ISMAEL R', 'Estatal', 'SALTILLO', '3 AÑOS', '8.5', '', 'No', 'HISTORIA', 'MATEMATICAS', 'NINGUNA', '2', '0', 'Casados', 'ARMANDO ACEVEDO MACIAS', '47', 'Mexicana', 'ENRIQUE UREÑA 483 SATELITE SU', 'TECNICO RADIOLOGO', 'CENTRO HOSPITALARIO LA CONCEPC', '', '', 'QUIMICOSFRIOS@HOTMAIL.COM', 'MARIA GUADALUPE DE LEON RDZ', '47', 'Mexicana', 'ENRIQUE UREÑA 483 SATELITE SU', 'JUBILADA', 'SECRETARIA DE ECONOMIA', '', '', '', '1.75', '70', '13', 'M', '6', '', 'O+', 'SIEMPRE HE QUERIDO UNA ESCUELA MILITAR! QUIERO DUREZA! ME INTERESA SER UNA PERSONA DE BIEN Y NO UNA CHICA DOBLIGADA!', '', '5VZ8M6G3');
INSERT INTO solicitud VALUES('33', 'TUTORE5FZQ', 'Interno', '', 'ZUGU970707HSPMNR06', '1997-07-07', 'RIOVERDE, S.L.P', 'Futball', 'Natacion', 'Catolica', '107', 'Fracc. Arboledas', 'San Luis Potosí', 'RIOVERDE', '79610', '(487) 114-9648', 'Instituto bicentenario', 'Privada', 'rioverde, san luis potosi', '2011-2012', '7.5', 'iNGLÉS (UN POCO)', 'Si', 'CIENCIAS CON ÉFASIS EN BIOLOGIA', 'DIBUJO ARQUITECTONICO', 'NINGUNA', '1', '1', 'Casados', 'JORGE ZUMAYA SÁNCHEZ', '47', 'Mexicana', 'MARIANO OTERO 107. FRACC. ARBO', 'jefe de sector de educ. prim.', 'S.E.G.E', '(487) 106-1652', '(487) 111-5332', 'zuma882@hotmail.com', 'Maria jaqueline gonzalez ojeda', '43', 'Mexicana', 'mariano otero 107. fracc. arbo', 'directora de jardines de niño', 's.e.g.e', '(487) 106-1652', '(487) 114-9648', 'liyacken@hotmail.com', '1.66', '70', '32', 'm', '27', '', 'A+', 'Porque me atrae mucho servir a la Patria a través de un trabajo que me gusta; además de que me resulta interesante que en la educación haya disciplina para conducirse por la vida.\r\nMe llama mucho la atencion formar parte de una institucion militar', 'G\n', 'AC4ICTFT');
INSERT INTO solicitud VALUES('34', 'TUTOR9ZKZW', 'Interno', '', 'quma961212hjcnlb06', '1996-12-12', 'guadalajara', 'Futball', 'Ninguno', 'Catolica', '77', 'el briseño', 'Jalisco', 'zapopan', '45236', '(333) 807-0308', 'tecnica 114', 'Federal', 'guadalajara', '2009.2011', '7.9', '', 'No', 'historia', 'arte', '', '3', '0', 'Divorciados', 'ricardo  quintero', '56', 'Mexicana', '', '', '', '', '', '', 'maria trinidad mechor rodriguez', '56', 'Mexicana', 'av las torres y santa teresa', 'maestra', 'jubilada', '', '(333) 807-0308', '', '1.81', '75', '31', 'l', '9', '', 'O+', 'por la buena educacion que ofrece', '654', 'RACHDVQ5');
INSERT INTO solicitud VALUES('60', 'TUTORT6PJ2', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('61', 'TUTORERHHE', 'Externo', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('62', 'TUTORZ5MDX', 'Externo', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('63', 'TUTOR8Q8Y1', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('64', 'TUTOR3RO62', 'Externo', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('65', 'TUTORZUERR', 'Externo', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('66', 'TUTORKEHD9', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('67', 'TUTORWFB34', 'Externo', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('68', 'TUTORMXDPU', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('69', 'TUTOR7PHSP', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('70', 'TUTORSZAQM', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('71', 'TUTOR8HXTW', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('72', 'TUTORG7ES8', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('73', 'TUTORJUNKZ', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('74', 'TUTORP8KRO', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('75', 'TUTORRF3GA', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('76', 'TUTORB831H', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('77', 'TUTORVQOIJ', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('78', 'TUTOROTQII', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('79', 'TUTOR1P5SE', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('80', 'TUTORNE5GC', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('81', 'TUTORNZWNO', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('82', 'TUTORE3QCD', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('83', 'TUTOR9UD', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('84', 'TUTORIIEM4', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('85', 'TUTORMIQY1', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('86', 'TUTOR5UWL7', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('88', 'TUTORXM5PO', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('89', 'TUTORRUYQH', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('90', 'TUTORJ2PB7', 'Interno', 'Informatica', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('91', 'TUTOR2NNL', 'Interno', 'Informatica', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('95', 'TUTOR49MQW', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('93', 'TUTORZ65BW', 'Interno', '', 'febe970813hsrdld09', '1997-08-19', 'caborca sonora', '', 'Natacion', 'Catolica', '6', 'centro', 'Sonora', 'caborca', '83600', '(637) 123-0365', 'coronel jose maria giron', 'Estatal', 'caborca sonora', '2011-2012', '8.0', 'ingles', 'Si', 'matematicas', 'quimica', 'ninguna', '1', '0', 'Divorciados', 'edmundo federico suarez', '43', 'Mexicana', 'calle 6 ', 'tornero', 'servicios industriales federic', '', '(637) 105-5915', '', 'yetlanezy baltierrez moreno', '35', 'Mexicana', 'ave r entre 4 y 5 num 6', 'fotografa', 'yetlanezy fotografia', '', '(637) 108-0814', 'yetlanezyb@hotmail.com', '1.70', '75', '12', 'm', '28', '', 'O+', 'me interesa el entrenamiento militar y siempre quise estar en una institución como esta', '', 'LMSTE766');
INSERT INTO solicitud VALUES('94', 'TUTORRNJBZ', 'Interno', '', 'recd960818msryrn04', '1996-08-18', 'caborca sonora ', '', 'Ninguno', 'Catolica', '143', 'INFONAVIT BENITO JUAREZ', 'Jalisco', 'CABORCA', '83680', '(637) 117-2769', 'escuela secundaria no. 6 crnl jose maria giron', 'Estatal', 'caborca sonora', '2009 2012', '6.3', 'ingles', 'Si', 'español', 'matematicas', 'ninguna', '0', '4', 'Casados', 'bladimiro reyes mazon', '43', 'Mexicana', 'calle tercera sur entre l y m ', 'dueño de campo lechero', 'leche la perla', '(637) 372-3683', '(637) 105-0503', 'bladimiro.mazon@hotmail.com', 'Maria jesus cruz jacobi', '38', 'Mexicana', 'CALLE TERCERA SUR ENTRE L Y M ', 'ama de casa', 'casa', '(637) 372-3683', '(637) 378-5107', 'alicia_mary07@hotmail.com', '1.53', '61', '11', 'm', '3', 'm', 'B+', 'porque es lo que me gusta', '', '8JN6PKUK');
INSERT INTO solicitud VALUES('96', 'TUTOR7F7Y4', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('97', 'TUTORHULXS', 'Semi-Interno', '', 'soia981118mdflnl03', '1998-11-18', 'mexico, d. f.', 'Ninguno', '', 'Catolica', '188', 'santo domingo', 'Distrito Federal', 'coyoacan', '04369', '(551) 761-8482', 'instituto juarez', 'Privada', 'mexico, d. f.', '2011-2012', '5.8', 'ingles', 'Si', 'español', 'ingles', 'ninguna', '0', '0', 'Casados', '--------', '', 'Mexicana', '---------', '------------', '------------', '', '', '', 'berenice solis iniesta', '32', 'Mexicana', 'amatl 188', 'psicologa', 'bermon y cia', '(555) 619-4411', '(551) 761-8482', 'bam_pez@hotmail.com', '1.55', '52', '30', '30', '4.5', '', 'A+', 'Es importante para mi el ubicar a mi hija dentro de un ambiente integral que le exija mayor compromiso académico y respeto hacia su persona y a las personas que la rodean.', 'iNICIO DE CLASES', 'ZPQ9CUWK');
INSERT INTO solicitud VALUES('98', 'TUTORJ4WIL', 'Interno', '', 'jahf960622hjcsrr01', '1996-06-22', 'guadalajara, ja', 'Futball', 'Natacion', 'Catolica', '2965', 'jardinez de la cruz', 'Jalisco', 'guadalajara', '44950', '(333) 115-2700', 'fernando hernandez alcala 10 mixta', 'Federal', 'guadalajara', '2008-2011', '7.4', 'ninguno', 'Si', 'matematicas', 'historia', 'ninguna', '2', '0', 'Casados', 'jose jasso magaña', '52', 'Mexicana', 'izla baru #2965', 'jefe de camiones', 'alianza de camioneros de jal.', '(333) 838-6761', '(333) 115-2700', '', 'ana alicia hernandez garcia', '43', 'Mexicana', 'izla baru #2965', 'estilista', '', '(333) 838-6761', '(331) 046-2885', 'estetihanny@hotmail.com', '1.68', '58', '32', 'ch', '7', '57 cm', 'O+', 'Me interesa la disciplina, el aprender a actuar por mi mismo y la Arquitectura', 'NO ALCANZO EL PUNTUAJE REQUERIDO PARA SU ESTANCIA EN EL PLANTEL. ', 'TKBPY34N');
INSERT INTO solicitud VALUES('99', 'TUTORFF4HM', 'Interno', '', 'FACO002008HJCROC01', '2000-08-20', 'GUADALAJARA ', 'Ninguno', 'Ninguno', 'Ninguno', '2306', 'JARDINES DEL SUR', 'Jalisco', 'GUADALAJARA', '44950', '(331) 349-2357', '', 'Federal', '', '', '', '', 'No', '', '', '', '1', '1', 'Casados', 'christian', '32', 'Mexicana', 'isla cancun 2306', 'contador', 'lediv y asociados sc', '(333) 144-0281', '(331) 349-2357', 'cmc1280@hotmail.com', 'TERESA DENISSE', '31', 'Mexicana', 'SLA CANCUN 2306', 'HOGAR', '', '(333) 144-0281', '(331) 349-2357', 'CMC1280@HOTMAIL.COM', '1.65', '66', '14', '14', '7.5', '', 'O+', 'POR INCORREGIBLE', '', 'NW1PNCKQ');
INSERT INTO solicitud VALUES('100', 'TUTORA771O', 'Interno', '', 'goaf970922hntncr04', '1997-09-22', 'santiago ixcuin', 'Futball', '', 'Catolica', '29', 'centro', 'Nayarit', 'tuxpan', '63660', '(319) 115-1310', 'heriberto jara', 'Federal', 'tuxoan nayarit', '2012', '9.6', 'niuno', 'Si', 'historia', 'español', 'a niuna institucion', '2', '2', 'Casados', 'hector gonzalez guzman', '42', 'Mexicana', 'coamiles', 'agricultor', 'niuna', '(319) 256-0229', '', '', 'veronica acuña sanchez', '39', 'Mexicana', 'coamiles calle mexico num. 29 ', 'amade casa tiene 1 franquisia', 'niuna', '(319) 256-0229', '', '', '1.67', '62', '31', 'chica', '8', '59 cm', 'O+', 'para prepararme mejor para despues de acavar la secundaria y el bachillerato entrar al ejercito y me gustan los colegios militarizados', '', '3V4YLG');
INSERT INTO solicitud VALUES('101', 'TUTORP2MWP', 'Interno', '', '', '1998-10-03', 'GUADALAJARA,JAL', 'Basketball', 'Ninguno', 'Catolica', '1112', 'ARTESANOS', 'Jalisco', 'GUADALAJARA', '44290', '', 'anahuac garibaldi', 'Privada', 'guadalajara', '2011+2012', '6', 'ninguno', 'No', 'geografia', 'matematicas', '', '0', '0', 'Divorciados', 'oscar cortes', '42', 'Mexicana', '', '', '', '', '', '', 'monica garcia alonso', '38', 'Mexicana', 'juan alvarez 1112', 'empleada', 'indukern', '(333) 827-5267', '(331) 410-9574', '', '1.52', '45', '28', 'm', '26.5', '48', 'A+', 'porque el niño necesita una educacion mas ferrea, y creemos que es una buena opcion para el', '', '2C65T2FP');
INSERT INTO solicitud VALUES('102', 'TUTOR8YUPB', 'Interno', '', '', '1996-01-22', 'MExicali, baja ', 'Ninguno', '', 'Catolica', '2660', 'monte carlo 3', 'Baja California', 'mexicali', '21255', '(686) 271-8615', 'colegio americano de mexicali', 'Privada', 'mexicali, baja california', '2008-2011', '7.8', 'ingles', 'Si', 'COMPUTACION', 'Quimica', 'NINGUNA', '0', '0', 'Divorciados', 'aLEJANDRA lIMA', '38', 'Mexicana', 'SOBERIA 2660', 'CONTADORA', 'ESCUELA DE TRABAJO SOCIAL', '(686) 841-1450', '(686) 151-0965', 'LIMAALE@LIVE.COM.MX', '', '', 'Mexicana', '', '', '', '', '', '', '1.63', '73', '32', 'M', '8', '', 'A-', 'por la preparacion militar', '', 'RINSH6TZ');
INSERT INTO solicitud VALUES('103', 'TUTORXKCDK', 'Interno', '', 'oigj910613hdfrms09', '1991-06-13', 'distrito federa', 'Basketball', '', 'Catolica', '16', 'jardines de tecamac', 'Estado de México', 'tecamac', '55740', '(554) 232-5552', 'tecnica 199 villa del real', 'Federal', 'tecamac villa de real', '2003 al 2007', '7.4', '', 'No', 'matematicas', 'quimica', '', '0', '4', 'Casados', 'enrrique ortiz villalba', '64', 'Mexicana', 'jardines de tecamac # 16', 'empleado', 'dulce bambina', '', '', '', 'rosa maria gomez villalba', '', 'Mexicana', 'jardines de tecamac # 16', 'profesora', '', '', '(552) 026-6347', 'rosagomezvillalba@hotmail.com', '1.77', '72', '32', 'media', '7 1/5', '7 3/0', 'A+', 'para terminar mi carrera y ser alguien de probecho en la sociedad ', '', '3YK5U9RP');
INSERT INTO solicitud VALUES('104', 'TUTOR3FZPM', 'Interno', '', '', '2012-06-09', 'ZITACUARO,MICHO', 'Futball', 'Ciclismo', 'Catolica', '38', '5 DE MARZO', 'Tamaulipas', 'MATAMOROS ', '', '(204) 570-5705', 'JUAN JOSE DE LA GARZA Y JAMES PACE HIGH SCHOOL', 'Estatal', 'BROWNSVILLE,TEXAS', '2009-2012', '8.5', 'INGLES ', 'Si', 'MATEMATICAS', 'SPEECH', 'NINGUNA PERO EN MI ESCUELA ESTOY EN EL PROGRAMA DE ROTC QUE ES MILITAR PERO DENTRO DE LA ESCUELA NOS', '1', '1', 'Divorciados', 'MARCO CARBALLO', '40', 'MexicanO', 'DEMOCRACIA', 'OBRERO', 'GRANDPARKER', '', '', '', 'LUCILA GARCIA', '48', 'Mexicana', 'WASHINTON ', 'AMA DE CASA ', 'CASA', '', '', '', '1.52', '52', '3', '3/5', '7.1/2', '5', 'A+', 'A MI ME INTERESA MUCHO ENTRAR A LA INSTITUCION POR QUE POR CULPA DE LA DELICUENCIA EN MI PAIS MEXICO TUBE QUE VENIRME A LOS ESTADOS UNIDOS PERO YO NO QUIERO QUE LA DEMAS GENTE SIGA ASUSTADA O PREOCUPADA POR TANTA DELINCUENCIA DE PERSONAS Y POR QUE EH TENIDO TANTAS EXPERIENCIAS QUE ME EH DADO CUENTA QUE YO QUIERO AYUDAR A MI PAIS PARA QUE SEA MEJOR AQUI EN LOS ESTADOS UNIDOS EN MIS CLASES SIEMPRE HABLAN MAL DE MEXICO Y POR CULPA DE TODAS ESAS PERSONAN QUE MANCHAN MEXICO QUE AHI MUCHAS BALACERAS Q', '', 'R1VLW6KL');
INSERT INTO solicitud VALUES('105', 'TUTOR6LIU3', 'Interno', '', 'RIBA970501HJCVGL05', '1997-05-01', 'villa corona ja', '', 'Ninguno', 'Ninguno', '2119', 'blanco y cuellar', 'Jalisco', 'guadalajara', '44430', '', 'colegio salesiano anahuac revolucion', 'Privada', 'guadalajara', '', '8.7', 'ingles', 'Si', 'matematicas', 'historia', '', '2', '1', 'Casados', 'absalon hugo rivera arechiga', '62', 'Mexicana', 'federacion 2119', 'comerciante', 'fashion bug', '', '', 'alan3fremoda@hotmail.com', 'gloria estela bugarin orozco', '56', 'Mexicana', 'federacion 2119', 'comerciante', 'tentacion by fashion', '(364) 910-1101', '', 'alan3fremoda@hotmail.com', '1.83', '68', '28', '34', '8', '', 'A+', 'superacion personal', '', '3OA56KK4');
INSERT INTO solicitud VALUES('106', 'TUTORFFAUW', 'Interno', '', 'PENR990615HGTRNB09', '1999-06-15', 'leon guanajuato', 'Boleyball', 'Ninguno', 'Catolica', '8', 'cañada de ricos', 'Jalisco', 'lagos de moreno', '47450', '', ' tecnica numero 156', 'Federal', 'lagos de moreno', '2011---2012', '7.0', 'ninguno', 'Si', 'educacion fisica', 'biologia', 'ninguna ', '2', '1', 'Casados', 'j. roberto perez tostado', '57', 'Mexicana', 'adolfo lopez mateos #8  ', 'juvilado', 'juvilado', '(474) 736-9953', '(474) 736-9953', 'guero_halo3odst@hotmail.com', 'maria guillermina nungaray jaramillo', '40', 'Mexicana', 'adolfo lopez mateos #8 ', 'ama de casa', 'ama de casa', '', '(921) 172-4453', 'guero_halo3odst@hotmail.com', '1.60', '55', '28', 'ch(28', '6', '7', 'O+', 'para corregir my diciplina   y prepararme mejor para el dia de mañana ser un hombre de bien. ', '', 'GR3XXH2E');
INSERT INTO solicitud VALUES('107', 'TUTORIPEO8', 'Interno', '', '', '1996-04-06', 'nueva italia mi', 'Boleyball', '', 'Ninguno', '129', 'la hortaliza', 'Michoacán', 'nueva italia', '61760', '(425) 100-5883', '10 de abril', 'Federal', 'nueva italia michoacan', '2009-2011', '8.6', 'ninguno', 'No', 'español y matematicas', 'quimica ', 'ninguna', '0', '0', 'Divorciados', 'ignacio bernabe cervantes', '77', 'Mexicana', 'lerdo de tejada ', 'campesino', 'ninguna', '(425) 535-2903', '(425) 102-2273', 'k_isabel_1996@hotmail.com', 'mercedes bernabe almazan', '41', 'Mexicana', 'lerdo de tejada ', 'enfermera', 'ninguna', '(425) 535-2903', '(425) 100-5883', 'mercedes.bernabe@hotmail.com', '1.52', '57 ', '5', '16', '4.5', 'chica', 'null', 'por que quiero superarme y no tener una educasion basica si no una mas interesante', '', 'KV2GKKLO');
INSERT INTO solicitud VALUES('108', 'TUTORO72GY', 'Interno', '', 'remm960709mtlyny00', '1996-06-09', 'tlaxcala tlaxca', 'Ninguno', '', 'Catolica', '48', 'santa anita', 'Tlaxcala', 'huamantla', '90500', '(247) 101-1968', 'tecnica #44', 'Federal', 'huamantla tlaxcala', '2008_2011', '9.1', 'ingles ', 'No', 'valores', 'matematicas', 'ninguna', '1', '1', 'Casados', 'jose luis reyes gonzales', '39', 'Mexicana', 'juarez 48', 'empleado', 'coca cola', '', '(241) 116-7748', '', 'martha montiel duran ', '38', 'Mexicana', 'juarez 48', 'ama de casa', '', '', '(247) 106-7687', '', '1.53', '53', '7', '16', '4.5', 'chica', 'O+', 'porque se me hace una institución, con un régimen de una suficiente disciplina, y me interesa pertenecer después a las fuerzas básicas de policía federal   ', '', 'JNGUNMW');
INSERT INTO solicitud VALUES('110', 'TUTORE3253', 'Interno', '', '', '1997-02-13', 'toluca', 'Futball', 'Ninguno', 'Catolica', '12', 'san jorge', 'Jalisco', 'toluca', '50100', '(722) 269-7553', 'anahuac', 'Privada', 'zinacantepec', '10-12', '', 'ingles', 'Si', 'metematicas', 'fisica', '', '0', '0', 'Casados', 'luis cueto flores', '39', 'Mexicana', 'mismo', '', '', '', '', '', 'elide fabila herrera', '38', 'Mexicana', '', '', '', '', '', '', '1.89', '98', '36', 'm', '28', 'g', 'O+', 'me interesa recibir informacion de su institucion ', '', '4NH7LTM');
INSERT INTO solicitud VALUES('112', 'TUTORWGXQB', 'Interno', '', '', '1996-08-14', 'qUERETARO, QRO', 'Futball', 'Escalar', 'Catolica', '97', 'CENTRO', 'Querétaro', 'QUERETARO', '76000', '(442) 125-2587', 'INSTITUTO MARCIANO TINAJERO Y ESTRADA', 'Privada', 'QUERETARO', '2009-2011', '7.3', 'NINGUNO', 'No', 'DEPORTES', 'QUIMICA', 'NINGUNA', '1', '0', 'Divorciados', 'FELIPE LEON MACHORRO', '64', 'Mexicana', 'ESCOBEDO 97-16', 'ADMINISTRADOR', 'RESTAURANT FIN DE SIGLO', '(442) 212-2113', '(442) 125-2587', 'FELIPELEON@HOTMAIL.COM', 'MYRNA VILLANUEVA VIRGEN', '39', 'Mexicana', 'ESCOBEDO 97-16', 'ADMINISTRADOR', 'ITZA HOSTAL', '(442) 212-2113', '(442) 410-4241', 'MVILLANUEVA72@HOTMAIL.COM', '1.70', '55', '', '', '8', '', 'AB+', 'PARA MEJORAR MI ACTITUD ANTE LA VIDA', '', 'GO8SSAO4');
INSERT INTO solicitud VALUES('114', 'TUTOR7JSWZ', 'Interno', '', '', '1996-07-13', 'mexico df', 'Futball', 'Ninguno', 'Catolica', '124', 'moderna', 'Baja California', 'ensenada', '22860', '(646) 207-8538', 'sec tec 2', 'Federal', 'ensenada bc', '2011 a 2012', '7', 'medio ingles', 'Si', 'quimica', 'matematicas', 'ninguo', '1', '1', 'Casados', 'rene rodriguez s', '52', 'Mexicana', 'bahia de la paz 124 ', 'ing', 'las bahamas', '', '(345) 925-5806', 'claudiavargas67@hotmail.com', 'claudia', '42', 'Mexicana', 'bahia de la paz 124', 'conductora radio y tv', 'por mi cuenta', '(646) 207-8538', '(646) 207-8538', 'claudiavargas67@hotmail.com', '1.91', '80 ', '32', 'l', '13', '', 'null', 'por disciplina', '', '22U764J');
INSERT INTO solicitud VALUES('160', 'TUTORJ9X84', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('163', 'TUTORWK3', 'Interno', '', '', '1989-04-22', 'colima', 'Futball', 'Natacion', 'Catolica', '585', 'ramon serrano', 'Colima', 'villa de alvares', '28984', '', 'j. jesus bentura balovinos', 'Estatal', 'colima', '3 años', '7.8', '', 'Si', 'matematicas', 'español', 'ninguna', '0', '1', 'Casados', 'felipe puente vazques', '40', 'Mexicana', 'halcones#589ramon serrano', 'tablajero', 'propia', '(312) 330-3365', '', '', 'ma elena cordova molina', '49', 'Mexicana', 'halcones#585ramon serrano', 'secretaria ', 'ims', '(312) 330-3365', '', '', '1.85', '100', '36', 'media', '9', 'g', 'A+', 'me gustaria por que pienso que es una institusion con bastante disiplina y me gustaria perteneser en ella ', '', 'YB3P2N9');
INSERT INTO solicitud VALUES('164', 'TUTORL5KIR', 'Externo', '', '', '1996-07-27', 'estado de mexic', 'Boleyball', 'Escalar', 'Catolica', '45', 'estrella', 'Estado de México', 'ecatepec', '55200', '(554) 838-6846', 'escuela secundaria tecnica numero 60', 'Federal', 'estado de mexico', '3° semestre', '8.3', 'ninguno', 'Si', '', '', '', '0', '0', 'Casados', 'salazar romero agustin', '52', 'Mexicana', 'el mismo', 'comercio', '', '', '', '', 'ma.de los angeles camargo arreola', '53', 'Mexicana', '', 'hogar', '', '', '', '', '1.55', '53', '32', 'ch', '3', '', 'O+', 'es lo que mas deceo', '', 'TNU1GB11');
INSERT INTO solicitud VALUES('116', 'TUTORNOXMV', 'Semi-Interno', '', 'PELE950803HMCRRD09', '1995-08-03', 'xalatlaco', 'Basketball', '', 'Catolica', '67', 'barrio de san agustin', 'Estado de México', 'xalatlaco', '52680', '(713) 117-2118', '220 gabriela mistral', 'Federal', 'xalatlaco', '3 años', '8.5', '', 'Si', 'fisica, quimica, computacion', 'matematicas', '', '3', '0', 'Casados', 'jose marcos perete colin', '36', 'Mexicana', 'calle cuahutemoc n. 67', 'comerciante ', '', '(713) 131-1403', '', '', 'angelica lara flores', '32', 'Mexicana', 'calle cuahutemoc n. 67', 'comerciante', '', '(713) 131-1403', '', '', '1.62', '67', '32', '30', '5.5', '58 cm', 'A+', 'Acondicionamiento físico y prácticas deportivas para mantenerme en forma,Desarrollo de un carácter sólido, basado en principios y altos códigos de conducta para cambiar, Al terminar tus estudios podrás ingresar a cualquier institución de tipo superior para estudiar caingenieria mecatronica', '', '2XCPSQPG');
INSERT INTO solicitud VALUES('161', 'TUTOR3YKJZ', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('162', 'TUTORJIHPU', 'Interno', '', 'BAGM951231HJCTMN04', '1995-12-31', 'zapopan', 'Futball', 'Ninguno', 'Catolica', '2135', 'MARIANO OTERO', 'Jalisco', 'ZAPOPAN', '', '(331) 262-4169', 'TECNICA #136', 'Federal', 'ZAPOPAN', '1', '6.9', '', 'No', 'ELECTRONICA', 'GEOGRAFIA', '', '0', '1', 'Casados', 'MANUEL BAUTISTA GOMEZ', '56', 'Mexicana', 'JAVIER MINA #2135', 'ALBAÑIL', '', '(332) 400-8854', '(333) 201-4222', '', 'CECILIA GOMEZ', '45', 'Mexicana', 'JAVIER MINA #2135', 'AFANADORA', '', '(332) 400-8854', '(331) 421-1582', '', '1.82', '47', '32', 'CHICA', '8', '7 1/8', 'B+', 'TRUNQUE MIS ESTUDIOS Y QUISIERA TENER LA OPORTUNIDAD DE CONTINUAR MI FORMACION ACADEMICA. \r\n EL PLAN DE ESTUDIOS ME PARECE TODO LO QUE ESTOY BUSCANDO SIN MAS QUE DECIR ME DESPIDO CON UN CORDIAL SALUDO.', '', 'MCDRBCQ');
INSERT INTO solicitud VALUES('118', 'TUTORLVKDN', 'Interno', '', '', '1994-12-23', 'montemorelos', '', '', 'Catolica', '2107', 'buena vista', 'Nuevo León', 'allende', '67350', '(826) 108-1351', 'ignacio manuel altamirano', 'Federal', 'allende', '', '7.8', 'ninguno', 'Si', 'español', 'matematicas', 'ninguna', '3', '0', 'Casados', 'mario alberto martinez hernandez', '42', 'Mexicana', 'viectoria #2107', 'chofer', 'chofer', '', '', '', 'adriana margarita garcia tamez', '40', 'Mexicana', 'victoria #2107', 'ama de casa', 'ninguna', '', '', '', '1.70', '51', '32', '', '7', '', 'null', 'por que siempre e keridoo ser militaarr', '', 'L9KGG75');
INSERT INTO solicitud VALUES('119', 'TUTORMMN2J', 'Interno', '', '', '1997-10-31', 'fresnillo de go', '', '', 'Catolica', '4', 'americas', 'Zacatecas', 'fresnillo', '99030', '(493) 121-8494', 'ignacio hierro', 'Federal', 'fresnillo', '', '7', 'ingles', 'No', 'formacion', 'historia', 'PENTATHLON DEPORTIVO MILITARIZADO UNIVERSITARIO ', '2', '0', 'Divorciados', 'MANUEL LUNA IVARRA', '73', 'Mexicana', 'COLONIA DEL VALLE CALLE RIO LE', 'CARPINTERO', '', '', '(493) 121-8494', '', 'MARIA DEL REFUGIO LUNA OCAÑA', '42', 'Mexicana', 'PRIV.SNT MARIA COLONIA AMERICA', 'SECRETARIA', 'PRESIDENCIA MUNICIPAL', '(493) 111-8090', '(493) 121-8494', 'ALEJANDRA_PERLA@LIVE.COM.MX', '1.60', '64', '5', '30', '6', '5', 'O+', 'por que es mi sueño ser militar,me apasiona mucho el entrenamiento y todo lo que tenga que ver con la milisia', '', '6HYV5Z1W');
INSERT INTO solicitud VALUES('120', 'TUTORG3OL6', 'Interno', '', 'carl980912hjcbbn05', '1998-09-12', 'guadalajara', 'Boleyball', '', 'Catolica', '1176', 'quinta velarde', 'Jalisco', 'Guadalajara', '44430', '(331) 237-1721', 'Colegio teresa de Avila', 'Privada', 'guadalajara', '2011-2012', '7.6', '', 'No', 'tecnologias', 'español', 'ninguna', '3', '1', 'Divorciados', 'Eros Aldo Caballero Alejandro', '35', 'Mexicana', 'Marcelino Garcia Barragan 1176', 'Medico especialista', 'Hospital Mexico americano', '(333) 641-3141', '(331) 237-1721', 'eros_aldo@hotmail.com', 'Laura Robledo rocha', '33', 'Mexicana', '', 'enfermera', 'IMSS', '', '', '', '1.55', '50', '15', 'media', '29', '', 'O+', 'Requiero de su ayuda para forjar y formar un excelente  estudiante, para que en el futuro sea un excelente profesionista y ciudadano. Me parece atractiva la forma militarizada, puesto que la disciplina familiar muchas veces es superada por lo aprendido fuera de casa, no pretendo deshacerme de mi hijo, pretendo que APRENDA a conocerse y desarrollar su potencial dentro de si mismo, para si mismo y por el mismo, y que mejor que un plantel donde unicamente su esfuerzo sea lo que cuente (obvio, con e', '', '6KN9YRBD');
INSERT INTO solicitud VALUES('159', 'TUTORI5NPP', 'Interno', 'Ninguna', 'ZUGU970707HSPMNR06', '1997-07-07', '', '', '', '', '107', 'FRACC. ARBOLEDAS', 'San Luis Potos�', 'RIOVERDE', '79610', '(487) 114-9648', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('121', 'TUTORHTH2I', 'Semi-Interno', '', '', '2000-06-01', '', 'Ninguno', 'Ninguno', 'Ninguno', '55', 'la presa', 'Estado de México', 'ecatepec', '', '(554) 221-1212', '', 'Federal', 'mexico', '', '', '', 'No', '', '', '', '0', '0', 'Casados', 'papa', '', 'Mexicana', '', '', '', '', '', '', '', '', 'Mexicana', '', '', '', '', '', '', '', '35', '14', '14', '3.5', '', 'O+', 'por que si', '', 'G34PZN4B');
INSERT INTO solicitud VALUES('122', 'TUTORA67H1', 'Semi-Interno', '', 'CAHJ990721HJCMRS08', '1999-07-21', 'GUADALAJARA', 'Futball', 'Natacion', 'Catolica', '314', 'HACIENDA REAL', 'Jalisco', 'TONALA', '45428', '(331) 343-4466', 'escuela secundaria tecnica 120', 'Federal', 'guadalajara', '0', '7.5', 'ninguno', 'Si', 'matematicas', 'español', 'ninguna', '1', '3', 'Casados', 'Jose de jesus camarena morales', '46', 'Mexicana', 'hacienda de las flores 314', 'comerciante', 'fruteria', '(331) 305-1490', '(331) 305-1490', 'i-2040@hotmail.com', 'yolanda huerta angulo', '46', 'Mexicana', 'HACIENDA DE LAS FLORES 314', 'comerciante', 'fruteria', '(331) 305-1490', '(331) 305-1490', 'i-2040@hotmail.com', '1.48', '36', '10', '12', '4.5', '', 'B-', 'quiero ser militar', '', 'T9APPZ2N');
INSERT INTO solicitud VALUES('123', 'TUTOR4T8SC', 'Semi-Interno', '', '', '1994-06-25', 'MEXICO;DF', '', 'Natacion', 'Catolica', '12', 'PRADERA', 'Distrito Federal', 'df', '07509', '', 'colegio amado nervo', 'Privada', 'distrito federal', '3 años', '6', 'ninguno', 'Si', 'español', 'matematicas', 'ninguna ', '0', '2', 'Casados', 'hugo suarez vilchis', '44', 'Mexicana', 'volcan pinacate col.pradera #1', 'representante de ventas', 'sabritas s.a.de.c.v', '(556) 279-9101', '', '', 'jacqueline hernandez avila', '41', 'Mexicana', 'volcan pinacate col.pradera #1', 'hogar', '', '(556) 279-9101', '', '', '1.63', '58', '5', 'chica', '3/5', '', 'O+', 'Porque hasta ahora en ninguna escuela a la que a asistido se a adaptado,aparte de tener pésima conducta y ser una chica agresiva. ', '', 'GQIPN7GC');
INSERT INTO solicitud VALUES('124', 'TUTOR2326M', 'Interno', 'Administracion', 'QUGM930730HJCXRN07', '1993-07-30', '', '', '', '', '2845', 'JARDINES DEL BOSQUE', 'Jalisco', 'GUADALAJARA', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('125', 'TUTORBT942', 'Interno', '', '', '1997-02-01', 'metepec.mexico', '', '', 'Catolica', '211', 'electricicstas locales', 'Estado de México', 'toluca', '50040', '(722) 480-1174', 'colegio olimpo', 'Privada', 'toluca', '2010-2011', '7.00', '', 'No', 'español', 'matematicas', 'a ninguna', '0', '0', 'Viudo', 'elizaberth najera garduño', '38', 'Mexicana', 'capuluhac #211', 'empleada', 'gimtrac s.a de c.v john deere', '(722) 215-1908', '(722) 480-1174', 'litzy_najera@hotmail.com', '', '', 'Mexicana', '', '', '', '', '', '', '1.63', '55', '16', '14', '6', 'm', 'A+', 'por la diciplina q se implementa alos jovenes el nivel q como institucion tiene ', '', 'KTAK4O2G');
INSERT INTO solicitud VALUES('126', 'TUTOR9Z7HB', 'Interno', '', 'GOAA960701MJCNLL04', '1996-07-01', 'GUADALAJARA', 'Futball', 'Natacion', 'Catolica', '120', 'SAN JOSE DEL QUINCE', 'Jalisco', 'EL SALTO', '45696', '(331) 464-5715', 'esc.sec.tec. 146', 'Federal', 'guadalajara', '2009-2012', '9.3', 'ninguno', 'Si', 'matematicas', 'ingles', 'no', '0', '0', 'Casados', 'maria de la  luz alonso morales', '60', 'Mexicana', 'lazaro cardenas 120', 'ama de casa', '', '(333) 695-0409', '(331) 464-5715', 'alondra_glez_alonso@live.com', 'ana beatriz gonzalez alonso', '30', 'Mexicana', 'lazaro cardenas 120', 'lic.turismo', '5 estrellas', '', '(331) 464-5715', 'alondra_glez_alonso@live.com', '1.65', '60', '9', '12', '7.5', '7', 'O+', 'me interesa por la forma como trabajan con el alumnado y por ver que tanto provecho puedo obtener del  instituto al que deseo ingresar.', '', 'FNFLZV6C');
INSERT INTO solicitud VALUES('127', 'TUTORPYSL6', 'Interno', '', 'VOGT920314HDFGRB05', '1992-03-14', 'MEXICO, D.F.', '', 'Ciclismo', 'Catolica', '14', 'PARQUE INDUSTRIAL NAUCALPAN', 'Estado de México', 'NAUCALPAN', '53370', '(555) 100-1031', 'eugenio de macenod', 'Privada', '', '', '', '', 'No', '', '', '', '0', '0', 'Casados', 'jean-louis vogt', '', 'frances', '', '', '', '', '', '', '', '', 'Mexicana', '', '', '', '', '', '', '1.78', '78 ', '', '', '', '', 'null', 'SEBASTIAN TIENE 20 AÑOS Y REPROBO EL ULTIMO AÑO DE PREPARATORIA Y REQUIRE DISCIPLINA Y REQUIERE TENER LIMITES EN SU VIDA DIARIA', '', '4TTV5942');
INSERT INTO solicitud VALUES('128', 'TUTOR7AG8', 'Interno', '', '', '1995-06-11', 'Guadalajara', 'Basketball', 'Natacion', 'Catolica', '2155', 'Santa Isabel', 'Jalisco', 'Zapo pan', '45110', '(311) 384-4242', 'Colegio interamericano', 'Privada', 'Zapo pan', '2011-2012', '7', 'Ingles', 'Si', 'Computación', 'Matematicas', '', '0', '2', 'Viudo', 'Gloria Macías Trujillo', '56', 'Mexicana', 'San FlorenCio 2155', 'Ama de casa', 'Higar', '(336) 425-3566', '(311) 384-4242', 'MoralesAle8@hotmail.com', '', '', 'Mexicana', '', '', '', '', '', '', '1.92', '75k', '31x36', '16', '14 us', '', 'A+', 'Necesitamos una educación especial para que mi hijo tenga disciplina, valores, Buenos hábitos para que de esta manera sea un hombre con un futuro exitoso.', '', 'BISEHL3U');
INSERT INTO solicitud VALUES('129', 'TUTORVG1W', 'Interno', '', 'LOCD970531MOCPRN05', '1997-05-31', 'JAMILTEPEC', 'Boleyball', 'Ciclismo', 'Ninguno', '0', '', 'Oaxaca', 'TUTUTEPEC', '71800', '9541195252', 'HUAXYACAC', 'Federal', 'OAXACA', '', '8.9', '', 'Si', 'MATEMATICAS', '', '', '1', '1', 'Casados', 'MARTIN', '42', 'Mexicana', 'SAN MIGUEL', '', '', '', '9541195252', '', 'VICTORIA', '36', 'Mexicana', 'SAN MIGUEL', '', '', '', '9541195252', '', '1.56', '48', '28', '14', '25', '3', 'A+', 'PORQUE ME GUSTA AYUDAR Y SERVIR ALOS DEMAS', '', 'X8JQIBIA');
INSERT INTO solicitud VALUES('130', 'TUTORL1GPV', 'Interno', '', 'MOSL950831MMCLRL00', '1995-08-31', 'estado de mexic', 'Futball', 'Ninguno', 'Catolica', '84', 'villa de guadalupe', 'Estado de México', 'ecatepec', '', '(551) 356-4467', 'cOLEGIO xALOZTOC COATITLAN', 'Privada', 'ESTADO DE MEXICO', '3AÑOS', '7', '', 'Si', 'ADMINISTRACION ', 'QUIMICA', '', '1', '1', 'Casados', 'MIGUEL ANGEL MOLINA', '45', 'Mexicana', 'ECATEPEC DE MORELOS', 'cOMERCIANTE', '', '(554) 620-9988', '', '', 'RAQUEL SARMIENRTO', '39', 'Mexicana', 'ECATEPEC', 'AMA DE CASA', '', '(555) 790-6966', '', '', '1.56', '66', '7', 'GRAND', '3 1/2', '', 'O+', 'POR QUE QUIERO SER ALGUIEN RESPONSABLE, QUIERO APRENDER MAS Y FORJARME BIEN MIS VALORES Y CREO QUE ESTA INSTITUCION ES LA INDICADA', '', 'HXYXPRHY');
INSERT INTO solicitud VALUES('131', 'TUTORW742P', 'Interno', '', 'LOCD970531MOCPRN05', '1997-05-31', 'JAMILTEPEC', 'Boleyball', 'Ciclismo', 'Ninguno', '0', '0', 'Oaxaca', 'TUTUTEPEC', '71800', '(954) 119-5252', 'HUAXYACAC', 'Federal', 'OAXACA', '', '8.9', '', 'Si', 'MATEMATICAS', '', '', '1', '1', 'Casados', 'MARTIN LOPEZ', '42', 'Mexicana', 'SAN MIGUEL', '', '', '(954) 119-5252', '', '', 'VICTORIA CRUZ', '36', 'Mexicana', 'SAN MIGUEL', '', '', '(954) 119-5252', '', '', '1.56', '48', '28', '14', '25', '', 'A+', 'PORQUE ME GUSTA AYUDAR Y SERVIR ALOS DEMAS', '', 'A7O5295R');
INSERT INTO solicitud VALUES('132', 'TUTORXFTWZ', 'Interno', '', '', '1998-05-31', '', 'Ninguno', 'Ninguno', 'Ninguno', '13', 'arenal', 'Jalisco', 'df', '', '', '', 'Federal', '', '', '', '', 'No', '', '', '', '0', '0', 'Casados', 'jose lshorta madrid', '', 'Mexicana', '', '', '', '', '', '', '', '', 'Mexicana', '', '', '', '', '', '', '', '', '', '', '', '', 'null', 'por la diciplna\r\n', '', 'MRPF1H2B');
INSERT INTO solicitud VALUES('133', 'TUTORMC3C', 'Interno', 'Ninguna', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('134', 'TUTOR48NS', 'Interno', '', 'FEGC971103HNLRNH03', '1997-03-03', '', '', '', '', '32', 'CENTRO', 'San Luis Potos�', 'CEDRAL', '78520', '(488) 883-3026', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('135', 'TUTORBAG5D', 'Interno', '', 'MALA980511HDFRRL02', '1998-05-11', '', '', '', '', '33', 'EL SOL', 'Jalisco', 'NETZAHUALCOYOTL', '57200', '(554) 858-6652', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('136', 'TUTOR4923Y', 'Interno', '', 'MENA971115HTSRRB08', '1997-11-15', '', '', '', '', '1913', 'PRADERAS DE LA VICTORIA', 'Jalisco', 'CD. VICTORIA', '87018', '(834) 853-1941', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('137', 'TUTOR5K97A', 'Interno', 'Administracion', 'AACJ931219HTSMMS08', '1994-02-04', '', '', '', '', '101', 'GUADALUPE', 'Tamaulipas', 'COMADERO', '89120', '(833) 218-0743', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('138', 'TUTORQ4AZC', 'Interno', 'Ninguna', 'VARO960705HDFZMS03', '1996-07-05', '', '', '', '', '26', 'SAN FRANCISCO TECOXPA', 'Distrito Federal', 'MILPA ALTA', '12700', '(552) 937-6637', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('139', 'TUTOROOAGT', 'Interno', 'Ninguna', 'buce971106hjcnsd08', '1997-11-06', '', '', '', '', '226', '', 'Jalisco', 'tizapan del alto', '49400', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('140', 'TUTORS34L', 'Interno', 'Administracion', 'tevo951029hcmlls03', '1995-10-29', '', '', '', '', '430', 'soleares', 'Colima', 'manzanillo', '28215', '(314) 103-3473', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('141', 'TUTORV628N', 'Interno', '', 'gurb960127hjcvzr05', '1996-01-27', '', '', '', '', '222', '', 'Jalisco', 'tonala', '', '(333) 808-2987', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('142', 'TUTORKBADK', 'Externo', '', '', '2000-03-26', '', '', '', '', '79', 'centro', 'Jalisco', 'ciudad guzman', '49000', '(341) 436-5812', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('143', 'TUTORVMWW', 'Semi-Interno', '', 'SOIA981118MDFLNL03', '1998-11-18', '', '', '', '', '188', 'SANTO DOMINGO', 'Distrito Federal', 'COYOACAN', '04369', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('144', 'TUTORYJ618', 'Interno', 'Ninguna', 'MATE950611HJCCRD06', '1996-06-11', '', '', '', '', '2155', 'RESIDENCIAL COLOMOS PATRIA', 'Jalisco', 'GUADALAJARA', '45110', '(331) 754-3227', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('145', 'TUTORCBVYD', 'Interno', 'Ninguna', 'SIRG961013HMCLMB03', '1996-10-13', '', '', '', '', '11', 'SAN JUAN BOSCO', 'Estado de M�xico', 'ATIZAPAN', '52990', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('146', 'TUTOR9HR5T', 'Interno', 'Administracion', 'OESS950421MMCRTN08', '1995-04-21', '', '', '', '', '103', 'OTUMBA', 'Estado de M�xico', 'VALLE DE BRAVO', '51200', '(722) 410-9118', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('147', 'TUTORSXUY5', 'Interno', 'Ninguna', 'LOCM960929HPLPNG07', '1996-09-29', '', '', '', '', '1710', 'CENTRO', 'Puebla', 'TEZIUTLAN', '73800', '(231) 106-1719', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('148', 'TUTOR2VMB1', 'Interno', 'Administracion', 'QUBY960223MMNRCJ03', '1996-02-26', '', '', '', '', '12', 'VILLA CUAUTHEMOC', 'Estado de M�xico', 'OTZOLOTEPEC', '52080', '(722) 388-1039', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('149', 'TUTOR9HE6B', 'Interno', '', 'RIRC971204HJCZJH07', '1997-12-04', '', '', '', '', '84', 'RESIDENCIAL LA SOLEDAD', 'Jalisco', 'TLAQUEPAQUE', '45525', '(333) 458-9700', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('150', 'TUTOR7W6TN', 'Interno', 'Ninguna', 'AURJ961225HSLGMS07', '1996-12-25', '', '', '', '', '137', 'CENTRO', 'Sinaloa', 'GUASAVE', '81000', '(687) 152-1082', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('152', 'TUTORVLGOI', 'Interno', 'Administracion', 'GOGF920626HMNMNB01', '1992-06-26', '', '', '', '', '203', 'ALTAVISTA', 'Nuevo Le�n', 'MONTERREY', '64840', '(811) 031-4133', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('153', 'TUTORY1ZEO', 'Interno', 'Administracion', 'AULL931129HCMGNS02', '1993-11-29', '', '', '', '', '25', 'MAGISTERIO', 'Jalisco', 'CIHUATLAN', '48985', '(315) 104-9074', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('154', 'TUTORD4TYI', 'Interno', 'Administracion', 'CUTA951108HMCRVL08', '1995-08-11', '', '', '', '', '14', 'SAN PABLO XALPA', 'Estado de M�xico', 'TLALNEPANTLA', '54090', '(552) 724-8332', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('155', 'TUTORYFJ1', 'Interno', 'Ninguna', 'OOBG961006HQTLLL02', '1996-10-06', '', '', '', '', '198', 'BARRIO DE SAN JUAN', 'Quer�taro', 'TEQUISQUIAPAN', '', '(331) 178-7694', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('156', 'TUTORRC52A', 'Interno', 'Ninguna', 'TORH961019HMNRMR05', '1996-10-19', '', '', '', '', '536', 'ISAC CARRIA GA', 'Michoac�n', 'MORELIA', '58210', '(443) 402-3839', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('157', 'TUTOR4E4E6', 'Externo', '', 'GUBJ980727MJCTNN02', '1998-07-27', '', '', '', '', '12', 'SAN PEDRO', 'Jalisco', 'CIUDad guzman', '49000', '(341) 111-0146', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('158', 'TUTORINY', 'Interno', 'Ninguna', 'VAHL960320HVZZRS05', '1996-03-20', '', '', '', '', '5', 'AMPL. PALMAS', 'Veracruz', 'VERACRUZ', '', '(782) 102-8129', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('166', 'TUTORYL4RY', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('167', 'TUTOR6FON1', 'Interno', 'Administracion', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('168', 'TUTORK258N', 'Interno', '', '', '1998-09-22', 'D.F', 'Ninguno', 'Ninguno', 'Catolica', '31', 'TECAMAC', 'Estado de México', 'TECAMAC', '55764', '(055) 219-5396', 'secundaria diurna 215', 'Estatal', 'd.f', 'segundo', '7', 'ninguno', 'Si', 'fisica', 'matematicas', '', '0', '0', 'Divorciados', 'leonardo edgar', '38', 'Mexicana', 'tecamac bosques de chiapas', 'empleado', 'imss', '(055) 574-8140', '(044) 219-5396', 'eddy_030474@hotmail.com', 'maricela', '37', 'Mexicana', 'atzcapotzalco', 'empleada', 'uacm', '', '(044) 271-4308', 'maried_98@hotmail.com', '1.73', '100', '38', '44', '7', '8', 'O+', 'por que me gusta mcuho y deseo estar en esto y es mi sueño entrar a una escuela militarizada desde niño', '', 'KGU8EUOJ');
INSERT INTO solicitud VALUES('169', 'TUTORASIJ1', 'Interno', '', '', '1995-06-23', 'guadalajara', 'Ninguno', 'Ciclismo', 'Catolica', '117', 'residencial solares', 'Jalisco', 'zapopan', '', '', 'newland school', 'Privada', 'guadalajara', '3', '7.5', '', 'Si', 'historia', 'quimica', '', '1', '3', 'Casados', 'juan', '', 'Mexicana', '', '', '', '', '', '', '', '', 'Mexicana', '', '', '', '', '', '', '1.70', '60 ', '', '', '', '', 'O+', 'que he cometido errores en mi tiempo de educación los cuales eh perdido constancia, he dejado el deporte por vicios y quiero hacer un cambio en mi vida dejando los vicios, retomando el deporte y la disciplina. por eso es la razón que estoy buscando un internado militarizado.', '', 'M9DVEFUC');
INSERT INTO solicitud VALUES('170', 'TUTORYJFMF', 'Interno', '', '', '1995-06-23', 'guadalajara', 'Ninguno', 'Ciclismo', 'Catolica', '117', 'residencial solares', 'Jalisco', 'zapopan', '', '', 'newland school', 'Privada', 'guadalajara', '3', '7.5', '', 'Si', 'historia', 'quimica', '', '1', '3', 'Casados', 'juan', '', 'Mexicana', '', '', '', '', '', '', '', '', 'Mexicana', '', '', '', '', '', '', '1.70', '60 ', '', '', '', '', 'O+', 'que he cometido errores en mi tiempo de educación los cuales eh perdido constancia, he dejado el deporte por vicios y quiero hacer un cambio en mi vida dejando los vicios, retomando el deporte y la disciplina. por eso es la razón que estoy buscando un internado militarizado.', '', 'EH11W8C4');
INSERT INTO solicitud VALUES('171', 'TUTOR28UFQ', 'Interno', '', 'PICD950214HCMMRN07', '1995-02-14', 'TECOMAN COLIMA', 'Futball', '', 'Catolica', '554', 'CENTRO', 'Colima', 'TECOMAN', '28100', '3131154702', '', 'Federal', 'TECOMAN COLIMA', '2007     A    2010', '8.3', '', 'Si', 'CINCIAS NATURALES', 'MATEMATICAS', '', '0', '1', 'Casados', 'DANIEL PIMENTEL AVALOS', '35', 'Mexicana', 'MORELOS #554', 'COMERCIANTE', 'INDEPENDIENTE', '326512322', '2431042265', '', 'MARIA DE JESUS CARRILLO VALDIBIA', '35', 'Mexicana', 'MORELOS #554', 'AMA DE CASA', '', '3265123', '', '', '1.80', '90 ', '34', 'MEDIA', '29', '', 'A+', 'POR QUE ME GUSTA Y ME LLAMA MUCHO LA ATENCION DESDE QUE ERA UN NIÑO', '', 'V11DZM99');
INSERT INTO solicitud VALUES('172', 'TUTOR6TCU', 'Interno', '', 'roca950927hdfdrd03', '1995-09-27', 'distrito federa', 'Futball', 'Ciclismo', 'Ateo', '7', 'LOS CEDROS ', 'Estado de México', 'alvaro obregon', '01860', '(554) 987-6146', 'inea', 'Federal', 'mexico', '', '7.5', 'ninguno', 'No', 'biologia', 'matematicas', '', '2', '0', 'Casados', 'manuel beltran rojas', '45', 'Mexicana', 'duraznillo blanco mz 182 lt7', '', '', '(551) 520-4545', '', '', 'juana araceli cardoso saravia', '35', 'Mexicana', 'duraznillo blanco mz 182 lt 7', 'intendensia', 'centro livanes', '(551) 520-4545', '(551) 124-6270', '', '1.55', '50', '28', 'media', '4.30', 'media', 'O+', 'porque me parese interesante perteneser a una escuela militar y porque quiero perteneser a un  futuro a el ejercito de mexico', '', 'GYZ5Q1T');
INSERT INTO solicitud VALUES('173', 'TUTORXY47A', 'Interno', '', 'PEGg970330msprnd02', '1997-03-30', 'Rioverde slp ', 'Futball', '', 'Catolica', '1019', 'Sta. cecilia ', 'San Luis Potosí', 'Rioverde', '79610', '(487) 115-8620', 'Dolores herrera vda de richard', 'Estatal', 'rioverde slp', '3 años ', '7.4', 'ninguno', 'No', 'español ', 'matematicas', 'ninguna', '1', '1', 'Divorciados', 'Maria de lourdes gonzalez rodriguez', '47', 'Mexicana', 'pordirio diaz  #1019', 'comerciante', 'natural products', '(487) 105-6063', '(487) 105-6063', 'mamalulu.65@hotmail.com', 'Maria de guadalupe perez gonzalez ', '47', 'Mexicana', 'porfirio diaz #1019', 'comerciante', 'natural products', '(487) 105-6063', '(487) 105-6063', 'mamalulu.65@hotmail.com', '1.56', '76', '12', 'm', '5 1/2', '', 'O+', 'porque necesito formacion y francamente me parece de mucho interes estar en una institucion como esta... espero y me den la oportunidad GRACIAS!', '', '3BY575A7');
INSERT INTO solicitud VALUES('174', 'TUTORG91NS', 'Interno', '', 'BIMC980908HDFRYR02', '1998-09-08', 'mexico, D.F.', 'Futball', 'Escalar', 'Catolica', '11556', 'la venta del astillero', 'Jalisco', 'zapopan ', '45221', '(333) 170-2577', 'Colegio Arnoll Gessel L.', 'Privada', 'Naucalpan', '2011-2012', '6.7', 'ingles', 'No', 'matematicas', 'español', 'ninguna ', '0', '2', 'Divorciados', 'ignacio', '52', 'Mexicana', 'carr. a Nogales 11556', 'Ventas', 'Exportadora de plasticos agric', '(333) 777-0202', '(333) 170-2577', 'ignaciobringas@gmail.com', 'adriana ', '42', 'Mexicana', 'cto. escultores 96', 'negocios', '', '', '(551) 511-2953', 'ammadri@hotmail.com', '1.64', '52', '30', '28', '27', 'n/d', 'O+', 'Continuar mi educación en una institución bien organizada y que me ofrece educación para un buen trabajo. También quiero mantenerme cerca de mi papá como siempre.  ', '', 'L97EUGMN');
INSERT INTO solicitud VALUES('175', 'TUTORV2GML', 'Interno', '', 'poca950803mmclhb01', '1995-08-03', 'estado de mexic', 'Ninguno', 'Ninguno', 'Ninguno', '4', 'santa maria ajoloapan', 'Estado de México', 'hueypoxtla', '55679', '(551) 915-4558', 'tratados de tenayuca', 'Estatal', 'México ', 'tres años', '8.3', 'ingles', 'No', 'historia', 'español', 'Ninguna', '0', '2', 'Casados', 'gabriel politron ordoñez', '43', 'Mexicana', 'av del norte 4', 'obrero', 'ferraty', '', '(551) 891-0884', '', 'marina chavarria zamora', '37', 'Mexicana', 'av del norte 4', 'ama de casa', '', '', '(551) 236-8278', '', '1.59', '63', '32', '32', '23', '', 'B+', 'Por que me gustaría saber y aprender mas sobre la milicia y poder pertenecer a uno de ellos.', '', 'ZMR2EO6');
INSERT INTO solicitud VALUES('177', 'TUTORUE8R7', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('178', 'TUTORZ9U9', 'Interno', '', 'saga890507hjcnmn02', '1989-05-07', 'Guadalajara Jal', '', 'Ciclismo', 'Cristiana', '4136', 'insurgentes', 'Jalisco', 'guadalajara', '', '', 'Secundaria para adultos', 'Federal', 'Guadalajara', '2004-2007', '8.8', 'ingles basico', 'Si', 'matematicas', 'español', 'vanguardia milotarizada de mexico (cuando era chico 10 años)', '1', '0', 'Casados', 'jose antonio', '', 'Mexicana', '', 'ingeniero', '', '', '', '', 'delia gomez magaña', '60', 'Mexicana', 'gaza # 1258', 'ama  de casa', '--', '', '', '', '1.84', '79 ', '32', 'm', '9', '7.5', 'AB+', 'Siempre quise entrar al ejercito, pero mi madre y yo nos quedamos solos cuando murió mi papa, siempre me vi con este tipo de habilidades, supervivencia, navegación, etc. por lo tanto esta dentro de las necesidades de mi alma..', '', 'JXUXJO7');
INSERT INTO solicitud VALUES('180', 'TUTORZ3NC', 'Externo', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('0', 'TUTORJJMP7', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('184', 'TUTOR41HNR', 'Interno', '', '', '1998-03-07', 'toluca estado d', 'Basketball', 'Ciclismo', 'Cristiana', '110', 'menchaca iii', 'Querétaro', 'menchaca', '', '(722) 550-2106', 'tecnica 9 ´´onu´´', 'Estatal', 'lomas', '', '9', 'ninguno', 'No', 'matematicas', 'ingles', 'ninguna\r\n', '0', '4', 'Casados', 'victor manuel castro malagon', '42', 'Mexicano', 'menchaca', 'yesero', 'ninguna', '(722) 398-6824', '(722) 398-6824', '', 'maria dominguez mondragon', '40', 'Mexicana', 'menchaca', 'ama de casa', 'ninguna', '(722) 549-7509', '(722) 549-7509', '', '1.62', '60', '30', 'chica', '4', '', 'A+', 'por que quiero ingresar al ejercito y tener una carrera', '', '2TON4GVU');
INSERT INTO solicitud VALUES('183', 'TUTORWVM5A', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('185', 'TUTORAUU9K', 'Interno', '', 'SACB980928MPLNBT07', '1998-09-28', 'PUEBLA', '', '', 'Catolica', '2706', 'ORIENTAL', 'Puebla', 'ORIENTAL', '75020', '(276) 100-2050', 'Profesor jesus n merino', 'Estatal', 'oriental', '', '', '', 'No', 'FORMACION CIVICA', 'MATEMATICAS', 'a ninguna', '2', '0', 'Casados', 'ANTONIO SANCHEZ MANJARREZ', '50', 'MexicanO', '27 SUR N° 2706', 'SUPERVISOR DE PRIMARIAS ', 'PRIMARIAS', '(276) 477-1065', '(276) 100-2050', 'anton_489@hotmail.com', 'BEATRIZ CABRERA SALINAS', '36', 'Mexicana', '27 SUR N° 2706', 'directora de primarias', 'primarias', '(276) 477-1065', '(276) 100-0200', 'MARYBETHY2@HOTMAIL.COM', '1.60', '65', '9', 'extra', '24 ', '', 'null', 'por que quiero una educacion bien fundamentada, y una diciplina argumentada, para poder llegar al exito con estas bases que nos ofrece el colegio militar, y asi beneficiarme a mi y a la sociedad para un mexico mejor y un futuro bien planteado ', '', 'OFO4GOB');
INSERT INTO solicitud VALUES('186', 'TUTORUIFJ6', 'Interno', '', '', '1998-12-05', 'mONCLOVA, coahu', 'Basketball', 'Ninguno', 'Catolica', '512', 'guadalupe', 'Coahuila', 'monclova', '25750', '', 'COlegio la salle de monclova', 'Privada', 'monclova', '', '', '', 'No', '', '', 'NINGUNA', '0', '0', 'Casados', 'ROGELIO AGUILAR CHÁVEZ', '', 'Mexicana', '', '', '', '', '', '', '', '', 'Mexicana', '', '', '', '', '', '', '', '', '', '', '', '', 'null', 'CORREGIR CONDUCTA', '', 'GGXMPM3P');
INSERT INTO solicitud VALUES('187', 'TUTORGGUEY', 'Interno', '', '', '1998-03-02', '', 'Futball', 'Natacion', 'Catolica', '230', '', 'Guanajuato', 'celaya', '', '', '', 'Federal', '', '', '', '', 'No', '', '', '', '0', '0', 'Casados', 'josefina', '', 'Mexicana', '', '', '', '', '', '', '', '', 'Mexicana', '', '', '', '', '', '', '', '', '', '', '', '', 'null', 'porque si', '', 'WV3SA8AI');
INSERT INTO solicitud VALUES('188', 'TUTOR1J1M7', 'Interno', '', '', '1995-10-17', 'Toluca. México', 'Ninguno', 'Ninguno', 'Catolica', '136', 'Las Américas', 'Estado de México', 'Toluca ', '50130', '(722) 261-3652', 'Sec of nO. 7 Estado de México ', 'Estatal', 'Toluca ', '3 años ', '8.5', 'Ninguno ', 'Si', 'Matemáticas ', 'Historia ', 'Ninguna ', '0', '1', 'Divorciados', 'Jorge castañeda', '44', 'Mexicana', 'Brasil #200 col Américas Tolu', 'Comerciante ', 'Negocio personal ', '(722) 295-0731', '', 'Casber115@hotmail.com', 'Hilda Bernal crUz ', '37', 'Mexicana', '', 'Trabajador social ', 'Gobierno ', '(722) 295-7166', '', '', '1.58', '56', '5', 'CHica', '24', '', 'O-', 'Porque quiero otro estilo de vida y siempre eh querido estar en una institución militarizada ', '', 'ZTTOCRAK');
INSERT INTO solicitud VALUES('189', 'TUTORY7XYM', 'Interno', '', '', '1996-10-31', 'SAN LUIS POTOSI', 'Futball', 'Ninguno', 'Catolica', '430', 'DEL LLANO', 'San Luis Potosí', 'SAN LUIS POTOSI', '', '', 'VICENTE RIVERA HDZ', 'Estatal', 'SAN LUIS POTOSI', '2009-2010', '7.8', 'NINGUNO', 'No', 'ESPANOL', 'QUIMICA', 'NINGUNA', '2', '0', 'Casados', 'JOEL IBARRA', '44', 'Mexicana', 'DE VEGA 430', 'EMPLEADO', 'EMBOTELLADORA SAN LUIS', '(444) 842-0057', '(044) 266-8804', '', 'LAURA RODRIGUEZ GALVAN', '44', 'Mexicana', 'DE VEGA 430', 'MAESTRA', 'INSTTUTO LAS AGUILAS', '(444) 842-0057', '', 'ARUALGALVAN@HOTMAIL.COM', '1.75', '50 ', '28', '18', '26', 'MEDIA', 'O-', 'PARA REALIZAR UNA SUPERACION PERSONAL', '', 'VJ48K2KZ');
INSERT INTO solicitud VALUES('190', 'TUTOR1U34Q', 'Interno', '', '', '1995-07-06', 'guadaLAJARA JAL', '', 'Ninguno', 'Catolica', '46', 'LA EXPERIENCIA', 'Jalisco', 'ZAPOPAN', '45190', '(331) 835-8837', 'RAMON REYES OCHOA', 'Federal', 'GUADALAJARA', '', '7.6', '', 'No', 'ARTES', 'QUIMICA', '', '1', '0', 'Casados', 'JOSE ENRIQUE ARCE ACOSTA', '58', 'Mexicana', 'J.TRINIDAD SANTIAGO 46', 'COMERCIANTE', 'TIENDA DE ABARROTES', '(333) 861-9022', '', '', 'LORENZA GONZALEZ OROZCO', '58', 'Mexicana', 'J.TRINIDAD SANTIAGO 46', 'COMERCIANTE', 'TIENDA DE ABARROTES', '(333) 861-9022', '', '', '1.60', '93', '15', 'XL', '26', '', 'A+', 'QUIERO PERTENECER AL EJERCITO', '', 'FMP27XCV');
INSERT INTO solicitud VALUES('191', 'TUTORM1TGZ', 'Interno', '', 'cung950825hdfrvr06', '1995-08-25', 'distrito federa', '', '', 'Ninguno', '5', 'providencia', 'Distrito Federal', 'GUSTAVO A MADERO', '07550', '(553) 134-1650', 'SECUNDARIA #326', 'Federal', 'CIUDAD DE MEXICO', '2007-2010', '6.4', 'NINGUNO', 'No', 'HISTORIA DE MEXICO', 'ESPAÑOL', 'NINGUNA', '1', '1', 'Casados', 'jose cruz araujo', '47', 'Mexicana', 'puebla #5 Colonia providencia', 'ingeniero civil', 'geur', '(555) 120-6130', '(553) 523-1650', 'josecruz_k65@hotmail.com', 'teresa navarro razo', '43', 'Mexicana', 'PUEBLA #5 COLONIA PROVIDENCIA', 'AMA DE CASA', '', '(555) 120-6130', '', '', '1.65', '80', '44', 'media', '5.1/2', '', 'O+', 'Para terminar mis estudios y me gusta hacer Ejercisio y en esa institucion hay mucho ejercisio pero me interesa mas el estudio', '', 'ILGOD22');
INSERT INTO solicitud VALUES('192', 'TUTORIDYGH', 'Interno', '', '', '1996-05-04', 'Mexico DF', 'Ninguno', 'Ninguno', 'Ninguno', '2', 'Campanario', 'Sonora', 'Hermosillo', '', '(662) 300-5932', 'CDI ALFAES', 'Privada', 'Hermosillo', '2011-2012', '7.5', 'Ingles', 'Si', 'Arte', 'MatematiCas', 'Ninguna', '0', '1', 'Casados', 'David corona Ferriz', '45', 'Mexicana', 'Lazaristas 2', 'Construcción', 'GDSON SA de C ', '(662) 264-8033', '(662) 300-5932', 'DacOfe@prodigy.net.mx', 'Patricia Pierce de corona', '46', 'Mexicana', 'Lazaristas 2', 'Hogar', 'N/A', '(662) 264-8033', '(662) 300-5933', 'Patricia_piErce@prodigy.net.mx', '1.80', '', '29', 'Chica', '9', '', 'A+', 'DISCIPLINA, ACADÉMICO, SEPARACIÓN TEMPORAL DE LA CASA PARA MADUREZ', '', 'D378XBFC');
INSERT INTO solicitud VALUES('193', 'TUTORRY1YU', 'Interno', '', '', '1998-11-05', 'saltillo ', 'Futball', 'Ninguno', 'Catolica', '1', 'postal cerrirtos ', 'Coahuila', 'saltillo', '', '(844) 442-0751', 'colegio mexico', 'Privada', 'saltillo  coahuila', '2012- 2013', '7.6', 'ingles', 'Si', 'fiscica', 'matematicas', 'ninguna', '1', '2', 'Casados', 'juan rafael davila peña ', '38', 'Mexicana', 'pinos ', 'preparatoria ', 'une ', '(844) 135-8401', '(844) 698-6326', '', 'claudia puente lerma', '34', 'Mexicana', 'pinos ', 'secuendaria', 'hogar', '(844) 135-8401', '(844) 442-0751', '', '1.76', '58', '28', 'media', '28.5', 'no', 'O+', 'para que mi hijo tendga mejor foemacion educativa y disiplina sobretodo eso', '', 'TK17WQAP');
INSERT INTO solicitud VALUES('194', 'TUTORNY321', 'Interno', '', '', '2000-04-06', 'guadalajara, ja', 'Futball', '', 'Catolica', '260', 'HACIENDA DE LOS EUCALIPTOS', 'Jalisco', 'TLAJOMULCO DE ZUÑIGA', '45640', '(331) 260-6316', 'escuela general 111', 'Estatal', 'tlajomulco de zuñiga', '1 bimestre', '7', 'ninguno', 'Si', 'geografia', 'español', '', '0', '1', 'Divorciados', 'jose aguilar gonzalez', '52', 'Mexicana', 'valle de los encinos 260', 'chofer', '', '', '(331) 260-6316', '', 'raquel valencia navejas', '39', 'Mexicana', 'valle de los encinos 260', 'tec. prof. trabajo social', 'cfe', '(333) 684-2951', '(331) 065-6380', 'rvalencia1973@hotmail.com', '1.63', '50', '30', '30', '8', '', 'O+', 'porque los jovenes hoy en dia, necesitan de disciplina, y motivacion estudiantil.\r\nademas de supervisión continua para que lleven su vida de jovenes asi como de adultos con valores hacia un futuro prometedor.\r\n\r\nsaludos', '', 'MVZWHXL');
INSERT INTO solicitud VALUES('195', 'TUTORPQEE6', 'Interno', '', 'CUOA970424MHGRLM09', '1997-04-24', 'ixmiquilpan', 'Futball', 'Escalar', 'Catolica', '23', 'RANCHERIA', 'Hidalgo', 'PROGRESO DE OBREGON', '42746', '(772) 106-8071', 'escuela secundaria generar lic. adolfo lopez mateo', 'Federal', 'progreso de obregon hidalgo', '2009-2012', '8.6', 'español', 'No', 'matematicas', 'español', '', '1', '1', 'Casados', 'JUANA OLGUIN JUAREZ', '41', 'Mexicana', 'progreso de obregon', 'ama de casa', 'casa', '(738) 724-1909', '(773) 590-7976', '', 'JUANA OLGUIN JUAREZ', '41', 'Mexicana', 'PROGRESO DE OBREGON', 'AMA DE CASA', 'CASA', '(738) 035-7459', '(772) 358-3685', '', '1.56', '44.', '00', 'xs', '4.5', '6.1/4', 'O+', 'por me gustaria ingresar para superarmi condicion de vida', '', 'XMZZTS83');
INSERT INTO solicitud VALUES('196', 'TUTOR2CV7W', 'Externo', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('197', 'TUTORIB791', 'Interno', '', 'reep990924hmcynb04', '1999-09-24', 'tecpan de galea', '', '', 'Cristiana', '24', 'el sabino', 'Querétaro', 'queretaro', '76148', '(442) 351-9230', 'daniel ortiz esquibel', 'Federal', 'invierno 35 españa 76158 queretaro', 'terser bimestre', '7', 'ninguno', 'Si', 'ingles educacion fisica asignatura estatal biologi', 'mate y geografia', 'pentathlon deportivo militarizado', '1', '1', 'Casados', 'nestor reyes gutierrez', '62', 'Mexicano', 'av. platon 236 col. el sabino', 'mecanico en hidraulica', 'por cuenta propia', '(044) 220-7525', '(442) 351-9230', '', 'rosa enriquez ortega', '54', 'Mexicana', 'av. platon 236 col. el sabino', 'guardia de seguridad', 'salon de fiestas', '(044) 220-7525', '(442) 251-9230', '', '1.58', '55', '16', 'ch', '25', '80.20', 'AB+', 'por q me gustaria tener ua carrera militar', '', '9C7K5KH8');
INSERT INTO solicitud VALUES('198', 'TUTOR2DHC5', 'Interno', '', 'MAAA971120HMCYNR01', '1997-11-20', 'mexico', 'Futball', 'Natacion', 'Catolica', '181', 'sanjuan de aragon secc 7', 'Distrito Federal', 'gustavo amadero', '07910', '', 'guillemo gonzales camarena 141', 'Federal', 'distrito federal', '3 bimestre', '8', 'ingle', 'Si', 'quimica', 'matematicas', '', '1', '1', 'Divorciados', 'jose juan maya ramires', '40', 'Mexicana', '', '', '', '', '', '', 'betlehem alejandra anrubio zamora', '32', 'Mexicana', 'avenida 412 a y 497', '', '', '(555) 799-1302', '', '', '1.69', '59', '28', 'media', '6.5', '', 'A+', 'por que me a interesado saber como es y me gusta mucho', '', 'QJH5OIXX');
INSERT INTO solicitud VALUES('199', 'TUTORUXCT', 'Interno', '', '', '2001-09-03', 'Df', 'Futball', 'Natacion', 'Cristiana', '1346', '5 de diciembre', 'Jalisco', 'Puerto vallarta ', '48350', '', '', 'Federal', '', '', '', '', 'Si', 'MatematiCas ', '', 'A ninguna es su primer año en secundaria y m gustaria fuera militarizada', '0', '2', 'Divorciados', 'Ernestina osorio olvera', '34', 'Mexicana', 'Costa rica #1346', 'Empleada', 'Gimnacios ', '(322) 123-6421', '(322) 205-4437', 'Osolre_79@hotmail.com', '', '', 'Mexicana', '', '', '', '', '', '', '1.35', '32', '14', '14', '4', '', 'null', 'Me interesa q mi hijo se forme en sus estudios , saliendo de primaria , para q sea un hombre responsable y para mi es un grato honor pueda ser parte de esta institucion !', '', '1HZ93V6');
INSERT INTO solicitud VALUES('200', 'TUTOR6BXJ6', 'Interno', '', 'visd990227hneltg07', '1999-02-27', 'Santa ana, cali', 'Basketball', 'Ninguno', 'Catolica', '505', 'san francisco', 'San Luis Potosí', 'soledad de graciano sanchez', '78435', '(444) 221-8497', 'graciano sanchez romo', 'Federal', 'soledad de graciano sanchez', '2012-2013', '8.33', 'ninguna', 'No', 'matematicas', 'ciencias naturales', 'ninguna', '1', '0', 'Divorciados', 'maria karina soto arciniega ', '33', 'Mexicana', 'republica de ecuador 505, col ', 'comerciante', 'negocio propio', '(444) 809-8601', '(444) 221-8497', 'mks7928@hotmail.com', 'maria karina soto arciniega', '33', 'Mexicana', 'republica de ecuador 505, col ', 'comerciante', 'negocio propio', '(444) 809-8601', '(444) 221-8497', 'mks7928@hotmail.com', '1.67', '55', '32', '32', '7.5', '8', 'O+', 'para aprender valores, repeto y aprender a ser responsable de si mismo ', '', 'SXU5EN4');
INSERT INTO solicitud VALUES('203', 'TUTORZF645', 'Interno', '', 'caml970923hmchjs04', '1997-09-23', '', '', '', '', '11', 'san juanito texcoco', 'Estado de M�xico', 'texcoco', '56121', '(595) 120-1759', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('204', 'TUTOR7HTBX', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('205', 'TUTOR2MSAI', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('206', 'TUTOR3E4I', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('207', 'TUTOR18C7T', 'Interno', '', 'CAJA971012MGRLCM08', '1997-10-12', 'ACAPULCO, GRO  ', 'Boleyball', 'Natacion', 'Ninguno', '144', 'LA MIRA', 'Guerrero', 'GUERRERO', '39480', '(744) 172-3252', 'benemerito de las americas', 'Federal', 'acapulco, renacimiento', '2012', '8.0', 'ingles', 'Si', 'matematicas', 'español', 'ninguno', '0', '1', 'Casados', 'cinthya liliana jacobo cardenas', '35', 'Mexicana', 'colonia la mira calle silvestr', 'comerciante', 'negocio propio', '(744) 123-9286', '(744) 123-9286', 'fary_topya@hotmail.com', 'cinthya liliana jacobo cardenas ', '35', 'Mexicana', 'colonia la mira calle silvestr', 'comerciante', 'negocio propio', '(744) 123-9286', '(744) 123-9286', 'fary_topya@hotmail.com', '1.67', '60', '12', 'med.', '6', '', 'A+', 'me llama mucho la atencion y me quiero ir a estudiar terminando la preparatoria de piloto aviador', '', '3UTX1OMR');
INSERT INTO solicitud VALUES('208', 'TUTOR3TQ', 'Interno', '', '', '2000-07-29', 'TEPIC', 'Futball', 'Ninguno', 'Catolica', '14', 'MIRAMAR', 'Jalisco', 'ZAPOPAN', '45060', '(333) 455-8888', 'TECNICA 161', 'Federal', 'TLAJOMULCO DE ZUNIGA', '', '9', '', 'No', 'BIOLOGIA', 'MATEMATICAS', 'NINGUNO', '0', '1', 'Casados', 'HECTOR', '29', 'Mexicana', 'PRIVADA BAHIA TERCERA ', 'TRANSPORTISTA', 'CANAV', '(331) 618-4715', '(333) 455-8829', 'VICTORGARCIA3030@HOTMAIL.COM', 'ERIKA NAVARRO', '32', 'Mexicana', 'PRIVADA BAHIA TERCERA', 'AMA DE CASA', '', '(331) 618-4715', '(333) 455-8829', '', '1.60', '60 ', '34', '36', '7', '', 'B+', 'LA EDUCACION Y VALORES QUE SON APORTADOS A LOS ALUMNOS', '', '9EJ68KS9');
INSERT INTO solicitud VALUES('209', 'TUTOR1488', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('210', 'TUTORW6AHL', 'Interno', '', '', '0000-00-00', '', '', '', '', '0', '', 'Jalisco', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '');
INSERT INTO solicitud VALUES('211', 'TUTORIA3KF', 'Interno', '', '', '2001-07-17', 'GUADALAJARA', 'Ninguno', 'Ninguno', 'Catolica', '976', 'LOMAS DEL GALLO', 'Jalisco', 'GUADALAJARA', '44770', '(331) 185-3742', 'SEC. HIMNO NACIONAL', 'Estatal', 'GUADAJALARA', '', '', '', 'No', 'NINGUNA', 'TODAS', '', '1', '1', 'Viudo', 'LAURA GABRIELA MUÑOZ LOZANO', '49', 'Mexicana', 'SUCRE 976', 'EMPLEADA', 'PARTICULAR', '(333) 605-2919', '(331) 185-3742', 'CIBERTYK@HOTMAIL.COM', '', '', 'Mexicana', '', '', '', '', '', '', '1.36', '32', '12', '14', '23', '7', 'A+', 'POR QUE LE HACE FALTA BASTANTE DICIPLINA, CREO QUE ESTA EN UNA EDAD EN LA CUAL PUEDE DIRIGIR SU VIDA POR MEJOR CAMINO, ALEJADO DE LAS MALAS AMISTADES Y DE ADQUIRIR VICIOS QUE ESTAN A SU ALCANCE; DE ESTA MANERA PUEDE CANALIZAR SU ENERGIA EN ALGO POSITIVO. \r\nADEMAS QUE DESGRACIADAMENTE POR MI SITUACION DE TENER QUE TRABAJAR NO CUENTO CON EL TIEMPO NECESARIO PARA HACERME CARGO DE EL. ', '', 'Q7Q2XSL3');
UNLOCK TABLES;


--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `id_grupo` int(11) NOT NULL,
  `fecha` date default NULL,
  `foto` varchar(80) collate utf8_spanish_ci default NULL,
  `nc` varchar(10) collate utf8_spanish_ci NOT NULL,
  `nick` varchar(15) collate utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) collate utf8_spanish_ci NOT NULL,
  `apep` varchar(15) collate utf8_spanish_ci NOT NULL,
  `apem` varchar(15) collate utf8_spanish_ci NOT NULL,
  `tipo` varchar(10) collate utf8_spanish_ci default NULL,
  `email` varchar(40) collate utf8_spanish_ci default NULL,
  `telefono` varchar(15) collate utf8_spanish_ci default NULL,
  `direccion` varchar(60) collate utf8_spanish_ci default NULL,
  `estado` varchar(10) collate utf8_spanish_ci default NULL,
  `pago` varchar(10) collate utf8_spanish_ci default NULL,
  `grado` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `cuenta` varchar(15) collate utf8_spanish_ci NOT NULL,
  `categoria` varchar(12) collate utf8_spanish_ci NOT NULL,
  `sex` char(1) collate utf8_spanish_ci NOT NULL,
  `pass` varchar(10) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `users`
--

LOCK TABLES users WRITE;
INSERT INTO users VALUES('1', '0', '2012-04-23', 'users/1/Benavides_romero_gonzalo_asael.JPG', '', 'master', 'GONZALO ASAEL', 'BENAVIDES', 'ROMERO', NULL, 'gbenavides@aguilas.org.mx', '(341) 413-3208', 'CONSTITUCION', NULL, NULL, '0', '0', 'Administrador', '', 'H', 'gabr1974');
INSERT INTO users VALUES('17', '0', '2012-04-24', 'users/alumH.png', 'AB0112049', 'AB0112049', 'FIDEL', 'HERNANDEZ', 'HERNANDEZ', NULL, '@', '(341) 413-3208', 'CONSTITUCION', 'Aprobado', NULL, '0', '3', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('30', '0', '2012-04-26', 'users/30/DSCF7058.JPG', '', 'maestro25', 'GONZALO ASAEL', 'BENAVIDES', 'ROMERO', NULL, 'direccion@aguilas.org.mx', '(341) 122-4092', 'CONSTITUCION', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', 'NMO96');
INSERT INTO users VALUES('31', '0', '2012-04-26', 'users/masterM.png', '', 'maestro97', 'SARA ISABEL', 'BAUTISTA', 'SOLANO', NULL, 'sary_1701@hotmail.com', '(341) 413-1757', 'PRIVADA ARRAYAN', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', '9B1OR');
INSERT INTO users VALUES('32', '0', '2012-04-30', 'users/32/dfd076_72457_1464373565296_1112216297_31168993_4453641_n.jpg', '', 'none', 'PAOLA DANIELA', 'ACEVEDO', 'DE LEON', NULL, 'warningpola@hotmail.com', '(434) 760-7607', 'ENRIQUE UREÑA', 'Pendiente', NULL, '0', '2', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('6', '0', NULL, 'users/6/154574_414922418528274_764906373_n.jpg', '2', '2', 'JUDITH', 'BETANCOURT', 'SANCHEZ', NULL, 'cmam@aguilas.org.mx', '4133208', 'CONSTITUCION ', 'Aprobado', NULL, '0', '0', 'Secretaria', '', 'M', 'jbs');
INSERT INTO users VALUES('12', '0', '2012-04-24', 'users/alumH.png', 'AB0112043', 'AB0112043', 'KARLO JOEL', 'CANTU', 'MEJIA', NULL, '@', '(341) 413-3208', 'CONSTITUCION', 'BajaT', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('10', '0', '2012-04-24', 'users/10/Reyes_Sanchez_Jairo_manuel.JPG', 'AB0111024', 'AB0111024', 'JAIRO MANUEL', 'REYES', 'SANCHEZ', NULL, 'reyes_3994@hotmail.com', '(341) 413-3208', 'CONSTITUCION', 'Aprobado', NULL, '0', '6', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('11', '0', '2012-04-24', 'users/11/536090_10151192197829596_411221690_n.jpg', 'AB0111034', 'AB0111034', 'PEDRO VICENTE', 'QUIROZ', 'PIÑA', NULL, 'vicente_quiroz@hotmail.com', '(341) 413-3208', 'CONSTITUCION', 'Aprobado', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('16', '0', '2012-04-24', 'users/16/laura 24-01-13.jpg', 'AB0110009', 'AB0110009', 'ANGEL ENRIQUE', 'MAGAÑA', 'SOSA', NULL, '@', '(341) 413-3208', 'CONSTITUCION', 'Aprobado', NULL, '0', '6', 'Alumno', 'Bachillerato', 'H', 'teamoana');
INSERT INTO users VALUES('19', '0', '2012-04-24', 'users/alumH.png', 'AB0111022', 'AB0111022', 'CHRISTIAN JOEL ', 'DEHESA', 'JIMENEZ', NULL, '@', '(341) 413-3208', 'COSTITUCION', 'BajaT', NULL, '0', '3', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('20', '0', '2012-04-24', 'users/20/IMG02138-20120514-1520.jpg', '', 'TereACA', 'ANA LAURA', 'NAVARRO', 'REYES', NULL, '@', '(341) 413-3208', 'CONSTITUCION ', 'Aprobado', NULL, '0', '0', 'Secretaria', '', 'M', '011011');
INSERT INTO users VALUES('202', '0', '2013-02-22', 'users/secreM.png', '', 'Admin97', 'DANIELA', 'CERNA', 'CASTILLO', NULL, 'danycer_cas@hotmail.com', '(341) 412-9736', 'GONZALO CURIEL', 'Aprobado', NULL, '0', '0', 'Secretaria', '', 'M', 'LS3G9');
INSERT INTO users VALUES('201', '0', '2013-02-22', 'users/secreH.png', '', 'Admin31', 'ERIC FERNANDO', 'SUAREZ', 'GUZMAN', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Secretaria', '', 'H', 'M9BD9');
INSERT INTO users VALUES('23', '0', '2012-04-24', 'users/alumH.png', 'AS0111021', 'AS0111021', 'DANIEL', 'COVARRUBIAS', 'NUÑO', NULL, '@', '(341) 413-3208', 'CONSTITUCION', 'BajaD', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('24', '0', '2012-04-24', 'users/alumH.png', 'AB0112039', 'AB0112039', 'CARLOS ENRIQUE', 'RAMIREZ', 'QUEZADA', NULL, '@', '(341) 413-3208', 'CONSTITUCION', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('25', '0', '2012-04-24', 'users/alumH.png', 'AS0111019', 'AS0111019', 'SERGIO', 'TORRES', 'PADILLA', NULL, 'eltagua2@hotmail.com', '(382) 571-0817', 'ALLENDE', 'BajaT', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('26', '0', '2012-04-24', 'users/alumH.png', 'AB0112048', 'AB0112048', 'JORGE ALBERTO', 'CALVILLO', 'MEDINA', NULL, '@', '(341) 413-3208', 'CONSTITUCION', 'BajaD', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('27', '0', '2012-04-24', 'users/alumH.png', 'AS0111006', 'AS0111006', 'DAVID ANTONIO', 'GARCIA', 'GARCIA', NULL, '@', '(341) 413-3208', 'CONSTITUCION', 'BajaD', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('28', '0', '2012-04-24', 'users/alumH.png', 'AS0111017', 'AS0111017', 'ROMMEL ANDRE', 'STANZIOLA', 'SUMAN', NULL, '@', '(341) 413-3208', 'CONSTITUCION', 'BajaD', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('33', '0', '2012-05-02', 'users/alumH.png', 'AB0112017', 'AB0112017', 'URIEL ALDAIR', 'ZUMAYA', 'GONZALEZ', NULL, 'liyacken@hotmail.com', '(487) 106-1652', 'MARIANO OTERO ', 'Rechazado', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('34', '0', '2012-05-03', 'users/alumH.png', 'AB0112018', 'AB0112018', 'ABEL ', 'QUINTERO', 'MELCHOR', NULL, 'cibernz@hotmail.com', '(368) 489-0303', 'SANTA TERESA', 'Rechazado', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('114', '0', '2012-07-02', 'users/alumH.png', '', 'none', 'EINAR  YAUDIEL', 'RODRIGUEZ ', 'VARGAS', NULL, 'claudiavargas67@hotmail.com', '(646) 207-8538', 'BAHIA DE LA PAZ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('37', '0', '2012-05-07', 'users/masterH.png', '', 'maestro66', 'ALEJANDRO', 'BURGOS', 'GOMEZ', NULL, 'licalejandroburgos@hotmail.com', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', 'P9T7Y');
INSERT INTO users VALUES('38', '0', '2012-05-07', 'users/masterH.png', '', 'maestro36', 'FRANCISCO ', 'LUIS JUAN', 'LOPEZ', NULL, 'ing_francisco@hotmail.com', '(341) 413-2281', '21 DE MARZO', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', 'SAYS2');
INSERT INTO users VALUES('39', '0', '2012-05-07', 'users/masterH.png', '', 'maestro45', 'HUGO ANTONIO', 'SILVA', 'GOMEZ', NULL, 'somoslaspuertasdelcielo@hotmail.com', '', 'REFORMA', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', 'VBBYG');
INSERT INTO users VALUES('40', '0', '2012-05-07', 'users/masterM.png', '', 'maestro94', 'MONICA ALEJANDRA', 'BARRAGAN ', 'LOPEZ', NULL, 'monica_alejandra_barragan@yahoo.com', '(341) 410-5556', 'SIMON BOLIVAR', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', '91K1F');
INSERT INTO users VALUES('41', '0', '2012-05-07', 'users/masterM.png', '', 'maestro55', 'ADRIANA', 'GONZALEZ ', 'VAZQUEZ', NULL, 'adriana21g@hotmail.com', '', 'TONILA', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', '7RXT4');
INSERT INTO users VALUES('42', '0', '2012-05-07', 'users/masterM.png', '', 'maestro96', 'LUCIA', 'VEGA', 'RIUZ', NULL, 'luveru_isenco86@hotmail.com', '(341) 413-7568', 'CISNE', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', '8RSH8');
INSERT INTO users VALUES('43', '0', '2012-05-07', 'users/masterH.png', '', 'maestro47', 'ALEJANDRO', 'ROCHA', 'REYES', NULL, '@', '', 'PROLONGACION INDEPENDENCIA', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', 'WK77M');
INSERT INTO users VALUES('44', '0', '2012-05-07', 'users/masterH.png', '', 'maestro94', 'CRISPINA', 'CARDENAS', 'GARCIA', NULL, 'crispinacg@hotmail.com', '(341) 413-2237', 'PRIVADA DEL ALAMO', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', 'B15T3');
INSERT INTO users VALUES('45', '0', '2012-05-07', 'users/masterM.png', '', 'maestro35', 'ADRIANA CECILIA', 'VARGAS', 'ALZAGA', NULL, 'vargassisi@hotmail.com', '(341) 410-6372', 'PROLONGACION CORDERO', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'RBBFQ');
INSERT INTO users VALUES('46', '0', '2012-05-07', 'users/masterM.png', '', 'maestro89', 'MARIA EUGENIA', 'PADILLA ', 'VELARDE', NULL, 'mepv5687@hotmail.com', '', 'LOPEZ COTILLA', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', '9VFX');
INSERT INTO users VALUES('47', '0', '2012-05-07', 'users/masterM.png', '', 'maestro11', 'JESSICA PAOLA', 'SERRANO ', 'GARCIA', NULL, 'yessi_t18@hotmail.com', '', 'JESUS CARRANZA', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'T66VX');
INSERT INTO users VALUES('48', '0', '2012-05-07', 'users/masterM.png', '', 'maestro32', 'XOCHITL ALEJANDRA', 'ZUÑIGA', 'CARRILLO', NULL, 'xochitl_azc@hotmail.com', '(341) 413-7878', 'OLMO', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', '3G29T');
INSERT INTO users VALUES('49', '0', '2012-05-07', 'users/masterM.png', '', 'maestro30', 'MA. DEL ROSARIO', 'ZEPEDA', 'SERRATOS', NULL, 'rosegreene1303@hotmail.com', '(341) 413-0975', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'WVAU');
INSERT INTO users VALUES('50', '0', '2012-05-07', 'users/alumH.png', '', 'none', 'CHERRY', 'VECLDTDWSVKAFJG', 'PNTBJPHVTLNYRWI', NULL, 'dslee@joseilbo.com', 'VyIeyAaeq', 'UEAROVDHDTY', 'Rechazado', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('51', '0', '2012-05-08', 'users/masterM.png', '', 'maestro49', 'MONICA NATALIA', 'MEDINA', 'RODRIGUEZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', '88AMU');
INSERT INTO users VALUES('52', '0', '2012-05-08', 'users/masterM.png', '', 'maestro27', 'ROCIO', 'GONZALEZ', 'RAMIREZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'DP7O1');
INSERT INTO users VALUES('53', '0', '2012-05-08', 'users/masterH.png', '', 'Fco. Mata', 'FRANCISCO JAVIER', 'MATA', 'JIMENEZ', NULL, 'fcjmata@hotmail.com', '(341) 410-5279', 'GRAL. SANTOS DEGOLLADO', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', '12092422');
INSERT INTO users VALUES('54', '0', '2012-05-08', 'users/masterM.png', '', 'maestro23', 'FABIOLA', 'AGUAYO', 'FLORES', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'IAXIQ');
INSERT INTO users VALUES('55', '0', '2012-05-08', 'users/55/DSC01359.JPG', '', 'Lilian', 'EMMA LILIAN', 'CHAPUZ', 'HERRERA', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'puercules');
INSERT INTO users VALUES('56', '0', '2012-05-08', 'users/masterM.png', '', 'FLORSOTO', 'FLOR CITLALLY', 'SOTO', 'VERA', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'Basurto123');
INSERT INTO users VALUES('57', '0', '2012-05-08', 'users/masterH.png', '', 'maestro24', 'ALEJANDRO', 'MORENO', 'ESPINOZA', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', 'J2S4M');
INSERT INTO users VALUES('58', '0', '2012-05-08', 'users/masterM.png', '', 'maestro27', 'BERTA PATRICIA', 'CAMPOS', 'CANO', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', '35ZJ9');
INSERT INTO users VALUES('59', '0', '2012-05-08', 'users/masterM.png', '', 'maestro26', 'ANA LAURA ', 'NAVARRO ', 'REYES', NULL, 'academica@aguilas.org.mx', '(341) 413-3208', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'MCHYM');
INSERT INTO users VALUES('60', '0', '2012-05-08', 'users/alumH.png', 'AS0111004', 'AS0111004', 'LUIS EDUARDO', 'GARCIA', 'GUTIERREZ', NULL, '@', '', '', 'BajaD', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('61', '0', '2012-05-08', 'users/alumH.png', 'AS0111005', 'AS0111005', 'CARLOS ALBERTO', 'GARCIA', 'SANCHEZ', NULL, '@', '', '', 'BajaD', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('62', '0', '2012-05-08', 'users/alumH.png', 'AS0111013', 'AS0111013', 'MAURICIO', 'GOMEZ ', 'RAMIREZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('63', '0', '2012-05-08', 'users/alumH.png', 'AS0112004', 'AS0112004', 'JASON ABDALI', 'PAJARITO ', 'ENRIQUEZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('64', '0', '2012-05-08', 'users/alumH.png', 'AS0110019', 'AS0110019', 'GERARDO DANIEL', 'DUARTE', 'HERNANDEZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('65', '0', '2012-05-08', 'users/alumH.png', 'AS0111002', 'AS0111002', 'MOISES ALEJANDRO', 'GUZMAN', 'BERNARDINO', NULL, '@', '', '', 'BajaD', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('66', '0', '2012-05-08', 'users/alumH.png', 'AS0112002', 'AS0112002', 'FERNANDO', 'SANCHEZ', 'GONZALEZ', NULL, '@', '', '', 'BajaD', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('67', '0', '2012-05-08', 'users/alumH.png', 'AS0110013', 'AS0110013', 'ELIAS ALEJANDRO', 'SUAREZ', 'COBIAN', NULL, '@', '', '', 'Aprobado', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('68', '0', '2012-05-08', 'users/68/579033_3861812699082_1368913108_n.jpg', 'AS0112005', 'AS0112005', 'CARLOS ', 'MARTINEZ', 'PALACIOS', NULL, '@', '', '', 'Aprobado', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('69', '0', '2012-05-08', 'users/alumM.png', 'AS0111007', 'AS0111007', 'CECILIA', 'GONZALEZ', 'EVARISTO', NULL, '@', '', '', 'Aprobado', NULL, '0', '2', 'Alumno', 'Bachillerato', 'M', 'alumno');
INSERT INTO users VALUES('70', '0', '2012-05-08', 'users/alumH.png', 'AS0112007', 'AS0112007', 'FABIAN', 'LOPEZ', 'ALVAREZ', NULL, '@', '', '', 'Egresado', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('71', '0', '2012-05-08', 'users/alumM.png', 'AS0112008', 'AS0112008', 'IMELDA NAYELI', 'SANCHEZ', 'GARCIA', NULL, '@', '', '', 'BajaD', NULL, '0', '3', 'Alumno', 'Secundaria', 'M', 'alumno');
INSERT INTO users VALUES('72', '0', '2012-05-08', 'users/alumH.png', 'AB0112016', 'AB0112016', 'ALEXIS TADEO', 'IÑIGUEZ', 'TORRES', NULL, '@', '', '', 'BajaT', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('73', '0', '2012-05-08', 'users/alumH.png', 'AB0112005', 'AB0112005', 'CLAUDIO DE JESUS ', 'MORALES', 'GRACIANO', NULL, '@', '', '', 'BajaT', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('74', '0', '2012-05-08', 'users/74/291020119365.jpg', 'AB0110XXX', 'AB0110XXX', 'LUIS FERNANDO', 'ORTIZ', 'NOLAZCO', NULL, 'chivas2009.luis@hotmail.com', '(013) 336-1866', 'PARICUTIN ', 'BajaT', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'olamiamor');
INSERT INTO users VALUES('75', '0', '2012-05-08', 'users/alumH.png', 'AB0112004', 'AB0112004', 'ALAN OLIVER', 'ROBLES', 'COLIN', NULL, '@', '', '', 'Aprobado', NULL, '0', '3', 'Alumno', 'Bachillerato', 'H', 'alanoliver');
INSERT INTO users VALUES('76', '0', '2012-05-08', 'users/alumH.png', 'AB0112001', 'AB0112001', 'DANIEL', 'ZACATE', 'COLORADO', NULL, '@', '', '', 'BajaT', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('77', '0', '2012-05-08', 'users/alumH.png', 'AB0111030', 'AB0111030', 'MANUEL GUADALUPE', 'BENAVIDES', 'MUÑOZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'Closure201');
INSERT INTO users VALUES('78', '0', '2012-05-08', 'users/alumH.png', 'AB0112011', 'AB0112011', 'RENE JOSE', 'LIZARRAGA', 'VAZQUEZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '3', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('79', '0', '2012-05-08', 'users/alumH.png', 'AB0111025', 'AB0111025', 'JORGE ALEJANDRO', 'LOPEZ', 'CORVERA', NULL, '@', '', '', 'BajaD', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('165', '0', '2012-09-20', 'users/masterM.png', '', 'maestro93', 'MARIA PAULINA', 'CONTRERAS', 'HERNÁNDEZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'M', 'V8F78');
INSERT INTO users VALUES('80', '0', '2012-05-09', 'users/alumH.png', 'AS0112011', 'AS0112011', 'HECTOR TADEO', 'GUEL', 'MARTINEZ', NULL, '@', '', '', 'Egresado', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('81', '0', '2012-05-09', 'users/alumH.png', 'AS0112012', 'AS0112012', 'DIEGO', 'OROZCO', 'LARES', NULL, '@', '', '', 'BajaD', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('82', '0', '2012-05-09', 'users/82/CMAM.jpg', 'AB0111009', 'AB0111009', 'LUIS ANGEL', 'MOJICA', 'HERNANDEZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('83', '0', '2012-05-09', 'users/83/300144_2085211454406_1811545250_n.jpg', 'AB0111019', 'AB0111019', 'ELIAS FIDEL', 'ORTEGA ', 'LUCENA', NULL, '@', '', '', 'BajaD', NULL, '0', '3', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('84', '0', '2012-05-09', 'users/alumM.png', 'AB0111033', 'AB0111033', 'ALICIA', 'SALAZAR', 'URZUA', NULL, '@', '', '', 'Aprobado', NULL, '0', '4', 'Alumno', 'Bachillerato', 'M', 'alumno');
INSERT INTO users VALUES('85', '0', '2012-05-09', 'users/85/munch_2012_05_14_201753.png', 'AB0111005', 'AB0111005', 'JOSE MIGUEL', 'BARAJAS', 'MENDOZA', NULL, 'barajasm93@hotmail.com', '(933) 334-2609', 'PIMIENTA', 'Aprobado', NULL, '0', '5', 'Alumno', 'Bachillerato', 'H', 'barajas.12');
INSERT INTO users VALUES('86', '0', '2012-05-09', 'users/alumH.png', 'AB0112006', 'AB0112006', 'MAXIMINO RAFAEL', 'CORREA', 'MONTIEL', NULL, '@', '', '', 'BajaT', NULL, '0', '5', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('87', '0', '2012-05-09', 'users/secreH.png', '', 'milton', 'MILTON', 'NAVARRO', 'CASTILLO', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Secretaria', '', 'H', 'fz16');
INSERT INTO users VALUES('88', '0', '2012-05-09', 'users/alumH.png', 'AB0112014', 'AB0112014', 'CARLOS GILBERTO', 'MILLAN', 'VALDEZ', NULL, '@', '', '', 'BajaT', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('89', '0', '2012-05-09', 'users/alumH.png', 'AB0110029', 'AB0110029', 'EDGAR', 'GARCIA ', 'FERREYRA', NULL, '@', '', '', 'Egresado', NULL, '0', '6', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('90', '0', '2012-05-09', 'users/90/naranjo_hernandez.JPG', 'AB0109006', 'AB0109006', 'ALLAN URIEL', 'NARANJO', 'HERNANDEZ', NULL, '@', '', '', 'Egresado', NULL, '0', '6', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('91', '0', '2012-05-09', 'users/91/AT36XJ1CAFUJLSGCAG7H53CCA9IVEP8CA6JCE1RCAHE7XNLCAV0NLINCAK4ELPDCALFDFAC', 'AB0112002', 'AB0112002', 'JAIR', 'RAMIREZ', 'FLORES ', NULL, '@', '', '', 'Egresado', NULL, '0', '6', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('95', '0', '2012-05-18', 'users/95/maza.jpg', 'AB0111010', 'AB0111010', 'NOE', 'LOPEZ', 'VELARDE', NULL, '@', '', '', 'Aprobado', NULL, '0', '6', 'Alumno', 'Bachillerato', 'H', '123123');
INSERT INTO users VALUES('93', '0', '2012-05-10', 'users/93/0a5065_292097_3003619381107_1581039591_2067006_365669216_n.jpg', '', 'none', 'EDMUNDO', 'FEDERICO', 'BALTIERREZ', NULL, 'ed1996@hotmail.es', '(637) 123-0365', 'AVE R ENTRE 4 Y 5 ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('94', '0', '2012-05-11', 'users/94/bd8f3a_376904_10150397312609757_841419756_8096855_1984430240_n.jpg', '', 'none', 'DANIA YAZMIN ', 'REYES ', 'CRUZ', NULL, 'yazdania_15@hotmail.com', '(637) 372-3683', 'TERCERA SUR ÷ L Y M ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'M', 'none');
INSERT INTO users VALUES('96', '0', '2012-05-18', 'users/alumH.png', 'AB0111028', 'AB0111028', 'MANUEL MAURICIO', 'DIAZ', 'AGUIRRE', NULL, '@', '', '', 'BajaD', NULL, '0', '5', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('97', '0', '2012-05-18', 'users/alumM.png', 'AS0112013', 'AS0112013', 'ALICIA', 'SOLIS', 'INIESTA', NULL, 'bam_pez@hotmail.com', '(555) 619-4411', 'AMATL', 'Rechazado', NULL, '0', '1', 'Alumno', 'Secundaria', 'M', 'alumno');
INSERT INTO users VALUES('98', '0', '2012-05-21', 'users/98/3787d5_Foto2846.jpg', '', 'none', 'JOSE FRANCISCO', 'JASSO', 'HERNANDEZ', NULL, 'estetihanny@hotmail.com', '(333) 838-6761', 'IZLA BARU', 'Rechazado', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('99', '0', '2012-05-24', 'users/alumH.png', '', 'none', 'OSCAR', 'FRANCO', 'CAMARENA', NULL, 'cmc1280@hotmail.com', '(333) 144-0281', 'ISLA CANCUN', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('100', '0', '2012-06-02', 'users/100/374dca_060811-1717.jpg', '', 'none', 'FRANCISCO JAVIER', 'GONZALEZ', 'ACUñA', NULL, 'fran_javierglez@hotmail.com', '(319) 256-0229', 'MEXICO', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('101', '0', '2012-06-03', 'users/101/3526ed_IMG00407-20110521-1907.jpg', '', 'none', 'LUIS DANIEL', 'CORTES', 'GARCIA ALONSO', NULL, 'juanretolaza@hotmail.com', '(333) 827-5267', 'JUAN ALVAREZ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('102', '0', '2012-06-04', 'users/alumH.png', '', 'none', 'SERGIO ALEJANDRO', 'ALDAZ', 'LIMA', NULL, 'limaale@live.com.mx', '(686) 841-1450', 'SOBERIA', 'Pendiente', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('103', '0', '2012-06-05', 'users/103/348e67_110529_194741.jpg', '', 'none', 'JOSHUA', 'ORTIZ', 'GOMEZ', NULL, '@joshua_ortiz_jarif@hotmail.com', '(525) 994-4466', 'ORQUIDIAS', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('104', '0', '2012-06-09', 'users/104/6cb8b2_292022_252193004832801_1320869984_n.jpg', '', 'none', 'DEYSI SHAMARA', 'CARBALLO', 'GARCIA', NULL, '@', '(868) 111-1436', 'DEMOCRACIA', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('105', '0', '2012-06-11', 'users/alumH.png', '', 'none', 'ALAN ENGELBERT', 'RIVERA ', 'BUGARIN', NULL, 'alan3fremoda@hotmail.com', '(365) 504-0040', 'FEDERACION', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('106', '0', '2012-06-13', 'users/106/07c526_109_1143.JPG', 'AS0112014', 'AS0112014', 'JOSE ROBERTO ', 'PEREZ', 'NUNGARAY', NULL, 'guero_halo3odst@hotmail.com', '(474) 100-4259', 'ADOLFO LOPEZ MATEOS', 'BajaD', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('107', '0', '2012-06-13', 'users/107/3c897b_I.jpg', '', 'none', 'KENIA ISABEL', 'BERNABE', 'ALMAZAN', NULL, 'k_isabel_1996@hotmail.com', '(425) 535-2903', 'LERDO DE TEJADA ', 'Pendiente', NULL, '0', '3', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('108', '0', '2012-06-14', 'users/108/bf8851_549194_3626219219095_1382471757_33338909_1790897599_n.jpg', '', 'none', 'MAYRA ', 'REYES', 'MONTIEL', NULL, 'mrm_jrr.girl15@hotmail.com', '(044) 102-4156', 'JUAREZ', 'Pendiente', NULL, '0', '2', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('109', '0', NULL, 'users/userH.png', '', 'efra', 'Efrain', 'Montes', '', '', NULL, NULL, NULL, NULL, NULL, '0', '0', 'Administrador', '', 'H', 'em1321');
INSERT INTO users VALUES('110', '0', '2012-06-18', 'users/alumH.png', '', 'none', 'LUIS DANIEL', 'CUETO ', 'FABILA', NULL, 'elide.f@hotmail.com', '(722) 167-5076', 'SEGUNDA DE TIERRA Y LIBERTAD ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('177', '0', '2012-10-22', 'users/alumH.png', 'AS0112025', 'AS0112025', 'BERNARDO', 'DELGADO', 'VALENZUELA', NULL, '@', '', '', 'BajaD', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('163', '0', '2012-09-12', 'users/163/0c00c9_IMG000034.jpg', '', 'none', 'FELIPE', 'PUENTE', 'CORDOVA', NULL, '@', '(312) 330-3365', 'HALCONES', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('112', '0', '2012-06-26', 'users/alumH.png', '', 'none', 'IVAN FABRICIO', 'DOLORES', 'VILLANUEVA', NULL, 'mvillanueva72@hotmail.com', '(442) 410-4241', 'ESCOBEDO', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('113', '0', '2012-06-27', 'users/secreM.png', '', 'Admin29', 'MAYRA GUADALUPE', 'CORTES', 'GUTIERREZ', NULL, 'mayra_200790@hotmail.com', '(___) ___-____', 'FEDERICO IBARRA', 'Aprobado', NULL, '0', '0', 'Secretaria', '', 'M', 'MXNX');
INSERT INTO users VALUES('116', '0', '2012-07-02', 'users/alumH.png', '', 'none', 'EDAGAR OSVALDO ', 'PERETE ', 'LARA', NULL, 'nada.otodo@hotmail.com ', '(713) 131-1403', 'CUAHUTEMOC', 'Pendiente', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('162', '0', '2012-09-04', 'users/162/480965_Sin tu�tulo.png', '', 'none', 'MANUEL ALEJANDRO ', 'BAUTISTA', 'GOMEZ', NULL, 'koloors_acid@hotmail.com', '(332) 400-8854', 'JAVIER MINA', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('118', '0', '2012-07-06', 'users/118/9e907e_317190_1523539025642_1698423878_n[1].jpg', '', 'none', 'MIGUEL ANGEL', 'MARTINEZ', 'GARCIA', NULL, 'miguel.23.12@hotmail.com', '(826) 115-0275', 'VICTORIA', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('119', '0', '2012-07-10', 'users/alumM.png', '', 'none', 'PERLA ALEJANDRA', 'VAZQUEZ', 'LUNA', NULL, 'alejandra_perla@live.com.mx', '(493) 111-8090', 'SANTA MARIA', 'Pendiente', NULL, '0', '6', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('120', '0', '2012-07-10', 'users/alumH.png', '', 'none', 'LEONARDO CASSIEL', 'CABALLERO', 'ROBLEDO', NULL, 'eros_aldo@hotmail.com', '(333) 334-5575', 'MARCELINO GARCIA BARRAGAN ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('161', '0', '2012-08-30', 'users/alumH.png', 'AS0112015', 'AS0112015', 'JOEL EDUARDO', 'PRECIADO', 'RIVERO', NULL, '@', '', '', 'Aprobado', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'spartan117');
INSERT INTO users VALUES('160', '0', '2012-08-30', 'users/alumH.png', 'AB0112020', 'AB0112020', 'JOSHUA JARED', 'VAZQUEZ', 'ACOSTA', NULL, '@', '', '', 'Aprobado', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('121', '0', '2012-07-12', 'users/121/07a0c4_opt1275367869i.gif', '', 'none', 'RG', 'G', 'GER', NULL, '@ksadjf', '(555) 790-1616', 'UKHJMG', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('122', '0', '2012-07-14', 'users/122/d9c196_398798_361012257282117_758078501_n.jpg', '', 'none', 'JESUS', 'CAMARENA', 'HUERTA', NULL, '@i-2040@hotmail.com', '(331) 305-1490', 'HACIENDA DE LAS FLORES', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('123', '0', '2012-07-15', 'users/alumM.png', '', 'none', 'DIANA PATRICIA', 'SUAREZ', 'HERNANDEZ', NULL, 'plan_ale@hotmail.com', '(556) 279-9100', 'PINACATE ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('124', '0', '2012-07-31', 'users/alumH.png', 'AB0110016', 'AB0110016', 'JOSE MANUEL', 'QUIÑONES', 'GARIBAY', NULL, '@', '(333) 810-7381', 'RELAMPAGO', 'BajaD', NULL, '0', '5', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('125', '0', '2012-07-31', 'users/alumH.png', '', 'none', 'DANIEL ALEJANDRO', 'CRUZ', 'NAJERA', NULL, 'litzy_najera@hotmail.com', '(722) 215-1908', 'CAPULUHAC', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('126', '0', '2012-08-07', 'users/alumM.png', '', 'none', 'ALONDRA', 'GONZALEZ', 'ALONSO', NULL, 'alondra_glez_alonso@live.com', '(333) 695-0409', 'LAZARO CARDENAS', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('127', '0', '2012-08-09', 'users/alumH.png', '', 'none', 'SEBASTIAN ', 'VOGT', 'PIERCE', NULL, 'vogt@ampliaudio.com.mx', '(555) 531-2924', 'AVENIDA URBINA', 'Pendiente', NULL, '0', '5', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('128', '0', '2012-08-09', 'users/alumH.png', '', 'none', 'EDUARDO', 'MACIAS', 'TRUJILLO', NULL, 'moralesale8@hotmail.com', '(336) 425-3566', 'SAN FLORENCIO ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('129', '0', '2012-08-11', 'users/129/a10bba_DSC02058.JPG', '', 'none', 'DIANA', 'LOPEZ', 'CRUZ', NULL, 'deyka_.5@hotmail.com', '', '', 'Pendiente', NULL, '0', '2', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('130', '0', '2012-08-11', 'users/130/54bb7b_Foto0276.jpg', '', 'none', 'LLANELY', 'MOLINA', 'SARMIENTO', NULL, 'llanely16_@hotmail.com ', '(555) 790-6966', 'JORGE JIMENES', 'Pendiente', NULL, '0', '3', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('131', '0', '2012-08-11', 'users/131/1215e0_diana.jpg', '', 'none', 'DIANA LAURA', 'LOPEZ', 'CRUZ', NULL, 'deyka_.5@hotmail.com', '(954) 119-5252', '0', 'Pendiente', NULL, '0', '2', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('132', '0', '2012-08-14', 'users/alumH.png', '', 'none', 'JOSE LUIS', 'HORTA', 'RODRIGUEZ', NULL, '@', '(555) 758-1641', 'XILITLA', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('133', '0', '2012-08-21', 'users/alumH.png', 'AB0112023', 'AB0112023', 'LUIS ALEXANDER', 'ASSEM', 'FERNANDEZ', NULL, '@', '', '', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('134', '0', '2012-08-21', 'users/alumH.png', 'AS0112018', 'AS0112018', 'CHRISTOPHER LEONARDO', 'FERNANDEZ', 'GONZALEZ', NULL, 'ronnie-inicia@hotmail.com', '(488) 887-0113', 'JUAREZ', 'BajaD', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('135', '0', '2012-08-21', 'users/alumH.png', 'AS0112017', 'AS0112017', 'ALEJANDRO FABIAN', 'MARIN ', 'LARA', NULL, 'alex_fml@live.com.mx', '(551) 558-2488', 'CALLE', 'BajaD', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('136', '0', '2012-08-21', 'users/alumH.png', 'AS0112019', 'AS0112019', 'ABRAHAM SALVADOR', 'MERCADO', 'NARVAEZ', NULL, 'mach97@hotmail.com', '(834) 135-0784', 'RIO NUECES', 'BajaD', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('137', '0', '2012-08-21', 'users/alumH.png', 'AB0112028', 'AB0112028', 'JESUS DAVID', 'AMABILIS', 'COMSILLE', NULL, 'davidamabilis@hotmail.com', '(833) 213-5494', 'MERIDA', 'Aprobado', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('138', '0', '2012-08-21', 'users/alumH.png', 'AB0112032', 'AB0112032', 'OSMAR', 'VAZQUEZ', 'RAMIREZ', NULL, 'osmar_osmar@live.com.mx', '(555) 844-6373', 'CERRADA FRANCISCO VILLA', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('139', '0', '2012-08-21', 'users/alumH.png', 'AB0112031', 'AB0112031', 'EDUARDO ZAHID', 'BUENROSTRO', 'CISNEROS', NULL, '@', '(376) 768-1298', 'GUERRERO', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('140', '0', '2012-08-21', 'users/alumH.png', 'AB0112030', 'AB0112030', 'OSCAR ARTURO', 'TELLO', 'VILLASEñOR', NULL, 'oscar_1995u@hotmail.com', '(314) 335-5207', 'AV.PASEO DE LAS GAVIOTAS ', 'BajaD', NULL, '0', '3', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('141', '0', '2012-08-21', 'users/alumH.png', 'AS0112023', 'AS0112023', 'BRIAN MOISES', 'GUEVARA', 'RUEZGA', NULL, 'candanosag@gmail.com', '(331) 187-8733', 'HACIENDA REAL', 'BajaD', NULL, '0', '3', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('142', '0', '2012-08-21', 'users/alumH.png', 'AS0112021', 'AS0112021', 'GERMAN', 'VAQUERA', 'FIGUEROA', NULL, 'shaggy_2000@hotmail.com', '', 'IGNACIO MEJIA', 'Aprobado', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('143', '0', '2012-08-21', 'users/143/3 001.jpg', 'AS0112020', 'AS0112020', 'ALICIA ', 'SOLIS', 'INIESTA', NULL, 'bam_pez@hotmail.com', '(555) 619-4411', 'AMATL', 'Aprobado', NULL, '0', '1', 'Alumno', 'Secundaria', 'M', 'alumno');
INSERT INTO users VALUES('144', '0', '2012-08-21', 'users/alumH.png', 'AB0112035', 'AB0112035', 'EDUARDO ', 'MACIAS', 'TRUJILLO', NULL, 'maciasyoyis7@hotmail.com', '(333) 642-5356', 'SAN FLORENCIO', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('145', '0', '2012-08-21', 'users/alumH.png', 'AB0112034', 'AB0112034', 'GABRIEL', 'SILVA', 'RAMIREZ', NULL, 'g.silva83@yahoo.com', '(555) 824-5860', 'CDA.PEDRO GUZMAN', 'Aprobado', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('146', '0', '2012-08-22', 'users/alumM.png', 'AB0112024', 'AB0112024', 'SANDRA', 'ORTEGA', 'SOTO', NULL, 'sonraf_33@hotmail.com', '(726) 262-1611', 'LUIS DONALDO COLOSTO', 'Aprobado', NULL, '0', '5', 'Alumno', 'Bachillerato', 'M', 'sandraorte');
INSERT INTO users VALUES('147', '0', '2012-08-22', 'users/alumH.png', 'AB0112022', 'AB0112022', 'MIGUEL', 'LOPEZ', 'CONTRERAS', NULL, 'dx_alma_miguel@hotmail.com', '(231) 313-2938', 'AV. HIDALGO', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('148', '0', '2012-08-22', 'users/alumM.png', 'AB0112021', 'AB0112021', 'YAJAIRA', 'QUIROZ', 'BUCIO', NULL, 'yayapink@hotmail.com', '(719) 286-0658', 'BENITO JUAREZ', 'Aprobado', NULL, '0', '4', 'Alumno', 'Bachillerato', 'M', 'alumno');
INSERT INTO users VALUES('149', '0', '2012-08-22', 'users/149/zero_by_david878-d55irwr.jpg', 'AS0112016', 'AS0112016', 'CHRISTIAN ANTONIO', 'RIZO', 'KRUZPER', NULL, 'grisj75@yahoo.com', '(333) 680-2727', 'ANDADOR LAS TORRES', 'BajaD', NULL, '0', '2', 'Alumno', 'Secundaria', 'H', 'sgt tony');
INSERT INTO users VALUES('150', '0', '2012-08-22', 'users/alumH.png', 'AB0112029', 'AB0112029', 'JESUS MANUEL', 'AGUAYO', 'ROMERO', NULL, 'adalmare_gve@hotmail.com', '(687) 871-2551', 'CONSTITUCION', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('159', '0', '2012-08-28', 'users/alumH.png', 'AB0112019', 'AB0112019', 'URIEL ALDAIR', 'ZUMAYA', 'GONZALEZ', NULL, 'liyacken@hotmail.com', '(487) 106-1652', 'MARIANO OTERO', 'Aprobado', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'zomalia');
INSERT INTO users VALUES('152', '0', '2012-08-22', 'users/alumH.png', 'AB0112027', 'AB0112027', 'FABIAN', 'GOMEZ', 'GONZALEZ', NULL, 'mariana.gmz@gmail.com', '(811) 234-4269', 'NAPOLES', 'Aprobado', NULL, '0', '6', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('153', '0', '2012-08-22', 'users/alumH.png', 'AB0112026', 'AB0112026', 'JOSE LUIS', 'AGUILAR', 'DE LEON', NULL, 'joseluisaguilar@hotmail.com', '(315) 355-7190', 'FRANCISCO VILLA', 'BajaD', NULL, '0', '3', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('154', '0', '2012-08-22', 'users/alumH.png', 'AB0112025', 'AB0112025', 'ALEJANDRO', 'CRUZ', 'TOVAR', NULL, '@', '(555) 565-3291', 'JUAN ESCUTIA', 'BajaD', NULL, '0', '3', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('155', '0', '2012-08-22', 'users/alumH.png', 'AB0112033', 'AB0112033', 'GUILLERMO ANDRES', 'OLSON', 'BALDERAS', NULL, 'luzmabal224@hotmail.com', '', 'CALZ. DE LA MEDIA LUNA', 'Aprobado', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('156', '0', '2012-08-22', 'users/alumH.png', 'AB0112036', 'AB0112036', 'HERIBERTO', 'TORRES', 'RAMIREZ', NULL, 'heribert_19@hotmail.com', '(443) 242-5460', 'NAYARIT', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('157', '0', '2012-08-22', 'users/alumM.png', 'AS0112024', 'AS0112024', 'JENNIFER GISSELLE', 'GUTIEEREZ ', 'BENAVIDES', NULL, '@', '(341) 413-2327', 'SAN PEDRO', 'BajaT', NULL, '0', '2', 'Alumno', 'Secundaria', 'M', 'alumno');
INSERT INTO users VALUES('158', '0', '2012-08-24', 'users/alumH.png', 'AB0112037', 'AB0112037', 'LUIS FERNANDO', 'VAZQUEZ ', 'HERRERA', NULL, 'juvvaconst@hotmail.com', '(782) 823-4807', 'PRIV. HECOICA VERACRUZ  ', 'BajaD', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('164', '0', '2012-09-16', 'users/alumM.png', '', 'none', 'LESLIE POULETT', 'SALAZAR', 'CAMARGO', NULL, 'poletzita_1996@hotmail.com', '(554) 838-6846', 'JUPITER', 'Pendiente', NULL, '0', '3', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('166', '0', '2012-10-02', 'users/alumH.png', 'AB0112999', 'AB0112999', 'FEDERICO', 'AVALOS', 'CORNELIO', NULL, '@', '', '', 'BajaD', NULL, '0', '5', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('167', '0', '2012-10-02', 'users/alumH.png', 'AB0111016', 'AB0111016', 'ARMANDO', 'GOMEZ', 'HERNANDEZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('168', '0', '2012-10-06', 'users/alumH.png', '', 'none', 'EDGAR GIOVANNY', 'GOMEZ', 'IñIGUEZ', NULL, 'eddy_030474@hotmai.com', '(055) 574-8140', 'BOSQUES DE CHIAPAS', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('169', '0', '2012-10-08', 'users/alumH.png', '', 'none', 'MARIANO', 'NUñEZ', 'RUIZVELASCO', NULL, '@', '(044) 333-5772', 'PASEO SOLARES 999 INT', 'Pendiente', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('170', '0', '2012-10-08', 'users/alumH.png', '', 'none', 'MARIANO', 'NUñEZ', 'RUIZVELASCO', NULL, 'marianorv_95@hotmail.com', '(044) 333-5772', 'PASEO SOLARES 999 INT', 'Pendiente', NULL, '0', '4', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('171', '0', '2012-10-12', 'users/alumH.png', '', 'none', 'DANIEL', 'PIMENTEL', 'CARRILLO', NULL, 'chachan13@live.com.ar', '3265123', 'MORELOS', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('172', '0', '2012-10-12', 'users/alumH.png', '', 'none', 'ADOLFO ', 'RODRIGUEZ', 'CARDOSO', NULL, 'adolfo_rodriguez27@hotmail.es', '(551) 520-4545', 'DURAZNILLO BLANCO ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('173', '0', '2012-10-14', 'users/173/ee4e2a_2012-08-20 21-23-45.375.jpg', '', 'none', 'MARIA DE GUADALUPE ', 'PEREZ ', 'GONZALEZ ', NULL, 'lupe_la_loca@hotmail.com', '(487) 872-3475', 'PORFIRIO DIAZ  ', 'Pendiente', NULL, '0', '2', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('174', '0', '2012-10-15', 'users/alumH.png', '', 'none', 'CARLOS', 'BRINGAS', 'MAYA', NULL, 'ignaciobringas@gmail.com', '(337) 770-2727', 'CARR. A NOGALES', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('175', '0', '2012-10-17', 'users/alumM.png', '', 'none', 'ABIGAIL YECENIA', 'POLITRON', 'CHAVARRIA', NULL, 'abi-yesenia@live.com.mx', '(551) 891-0884', 'AV.DEL NORTE', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('176', '0', '2012-10-17', 'users/masterH.png', '', 'maestro36', 'ANGEL', 'PEREZ', 'TREJO', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', '9GPRY');
INSERT INTO users VALUES('178', '0', '2012-10-26', 'users/alumH.png', '', 'none', 'JOSE ANTONIO', 'SANCHEZ', 'GOMEZ', NULL, 'sanant05077@gmail.com', '(333) 643-3967', 'SALVADOR M. LIMA 4136', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('179', '0', '2012-10-27', 'users/masterH.png', '', 'maestro87', 'CARLOS', 'DIAZ', 'ORTEGA', NULL, '@', '', '', 'Aprobado', NULL, '0', '0', 'Maestro', '', 'H', 'OJ47');
INSERT INTO users VALUES('180', '0', '2012-10-29', 'users/alumH.png', 'AS0112022', 'AS0112022', 'LOPEZ', 'RODRIGUEZ', 'JAIRO DANIEL', NULL, '@', '', '', 'BajaD', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('181', '0', '2012-11-15', 'users/secreM.png', '', 'Admin19', 'IVON ', 'NAVARRETE', 'SOLORIO', NULL, 'novi358@hotmail.com', '(341) 410-6495', 'HACIENDA DE SAN MARCOS', 'Aprobado', NULL, '0', '0', 'Secretaria', '', 'M', 'VV7T4');
INSERT INTO users VALUES('184', '0', '2012-11-22', 'users/alumM.png', '', 'none', 'ELSA YESENIA', 'CASTRO', 'DOMINGUEZ', NULL, 'yessii_castro@hotmail.com', '(722) 550-2106', 'RIO SAN PEDRO', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('183', '0', '2012-11-16', 'users/alumH.png', 'AS0111999', 'AS0111999', 'LUIS FELIPE', 'CABELLO ', 'SUÑER', NULL, '@', '', '', 'Aprobado', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('185', '0', '2012-12-03', 'users/185/223b3d_244126_452010931516404_99026765_o.jpg', '', 'none', 'MARIA BEATRIZ', 'SANCHEZ', 'CABRERA', NULL, 'princesita_girl.rock@live.com', '(276) 477-1065', '27 SUR ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('186', '0', '2012-12-13', 'users/alumM.png', '', 'none', 'REGINA', 'AGUILAR', 'ORTIZ', NULL, 'aguilar.o.marcos@gmail.com', '(866) 635-3400', 'RIO DE JANEIRO', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'M', 'none');
INSERT INTO users VALUES('187', '0', '2012-12-14', 'users/alumH.png', '', 'none', 'JUAN', 'MEDRANO', 'RUIZ', NULL, '@', '(416) 657-8899', 'GUANAJUATO', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('188', '0', '2012-12-29', 'users/alumM.png', '', 'none', 'FERNANDA', 'CASTAñEDA ', 'BERNAL ', NULL, 'fer_1795_@hotmail.com ', '(582) 345-8234', 'ARTEAGA  ESQ PINO SUáREZ ', 'Pendiente', NULL, '0', '4', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('189', '0', '2012-12-30', 'users/alumH.png', '', 'none', 'CHRISTIAN ANTONHY', 'IBARRA', 'RODRIGUEZ', NULL, 'arualglvan@hotmail.com', '(444) 842-0057', 'DE  VEGA', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('190', '0', '2013-01-08', 'users/190/0e0b8e_IMG00131.jpg', '', 'none', 'LORENA GUADALUPE', 'ARCE', 'GONZALEZ', NULL, '@', '(333) 861-9022', 'J.TRINIDAD SANTIAGO ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('191', '0', '2013-01-10', 'users/alumH.png', '', 'none', 'JOSE GERARDO', 'CRUZ', 'NAVARRO', NULL, 'gerardo_c_n@hotmail.com', '(015) 120-6130', 'PUEBLA', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('192', '0', '2013-01-12', 'users/alumH.png', '', 'none', 'SANTIAGO', 'CORONA', 'PIERCE', NULL, 'dacofe@prodigy.net.mx', '(662) 264-8033', 'LAZARISTAS', 'Pendiente', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('193', '0', '2013-01-14', 'users/alumH.png', '', 'none', 'JUAN RAFAEL ', 'DAVILA ', 'PUENTE', NULL, 'claudiapuente@live.com.mx', '(844) 135-8401', 'PINOS ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('194', '0', '2013-01-17', 'users/194/fc44dc_DSC00752.JPG', '', 'none', 'ADOLFO BERNARDO', 'GARCIA', 'VALENCIA', NULL, 'rvalencia1973@hotmail.com', '(333) 684-2951', 'VALLE DE LOS ENCINOS', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('195', '0', '2013-01-21', 'users/alumM.png', '', 'none', 'AMY ', 'CRUZ', 'OLGUIN', NULL, 'heart_amy.24@hotmail.com', '(738) 724-1909', 'RANCHERIA XOCHITLAN', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('196', '0', '2013-01-22', 'users/alumH.png', 'AS0112026', 'AS0112026', 'ANDRES DE JESUS', 'HERNANDEZ', 'CARDENAS', NULL, '@', '', '', 'Aprobado', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('197', '0', '2013-01-25', 'users/alumH.png', '', 'none', 'PABLO', 'REYES', 'ENRIQUEZ', NULL, 'pabloreyesenriquez@hotmail.com', '(044) 220-7525', 'AV. PLATON 236 ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('198', '0', '2013-01-27', 'users/alumH.png', '', 'none', 'ARIEL GIOVANNI', 'MAYA', 'ANRUBIO', NULL, '@', '(555) 799-1302', 'AVENIDA 412 A Y 497', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'none');
INSERT INTO users VALUES('199', '0', '2013-02-01', 'users/alumH.png', '', 'none', 'ANGEL ALBERTO', 'OSORIO ', 'OLVERA', NULL, 'osolre_79@hotmail.com', '(322) 123-6421', 'COSTA RICA ', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('200', '0', '2013-02-05', 'users/alumH.png', '', 'none', 'DIEGO', 'VILLA', 'SOTO', NULL, 'mks7928@hotmail.com', '(444) 809-8601', 'REPUBLICA DE ECUADOR', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('203', '0', '2013-02-22', 'users/alumH.png', 'AB0113005', 'AB0113005', 'LUIS ADOLFO', 'CHAVEZ', 'MEJIA', NULL, 'luis_chamej@hotmai.com', '', 'SERRADA DE HIDALGO', 'Aprobado', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('204', '0', '2013-02-22', 'users/alumH.png', 'AB0113008', 'AB0113008', 'EDWIN ALEJANDRO', 'VARGAS', 'HERNANDEZ', NULL, '@', '', '', 'Aprobado', NULL, '0', '1', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('205', '0', '2013-02-22', 'users/alumH.png', 'AS0112027', 'AS0112027', 'JUAN FRANCISCO DAVID', 'SILVA', 'DIAZ', NULL, '@', '', '', 'BajaD', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('206', '0', '2013-02-22', 'users/alumH.png', 'AB0113009', 'AB0113009', 'ALDO IVAN', 'CHAVEZ', 'RUBIO', NULL, '@', '', '', 'Aprobado', NULL, '0', '2', 'Alumno', 'Bachillerato', 'H', 'alumno');
INSERT INTO users VALUES('207', '0', '2013-02-23', 'users/207/c3698c_america 002.jpg', '', 'none', 'AMERICA LISBETH', 'CALDERON', 'JACOBO', NULL, 'america.traviesa@hotmail.com', '(744) 172-3252', 'SILVESTRE CASTRO', 'Pendiente', NULL, '0', '1', 'Alumno', 'Bachillerato', 'M', 'none');
INSERT INTO users VALUES('208', '0', '2013-02-24', 'users/alumH.png', '', 'none', 'PABLO DANIEL', 'CASTILLO', 'NAVARRO', NULL, '@victorgarcia3030@hotmail.com', '(331) 618-4715', 'PRIVADA BAHIA TERCERA', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
INSERT INTO users VALUES('209', '0', '2013-03-01', 'users/alumH.png', 'AS0112028', 'AS0112028', 'KEVIN ANDRES', 'AGUIRRE', 'ONELAS', NULL, '@', '', '', 'BajaD', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('210', '0', '2013-03-01', 'users/alumH.png', 'AS0113002', 'AS0113002', 'RAUL', 'MACIAS', 'ANAYA', NULL, '@', '', '', 'Aprobado', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'alumno');
INSERT INTO users VALUES('211', '0', '2013-03-01', 'users/alumH.png', '', 'none', 'JOSE LUIS ', 'CUELLAR', 'MUÑOZ', NULL, 'cibertyk@hotmail.com', '(333) 605-2919', 'SUCRE', 'Pendiente', NULL, '0', '1', 'Alumno', 'Secundaria', 'H', 'none');
UNLOCK TABLES;



-- Dump de la Base de Datos Completo.