CREATE TABLE `usr_usuarios` (
	`usr_id` bigint NOT NULL AUTO_INCREMENT,
	`usr_nombre` varchar(100) NOT NULL,
	`usr_pwd` varchar(255) NOT NULL,
	`usr_activo` bool NOT NULL DEFAULT '1',
	`usr_idioma_default` varchar(2) NOT NULL,
	`usr_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`usr_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`usr_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`usr_id`)
);

CREATE TABLE `usr_roles` (
	`rol_id` smallint NOT NULL AUTO_INCREMENT,
	`rol_nombre` varchar(100) NOT NULL,
	`rol_url_pagina_inicial` varchar(255),
	`rol_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`rol_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`rol_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`rol_id`)
);

CREATE TABLE `usr_usuarios_roles` (
	`url_id` bigint NOT NULL AUTO_INCREMENT,
	`usr_id` bigint NOT NULL,
	`rol_id` smallint NOT NULL,
	`url_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`url_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`url_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`url_id`)
);

CREATE TABLE `lug_paises` (
	`pai_id` smallint NOT NULL AUTO_INCREMENT,
	`pai_nombre` varchar(100) NOT NULL,
	`pai_nombre_abreviado` varchar(3) NOT NULL,
	`pai_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`pai_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`pai_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`pai_id`)
);

CREATE TABLE `lug_estados` (
	`sta_id` smallint NOT NULL AUTO_INCREMENT,
	`pai_id` smallint NOT NULL,
	`sta_nombre` varchar(100) NOT NULL,
	`sta_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`sta_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`sta_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`sta_id`)
);

CREATE TABLE `lug_idiomas` (
	`idi_id` smallint NOT NULL AUTO_INCREMENT,
	`idi_nombre` varchar(60) NOT NULL,
	`idi_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`idi_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`idi_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`idi_id`)
);

CREATE TABLE `lug_nacionalidades` (
	`nac_id` smallint NOT NULL AUTO_INCREMENT,
	`pai_id` smallint NOT NULL,
	`nac_nombre` varchar(150) NOT NULL,
	`nac_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`nac_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`nac_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`nac_id`)
);

CREATE TABLE `gen_tipo_documentos` (
	`tid_id` smallint NOT NULL AUTO_INCREMENT,
	`tid_nombre` varchar(30) NOT NULL,
	`tid_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`tid_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`tid_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`tid_id`)
);

CREATE TABLE `lug_religiones` (
	`rel_id` smallint NOT NULL AUTO_INCREMENT,
	`rel_nombre` varchar(30) NOT NULL,
	`rel_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`rel_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`rel_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`rel_id`)
);

CREATE TABLE `gen_departamentos` (
	`dpt_id` smallint NOT NULL AUTO_INCREMENT,
	`dpt_nombre` varchar(60) NOT NULL,
	`dpt_descripcion` varchar(255),
	`dpt_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`dpt_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`dpt_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`dpt_id`)
);

CREATE TABLE `gen_cargos` (
	`car_id` smallint NOT NULL AUTO_INCREMENT,
	`car_nombre` varchar(60) NOT NULL,
	`car_descripcion` varchar(255),
	`car_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`car_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`car_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`car_id`)
);

CREATE TABLE `gen_condicion` (
	`cnd_id` smallint NOT NULL AUTO_INCREMENT,
	`cnd_nombre` varchar(30) NOT NULL,
	`cnd_cuota_ini` smallint NOT NULL,
	`cnd_cuota_fin` smallint NOT NULL,
	`cnd_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`cnd_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`cnd_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`cnd_id`)
);

CREATE TABLE `per_estudiantes` (
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
	`est_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`est_id`)
);

CREATE TABLE `per_administrativos` (
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
	`adm_activo` bool NOT NULL DEFAULT '0',
	`adm_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`adm_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`adm_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`adm_id`)
);

CREATE TABLE `per_profesores` (
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
	`pro_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`pro_id`)
);

CREATE TABLE `per_padres` (
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
	`pad_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`pad_id`)
);

CREATE TABLE `per_idiomas_estudiantes` (
	`ide_id` bigint NOT NULL AUTO_INCREMENT,
	`idi_id` smallint NOT NULL,
	`est_id` bigint NOT NULL,
	`ide_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`ide_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`ide_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`ide_id`)
);

CREATE TABLE `per_hijos` (
	`hio_id` bigint NOT NULL AUTO_INCREMENT,
	`pad_id` bigint NOT NULL,
	`est_id` bigint NOT NULL,
	`hio_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`hio_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`hio_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`hio_id`)
);

CREATE TABLE `per_historial_salud` (
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
	`hse_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`hse_id`)
);

CREATE TABLE `aca_ciclos` (
	`cic_id` smallint NOT NULL AUTO_INCREMENT,
	`cic_nombre` varchar(20) NOT NULL,
	`cic_nombre_abr` varchar(3) NOT NULL,
	`cic_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`cic_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`cic_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`cic_id`)
);

CREATE TABLE `aca_paralelos` (
	`par_id` smallint NOT NULL AUTO_INCREMENT,
	`par_nombre` varchar(1) NOT NULL,
	`par_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`par_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`par_id`)
);

CREATE TABLE `aca_cursos` (
	`cur_id` smallint NOT NULL AUTO_INCREMENT,
	`cur_nombre` varchar(20) NOT NULL,
	`cur_nombre_abr` varchar(3) NOT NULL,
	`cur_nro_aula` varchar(10) NOT NULL,
	`cic_id` smallint NOT NULL,
	`par_id` smallint NOT NULL,
	`tur_id` smallint NOT NULL,
	`cur_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`cur_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`cur_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`cur_id`)
);

CREATE TABLE `aca_turnos` (
	`tur_id` smallint NOT NULL AUTO_INCREMENT,
	`tur_nombre` varchar(30) NOT NULL,
	`tur_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`tur_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`tur_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`tur_id`)
);

CREATE TABLE `aca_bimestres` (
	`bim_id` smallint NOT NULL AUTO_INCREMENT,
	`bim_nombre` varchar(30) NOT NULL,
	`bim_mes_ini` smallint NOT NULL,
	`bim_mes_fin` smallint NOT NULL,
	`bim_activo` bool NOT NULL,
	`bim_editable` bool NOT NULL,
	`bim_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`bim_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`bim_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`bim_id`)
);

CREATE TABLE `aca_materias` (
	`mat_id` smallint NOT NULL AUTO_INCREMENT,
	`mat_nombre` varchar(50) NOT NULL,
	`mat_nombre_corto` varchar(50) NOT NULL,
	`mat_orden` smallint,
	`mat_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`mat_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`mat_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`mat_id`)
);

CREATE TABLE `aca_asignacion_materias` (
	`ama_id` bigint NOT NULL AUTO_INCREMENT,
	`ama_orden` smallint NOT NULL,
	`ama_grupo` smallint NOT NULL,
	`mat_id_padre` smallint,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`ama_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`ama_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`ama_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`ama_id`)
);

CREATE TABLE `aca_tipos_actividades` (
	`tia_id` smallint NOT NULL AUTO_INCREMENT,
	`tia_nombre` varchar(100) NOT NULL,
	`tia_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`tia_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`tia_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`tia_id`)
);

CREATE TABLE `aca_actividades` (
	`act_id` bigint NOT NULL AUTO_INCREMENT,
	`act_nombre` varchar(250) NOT NULL,
	`act_desc` varchar(255),
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`tia_id` smallint NOT NULL,
	`bim_id` smallint NOT NULL,
	`act_fecha` DATETIME NOT NULL,
	`act_puntaje_max` smallint NOT NULL,
	`act_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`act_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`act_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`act_id`)
);

CREATE TABLE `aca_ponderacion_actividades` (
	`pac_id` int NOT NULL AUTO_INCREMENT,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`tia_id` smallint NOT NULL,
	`pac_porcentaje` smallint NOT NULL,
	`pac_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`pac_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`pac_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`pac_id`)
);

CREATE TABLE `aca_estudiantes_actividades` (
	`esa_id` bigint NOT NULL AUTO_INCREMENT,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`tia_id` smallint NOT NULL,
	`bim_id` smallint NOT NULL,
	`act_id` bigint NOT NULL,
	`est_id` bigint NOT NULL,
	`esa_nota` DECIMAL(5,2) NOT NULL,
	`esa_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`esa_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`esa_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`esa_id`)
);

CREATE TABLE `aca_adjuntos_actividades` (
	`aac_id` bigint NOT NULL AUTO_INCREMENT,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`tia_id` smallint NOT NULL,
	`bim_id` smallint NOT NULL,
	`act_id` bigint NOT NULL,
	`est_id` bigint NOT NULL,
	`aac_ruta_adjunto` varchar(2000) NOT NULL,
	`aac_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`aac_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`aac_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`aac_id`)
);

CREATE TABLE `pln_semanas` (
	`sem_id` bigint NOT NULL AUTO_INCREMENT,
	`sem_numero` int NOT NULL,
	`sem_fecha_ini` DATETIME NOT NULL,
	`sem_fecha_fin` DATETIME NOT NULL,
	`sem_activa` bool NOT NULL,
	`sem_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`sem_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`sem_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`sem_id`)
);

CREATE TABLE `pln_horarios_profesores` (
	`hop_id` int NOT NULL AUTO_INCREMENT,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`hop_hora` smallint NOT NULL,
	`hop_dia` smallint NOT NULL,
	`hop_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`hop_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`hop_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`hop_id`)
);

CREATE TABLE `pln_feriados` (
	`fer_id` int NOT NULL AUTO_INCREMENT,
	`fer_fecha` DATETIME NOT NULL,
	`fer_motivo` varchar(255) NOT NULL,
	`cic_id` smallint NOT NULL,
	`fer_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`fer_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`fer_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`fer_id`)
);

CREATE TABLE `pln_planes_de_clases` (
	`pdc_id` bigint NOT NULL AUTO_INCREMENT,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`pdc_hora` smallint NOT NULL,
	`pdc_dia` smallint NOT NULL,
	`pdc_objetivo` varchar(255),
	`pdc_procedimiento` varchar(255),
	`pdc_pag_libro` varchar(100),
	`pdc_otros_recursos` varchar(255),
	`pdc_tareas` varchar(255),
	`pdc_fecha` DATETIME NOT NULL,
	`pdc_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`pdc_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`pdc_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`pdc_id`)
);

CREATE TABLE `aca_asistencia` (
	`asi_id` bigint NOT NULL AUTO_INCREMENT,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`usr_id` bigint NOT NULL,
	`eas_id` smallint NOT NULL,
	`asi_fecha` DATETIME NOT NULL,
	`bim_id` smallint NOT NULL,
	`asi_comentario` varchar(200),
	`asi_licencia` varchar(300),
	`asi_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`asi_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`asi_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`asi_id`)
);

CREATE TABLE `aca_estado_asistencia` (
	`eas_id` smallint NOT NULL AUTO_INCREMENT,
	`eas_nombre` varchar(30) NOT NULL,
	`eas_nombre_abr` varchar(3) NOT NULL,
	`eas_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`eas_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`eas_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`eas_id`)
);

CREATE TABLE `dsc_llamadas_atencion` (
	`lat_id` bigint NOT NULL AUTO_INCREMENT,
	`tla_id` smallint NOT NULL,
	`usr_id` bigint NOT NULL,
	`lat_fecha` DATETIME NOT NULL,
	`lat_explicacion` varchar(400) NOT NULL,
	`lat_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`lat_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`lat_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`lat_id`)
);

CREATE TABLE `dsc_tipo_llamada_atencion` (
	`tla_id` smallint NOT NULL AUTO_INCREMENT,
	`tla_nombre` varchar(60) NOT NULL,
	`tla_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`tla_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`tla_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`tla_id`)
);

CREATE TABLE `dsc_seguimiento_llamadas_atencion` (
	`sla_id` bigint NOT NULL AUTO_INCREMENT,
	`lat_id` bigint NOT NULL,
	`sla_fecha` DATETIME NOT NULL,
	`sla_seguimiento_realizado` varchar(400) NOT NULL,
	`sla_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`sla_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`sla_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`sla_id`)
);

CREATE TABLE `dsc_tipos_medidas_disciplinarias` (
	`tmd_id` smallint NOT NULL AUTO_INCREMENT,
	`tmd_nombre` varchar(60) NOT NULL,
	`tmd_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`tmd_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`tmd_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`tmd_id`)
);

CREATE TABLE `dsc_medidas_disciplinarias_tomadas` (
	`mdt_id` bigint NOT NULL AUTO_INCREMENT,
	`lat_id` bigint NOT NULL,
	`tmd_id` smallint NOT NULL,
	`mdt_fecha` DATETIME NOT NULL,
	`mdt_medida_tomada` varchar(400) NOT NULL,
	`mdt_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`mdt_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`mdt_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`mdt_id`)
);

CREATE TABLE `inv_marcas` (
	`mar_id` int NOT NULL AUTO_INCREMENT,
	`mar_nombre` varchar(60) NOT NULL,
	`mar_procedencia` varchar(100) NOT NULL,
	`mar_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`mar_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`mar_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`mar_id`)
);

CREATE TABLE `inv_modelos` (
	`mod_id` bigint NOT NULL AUTO_INCREMENT,
	`mar_id` int NOT NULL,
	`mod_nombre` varchar(60) NOT NULL,
	`mod_año` int,
	`mod_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`mod_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`mod_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`mod_id`)
);

CREATE TABLE `inv_tipo_lugar` (
	`tlu_id` int NOT NULL AUTO_INCREMENT,
	`tlu_nombre` varchar(60) NOT NULL,
	`tlu_desc` varchar(200),
	`tlu_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`tlu_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`tlu_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`tlu_id`)
);

CREATE TABLE `inv_tipo_activo` (
	`tac_id` int NOT NULL AUTO_INCREMENT,
	`tac_nombre` varchar(60) NOT NULL,
	`tac_desc` varchar(200),
	`tac_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`tac_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`tac_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`tac_id`)
);

CREATE TABLE `inv_estados` (
	`est_id` smallint NOT NULL AUTO_INCREMENT,
	`est_nombre` varchar(60) NOT NULL,
	`est_desc` varchar(200),
	`est_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`est_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`est_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`est_id`)
);

CREATE TABLE `inv_lugar` (
	`lug_id` int NOT NULL AUTO_INCREMENT,
	`lug_nombre` varchar(60) NOT NULL,
	`lug_ubicacion` varchar(200),
	`tlu_id` int NOT NULL,
	`lug_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`lug_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`lug_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`lug_id`)
);

CREATE TABLE `inv_activos_lugar` (
	`alu_id` bigint NOT NULL AUTO_INCREMENT,
	`avo_id` bigint NOT NULL,
	`tlu_id` int NOT NULL,
	`lug_id` int NOT NULL,
	`alu_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`alu_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`alu_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`alu_id`)
);

CREATE TABLE `inv_activos` (
	`avo_id` bigint NOT NULL AUTO_INCREMENT,
	`mar_id` int NOT NULL,
	`mod_id` bigint NOT NULL,
	`est_id` smallint NOT NULL,
	`tac_id` int NOT NULL,
	`avo_caracteristicas` varchar(300) NOT NULL,
	`avo_nro_serie` varchar(100),
	`avo_macaddress` varchar(100),
	`avo_fecha_adquisicion` DATETIME,
	`avo_dado_baja` bool NOT NULL DEFAULT '0',
	`avo_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`avo_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`avo_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`avo_id`)
);

CREATE TABLE `inv_items_complementarios` (
	`ico_id` bigint NOT NULL AUTO_INCREMENT,
	`ico_nombre` varchar(100) NOT NULL,
	`ico_desc` varchar(200),
	`mar_id` int NOT NULL,
	`mod_id` bigint NOT NULL,
	`ico_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`ico_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`ico_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`ico_id`)
);

CREATE TABLE `inv_items_comp_activos` (
	`ica_id` bigint NOT NULL AUTO_INCREMENT,
	`ico_id` bigint NOT NULL,
	`avo_id` bigint NOT NULL,
	`ica_cantidad_items` int NOT NULL,
	`ica_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`ica_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`ica_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`ica_id`)
);

CREATE TABLE `inv_mantenimiento` (
	`mto_id` bigint NOT NULL AUTO_INCREMENT,
	`avo_id` bigint NOT NULL,
	`est_id` smallint NOT NULL,
	`mto_fecha_ingreso` DATETIME NOT NULL,
	`mto_trabajo_realizado` varchar(400) NOT NULL,
	`mto_observaciones` varchar(400),
	`mto_fecha_entrega` DATETIME,
	`mto_costo_reparacion` double,
	`mto_add_at` DATETIME NOT NULL,
	`usr_id_add_by` bigint NOT NULL,
	`mto_upd_at` DATETIME NOT NULL,
	`usr_id_upd_by` bigint NOT NULL,
	`mto_eliminado` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`mto_id`)
);

ALTER TABLE `usr_usuarios_roles` ADD CONSTRAINT `usr_usuarios_roles_fk0` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios`(`usr_id`);

ALTER TABLE `usr_usuarios_roles` ADD CONSTRAINT `usr_usuarios_roles_fk1` FOREIGN KEY (`rol_id`) REFERENCES `usr_roles`(`rol_id`);

ALTER TABLE `lug_estados` ADD CONSTRAINT `lug_estados_fk0` FOREIGN KEY (`pai_id`) REFERENCES `lug_paises`(`pai_id`);

ALTER TABLE `lug_nacionalidades` ADD CONSTRAINT `lug_nacionalidades_fk0` FOREIGN KEY (`pai_id`) REFERENCES `lug_paises`(`pai_id`);

ALTER TABLE `per_estudiantes` ADD CONSTRAINT `per_estudiantes_fk0` FOREIGN KEY (`pai_id`) REFERENCES `lug_paises`(`pai_id`);

ALTER TABLE `per_estudiantes` ADD CONSTRAINT `per_estudiantes_fk1` FOREIGN KEY (`sta_id`) REFERENCES `lug_estados`(`sta_id`);

ALTER TABLE `per_estudiantes` ADD CONSTRAINT `per_estudiantes_fk2` FOREIGN KEY (`nac_id`) REFERENCES `lug_nacionalidades`(`nac_id`);

ALTER TABLE `per_estudiantes` ADD CONSTRAINT `per_estudiantes_fk3` FOREIGN KEY (`rel_id`) REFERENCES `lug_religiones`(`rel_id`);

ALTER TABLE `per_estudiantes` ADD CONSTRAINT `per_estudiantes_fk4` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios`(`usr_id`);

ALTER TABLE `per_estudiantes` ADD CONSTRAINT `per_estudiantes_fk5` FOREIGN KEY (`tid_id`) REFERENCES `gen_tipo_documentos`(`tid_id`);

ALTER TABLE `per_estudiantes` ADD CONSTRAINT `per_estudiantes_fk6` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `per_estudiantes` ADD CONSTRAINT `per_estudiantes_fk7` FOREIGN KEY (`cnd_id`) REFERENCES `gen_condicion`(`cnd_id`);

ALTER TABLE `per_administrativos` ADD CONSTRAINT `per_administrativos_fk0` FOREIGN KEY (`pai_id`) REFERENCES `lug_paises`(`pai_id`);

ALTER TABLE `per_administrativos` ADD CONSTRAINT `per_administrativos_fk1` FOREIGN KEY (`sta_id`) REFERENCES `lug_estados`(`sta_id`);

ALTER TABLE `per_administrativos` ADD CONSTRAINT `per_administrativos_fk2` FOREIGN KEY (`nac_id`) REFERENCES `lug_nacionalidades`(`nac_id`);

ALTER TABLE `per_administrativos` ADD CONSTRAINT `per_administrativos_fk3` FOREIGN KEY (`dpt_id`) REFERENCES `gen_departamentos`(`dpt_id`);

ALTER TABLE `per_administrativos` ADD CONSTRAINT `per_administrativos_fk4` FOREIGN KEY (`car_id`) REFERENCES `gen_cargos`(`car_id`);

ALTER TABLE `per_administrativos` ADD CONSTRAINT `per_administrativos_fk5` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios`(`usr_id`);

ALTER TABLE `per_administrativos` ADD CONSTRAINT `per_administrativos_fk6` FOREIGN KEY (`tid_id`) REFERENCES `gen_tipo_documentos`(`tid_id`);

ALTER TABLE `per_profesores` ADD CONSTRAINT `per_profesores_fk0` FOREIGN KEY (`pai_id`) REFERENCES `lug_paises`(`pai_id`);

ALTER TABLE `per_profesores` ADD CONSTRAINT `per_profesores_fk1` FOREIGN KEY (`sta_id`) REFERENCES `lug_estados`(`sta_id`);

ALTER TABLE `per_profesores` ADD CONSTRAINT `per_profesores_fk2` FOREIGN KEY (`nac_id`) REFERENCES `lug_nacionalidades`(`nac_id`);

ALTER TABLE `per_profesores` ADD CONSTRAINT `per_profesores_fk3` FOREIGN KEY (`adm_id_coor_pre`) REFERENCES `per_administrativos`(`adm_id`);

ALTER TABLE `per_profesores` ADD CONSTRAINT `per_profesores_fk4` FOREIGN KEY (`adm_id_coor_pri`) REFERENCES `per_administrativos`(`adm_id`);

ALTER TABLE `per_profesores` ADD CONSTRAINT `per_profesores_fk5` FOREIGN KEY (`adm_id_coor_sec`) REFERENCES `per_administrativos`(`adm_id`);

ALTER TABLE `per_profesores` ADD CONSTRAINT `per_profesores_fk6` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios`(`usr_id`);

ALTER TABLE `per_profesores` ADD CONSTRAINT `per_profesores_fk7` FOREIGN KEY (`tid_id`) REFERENCES `gen_tipo_documentos`(`tid_id`);

ALTER TABLE `per_padres` ADD CONSTRAINT `per_padres_fk0` FOREIGN KEY (`pai_id`) REFERENCES `lug_paises`(`pai_id`);

ALTER TABLE `per_padres` ADD CONSTRAINT `per_padres_fk1` FOREIGN KEY (`sta_id`) REFERENCES `lug_estados`(`sta_id`);

ALTER TABLE `per_padres` ADD CONSTRAINT `per_padres_fk2` FOREIGN KEY (`nac_id`) REFERENCES `lug_nacionalidades`(`nac_id`);

ALTER TABLE `per_padres` ADD CONSTRAINT `per_padres_fk3` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios`(`usr_id`);

ALTER TABLE `per_padres` ADD CONSTRAINT `per_padres_fk4` FOREIGN KEY (`tid_id`) REFERENCES `gen_tipo_documentos`(`tid_id`);

ALTER TABLE `per_idiomas_estudiantes` ADD CONSTRAINT `per_idiomas_estudiantes_fk0` FOREIGN KEY (`idi_id`) REFERENCES `lug_idiomas`(`idi_id`);

ALTER TABLE `per_idiomas_estudiantes` ADD CONSTRAINT `per_idiomas_estudiantes_fk1` FOREIGN KEY (`est_id`) REFERENCES `per_estudiantes`(`est_id`);

ALTER TABLE `per_hijos` ADD CONSTRAINT `per_hijos_fk0` FOREIGN KEY (`pad_id`) REFERENCES `per_padres`(`pad_id`);

ALTER TABLE `per_hijos` ADD CONSTRAINT `per_hijos_fk1` FOREIGN KEY (`est_id`) REFERENCES `per_estudiantes`(`est_id`);

ALTER TABLE `per_historial_salud` ADD CONSTRAINT `per_historial_salud_fk0` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios`(`usr_id`);

ALTER TABLE `aca_cursos` ADD CONSTRAINT `aca_cursos_fk0` FOREIGN KEY (`cic_id`) REFERENCES `aca_ciclos`(`cic_id`);

ALTER TABLE `aca_cursos` ADD CONSTRAINT `aca_cursos_fk1` FOREIGN KEY (`par_id`) REFERENCES `aca_paralelos`(`par_id`);

ALTER TABLE `aca_cursos` ADD CONSTRAINT `aca_cursos_fk2` FOREIGN KEY (`tur_id`) REFERENCES `aca_turnos`(`tur_id`);

ALTER TABLE `aca_asignacion_materias` ADD CONSTRAINT `aca_asignacion_materias_fk0` FOREIGN KEY (`pro_id`) REFERENCES `per_profesores`(`pro_id`);

ALTER TABLE `aca_asignacion_materias` ADD CONSTRAINT `aca_asignacion_materias_fk1` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `aca_asignacion_materias` ADD CONSTRAINT `aca_asignacion_materias_fk2` FOREIGN KEY (`mat_id`) REFERENCES `aca_materias`(`mat_id`);

ALTER TABLE `aca_actividades` ADD CONSTRAINT `aca_actividades_fk0` FOREIGN KEY (`pro_id`) REFERENCES `per_profesores`(`pro_id`);

ALTER TABLE `aca_actividades` ADD CONSTRAINT `aca_actividades_fk1` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `aca_actividades` ADD CONSTRAINT `aca_actividades_fk2` FOREIGN KEY (`mat_id`) REFERENCES `aca_materias`(`mat_id`);

ALTER TABLE `aca_actividades` ADD CONSTRAINT `aca_actividades_fk3` FOREIGN KEY (`tia_id`) REFERENCES `aca_tipos_actividades`(`tia_id`);

ALTER TABLE `aca_actividades` ADD CONSTRAINT `aca_actividades_fk4` FOREIGN KEY (`bim_id`) REFERENCES `aca_bimestres`(`bim_id`);

ALTER TABLE `aca_ponderacion_actividades` ADD CONSTRAINT `aca_ponderacion_actividades_fk0` FOREIGN KEY (`pro_id`) REFERENCES `per_profesores`(`pro_id`);

ALTER TABLE `aca_ponderacion_actividades` ADD CONSTRAINT `aca_ponderacion_actividades_fk1` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `aca_ponderacion_actividades` ADD CONSTRAINT `aca_ponderacion_actividades_fk2` FOREIGN KEY (`mat_id`) REFERENCES `aca_materias`(`mat_id`);

ALTER TABLE `aca_ponderacion_actividades` ADD CONSTRAINT `aca_ponderacion_actividades_fk3` FOREIGN KEY (`tia_id`) REFERENCES `aca_tipos_actividades`(`tia_id`);

ALTER TABLE `aca_estudiantes_actividades` ADD CONSTRAINT `aca_estudiantes_actividades_fk0` FOREIGN KEY (`pro_id`) REFERENCES `per_profesores`(`pro_id`);

ALTER TABLE `aca_estudiantes_actividades` ADD CONSTRAINT `aca_estudiantes_actividades_fk1` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `aca_estudiantes_actividades` ADD CONSTRAINT `aca_estudiantes_actividades_fk2` FOREIGN KEY (`mat_id`) REFERENCES `aca_materias`(`mat_id`);

ALTER TABLE `aca_estudiantes_actividades` ADD CONSTRAINT `aca_estudiantes_actividades_fk3` FOREIGN KEY (`tia_id`) REFERENCES `aca_tipos_actividades`(`tia_id`);

ALTER TABLE `aca_estudiantes_actividades` ADD CONSTRAINT `aca_estudiantes_actividades_fk4` FOREIGN KEY (`bim_id`) REFERENCES `aca_bimestres`(`bim_id`);

ALTER TABLE `aca_estudiantes_actividades` ADD CONSTRAINT `aca_estudiantes_actividades_fk5` FOREIGN KEY (`act_id`) REFERENCES `aca_actividades`(`act_id`);

ALTER TABLE `aca_estudiantes_actividades` ADD CONSTRAINT `aca_estudiantes_actividades_fk6` FOREIGN KEY (`est_id`) REFERENCES `per_estudiantes`(`est_id`);

ALTER TABLE `aca_adjuntos_actividades` ADD CONSTRAINT `aca_adjuntos_actividades_fk0` FOREIGN KEY (`pro_id`) REFERENCES `per_profesores`(`pro_id`);

ALTER TABLE `aca_adjuntos_actividades` ADD CONSTRAINT `aca_adjuntos_actividades_fk1` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `aca_adjuntos_actividades` ADD CONSTRAINT `aca_adjuntos_actividades_fk2` FOREIGN KEY (`mat_id`) REFERENCES `aca_materias`(`mat_id`);

ALTER TABLE `aca_adjuntos_actividades` ADD CONSTRAINT `aca_adjuntos_actividades_fk3` FOREIGN KEY (`tia_id`) REFERENCES `aca_tipos_actividades`(`tia_id`);

ALTER TABLE `aca_adjuntos_actividades` ADD CONSTRAINT `aca_adjuntos_actividades_fk4` FOREIGN KEY (`bim_id`) REFERENCES `aca_bimestres`(`bim_id`);

ALTER TABLE `aca_adjuntos_actividades` ADD CONSTRAINT `aca_adjuntos_actividades_fk5` FOREIGN KEY (`act_id`) REFERENCES `aca_actividades`(`act_id`);

ALTER TABLE `aca_adjuntos_actividades` ADD CONSTRAINT `aca_adjuntos_actividades_fk6` FOREIGN KEY (`est_id`) REFERENCES `per_estudiantes`(`est_id`);

ALTER TABLE `pln_horarios_profesores` ADD CONSTRAINT `pln_horarios_profesores_fk0` FOREIGN KEY (`pro_id`) REFERENCES `per_profesores`(`pro_id`);

ALTER TABLE `pln_horarios_profesores` ADD CONSTRAINT `pln_horarios_profesores_fk1` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `pln_horarios_profesores` ADD CONSTRAINT `pln_horarios_profesores_fk2` FOREIGN KEY (`mat_id`) REFERENCES `aca_materias`(`mat_id`);

ALTER TABLE `pln_feriados` ADD CONSTRAINT `pln_feriados_fk0` FOREIGN KEY (`cic_id`) REFERENCES `aca_ciclos`(`cic_id`);

ALTER TABLE `pln_planes_de_clases` ADD CONSTRAINT `pln_planes_de_clases_fk0` FOREIGN KEY (`pro_id`) REFERENCES `per_profesores`(`pro_id`);

ALTER TABLE `pln_planes_de_clases` ADD CONSTRAINT `pln_planes_de_clases_fk1` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `pln_planes_de_clases` ADD CONSTRAINT `pln_planes_de_clases_fk2` FOREIGN KEY (`mat_id`) REFERENCES `aca_materias`(`mat_id`);

ALTER TABLE `aca_asistencia` ADD CONSTRAINT `aca_asistencia_fk0` FOREIGN KEY (`pro_id`) REFERENCES `per_profesores`(`pro_id`);

ALTER TABLE `aca_asistencia` ADD CONSTRAINT `aca_asistencia_fk1` FOREIGN KEY (`cur_id`) REFERENCES `aca_cursos`(`cur_id`);

ALTER TABLE `aca_asistencia` ADD CONSTRAINT `aca_asistencia_fk2` FOREIGN KEY (`mat_id`) REFERENCES `aca_materias`(`mat_id`);

ALTER TABLE `aca_asistencia` ADD CONSTRAINT `aca_asistencia_fk3` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios`(`usr_id`);

ALTER TABLE `aca_asistencia` ADD CONSTRAINT `aca_asistencia_fk4` FOREIGN KEY (`eas_id`) REFERENCES `aca_estado_asistencia`(`eas_id`);

ALTER TABLE `aca_asistencia` ADD CONSTRAINT `aca_asistencia_fk5` FOREIGN KEY (`bim_id`) REFERENCES `aca_bimestres`(`bim_id`);

ALTER TABLE `dsc_llamadas_atencion` ADD CONSTRAINT `dsc_llamadas_atencion_fk0` FOREIGN KEY (`tla_id`) REFERENCES `dsc_tipo_llamada_atencion`(`tla_id`);

ALTER TABLE `dsc_llamadas_atencion` ADD CONSTRAINT `dsc_llamadas_atencion_fk1` FOREIGN KEY (`usr_id`) REFERENCES `usr_usuarios`(`usr_id`);

ALTER TABLE `dsc_seguimiento_llamadas_atencion` ADD CONSTRAINT `dsc_seguimiento_llamadas_atencion_fk0` FOREIGN KEY (`lat_id`) REFERENCES `dsc_llamadas_atencion`(`lat_id`);

ALTER TABLE `dsc_medidas_disciplinarias_tomadas` ADD CONSTRAINT `dsc_medidas_disciplinarias_tomadas_fk0` FOREIGN KEY (`lat_id`) REFERENCES `dsc_llamadas_atencion`(`lat_id`);

ALTER TABLE `dsc_medidas_disciplinarias_tomadas` ADD CONSTRAINT `dsc_medidas_disciplinarias_tomadas_fk1` FOREIGN KEY (`tmd_id`) REFERENCES `dsc_tipos_medidas_disciplinarias`(`tmd_id`);

ALTER TABLE `inv_modelos` ADD CONSTRAINT `inv_modelos_fk0` FOREIGN KEY (`mar_id`) REFERENCES `inv_marcas`(`mar_id`);

ALTER TABLE `inv_lugar` ADD CONSTRAINT `inv_lugar_fk0` FOREIGN KEY (`tlu_id`) REFERENCES `inv_tipo_lugar`(`tlu_id`);

ALTER TABLE `inv_activos_lugar` ADD CONSTRAINT `inv_activos_lugar_fk0` FOREIGN KEY (`avo_id`) REFERENCES `inv_activos`(`avo_id`);

ALTER TABLE `inv_activos_lugar` ADD CONSTRAINT `inv_activos_lugar_fk1` FOREIGN KEY (`tlu_id`) REFERENCES `inv_tipo_lugar`(`tlu_id`);

ALTER TABLE `inv_activos_lugar` ADD CONSTRAINT `inv_activos_lugar_fk2` FOREIGN KEY (`lug_id`) REFERENCES `inv_lugar`(`lug_id`);

ALTER TABLE `inv_activos` ADD CONSTRAINT `inv_activos_fk0` FOREIGN KEY (`mar_id`) REFERENCES `inv_marcas`(`mar_id`);

ALTER TABLE `inv_activos` ADD CONSTRAINT `inv_activos_fk1` FOREIGN KEY (`mod_id`) REFERENCES `inv_modelos`(`mod_id`);

ALTER TABLE `inv_activos` ADD CONSTRAINT `inv_activos_fk2` FOREIGN KEY (`est_id`) REFERENCES `inv_estados`(`est_id`);

ALTER TABLE `inv_activos` ADD CONSTRAINT `inv_activos_fk3` FOREIGN KEY (`tac_id`) REFERENCES `inv_tipo_activo`(`tac_id`);

ALTER TABLE `inv_items_complementarios` ADD CONSTRAINT `inv_items_complementarios_fk0` FOREIGN KEY (`mar_id`) REFERENCES `inv_marcas`(`mar_id`);

ALTER TABLE `inv_items_complementarios` ADD CONSTRAINT `inv_items_complementarios_fk1` FOREIGN KEY (`mod_id`) REFERENCES `inv_modelos`(`mod_id`);

ALTER TABLE `inv_items_comp_activos` ADD CONSTRAINT `inv_items_comp_activos_fk0` FOREIGN KEY (`ico_id`) REFERENCES `inv_items_complementarios`(`ico_id`);

ALTER TABLE `inv_items_comp_activos` ADD CONSTRAINT `inv_items_comp_activos_fk1` FOREIGN KEY (`avo_id`) REFERENCES `inv_activos`(`avo_id`);

ALTER TABLE `inv_mantenimiento` ADD CONSTRAINT `inv_mantenimiento_fk0` FOREIGN KEY (`avo_id`) REFERENCES `inv_activos`(`avo_id`);

ALTER TABLE `inv_mantenimiento` ADD CONSTRAINT `inv_mantenimiento_fk1` FOREIGN KEY (`est_id`) REFERENCES `inv_estados`(`est_id`);

