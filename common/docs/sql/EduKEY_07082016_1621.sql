CREATE TABLE `users` (
	`id` bigint NOT NULL,
	`name` varchar(100) NOT NULL,
	`password` varchar(255) NOT NULL,
	`active` bool NOT NULL DEFAULT '1',
	`culo` varchar(20) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `roles` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`url_pagina_inicial` varchar(255),
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `users_roles` (
	`id` bigint NOT NULL,
	`user_id` bigint NOT NULL,
	`rol_id` smallint NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `paises` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`nombre_corto` varchar(3) NOT NULL,
	`nacionalidad` varchar(30) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `estados` (
	`id` smallint NOT NULL,
	`pais_id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `idiomas` (
	`id` smallint NOT NULL,
	`nombre` varchar(60) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `tipo_documentos` (
	`nombre` varchar(30) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	`id` smallint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `religiones` (
	`id` smallint NOT NULL,
	`nombre` varchar(30) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `departamentos` (
	`id` smallint NOT NULL,
	`nombre` varchar(60) NOT NULL,
	`descripcion` varchar(255),
	`jefe_admin_id` bigint,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `cargos` (
	`id` smallint NOT NULL,
	`nombre` varchar(60) NOT NULL,
	`descripcion` varchar(255),
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `estudiantes` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`fec_insc` DATETIME,
	`religion_id` smallint,
	`rude` varchar(22),
	`curso_id` smallint NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `administrativos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`fec_ini` DATETIME,
	`email_trabajo` varchar(255) NOT NULL,
	`tel_fijo_trabajo` varchar(20),
	`tel_movil_trabajo` varchar(20),
	`ubicacion_oficina` varchar(255),
	`departamento_id` smallint,
	`cargo_id` smallint,
	`nombre_afp` varchar(30),
	`numero_afp` varchar(15),
	`active` bool NOT NULL DEFAULT '0',
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `profesores` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`fec_ini` DATETIME,
	`email_trabajo` varchar(255) NOT NULL,
	`tel_fijo_trabajo` varchar(20),
	`tel_movil_trabajo` varchar(20),
	`aula_oficina` varchar(255),
	`nombre_afp` varchar(30),
	`num_de_afp` varchar(15),
	`active` bool NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `padres` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`email_trabajo` varchar(255) NOT NULL,
	`tel_fijo_trabajo` varchar(20),
	`tel_movil_trabajo` varchar(20),
	`profesion` varchar(100),
	`nit` varchar(30),
	`razon_social` varchar(180),
	`active` bool NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `idiomas_estudiantes` (
	`id` bigint NOT NULL,
	`idioma_id` smallint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `hijos` (
	`padre_id` bigint NOT NULL AUTO_INCREMENT,
	`estudiante_id` bigint NOT NULL AUTO_INCREMENT,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`padre_id`,`estudiante_id`)
);

CREATE TABLE `historial_medico` (
	`id` bigint NOT NULL,
	`persona_id` bigint NOT NULL,
	`grados_temp` smallint,
	`presion_sistolica` smallint,
	`presion_diastolica` smallint,
	`sintomas` varchar(255) NOT NULL,
	`antecedente_sintomas` varchar(255),
	`diagnostico` varchar(255) NOT NULL,
	`medicacion_aplicada` varchar(255),
	`medicacion_sugerida` varchar(255),
	`recomendaciones` varchar(255),
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `ciclos` (
	`id` smallint NOT NULL,
	`nombre` varchar(20) NOT NULL,
	`nombre_abr` varchar(3) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `paralelos` (
	`id` smallint NOT NULL,
	`nombre` varchar(1) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `cursos` (
	`id` smallint NOT NULL,
	`nombre` varchar(20) NOT NULL,
	`nombre_abr` varchar(3) NOT NULL,
	`ciclo_id` smallint NOT NULL,
	`orden_correlativo` smallint NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `turnos` (
	`id` smallint NOT NULL,
	`nombre` varchar(30) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `bimestres` (
	`id` smallint NOT NULL,
	`nombre` varchar(30) NOT NULL,
	`mes_ini` smallint NOT NULL,
	`mes_fin` smallint NOT NULL,
	`active` bool NOT NULL,
	`editable` bool NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `materias` (
	`id` smallint NOT NULL,
	`nombre` varchar(50) NOT NULL,
	`nombre_corto` varchar(50) NOT NULL,
	`grupo_id` smallint NOT NULL,
	`orden` smallint,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `asignacion_materias` (
	`profesor_id` int NOT NULL AUTO_INCREMENT,
	`materia_id` smallint NOT NULL AUTO_INCREMENT,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`profesor_id`,`materia_id`)
);

CREATE TABLE `tipos_actividades` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `actividades` (
	`id` bigint NOT NULL,
	`nombre` varchar(250) NOT NULL,
	`desc` varchar(255),
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`tia_id` smallint NOT NULL,
	`bim_id` smallint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`puntaje_max` smallint NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `ponderacion_actividades` (
	`id` int NOT NULL,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`tia_id` smallint NOT NULL,
	`porcentaje` smallint NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `estudiantes_actividades` (
	`id` bigint NOT NULL,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`tia_id` smallint NOT NULL,
	`bim_id` smallint NOT NULL,
	`act_id` bigint NOT NULL,
	`est_id` bigint NOT NULL,
	`nota` DECIMAL(5,2) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `adjuntos_actividades` (
	`id` bigint NOT NULL,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`tia_id` smallint NOT NULL,
	`bim_id` smallint NOT NULL,
	`act_id` bigint NOT NULL,
	`est_id` bigint NOT NULL,
	`ruta_adjunto` varchar(2000) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `semanas` (
	`id` bigint NOT NULL,
	`numero` int NOT NULL,
	`fecha_ini` DATETIME NOT NULL,
	`active` bool NOT NULL,
	`fecha_fin` DATETIME NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `horarios_profesores` (
	`id` int NOT NULL,
	`profesor_id` int NOT NULL,
	`ciclo_is` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`periodo_id` smallint NOT NULL,
	`dia` smallint NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `planes_de_clases` (
	`id` bigint NOT NULL,
	`profesor_id` bigint NOT NULL,
	`curso_id` smallint NOT NULL,
	`materia_id` smallint NOT NULL,
	`hora` smallint NOT NULL,
	`dia` smallint NOT NULL,
	`objetivo` varchar(255),
	`procedimiento` varchar(255),
	`pag_libro` varchar(100),
	`otros_recursos` varchar(255),
	`tareas` varchar(255),
	`fecha` DATETIME NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `asistencia` (
	`id` bigint NOT NULL,
	`pro_id` int NOT NULL,
	`cur_id` smallint NOT NULL,
	`mat_id` smallint NOT NULL,
	`usr_id` bigint NOT NULL,
	`eas_id` smallint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`bim_id` smallint NOT NULL,
	`comentario` varchar(200),
	`licencia` varchar(300),
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `estado_asistencia` (
	`id` smallint NOT NULL,
	`nombre` varchar(30) NOT NULL,
	`nombre_abr` varchar(3) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `llamadas_atencion` (
	`id` bigint NOT NULL,
	`tipo_llamada_id` smallint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`persona_reporto_id` bigint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`explicacion` varchar(400) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `tipo_llamada_atencion` (
	`id` smallint NOT NULL,
	`nombre` varchar(60) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `seguimiento_llamadas_atencion` (
	`id` bigint NOT NULL,
	`llamada_atencion_id` bigint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`seguimiento_realizado` varchar(400) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `tipos_medidas_disciplinarias` (
	`id` smallint NOT NULL,
	`nombre` varchar(60) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `medidas_disciplinarias_tomadas` (
	`id` bigint NOT NULL,
	`llamada_atencion_id` bigint NOT NULL,
	`tipo_medida_id` smallint NOT NULL,
	`fecha` DATETIME NOT NULL,
	`explicacion` varchar(400) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `personas` (
	`id` bigint NOT NULL,
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
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `periodos` (
	`id` smallint NOT NULL,
	`nombre` varchar(30),
	`hora_ini` TIME NOT NULL,
	`hora_fin` TIME NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `grupos_materias` (
	`id` smallint NOT NULL,
	`nombre` varchar(30) NOT NULL,
	`descripcion` varchar(30) NOT NULL,
	`peso_porciento` int,
	`materia_padre_id` smallint,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tipo_evento` (

);

CREATE TABLE `calendario_eventos` (

);

CREATE TABLE `ascender` (

);

CREATE TABLE `tipo_cuotas` (
	`id` int NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`monto` DECIMAL(8,2) NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `frecuencia_cuotas` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`frecuencia` smallint NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `cuotas` (
	`id` bigint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`estudiante_id` bigint NOT NULL,
	`tipo_cuota_id` int NOT NULL,
	`frecuencia_id` smallint NOT NULL,
	`descuento` DECIMAL(8,2),
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tipos_becas` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `becas` (
	`estudiante_id` bigint NOT NULL AUTO_INCREMENT,
	`tipo_beca` smallint NOT NULL AUTO_INCREMENT,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`estudiante_id`,`tipo_beca`)
);

CREATE TABLE `facturas` (
	`id` bigint NOT NULL,
	`fecha` DATE NOT NULL,
	`fecha_vence` DATE NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`ciclo_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`paralelo_id` smallint NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tipo_gastos` (
	`id` int NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `gastos` (
	`id` bigint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`fecha` DATE NOT NULL,
	`tipo_gasto_id` int NOT NULL,
	`metodo_pago_id` smallint NOT NULL,
	`monto` double(12,2),
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `metodo_pago` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `rutas` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`zonas` varchar(300) NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `vehiculos` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`placa` varchar(15) NOT NULL,
	`num_asientos` smallint NOT NULL,
	`datos_seguro` varchar(300),
	`status` bool NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `transporte` (
	`id` int NOT NULL,
	`ruta_id` smallint NOT NULL,
	`vehiculo_id` smallint NOT NULL,
	`chofer_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `libros` (
	`id` bigint NOT NULL,
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
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `libros_categoria` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `libros_prestamos` (
	`id` bigint NOT NULL,
	`libro_id` bigint NOT NULL,
	`persona_id` bigint NOT NULL,
	`fecha_retiro` DATE NOT NULL,
	`fecha_plazo` DATE NOT NULL,
	`fecha_retorno` DATE NOT NULL,
	`multa` DECIMAL(5,2),
	`devuelto` bool NOT NULL,
	`multa_pagada` bool NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `log` (
	`id` bigint NOT NULL,
	`fecha` TIMESTAMP NOT NULL,
	`user_id` bigint NOT NULL,
	`secuencia` bigint NOT NULL,
	`accion` varchar(50) NOT NULL,
	`basedatos` varchar(50) NOT NULL,
	`consulta` varchar(3000) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `datos_generales` (
	`id` smallint NOT NULL,
	`nombre` varchar(1) NOT NULL,
	`descripcion` varchar(255),
	`direc` varchar(300) NOT NULL,
	`tel_fijo` varchar(20),
	`email_contacto` varchar(255),
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `criterios_admision` (
	`id` smallint NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`descripcion` varchar(200),
	`peso` int NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `postulaciones` (
	`id` bigint NOT NULL,
	`nombres` varchar(60) NOT NULL,
	`apellido_paterno` varchar(60),
	`apellido_materno` varchar(60),
	`fecha_postulacion` DATE NOT NULL,
	`ciclo_postulado` smallint NOT NULL,
	`curso_postulado` smallint NOT NULL,
	`destacado_materias` varchar(200),
	`destacado_deportes` varchar(200),
	`destacado_eventos` varchar(200),
	`deleted` bool,
	PRIMARY KEY (`id`)
);

CREATE TABLE `puntaje_admision` (
	`id` bigint NOT NULL,
	`postulacion_id` bigint NOT NULL,
	`criterio_id` smallint NOT NULL,
	`puntaje` smallint NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `ciclos_turnos` (
	`ciclo_id` smallint NOT NULL AUTO_INCREMENT,
	`turno_id` smallint NOT NULL AUTO_INCREMENT,
	`coord_admin_id` bigint,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`ciclo_id`,`turno_id`)
);

CREATE TABLE `ciclos_turnos_profesores` (
	`ciclo_id` smallint NOT NULL AUTO_INCREMENT,
	`turno_id` smallint NOT NULL AUTO_INCREMENT,
	`profesor_id` bigint NOT NULL AUTO_INCREMENT,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`ciclo_id`,`turno_id`,`profesor_id`)
);

CREATE TABLE `ciclos_turnos_cursos_paralelos` (
	`ciclo_id` smallint NOT NULL AUTO_INCREMENT,
	`turno_id` smallint NOT NULL AUTO_INCREMENT,
	`curso_id` smallint NOT NULL AUTO_INCREMENT,
	`paralelo_id` smallint NOT NULL AUTO_INCREMENT,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`ciclo_id`,`turno_id`,`curso_id`,`paralelo_id`)
);

CREATE TABLE `antecedentes_medicos` (
	`id` bigint NOT NULL,
	`persona_id` bigint NOT NULL,
	`enfermedades_conocidas` varchar(300),
	`alergias_conocidas` varchar(300),
	`transtornos_conocidos` varchar(300),
	`sindromes_conocidos` varchar(300),
	`medicamentos_continuos` varchar(300),
	`nombre_medico_cabecera` varchar(180),
	`telefono_medico_cabecera` varchar(20),
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `becas_detalle` (
	`beca_id` bigint NOT NULL AUTO_INCREMENT,
	`estudiante_id` bigint NOT NULL AUTO_INCREMENT,
	`tipo_beca` smallint NOT NULL AUTO_INCREMENT,
	`tipo_cuota` int NOT NULL AUTO_INCREMENT,
	`descuento` DECIMAL(8,2),
	`numero_cuotas` smallint NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`beca_id`,`estudiante_id`,`tipo_beca`,`tipo_cuota`)
);

CREATE TABLE `facturas_detalle` (
	`id` bigint NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`ciclo_id` smallint NOT NULL,
	`curso_id` smallint NOT NULL,
	`paralelo_id` smallint NOT NULL,
	`cuota_id` bigint NOT NULL,
	`cantidad` int NOT NULL,
	`monto` double(8,2) NOT NULL,
	`descuento` double(8,2),
	`total` double(10,2) NOT NULL,
	`payed` bool NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `choferes` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`num_licencia` varchar(15) NOT NULL,
	`categoria_licencia` char(1) NOT NULL,
	`deleted` bool NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
);

CREATE TABLE `transporte_detalle` (
	`id` int NOT NULL,
	`transporte_id` int NOT NULL,
	`estudiante_id` bigint NOT NULL,
	`deleted` bool NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `users_roles` ADD CONSTRAINT `users_roles_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `users_roles` ADD CONSTRAINT `users_roles_fk1` FOREIGN KEY (`rol_id`) REFERENCES `roles`(`id`);

ALTER TABLE `estados` ADD CONSTRAINT `estados_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk0` FOREIGN KEY (`id`) REFERENCES `personas`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk1` FOREIGN KEY (`religion_id`) REFERENCES `religiones`(`id`);

ALTER TABLE `estudiantes` ADD CONSTRAINT `estudiantes_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk0` FOREIGN KEY (`id`) REFERENCES `personas`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk1` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos`(`id`);

ALTER TABLE `administrativos` ADD CONSTRAINT `administrativos_fk2` FOREIGN KEY (`cargo_id`) REFERENCES `cargos`(`id`);

ALTER TABLE `profesores` ADD CONSTRAINT `profesores_fk0` FOREIGN KEY (`id`) REFERENCES `personas`(`id`);

ALTER TABLE `padres` ADD CONSTRAINT `padres_fk0` FOREIGN KEY (`id`) REFERENCES `personas`(`id`);

ALTER TABLE `idiomas_estudiantes` ADD CONSTRAINT `idiomas_estudiantes_fk0` FOREIGN KEY (`idioma_id`) REFERENCES `idiomas`(`id`);

ALTER TABLE `idiomas_estudiantes` ADD CONSTRAINT `idiomas_estudiantes_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `hijos` ADD CONSTRAINT `hijos_fk0` FOREIGN KEY (`padre_id`) REFERENCES `padres`(`id`);

ALTER TABLE `hijos` ADD CONSTRAINT `hijos_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `historial_medico` ADD CONSTRAINT `historial_medico_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas`(`id`);

ALTER TABLE `cursos` ADD CONSTRAINT `cursos_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `materias` ADD CONSTRAINT `materias_fk0` FOREIGN KEY (`grupo_id`) REFERENCES `grupos_materias`(`id`);

ALTER TABLE `asignacion_materias` ADD CONSTRAINT `asignacion_materias_fk0` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `asignacion_materias` ADD CONSTRAINT `asignacion_materias_fk1` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk0` FOREIGN KEY (`pro_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk1` FOREIGN KEY (`cur_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk2` FOREIGN KEY (`mat_id`) REFERENCES `materias`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk3` FOREIGN KEY (`tia_id`) REFERENCES `tipos_actividades`(`id`);

ALTER TABLE `actividades` ADD CONSTRAINT `actividades_fk4` FOREIGN KEY (`bim_id`) REFERENCES `bimestres`(`id`);

ALTER TABLE `ponderacion_actividades` ADD CONSTRAINT `ponderacion_actividades_fk0` FOREIGN KEY (`pro_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `ponderacion_actividades` ADD CONSTRAINT `ponderacion_actividades_fk1` FOREIGN KEY (`cur_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `ponderacion_actividades` ADD CONSTRAINT `ponderacion_actividades_fk2` FOREIGN KEY (`mat_id`) REFERENCES `materias`(`id`);

ALTER TABLE `ponderacion_actividades` ADD CONSTRAINT `ponderacion_actividades_fk3` FOREIGN KEY (`tia_id`) REFERENCES `tipos_actividades`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk0` FOREIGN KEY (`pro_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk1` FOREIGN KEY (`cur_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk2` FOREIGN KEY (`mat_id`) REFERENCES `materias`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk3` FOREIGN KEY (`tia_id`) REFERENCES `tipos_actividades`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk4` FOREIGN KEY (`bim_id`) REFERENCES `bimestres`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk5` FOREIGN KEY (`act_id`) REFERENCES `actividades`(`id`);

ALTER TABLE `estudiantes_actividades` ADD CONSTRAINT `estudiantes_actividades_fk6` FOREIGN KEY (`est_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk0` FOREIGN KEY (`pro_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk1` FOREIGN KEY (`cur_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk2` FOREIGN KEY (`mat_id`) REFERENCES `materias`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk3` FOREIGN KEY (`tia_id`) REFERENCES `tipos_actividades`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk4` FOREIGN KEY (`bim_id`) REFERENCES `bimestres`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk5` FOREIGN KEY (`act_id`) REFERENCES `actividades`(`id`);

ALTER TABLE `adjuntos_actividades` ADD CONSTRAINT `adjuntos_actividades_fk6` FOREIGN KEY (`est_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk0` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk1` FOREIGN KEY (`ciclo_is`) REFERENCES `ciclos`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk3` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `horarios_profesores` ADD CONSTRAINT `horarios_profesores_fk4` FOREIGN KEY (`periodo_id`) REFERENCES `periodos`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk0` FOREIGN KEY (`profesor_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk1` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `planes_de_clases` ADD CONSTRAINT `planes_de_clases_fk2` FOREIGN KEY (`materia_id`) REFERENCES `materias`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk0` FOREIGN KEY (`pro_id`) REFERENCES `profesores`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk1` FOREIGN KEY (`cur_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk2` FOREIGN KEY (`mat_id`) REFERENCES `materias`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk3` FOREIGN KEY (`usr_id`) REFERENCES `users`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk4` FOREIGN KEY (`eas_id`) REFERENCES `estado_asistencia`(`id`);

ALTER TABLE `asistencia` ADD CONSTRAINT `asistencia_fk5` FOREIGN KEY (`bim_id`) REFERENCES `bimestres`(`id`);

ALTER TABLE `llamadas_atencion` ADD CONSTRAINT `llamadas_atencion_fk0` FOREIGN KEY (`tipo_llamada_id`) REFERENCES `tipo_llamada_atencion`(`id`);

ALTER TABLE `llamadas_atencion` ADD CONSTRAINT `llamadas_atencion_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `llamadas_atencion` ADD CONSTRAINT `llamadas_atencion_fk2` FOREIGN KEY (`persona_reporto_id`) REFERENCES `personas`(`id`);

ALTER TABLE `seguimiento_llamadas_atencion` ADD CONSTRAINT `seguimiento_llamadas_atencion_fk0` FOREIGN KEY (`llamada_atencion_id`) REFERENCES `llamadas_atencion`(`id`);

ALTER TABLE `medidas_disciplinarias_tomadas` ADD CONSTRAINT `medidas_disciplinarias_tomadas_fk0` FOREIGN KEY (`llamada_atencion_id`) REFERENCES `llamadas_atencion`(`id`);

ALTER TABLE `medidas_disciplinarias_tomadas` ADD CONSTRAINT `medidas_disciplinarias_tomadas_fk1` FOREIGN KEY (`tipo_medida_id`) REFERENCES `tipos_medidas_disciplinarias`(`id`);

ALTER TABLE `personas` ADD CONSTRAINT `personas_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises`(`id`);

ALTER TABLE `personas` ADD CONSTRAINT `personas_fk1` FOREIGN KEY (`estado_id`) REFERENCES `estados`(`id`);

ALTER TABLE `personas` ADD CONSTRAINT `personas_fk2` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `personas` ADD CONSTRAINT `personas_fk3` FOREIGN KEY (`tipo_doc_id`) REFERENCES `tipo_documentos`(`id`);

ALTER TABLE `cuotas` ADD CONSTRAINT `cuotas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `cuotas` ADD CONSTRAINT `cuotas_fk1` FOREIGN KEY (`tipo_cuota_id`) REFERENCES `tipo_cuotas`(`id`);

ALTER TABLE `cuotas` ADD CONSTRAINT `cuotas_fk2` FOREIGN KEY (`frecuencia_id`) REFERENCES `frecuencia_cuotas`(`id`);

ALTER TABLE `becas` ADD CONSTRAINT `becas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `becas` ADD CONSTRAINT `becas_fk1` FOREIGN KEY (`tipo_beca`) REFERENCES `tipos_becas`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk1` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `facturas` ADD CONSTRAINT `facturas_fk3` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos`(`id`);

ALTER TABLE `gastos` ADD CONSTRAINT `gastos_fk0` FOREIGN KEY (`tipo_gasto_id`) REFERENCES `tipo_gastos`(`id`);

ALTER TABLE `gastos` ADD CONSTRAINT `gastos_fk1` FOREIGN KEY (`metodo_pago_id`) REFERENCES `metodo_pago`(`id`);

ALTER TABLE `transporte` ADD CONSTRAINT `transporte_fk0` FOREIGN KEY (`ruta_id`) REFERENCES `rutas`(`id`);

ALTER TABLE `transporte` ADD CONSTRAINT `transporte_fk1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos`(`id`);

ALTER TABLE `transporte` ADD CONSTRAINT `transporte_fk2` FOREIGN KEY (`chofer_id`) REFERENCES `choferes`(`id`);

ALTER TABLE `libros` ADD CONSTRAINT `libros_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `libros_categoria`(`id`);

ALTER TABLE `libros_prestamos` ADD CONSTRAINT `libros_prestamos_fk0` FOREIGN KEY (`libro_id`) REFERENCES `libros`(`id`);

ALTER TABLE `libros_prestamos` ADD CONSTRAINT `libros_prestamos_fk1` FOREIGN KEY (`persona_id`) REFERENCES `personas`(`id`);

ALTER TABLE `log` ADD CONSTRAINT `log_fk0` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

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

ALTER TABLE `antecedentes_medicos` ADD CONSTRAINT `antecedentes_medicos_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas`(`id`);

ALTER TABLE `becas_detalle` ADD CONSTRAINT `becas_detalle_fk0` FOREIGN KEY (`beca_id`) REFERENCES `becas`(`id`);

ALTER TABLE `becas_detalle` ADD CONSTRAINT `becas_detalle_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `becas_detalle` ADD CONSTRAINT `becas_detalle_fk2` FOREIGN KEY (`tipo_beca`) REFERENCES `tipos_becas`(`id`);

ALTER TABLE `becas_detalle` ADD CONSTRAINT `becas_detalle_fk3` FOREIGN KEY (`tipo_cuota`) REFERENCES `tipo_cuotas`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk1` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk3` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos`(`id`);

ALTER TABLE `facturas_detalle` ADD CONSTRAINT `facturas_detalle_fk4` FOREIGN KEY (`cuota_id`) REFERENCES `cuotas`(`id`);

ALTER TABLE `choferes` ADD CONSTRAINT `choferes_fk0` FOREIGN KEY (`id`) REFERENCES `personas`(`id`);

ALTER TABLE `transporte_detalle` ADD CONSTRAINT `transporte_detalle_fk0` FOREIGN KEY (`transporte_id`) REFERENCES `transporte`(`id`);

ALTER TABLE `transporte_detalle` ADD CONSTRAINT `transporte_detalle_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes`(`id`);
