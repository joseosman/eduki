CREATE TABLE `user` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(255) NOT NULL,
	`auth_key` varchar(32) NOT NULL,
	`password_hash` varbinary(255) NOT NULL,
	`password_reset_token` varchar(255),
	`email` varbinary(255) NOT NULL,
	`status` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `username` (`username`),
	KEY `email` (`email`)
);
--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 'joseosman', 'EdFLy06686dd7iWXiuM-uzhVaFZPOT_k', '$2y$13$kmStvw0Va6ABdLrm.FO/ruKBj092/FwMrOJ2bfDf9qTTsQYLOFos2', NULL, 'joseosman@gmail.com', 10, 1460638174, 0, 1460638174, 0, 0);

-- --------------------------------------------------------

CREATE TABLE `roles` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`url_pagina_inicial` varchar(255),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `users_roles` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`user_id` bigint NOT NULL,
	`rol_id` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `paises` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`nombre_corto` varchar(3) NOT NULL,
	`nacionalidad` varchar(30) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`),
	KEY `nombre_corto` (`nombre_corto`)
);

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `nombre_corto`, `nacionalidad`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 'Bolivia', 'BOL', 'Boliviano', 1471231404, 1, 1471231404, 1, 0),
(2, 'Argentina', 'ARG', 'Argentino', 1472011254, 1, 1472011254, 1, 0);

-- --------------------------------------------------------


CREATE TABLE `estados` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`pais_id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `pais_id`, `nombre`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 1, 'Santa Cruz', 1471231406, 1, 1471231406, 1, 0),
(2, 1, 'La Paz', 1471231407, 1, 1471231407, 1, 0),
(3, 1, 'Cochabamba', 1471231407, 1, 1471231407, 1, 0),
(4, 1, 'Beni', 1471231407, 1, 1471231407, 1, 0),
(5, 1, 'Sucre', 1471231407, 1, 1471231407, 1, 0),
(6, 1, 'Tarija', 1471231407, 1, 1471231407, 1, 0),
(8, 2, 'Salta', 1472011254, 1, 1472011254, 1, 0),
(9, 2, 'La Plata', 1472011254, 1, 1472011254, 1, 0),
(10, 2, 'Buenos Aires', 1472011254, 1, 1472011254, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_asistencia`
--


CREATE TABLE `idiomas` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(60) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);


--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`id`, `nombre`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 'Español', 1471967387, 1, 1471967387, 1, 0),
(2, 'Ingles', 1471967401, 1, 1471967401, 1, 0),
(3, 'Portugues', 1471967413, 1, 1471967413, 1, 0),
(4, 'Coreano', 1471967424, 1, 1471967424, 1, 0),
(5, 'Chino', 1471967437, 1, 1471967437, 1, 0);

-- --------------------------------------------------------


CREATE TABLE `tipo_documentos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(30) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);


--
-- Volcado de datos para la tabla `tipo_documentos`
--

INSERT INTO `tipo_documentos` (`id`, `nombre`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 'Carnet de Identidad', 1471987668, 1, 1471987668, 1, 0),
(2, 'Pasaporte', 1471987752, 1, 1471987752, 1, 0);

-- --------------------------------------------------------


CREATE TABLE `religiones` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(30) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

--
-- Volcado de datos para la tabla `religiones`
--

INSERT INTO `religiones` (`id`, `nombre`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 'Cristiano Evangélico', 1471967469, 1, 1471967469, 1, 0),
(2, 'Católico', 1471967477, 1, 1471967477, 1, 0);

-- --------------------------------------------------------


CREATE TABLE `departamentos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(60) NOT NULL,
	`descripcion` varchar(255),
	`jefe_admin_id` bigint,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `cargos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(60) NOT NULL,
	`descripcion` varchar(255),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `estudiantes` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombres` varchar(60) NOT NULL,
	`ap_pat` varchar(60),
	`ap_mat` varchar(60),
	`fec_nac` DATE,
	`sex` varchar(1) NOT NULL,
	`ruta_foto` varchar(2000),
	`pais_id` smallint NOT NULL,
	`estado_id` smallint,
	`tipo_sangre` varchar(20),
	`email` varchar(255),
	`tel_fijo` varchar(20),
	`tel_movil` varchar(20),
	`tel_emergencia` varchar(20) NOT NULL,
	`contacto_emergencia` varchar(200) NOT NULL,
	`user_id` bigint,
	`tipo_doc_id` smallint NOT NULL,
	`num_doc_id` varchar(30) NOT NULL,
	`direcc` varchar(300),
	`fec_insc` DATETIME,
	`religion_id` smallint,
	`rude` varchar(22),
	`curso_id` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombres` (`nombres`),
	KEY `ap_pat` (`ap_pat`),
	KEY `ap_mat` (`ap_mat`)
);

CREATE TABLE `administrativos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombres` varchar(60) NOT NULL,
	`ap_pat` varchar(60),
	`ap_mat` varchar(60),
	`fec_nac` DATE,
	`sex` varchar(1) NOT NULL,
	`ruta_foto` varchar(2000),
	`pais_id` smallint NOT NULL,
	`estado_id` smallint,
	`tipo_sangre` varchar(20),
	`email` varchar(255),
	`tel_fijo` varchar(20),
	`tel_movil` varchar(20),
	`tel_emergencia` varchar(20) NOT NULL,
	`contacto_emergencia` varchar(200) NOT NULL,
	`user_id` bigint,
	`tipo_doc_id` smallint NOT NULL,
	`num_doc_id` varchar(30) NOT NULL,
	`direc` varchar(300),
	`fec_ini` DATETIME,
	`email_trabajo` varchar(255) NOT NULL,
	`tel_fijo_trabajo` varchar(20),
	`tel_movil_trabajo` varchar(20),
	`ubicacion_oficina` varchar(255),
	`departamento_id` smallint,
	`cargo_id` smallint,
	`nombre_afp` varchar(30),
	`numero_afp` varchar(15),
	`active` bool NOT NULL DEFAULT '1',
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombres` (`nombres`),
	KEY `ap_pat` (`ap_pat`),
	KEY `ap_mat` (`ap_mat`)
);

CREATE TABLE `profesores` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombres` varchar(60) NOT NULL,
	`ap_pat` varchar(60),
	`ap_mat` varchar(60),
	`fec_nac` DATE,
	`sex` varchar(1) NOT NULL,
	`ruta_foto` varchar(2000),
	`pais_id` smallint NOT NULL,
	`estado_id` smallint,
	`tipo_sangre` varchar(20),
	`email` varchar(255),
	`tel_fijo` varchar(20),
	`tel_movil` varchar(20),
	`tel_emergencia` varchar(20) NOT NULL,
	`contacto_emergencia` varchar(200) NOT NULL,
	`user_id` bigint,
	`tipo_doc_id` smallint NOT NULL,
	`num_doc_id` varchar(30) NOT NULL,
	`direc` varchar(300),
	`fec_ini` DATETIME,
	`email_trabajo` varchar(255) NOT NULL,
	`tel_fijo_trabajo` varchar(20),
	`tel_movil_trabajo` varchar(20),
	`aula_oficina` varchar(255),
	`nombre_afp` varchar(30),
	`num_de_afp` varchar(15),
	`active` bool NOT NULL DEFAULT '1',
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombres` (`nombres`),
	KEY `ap_pat` (`ap_pat`),
	KEY `ap_mat` (`ap_mat`)
);

CREATE TABLE `padres` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombres` varchar(60) NOT NULL,
	`ap_pat` varchar(60),
	`ap_mat` varchar(60),
	`fec_nac` DATE,
	`sex` varchar(1) NOT NULL,
	`ruta_foto` varchar(2000),
	`pais_id` smallint NOT NULL,
	`estado_id` smallint,
	`tipo_sangre` varchar(20),
	`email` varchar(255),
	`tel_fijo` varchar(20),
	`tel_movil` varchar(20),
	`tel_emergencia` varchar(20) NOT NULL,
	`contacto_emergencia` varchar(200) NOT NULL,
	`user_id` bigint,
	`tipo_doc_id` smallint NOT NULL,
	`num_doc_id` varchar(30) NOT NULL,
	`direc` varchar(300),
	`email_trabajo` varchar(255) NOT NULL,
	`tel_fijo_trabajo` varchar(20),
	`tel_movil_trabajo` varchar(20),
	`profesion` varchar(100),
	`nit` varchar(30),
	`razon_social` varchar(180),
	`conyuge_id` bigint,
	`active` bool NOT NULL DEFAULT '1',
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombres` (`nombres`),
	KEY `ap_pat` (`ap_pat`),
	KEY `ap_mat` (`ap_mat`)
);

CREATE TABLE `idiomas_estudiantes` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`idioma_id` smallint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `hijos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`padre_id` bigint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `historial_medico` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`estudiante_id` bigint,
	`profesor_id` bigint,
	`administrativo_id` bigint,
	`grados_temp` smallint,
	`presion_sistolica` smallint,
	`presion_diastolica` smallint,
	`sintomas` varchar(255) NOT NULL,
	`antecedente_sintomas` varchar(255),
	`diagnostico` varchar(255) NOT NULL,
	`medicacion_aplicada` varchar(255),
	`medicacion_sugerida` varchar(255),
	`recomendaciones` varchar(255),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `ciclos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(20) NOT NULL,
	`nombre_abr` varchar(3) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`),
	KEY `nombre_abr` (`nombre_abr`)
);

CREATE TABLE `paralelos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(1) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `cursos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(20) NOT NULL,
	`nombre_abr` varchar(3) NOT NULL,
	`ciclo_id` smallint NOT NULL,
	`orden_correlativo` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`),
	KEY `nombre_abr` (`nombre_abr`)
);

CREATE TABLE `turnos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(30) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `bimestres` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(30) NOT NULL,
	`mes_ini` smallint NOT NULL,
	`mes_fin` smallint NOT NULL,
	`active` bool NOT NULL DEFAULT '1',
	`editable` bool NOT NULL DEFAULT '1',
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `mes_ini` (`mes_ini`),
	KEY `mes_fin` (`mes_fin`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `materias` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(50) NOT NULL,
	`nombre_corto` varchar(50) NOT NULL,
	`grupo_id` smallint NOT NULL,
	`orden` smallint,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`),
	KEY `nombre_corto` (`nombre_corto`)
);

CREATE TABLE `tipo_actividades` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `actividades` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(250) NOT NULL,
	`desc` varchar(255),
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`profesor_id` bigint NOT NULL,
	`tipo_id` smallint NOT NULL,
	`bimestre_id` smallint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`puntaje_max` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `sistema_evaluacion` (
	`id` int NOT NULL AUTO_INCREMENT,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`profesor_id` bigint NOT NULL,
	`tipo_id` smallint NOT NULL,
	`porcentaje` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `estudiantes_actividades` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`profesor_id` bigint NOT NULL,
	`tipo_id` smallint NOT NULL,
	`bimestre_id` smallint NOT NULL,
	`actividad_id` bigint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`nota` DECIMAL(5,2) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `adjuntos_actividades` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`profesor_id` bigint NOT NULL,
	`tipo_id` smallint NOT NULL,
	`bimestre_id` smallint NOT NULL,
	`actividad_id` bigint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`estudiante_actividad_id` bigint NOT NULL,
	`ruta_adjunto` varchar(2000) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `semanas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`numero` int NOT NULL,
	`fecha_ini` DATETIME NOT NULL,
	`fecha_fin` DATETIME NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `fecha_ini` (`fecha_ini`),
	KEY `fecha_fin` (`fecha_fin`),
	KEY `numero` (`numero`)
);

CREATE TABLE `horarios_profesores` (
	`id` int NOT NULL AUTO_INCREMENT,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`profesor_id` bigint NOT NULL,
	`periodo_id` smallint NOT NULL,
	`dia` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `dia` (`dia`)
);

CREATE TABLE `planes_de_clases` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`profesor_id` bigint NOT NULL,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`paralelo_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`hora` smallint NOT NULL,
	`dia` smallint NOT NULL,
	`objetivo` varchar(255),
	`procedimiento` varchar(255),
	`pag_libro` varchar(100),
	`otros_recursos` varchar(255),
	`tareas` varchar(255),
	`fecha` DATETIME NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `fecha` (`fecha`),
	KEY `dia` (`dia`)
);

CREATE TABLE `asistencia` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`periodo_id` smallint NOT NULL,
	`profesor_id` bigint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`estado_id` smallint NOT NULL,
	`bimestre_id` smallint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`comentario` varchar(200),
	`licencia` varchar(300),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `fecha` (`fecha`)
);

CREATE TABLE `estado_asistencia` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(30) NOT NULL,
	`nombre_abr` varchar(3) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`),
	KEY `nombre_abr` (`nombre_abr`)
);

CREATE TABLE `llamadas_atencion` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`tipo_llamada_id` smallint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`profesor_id` bigint,
	`administrativo_id` bigint,
	`fecha` DATETIME NOT NULL,
	`explicacion` varchar(400) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `fecha` (`fecha`)
);

CREATE TABLE `tipo_llamada_atencion` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(60) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `seguimiento_llamadas_atencion` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`llamada_atencion_id` bigint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`seguimiento_realizado` varchar(400) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `fecha` (`fecha`)
);

CREATE TABLE `tipo_medidas_disciplinarias` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(60) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `medidas_disciplinarias_tomadas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`llamada_atencion_id` bigint NOT NULL,
	`tipo_medida_id` smallint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`explicacion` varchar(400) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `fecha` (`fecha`)
);

CREATE TABLE `periodos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(30),
	`hora_ini` TIME NOT NULL,
	`hora_fin` TIME NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `grupos_materias` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(30) NOT NULL,
	`descripcion` varchar(30) NOT NULL,
	`peso_porciento` int,
	`materia_padre_id` smallint,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`),
	KEY `materia_padre_id` (`materia_padre_id`)
);

CREATE TABLE `tipo_evento` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `calendario_eventos` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`tipo_evento_id` smallint NOT NULL,
	`fecha_ini` DATE NOT NULL,
	`fecha_fin` DATE NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `fecha_fin` (`fecha_fin`),
	KEY `fecha_ini` (`fecha_ini`)
);

CREATE TABLE `tipo_cuotas` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`monto` DECIMAL(8,2) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `frecuencia_cuotas` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`frecuencia` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `cuotas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`estudiante_id` bigint NOT NULL,
	`tipo_cuota_id` int NOT NULL,
	`frecuencia_id` smallint NOT NULL,
	`descuento` DECIMAL(8,2),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `tipo_becas` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `becas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`estudiante_id` bigint NOT NULL,
	`tipo_beca_id` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `facturas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`fecha` DATE NOT NULL,
	`fecha_vence` DATE NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`paralelo_id` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `fecha_vence` (`fecha_vence`)
);

CREATE TABLE `tipo_gastos` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `gastos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`fecha` DATE NOT NULL,
	`tipo_gasto_id` int NOT NULL,
	`metodo_pago_id` smallint NOT NULL,
	`monto` double(12,2),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`),
	KEY `fecha` (`fecha`)
);

CREATE TABLE `metodo_pago` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `rutas` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`zonas` varchar(255) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `zonas` (`zonas`)
);

CREATE TABLE `vehiculos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`placa` varchar(15) NOT NULL,
	`num_asientos` smallint NOT NULL,
	`datos_seguro` varchar(300),
	`status` bool NOT NULL DEFAULT '1',
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `placa` (`placa`)
);

CREATE TABLE `transporte` (
	`id` int NOT NULL AUTO_INCREMENT,
	`ruta_id` smallint NOT NULL,
	`vehiculo_id` smallint NOT NULL,
	`chofer_id` bigint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `libros` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`ISBN` varchar(100),
	`titulo` varchar(100) NOT NULL,
	`subtitulo` varchar(100),
	`autor` varchar(100) NOT NULL,
	`edicion` varchar(20),
	`ano_edicion` int,
	`ano_publicacion` int,
	`num_copias` smallint,
	`editorial` varchar(100),
	`pdf_link` varchar(300),
	`precio` DECIMAL(5,2),
	`categoria_id` smallint NOT NULL,
	`ubicacion` varchar(150),
	`num_paginas` int,
	`notas` varchar(300),
	`ruta_portada` varchar(2000),
	`codigo_barras` varchar(100),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `ISBN` (`ISBN`),
	KEY `titulo` (`titulo`),
	KEY `autor` (`autor`)
);

CREATE TABLE `libros_categoria` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `libros_prestamos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`libro_id` bigint NOT NULL,
	`estudiante_id` bigint,
	`profesor_id` bigint,
	`administrativo_id` bigint,
	`fecha_retiro` DATE NOT NULL,
	`fecha_plazo` DATE NOT NULL,
	`fecha_retorno` DATE NOT NULL,
	`multa` DECIMAL(5,2),
	`devuelto` bool NOT NULL DEFAULT '0',
	`multa_pagada` bool NOT NULL DEFAULT '0',
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `devuelto` (`devuelto`),
	KEY `fecha_retiro` (`fecha_retiro`)
);

CREATE TABLE `log` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`fecha` TIMESTAMP NOT NULL,
	`user_id` bigint NOT NULL,
	`secuencia` bigint NOT NULL,
	`accion` varchar(50) NOT NULL,
	`basedatos` varchar(50) NOT NULL,
	`consulta` varchar(3000) NOT NULL,
	PRIMARY KEY (`id`),
	KEY `fecha` (`fecha`),
	KEY `accion` (`accion`)
);

CREATE TABLE `datos_generales` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(255),
	`direc` varchar(300) NOT NULL,
	`tel_fijo` varchar(20),
	`email_contacto` varchar(255),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

--
-- Volcado de datos para la tabla `datos_generales`
--

INSERT INTO `datos_generales` (`id`, `nombre`, `descripcion`, `direc`, `tel_fijo`, `email_contacto`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 'Cambridge College', '', 'Carretera al Norte, Km 8 1/2', '33333335', 'cc@cambridge.edu', 1468418296, 1, 1468455005, 1, 0);

-- --------------------------------------------------------

CREATE TABLE `criterios_admision` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`peso` int NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombre` (`nombre`)
);

CREATE TABLE `postulaciones` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombres` varchar(60) NOT NULL,
	`apellido_paterno` varchar(60),
	`apellido_materno` varchar(60),
	`fecha_postulacion` DATE NOT NULL,
	`ciclo_postulado` smallint NOT NULL,
	`curso_postulado` smallint NOT NULL,
	`destacado_materias` varchar(200),
	`destacado_deportes` varchar(200),
	`destacado_eventos` varchar(200),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombres` (`nombres`),
	KEY `apellido_paterno` (`apellido_paterno`),
	KEY `apellido_materno` (`apellido_materno`)
);

CREATE TABLE `puntaje_admision` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`postulacion_id` bigint NOT NULL,
	`criterio_id` smallint NOT NULL,
	`puntaje` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `ciclos_turnos` (
	`id` smallint NOT NULL AUTO_INCREMENT,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`coord_admin_id` bigint,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `coord_admin_id` (`coord_admin_id`)
);

CREATE TABLE `ciclos_turnos_profesores` (
	`id` int NOT NULL AUTO_INCREMENT,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`profesor_id` bigint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `ciclos_turnos_cursos_paralelos` (
	`id` int NOT NULL AUTO_INCREMENT,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`paralelo_id` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `antecedentes_medicos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`estudiante_id` bigint,
	`profesor_id` bigint,
	`administrativo_id` bigint,
	`enfermedades_conocidas` varchar(300),
	`alergias_conocidas` varchar(300),
	`transtornos_conocidos` varchar(300),
	`sindromes_conocidos` varchar(300),
	`medicamentos_continuos` varchar(300),
	`nombre_medico_cabecera` varchar(180),
	`telefono_medico_cabecera` varchar(20),
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `becas_detalle` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`beca_id` bigint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`tipo_beca_id` smallint NOT NULL,
	`tipo_cuota_id` int NOT NULL,
	`descuento` DECIMAL(8,2),
	`numero_cuotas` smallint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `facturas_detalle` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`factura_id` bigint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`ciclo_id` smallint NOT NULL,
	`turno_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`paralelo_id` smallint NOT NULL,
	`cuota_id` bigint NOT NULL,
	`cantidad` int NOT NULL,
	`monto` double(8,2) NOT NULL,
	`descuento` double(8,2),
	`total` double(10,2) NOT NULL,
	`payed` bool NOT NULL DEFAULT '0',
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `payed` (`payed`)
);

CREATE TABLE `choferes` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombres` varchar(60) NOT NULL,
	`ap_pat` varchar(60),
	`ap_mat` varchar(60),
	`fec_nac` DATE,
	`sex` varchar(1) NOT NULL,
	`ruta_foto` varchar(2000),
	`pais_id` smallint NOT NULL,
	`estado_id` smallint,
	`tipo_sangre` varchar(20),
	`email` varchar(255),
	`tel_fijo` varchar(20),
	`tel_movil` varchar(20),
	`tel_emergencia` varchar(20) NOT NULL,
	`contacto_emergencia` varchar(200) NOT NULL,
	`user_id` bigint,
	`tipo_doc_id` smallint NOT NULL,
	`num_doc_id` varchar(30) NOT NULL,
	`direc` varchar(300),
	`categoria_licencia` char(1) NOT NULL,
	`num_licencia` varchar(15) NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `nombres` (`nombres`),
	KEY `ap_pat` (`ap_pat`),
	KEY `ap_mat` (`ap_mat`)
);

CREATE TABLE `transporte_detalle` (
	`id` int NOT NULL AUTO_INCREMENT,
	`transporte_id` int NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`created_at` int NOT NULL,
	`created_by` int NOT NULL,
	`updated_at` int NOT NULL,
	`updated_by` int NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

ALTER TABLE `users_roles` ADD CONSTRAINT `users_roles_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `users_roles` ADD CONSTRAINT `users_roles_fk1` FOREIGN KEY (`rol_id`) REFERENCES `roles`(`id`);

ALTER TABLE `estados` ADD CONSTRAINT `estados_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk1` FOREIGN KEY (`estado_id`) REFERENCES `estados`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk2` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk3` FOREIGN KEY (`tipo_doc_id`) REFERENCES `tipo_documentos`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk4` FOREIGN KEY (`religion_id`) REFERENCES `religiones`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk5` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk1` FOREIGN KEY (`estado_id`) REFERENCES `estados`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk2` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk3` FOREIGN KEY (`tipo_doc_id`) REFERENCES `tipo_documentos`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk4` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk5` FOREIGN KEY (`cargo_id`) REFERENCES `cargos`(`id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises`(`id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk1` FOREIGN KEY (`estado_id`) REFERENCES `estados`(`id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk2` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk3` FOREIGN KEY (`tipo_doc_id`) REFERENCES `tipo_documentos`(`id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises`(`id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk1` FOREIGN KEY (`estado_id`) REFERENCES `estados`(`id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk2` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk3` FOREIGN KEY (`tipo_doc_id`) REFERENCES `tipo_documentos`(`id`);

ALTER TABLE `idiomas_estudiantes` ADD CONSTRAINT `idiomas_estudiantes_fk0` FOREIGN KEY (`idioma_id`) REFERENCES `idiomas`(`id`);

ALTER TABLE `idiomas_estudiantes` ADD CONSTRAINT `idiomas_estudiantes_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `hijos` ADD CONSTRAINT `hijos_fk0` FOREIGN KEY (`padre_id`) REFERENCES `padres`(`id`);

ALTER TABLE `hijos` ADD CONSTRAINT `hijos_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `historial_medico` ADD CONSTRAINT `historial_medico_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `historial_medico` ADD CONSTRAINT `historial_medico_fk1` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `historial_medico` ADD CONSTRAINT `historial_medico_fk2` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativos`(`id`);

ALTER TABLE `cursos` ADD CONSTRAINT `cursos_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `materias` ADD CONSTRAINT `materias_fk0` FOREIGN KEY (`grupo_id`) REFERENCES `grupos_materias`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk3` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk4` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk5` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_actividades`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk6` FOREIGN KEY (`bimestre_id`) REFERENCES `bimestres`(`id`);

ALTER TABLE `sistema_evaluacion` ADD CONSTRAINT `sistema_evaluacion_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `sistema_evaluacion` ADD CONSTRAINT `sistema_evaluacion_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `sistema_evaluacion` ADD CONSTRAINT `sistema_evaluacion_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `sistema_evaluacion` ADD CONSTRAINT `sistema_evaluacion_fk3` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `sistema_evaluacion` ADD CONSTRAINT `sistema_evaluacion_fk4` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `sistema_evaluacion` ADD CONSTRAINT `sistema_evaluacion_fk5` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_actividades`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk3` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk4` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk5` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_actividades`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk6` FOREIGN KEY (`bimestre_id`) REFERENCES `bimestres`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk7` FOREIGN KEY (`actividad_id`) REFERENCES `actividades`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk8` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk3` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk4` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk5` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_actividades`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk6` FOREIGN KEY (`bimestre_id`) REFERENCES `bimestres`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk7` FOREIGN KEY (`actividad_id`) REFERENCES `actividades`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk8` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk9` FOREIGN KEY (`estudiante_actividad_id`) REFERENCES `estudiantes_actividades`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk3` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk4` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk5` FOREIGN KEY (`periodo_id`) REFERENCES `periodos`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk0` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk1` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk2` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk3` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk4` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk5` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk3` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk4` FOREIGN KEY (`periodo_id`) REFERENCES `periodos`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk5` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk6` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk7` FOREIGN KEY (`estado_id`) REFERENCES `estado_asistencia`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk8` FOREIGN KEY (`bimestre_id`) REFERENCES `bimestres`(`id`);

ALTER TABLE `llamadas_atencion` ADD CONSTRAINT `llamadas_atencion_fk0` FOREIGN KEY (`tipo_llamada_id`) REFERENCES `tipo_llamada_atencion`(`id`);

ALTER TABLE `llamadas_atencion` ADD CONSTRAINT `llamadas_atencion_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `llamadas_atencion` ADD CONSTRAINT `llamadas_atencion_fk2` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `llamadas_atencion` ADD CONSTRAINT `llamadas_atencion_fk3` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativos`(`id`);

ALTER TABLE `seguimiento_llamadas_atencion` ADD CONSTRAINT `seguimiento_llamadas_atencion_fk0` FOREIGN KEY (`llamada_atencion_id`) REFERENCES `llamadas_atencion`(`id`);

ALTER TABLE `medidas_disciplinarias_tomadas` ADD CONSTRAINT `medidas_disciplinarias_tomadas_fk0` FOREIGN KEY (`llamada_atencion_id`) REFERENCES `llamadas_atencion`(`id`);

ALTER TABLE `medidas_disciplinarias_tomadas` ADD CONSTRAINT `medidas_disciplinarias_tomadas_fk1` FOREIGN KEY (`tipo_medida_id`) REFERENCES `tipo_medidas_disciplinarias`(`id`);

ALTER TABLE `calendario_eventos` ADD CONSTRAINT `calendario_eventos_fk0` FOREIGN KEY (`tipo_evento_id`) REFERENCES `tipo_evento`(`id`);

ALTER TABLE `cuotas` ADD CONSTRAINT `cuotas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `cuotas` ADD CONSTRAINT `cuotas_fk1` FOREIGN KEY (`tipo_cuota_id`) REFERENCES `tipo_cuotas`(`id`);

ALTER TABLE `cuotas` ADD CONSTRAINT `cuotas_fk2` FOREIGN KEY (`frecuencia_id`) REFERENCES `frecuencia_cuotas`(`id`);

ALTER TABLE `becas` ADD CONSTRAINT `becas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `becas` ADD CONSTRAINT `becas_fk1` FOREIGN KEY (`tipo_beca_id`) REFERENCES `tipo_becas`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk1` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk2` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk3` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk4` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos`(`id`);

ALTER TABLE `gastos` ADD CONSTRAINT `gastos_fk0` FOREIGN KEY (`tipo_gasto_id`) REFERENCES `tipo_gastos`(`id`);

ALTER TABLE `gastos` ADD CONSTRAINT `gastos_fk1` FOREIGN KEY (`metodo_pago_id`) REFERENCES `metodo_pago`(`id`);

ALTER TABLE `transporte` ADD CONSTRAINT `transporte_fk0` FOREIGN KEY (`ruta_id`) REFERENCES `rutas`(`id`);

ALTER TABLE `transporte` ADD CONSTRAINT `transporte_fk1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos`(`id`);

ALTER TABLE `transporte` ADD CONSTRAINT `transporte_fk2` FOREIGN KEY (`chofer_id`) REFERENCES `choferes`(`id`);

ALTER TABLE `libros` ADD CONSTRAINT `libros_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `libros_categoria`(`id`);

ALTER TABLE `libros_prestamos` ADD CONSTRAINT `libros_prestamos_fk0` FOREIGN KEY (`libro_id`) REFERENCES `libros`(`id`);

ALTER TABLE `libros_prestamos` ADD CONSTRAINT `libros_prestamos_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `libros_prestamos` ADD CONSTRAINT `libros_prestamos_fk2` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `libros_prestamos` ADD CONSTRAINT `libros_prestamos_fk3` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativos`(`id`);

ALTER TABLE `log` ADD CONSTRAINT `log_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `postulaciones` ADD CONSTRAINT `postulaciones_fk0` FOREIGN KEY (`ciclo_postulado`) REFERENCES `ciclos`(`id`);

ALTER TABLE `postulaciones` ADD CONSTRAINT `postulaciones_fk1` FOREIGN KEY (`curso_postulado`) REFERENCES `cursos`(`id`);

ALTER TABLE `puntaje_admision` ADD CONSTRAINT `puntaje_admision_fk0` FOREIGN KEY (`postulacion_id`) REFERENCES `postulaciones`(`id`);

ALTER TABLE `puntaje_admision` ADD CONSTRAINT `puntaje_admision_fk1` FOREIGN KEY (`criterio_id`) REFERENCES `criterios_admision`(`id`);

ALTER TABLE `ciclos_turnos` ADD CONSTRAINT `ciclos_turnos_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `ciclos_turnos` ADD CONSTRAINT `ciclos_turnos_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `ciclos_turnos_profesores` ADD CONSTRAINT `ciclos_turnos_profesores_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `ciclos_turnos_profesores` ADD CONSTRAINT `ciclos_turnos_profesores_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `ciclos_turnos_profesores` ADD CONSTRAINT `ciclos_turnos_profesores_fk2` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `ciclos_turnos_cursos_paralelos` ADD CONSTRAINT `ciclos_turnos_cursos_paralelos_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `ciclos_turnos_cursos_paralelos` ADD CONSTRAINT `ciclos_turnos_cursos_paralelos_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `ciclos_turnos_cursos_paralelos` ADD CONSTRAINT `ciclos_turnos_cursos_paralelos_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `ciclos_turnos_cursos_paralelos` ADD CONSTRAINT `ciclos_turnos_cursos_paralelos_fk3` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos`(`id`);

ALTER TABLE `antecedentes_medicos` ADD CONSTRAINT `antecedentes_medicos_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `antecedentes_medicos` ADD CONSTRAINT `antecedentes_medicos_fk1` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `antecedentes_medicos` ADD CONSTRAINT `antecedentes_medicos_fk2` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativos`(`id`);

ALTER TABLE `becas_detalle` ADD CONSTRAINT `becas_detalle_fk0` FOREIGN KEY (`beca_id`) REFERENCES `becas`(`id`);

ALTER TABLE `becas_detalle` ADD CONSTRAINT `becas_detalle_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `becas_detalle` ADD CONSTRAINT `becas_detalle_fk2` FOREIGN KEY (`tipo_beca_id`) REFERENCES `tipo_becas`(`id`);

ALTER TABLE `becas_detalle` ADD CONSTRAINT `becas_detalle_fk3` FOREIGN KEY (`tipo_cuota_id`) REFERENCES `tipo_cuotas`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk0` FOREIGN KEY (`factura_id`) REFERENCES `facturas`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk2` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk3` FOREIGN KEY (`turno_id`) REFERENCES `turnos`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk4` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk5` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk6` FOREIGN KEY (`cuota_id`) REFERENCES `cuotas`(`id`);

ALTER TABLE `choferes` ADD CONSTRAINT `choferes_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises`(`id`);

ALTER TABLE `choferes` ADD CONSTRAINT `choferes_fk1` FOREIGN KEY (`estado_id`) REFERENCES `estados`(`id`);

ALTER TABLE `choferes` ADD CONSTRAINT `choferes_fk2` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `choferes` ADD CONSTRAINT `choferes_fk3` FOREIGN KEY (`tipo_doc_id`) REFERENCES `tipo_documentos`(`id`);

ALTER TABLE `transporte_detalle` ADD CONSTRAINT `transporte_detalle_fk0` FOREIGN KEY (`transporte_id`) REFERENCES `transporte`(`id`);

ALTER TABLE `transporte_detalle` ADD CONSTRAINT `transporte_detalle_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

