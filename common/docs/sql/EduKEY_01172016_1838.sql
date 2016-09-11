CREATE TABLE `usuarios` (
	`usr_id` bigint NOT NULL AUTO_INCREMENT,
	`usr_nombre` varchar(100) NOT NULL DEFAULT ' ',
	`usr_pwd` varchar(255) NOT NULL DEFAULT ' ',
	`usr_activo` bool NOT NULL DEFAULT ' ',
	`usr_idioma_default` varchar(2) NOT NULL DEFAULT ' ',
	`usr_add_at` DATETIME NOT NULL DEFAULT ' ',
	`usr_id_add_by` bigint NOT NULL DEFAULT ' ',
	`usr_upd_at` DATETIME NOT NULL DEFAULT ' ',
	`usr_id_upd_by` bigint NOT NULL DEFAULT ' ',
	`usr_eliminado` bool NOT NULL DEFAULT ' ',
	PRIMARY KEY (`usr_id`)
);

CREATE TABLE `roles` (
	`rol_id` smallint NOT NULL AUTO_INCREMENT,
	`rol_nombre` varchar(100) NOT NULL,
	`rol_url_pagina_inicial` varchar(255),
	`rol_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`rol_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`rol_eliminado` bool NOT NULL,
	PRIMARY KEY (`rol_id`)
);

CREATE TABLE `usuarios_roles` (
	`url_id` bigint NOT NULL AUTO_INCREMENT,
	`usr_id` bigint NOT NULL,
	`rol_id` smallint NOT NULL,
	`url_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`url_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`url_eliminado` bool NOT NULL,
	PRIMARY KEY (`url_id`)
);

CREATE TABLE `paises` (
	`pai_id` smallint NOT NULL AUTO_INCREMENT,
	`pai_nombre` varchar(100) NOT NULL,
	`pai_nombre_abreviado` varchar(3) NOT NULL,
	`pai_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`pai_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`pai_eliminado` bool NOT NULL,
	PRIMARY KEY (`pai_id`)
);

CREATE TABLE `estados` (
	`sta_id` smallint NOT NULL AUTO_INCREMENT,
	`pai_id` smallint NOT NULL,
	`sta_nombre` varchar(100) NOT NULL,
	`sta_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`sta_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`sta_eliminado` bool NOT NULL,
	PRIMARY KEY (`sta_id`)
);

CREATE TABLE `idiomas` (
	`idi_id` smallint NOT NULL AUTO_INCREMENT,
	`idi_nombre` varchar(60) NOT NULL,
	`idi_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`idi_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`idi_eliminado` bool NOT NULL,
	PRIMARY KEY (`idi_id`)
);

CREATE TABLE `nacionalidades` (
	`nac_id` smallint NOT NULL AUTO_INCREMENT,
	`pai_id` smallint NOT NULL,
	`nac_nombre` varchar(150) NOT NULL,
	`nac_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`nac_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`nac_eliminado` bool NOT NULL,
	PRIMARY KEY (`nac_id`)
);

CREATE TABLE `tipo_documentos` (
	`tid_id` smallint NOT NULL AUTO_INCREMENT,
	`tid_nombre` varchar(30) NOT NULL,
	`tid_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`tid_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`tid_eliminado` bool NOT NULL,
	PRIMARY KEY (`tid_id`)
);

CREATE TABLE `religiones` (
	`rel_id` smallint NOT NULL AUTO_INCREMENT,
	`rel_nombre` varchar(30) NOT NULL,
	`rel_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`rel_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`rel_eliminado` bool NOT NULL,
	PRIMARY KEY (`rel_id`)
);

CREATE TABLE `departamentos` (
	`dpt_id` smallint NOT NULL AUTO_INCREMENT,
	`dpt_nombre` varchar(60) NOT NULL,
	`dpt_descripcion` varchar(255),
	`dpt_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`dpt_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`dpt_eliminado` bool NOT NULL,
	PRIMARY KEY (`dpt_id`)
);

CREATE TABLE `cargos` (
	`car_id` smallint NOT NULL AUTO_INCREMENT,
	`car_nombre` varchar(60) NOT NULL,
	`car_descripcion` varchar(255),
	`car_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`car_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`car_eliminado` bool NOT NULL,
	PRIMARY KEY (`car_id`)
);

CREATE TABLE `condicion` (
	`cnd_id` smallint NOT NULL AUTO_INCREMENT,
	`cnd_nombre` varchar(30) NOT NULL,
	`cnd_cuota_ini` smallint NOT NULL,
	`cnd_cuota_fin` smallint NOT NULL,
	`cnd_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`cnd_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`cnd_eliminado` bool NOT NULL,
	PRIMARY KEY (`cnd_id`)
);

CREATE TABLE `estudiantes` (
	`est_id` bigint NOT NULL AUTO_INCREMENT,
	`est_nombres` varchar(60) NOT NULL,
	`est_ap_pat` varchar(60),
	`est_ap_mat` varchar(60),
	`est_fec_nac` DATE,
	`est_sex` varchar(1) NOT NULL,
	`est_ruta_foto` varchar(2000),
	`pai_id` smallint NOT NULL,
	`sta_id` smallint,
	`nac_id` smallint NOT NULL,
	`est_tipo_sangre` varchar(20),
	`est_email` varchar(255),
	`est_tel_fijo` varchar(20),
	`est_tel_movil` varchar(20),
	`est_tel_emergencia` varchar(20) NOT NULL,
	`est_contacto_emergencia` varchar(200) NOT NULL,
	`est_fec_insc` DATETIME,
	`rel_id` smallint,
	`usr_id` bigint,
	`tid_id` smallint NOT NULL,
	`est_num_doc_id` varchar(30) NOT NULL,
	`est_rude` varchar(22),
	`cur_id` smallint NOT NULL,
	`cnd_id` smallint NOT NULL,
	`est_direc` varchar(300),
	`est_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`est_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`est_eliminado` bool NOT NULL,
	PRIMARY KEY (`est_id`)
);

CREATE TABLE `administrativos` (
	`adm_id` int NOT NULL AUTO_INCREMENT,
	`adm_nombres` varchar(60) NOT NULL,
	`adm_ap_pat` varchar(60),
	`adm_ap_mat` varchar(60),
	`adm_fec_nac` DATE,
	`adm_sex` varchar(1) NOT NULL,
	`adm_ruta_foto` varchar(2000),
	`pai_id` smallint NOT NULL,
	`sta_id` smallint,
	`nac_id` smallint NOT NULL,
	`adm_tipo_sangre` varchar(20),
	`adm_email` varchar(255),
	`adm_tel_fijo` varchar(20),
	`adm_tel_movil` varchar(20),
	`adm_tel_emergencia` varchar(20) NOT NULL,
	`adm_contacto_emergencia` varchar(200) NOT NULL,
	`adm_direc` varchar(300),
	`adm_fec_ini` DATETIME,
	`adm_email_trabajo` varchar(255) NOT NULL,
	`adm_tel_fijo_trabajo` varchar(20),
	`adm_tel_movil_trabajo` varchar(20),
	`adm_ubicacion_oficina` varchar(255),
	`dpt_id` smallint,
	`car_id` smallint,
	`adm_superior_a_cargo` int,
	`usr_id` bigint,
	`tid_id` smallint NOT NULL,
	`adm_num_doc_id` varchar(30) NOT NULL,
	`adm_nua_de_afp` varchar(15),
	`adm_activo` bool NOT NULL,
	`adm_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`adm_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`adm_eliminado` bool NOT NULL,
	PRIMARY KEY (`adm_id`)
);

CREATE TABLE `profesores` (
	`pro_id` int NOT NULL AUTO_INCREMENT,
	`pro_nombres` varchar(60) NOT NULL,
	`pro_ap_pat` varchar(60),
	`pro_ap_mat` varchar(60),
	`pro_fec_nac` DATE,
	`pro_sex` varchar(1) NOT NULL,
	`pro_ruta_foto` varchar(2000),
	`pai_id` smallint NOT NULL,
	`sta_id` smallint,
	`nac_id` smallint NOT NULL,
	`pro_tipo_sangre` varchar(20),
	`pro_email` varchar(255),
	`pro_tel_fijo` varchar(20),
	`pro_tel_movil` varchar(20),
	`pro_tel_emergencia` varchar(20) NOT NULL,
	`pro_contacto_emergencia` varchar(200) NOT NULL,
	`pro_direc` varchar(300),
	`pro_fec_ini` DATETIME,
	`pro_email_trabajo` varchar(255) NOT NULL,
	`pro_tel_fijo_trabajo` varchar(20),
	`pro_tel_movil_trabajo` varchar(20),
	`pro_aula_oficina` varchar(255),
	`pro_preescolar` bool NOT NULL,
	`adm_id_coor_pre` int,
	`pro_primaria` bool,
	`adm_id_coor_pri` int,
	`pro_secundaria` bool,
	`adm_id_coor_sec` int,
	`usr_id` bigint,
	`tid_id` smallint NOT NULL,
	`pro_num_doc_id` varchar(30) NOT NULL,
	`pro_nua_de_afp` varchar(15),
	`pro_activo` bool NOT NULL,
	`pro_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`pro_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`pro_eliminado` bool NOT NULL,
	PRIMARY KEY (`pro_id`)
);

CREATE TABLE `padres` (
	`pad_id` bigint NOT NULL AUTO_INCREMENT,
	`pad_nombres` varchar(60) NOT NULL,
	`pad_ap_pat` varchar(60),
	`pad_ap_mat` varchar(60),
	`pad_fec_nac` DATE,
	`pad_sex` varchar(1) NOT NULL,
	`pad_ruta_foto` varchar(2000),
	`pai_id` smallint NOT NULL,
	`sta_id` smallint,
	`nac_id` smallint NOT NULL,
	`pad_email` varchar(255),
	`pad_tel_fijo` varchar(20),
	`pro_tel_movil` varchar(20),
	`pad_direc` varchar(300),
	`pad_email_trabajo` varchar(255) NOT NULL,
	`pad_tel_fijo_trabajo` varchar(20),
	`pad_tel_movil_trabajo` varchar(20),
	`pad_profesion` varchar(100),
	`usr_id` bigint,
	`tid_id` smallint NOT NULL,
	`pad_num_doc_id` varchar(30) NOT NULL,
	`pad_nit` varchar(30),
	`pad_razon_social` varchar(180),
	`pad_activo` bool NOT NULL,
	`pad_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`pad_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`pad_eliminado` bool NOT NULL,
	PRIMARY KEY (`pad_id`)
);

CREATE TABLE `idiomas_estudiantes` (
	`ide_id` bigint NOT NULL AUTO_INCREMENT,
	`idi_id` smallint NOT NULL,
	`est_id` bigint NOT NULL,
	`ide_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`ide_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`ide_eliminado` bool NOT NULL,
	PRIMARY KEY (`ide_id`)
);

CREATE TABLE `hijos` (
	`hio_id` bigint NOT NULL AUTO_INCREMENT,
	`pad_id` bigint NOT NULL,
	`est_id` bigint NOT NULL,
	`hio_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`hio_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`hio_eliminado` bool NOT NULL,
	PRIMARY KEY (`hio_id`)
);

CREATE TABLE `historial_salud` (
	`hse_id` bigint NOT NULL AUTO_INCREMENT,
	`usr_id` bigint NOT NULL,
	`hse_grados_temp` smallint,
	`hse_presion_sistolica` smallint,
	`hse_presion_diastolica` smallint,
	`hse_sintomas` varchar(255) NOT NULL,
	`hse_antecedente_sintomas` varchar(255),
	`hse_diagnostico` varchar(255) NOT NULL,
	`hse_medicacion_aplicada` varchar(255),
	`hse_medicacion_sugerida` varchar(255),
	`hse_recomendaciones` varchar(255),
	`hse_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`hse_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`hse_eliminado` bool NOT NULL,
	PRIMARY KEY (`hse_id`)
);

ALTER TABLE `usuarios_roles` ADD CONSTRAINT `usuarios_roles_fk0` FOREIGN KEY (`usr_id`) REFERENCES `usuarios`(`usr_id`);

ALTER TABLE `usuarios_roles` ADD CONSTRAINT `usuarios_roles_fk1` FOREIGN KEY (`rol_id`) REFERENCES `roles`(`rol_id`);

ALTER TABLE `estados` ADD CONSTRAINT `estados_fk0` FOREIGN KEY (`pai_id`) REFERENCES `paises`(`pai_id`);

ALTER TABLE `nacionalidades` ADD CONSTRAINT `nacionalidades_fk0` FOREIGN KEY (`pai_id`) REFERENCES `paises`(`pai_id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk0` FOREIGN KEY (`pai_id`) REFERENCES `paises`(`pai_id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk1` FOREIGN KEY (`sta_id`) REFERENCES `estados`(`sta_id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk2` FOREIGN KEY (`nac_id`) REFERENCES `nacionalidades`(`nac_id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk3` FOREIGN KEY (`rel_id`) REFERENCES `religiones`(`rel_id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk4` FOREIGN KEY (`usr_id`) REFERENCES `usuarios`(`usr_id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk5` FOREIGN KEY (`tid_id`) REFERENCES `tipo_documentos`(`tid_id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk6` FOREIGN KEY (`cnd_id`) REFERENCES `condicion`(`cnd_id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk0` FOREIGN KEY (`pai_id`) REFERENCES `paises`(`pai_id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk1` FOREIGN KEY (`sta_id`) REFERENCES `estados`(`sta_id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk2` FOREIGN KEY (`nac_id`) REFERENCES `nacionalidades`(`nac_id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk3` FOREIGN KEY (`dpt_id`) REFERENCES `departamentos`(`dpt_id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk4` FOREIGN KEY (`car_id`) REFERENCES `cargos`(`car_id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk5` FOREIGN KEY (`usr_id`) REFERENCES `usuarios`(`usr_id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk6` FOREIGN KEY (`tid_id`) REFERENCES `tipo_documentos`(`tid_id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk0` FOREIGN KEY (`pai_id`) REFERENCES `paises`(`pai_id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk1` FOREIGN KEY (`sta_id`) REFERENCES `estados`(`sta_id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk2` FOREIGN KEY (`nac_id`) REFERENCES `nacionalidades`(`nac_id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk3` FOREIGN KEY (`adm_id_coor_pre`) REFERENCES `administrativos`(`adm_id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk4` FOREIGN KEY (`adm_id_coor_pri`) REFERENCES `administrativos`(`adm_id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk5` FOREIGN KEY (`adm_id_coor_sec`) REFERENCES `administrativos`(`adm_id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk6` FOREIGN KEY (`usr_id`) REFERENCES `usuarios`(`usr_id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk7` FOREIGN KEY (`tid_id`) REFERENCES `tipo_documentos`(`tid_id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk0` FOREIGN KEY (`pai_id`) REFERENCES `paises`(`pai_id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk1` FOREIGN KEY (`sta_id`) REFERENCES `estados`(`sta_id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk2` FOREIGN KEY (`nac_id`) REFERENCES `nacionalidades`(`nac_id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk3` FOREIGN KEY (`usr_id`) REFERENCES `usuarios`(`usr_id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk4` FOREIGN KEY (`tid_id`) REFERENCES `tipo_documentos`(`tid_id`);

ALTER TABLE `idiomas_estudiantes` ADD CONSTRAINT `idiomas_estudiantes_fk0` FOREIGN KEY (`idi_id`) REFERENCES `idiomas`(`idi_id`);

ALTER TABLE `idiomas_estudiantes` ADD CONSTRAINT `idiomas_estudiantes_fk1` FOREIGN KEY (`est_id`) REFERENCES `estudiantes`(`est_id`);

ALTER TABLE `hijos` ADD CONSTRAINT `hijos_fk0` FOREIGN KEY (`pad_id`) REFERENCES `padres`(`pad_id`);

ALTER TABLE `hijos` ADD CONSTRAINT `hijos_fk1` FOREIGN KEY (`est_id`) REFERENCES `estudiantes`(`est_id`);

ALTER TABLE `historial_salud` ADD CONSTRAINT `historial_salud_fk0` FOREIGN KEY (`usr_id`) REFERENCES `usuarios`(`usr_id`);

