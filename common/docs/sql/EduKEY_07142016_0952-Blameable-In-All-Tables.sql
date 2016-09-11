-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2016 a las 15:51:54
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `edukey2_3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE IF NOT EXISTS `actividades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `materia_id` smallint(6) NOT NULL,
  `profesor_id` bigint(20) NOT NULL,
  `tipo_id` smallint(6) NOT NULL,
  `bimestre_id` smallint(6) NOT NULL,
  `fecha` datetime NOT NULL,
  `puntaje_max` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `actividades_fk0` (`ciclo_id`),
  KEY `actividades_fk1` (`curso_id`),
  KEY `actividades_fk2` (`materia_id`),
  KEY `actividades_fk3` (`profesor_id`),
  KEY `actividades_fk4` (`tipo_id`),
  KEY `actividades_fk5` (`bimestre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adjuntos_actividades`
--

CREATE TABLE IF NOT EXISTS `adjuntos_actividades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `materia_id` smallint(6) NOT NULL,
  `profesor_id` bigint(20) NOT NULL,
  `tipo_id` smallint(6) NOT NULL,
  `bimestre_id` smallint(6) NOT NULL,
  `actividad_id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `ruta_adjunto` varchar(2000) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `adjuntos_actividades_fk0` (`ciclo_id`),
  KEY `adjuntos_actividades_fk1` (`curso_id`),
  KEY `adjuntos_actividades_fk2` (`materia_id`),
  KEY `adjuntos_actividades_fk3` (`profesor_id`),
  KEY `adjuntos_actividades_fk4` (`tipo_id`),
  KEY `adjuntos_actividades_fk5` (`bimestre_id`),
  KEY `adjuntos_actividades_fk6` (`actividad_id`),
  KEY `adjuntos_actividades_fk7` (`estudiante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE IF NOT EXISTS `administrativos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `fec_ini` datetime DEFAULT NULL,
  `email_trabajo` varchar(255) NOT NULL,
  `tel_fijo_trabajo` varchar(20) DEFAULT NULL,
  `tel_movil_trabajo` varchar(20) DEFAULT NULL,
  `ubicacion_oficina` varchar(255) DEFAULT NULL,
  `departamento_id` smallint(6) DEFAULT NULL,
  `cargo_id` smallint(6) DEFAULT NULL,
  `nombre_afp` varchar(30) DEFAULT NULL,
  `numero_afp` varchar(15) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `administrativos_fk0` (`persona_id`),
  KEY `administrativos_fk1` (`departamento_id`),
  KEY `administrativos_fk2` (`cargo_id`),
  KEY `nombre_afp` (`nombre_afp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes_medicos`
--

CREATE TABLE IF NOT EXISTS `antecedentes_medicos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `enfermedades_conocidas` varchar(300) DEFAULT NULL,
  `alergias_conocidas` varchar(300) DEFAULT NULL,
  `transtornos_conocidos` varchar(300) DEFAULT NULL,
  `sindromes_conocidos` varchar(300) DEFAULT NULL,
  `medicamentos_continuos` varchar(300) DEFAULT NULL,
  `nombre_medico_cabecera` varchar(180) DEFAULT NULL,
  `telefono_medico_cabecera` varchar(20) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `antecedentes_medicos_fk0` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE IF NOT EXISTS `asistencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `materia_id` smallint(6) NOT NULL,
  `periodo_id` smallint(6) NOT NULL,
  `profesor_id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `estado_id` smallint(6) NOT NULL,
  `bimestre_id` smallint(6) NOT NULL,
  `fecha` datetime NOT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `licencia` varchar(300) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `asistencia_fk0` (`ciclo_id`),
  KEY `asistencia_fk1` (`curso_id`),
  KEY `asistencia_fk2` (`materia_id`),
  KEY `asistencia_fk3` (`periodo_id`),
  KEY `asistencia_fk4` (`profesor_id`),
  KEY `asistencia_fk5` (`estudiante_id`),
  KEY `asistencia_fk6` (`estado_id`),
  KEY `asistencia_fk7` (`bimestre_id`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `becas`
--

CREATE TABLE IF NOT EXISTS `becas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estudiante_id` bigint(20) NOT NULL,
  `tipo_beca_id` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `becas_fk0` (`estudiante_id`),
  KEY `becas_fk1` (`tipo_beca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `becas_detalle`
--

CREATE TABLE IF NOT EXISTS `becas_detalle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `beca_id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `tipo_beca_id` smallint(6) NOT NULL,
  `tipo_cuota_id` int(11) NOT NULL,
  `descuento` decimal(8,2) DEFAULT NULL,
  `numero_cuotas` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `becas_detalle_fk0` (`beca_id`),
  KEY `becas_detalle_fk1` (`estudiante_id`),
  KEY `becas_detalle_fk2` (`tipo_beca_id`),
  KEY `becas_detalle_fk3` (`tipo_cuota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bimestres`
--

CREATE TABLE IF NOT EXISTS `bimestres` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `mes_ini` smallint(6) NOT NULL,
  `mes_fin` smallint(6) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mes_ini` (`mes_ini`),
  KEY `mes_fin` (`mes_fin`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_eventos`
--

CREATE TABLE IF NOT EXISTS `calendario_eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `tipo_evento_id` smallint(6) NOT NULL,
  `fecha_ini` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `calendario_eventos_fk0` (`tipo_evento_id`),
  KEY `fecha_fin` (`fecha_fin`),
  KEY `fecha_ini` (`fecha_ini`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes`
--

CREATE TABLE IF NOT EXISTS `choferes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `categoria_licencia` char(1) NOT NULL,
  `num_licencia` varchar(15) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `choferes_fk0` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE IF NOT EXISTS `ciclos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `nombre_abr` varchar(3) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`),
  KEY `nombre_abr` (`nombre_abr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos_turnos`
--

CREATE TABLE IF NOT EXISTS `ciclos_turnos` (
  `ciclo_id` smallint(6) NOT NULL,
  `turno_id` smallint(6) NOT NULL,
  `coord_admin_id` bigint(20) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ciclo_id`,`turno_id`),
  KEY `ciclos_turnos_fk1` (`turno_id`),
  KEY `coord_admin_id` (`coord_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos_turnos_cursos_paralelos`
--

CREATE TABLE IF NOT EXISTS `ciclos_turnos_cursos_paralelos` (
  `ciclo_id` smallint(6) NOT NULL,
  `turno_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `paralelo_id` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ciclo_id`,`turno_id`,`curso_id`,`paralelo_id`),
  KEY `ciclos_turnos_cursos_paralelos_fk1` (`turno_id`),
  KEY `ciclos_turnos_cursos_paralelos_fk2` (`curso_id`),
  KEY `ciclos_turnos_cursos_paralelos_fk3` (`paralelo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos_turnos_profesores`
--

CREATE TABLE IF NOT EXISTS `ciclos_turnos_profesores` (
  `ciclo_id` smallint(6) NOT NULL,
  `turno_id` smallint(6) NOT NULL,
  `profesor_id` bigint(20) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ciclo_id`,`turno_id`,`profesor_id`),
  KEY `ciclos_turnos_profesores_fk1` (`turno_id`),
  KEY `ciclos_turnos_profesores_fk2` (`profesor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterios_admision`
--

CREATE TABLE IF NOT EXISTS `criterios_admision` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `peso` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuotas`
--

CREATE TABLE IF NOT EXISTS `cuotas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `tipo_cuota_id` int(11) NOT NULL,
  `frecuencia_id` smallint(6) NOT NULL,
  `descuento` decimal(8,2) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cuotas_fk0` (`estudiante_id`),
  KEY `cuotas_fk1` (`tipo_cuota_id`),
  KEY `cuotas_fk2` (`frecuencia_id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `nombre_abr` varchar(3) NOT NULL,
  `ciclo_id` smallint(6) NOT NULL,
  `orden_correlativo` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cursos_fk0` (`ciclo_id`),
  KEY `nombre` (`nombre`),
  KEY `nombre_abr` (`nombre_abr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_generales`
--

CREATE TABLE IF NOT EXISTS `datos_generales` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `direc` varchar(300) NOT NULL,
  `tel_fijo` varchar(20) DEFAULT NULL,
  `email_contacto` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `datos_generales`
--

INSERT INTO `datos_generales` (`id`, `nombre`, `descripcion`, `direc`, `tel_fijo`, `email_contacto`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 'Cambridge College', '', 'Carretera al Norte, Km 8 1/2', '33333335', 'cc@cambridge.edu', 1468418296, 1, 1468455005, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `jefe_admin_id` bigint(20) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `pais_id` smallint(6) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `estados_fk0` (`pais_id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_asistencia`
--

CREATE TABLE IF NOT EXISTS `estado_asistencia` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `nombre_abr` varchar(3) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`),
  KEY `nombre_abr` (`nombre_abr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `fec_insc` datetime DEFAULT NULL,
  `religion_id` smallint(6) DEFAULT NULL,
  `rude` varchar(22) DEFAULT NULL,
  `curso_id` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `estudiantes_fk0` (`persona_id`),
  KEY `estudiantes_fk1` (`religion_id`),
  KEY `estudiantes_fk2` (`curso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes_actividades`
--

CREATE TABLE IF NOT EXISTS `estudiantes_actividades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `materia_id` smallint(6) NOT NULL,
  `profesor_id` bigint(20) NOT NULL,
  `tipo_id` smallint(6) NOT NULL,
  `bimestre_id` smallint(6) NOT NULL,
  `actividad_id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `nota` decimal(5,2) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `estudiantes_actividades_fk0` (`ciclo_id`),
  KEY `estudiantes_actividades_fk1` (`curso_id`),
  KEY `estudiantes_actividades_fk2` (`materia_id`),
  KEY `estudiantes_actividades_fk3` (`profesor_id`),
  KEY `estudiantes_actividades_fk4` (`tipo_id`),
  KEY `estudiantes_actividades_fk5` (`bimestre_id`),
  KEY `estudiantes_actividades_fk6` (`actividad_id`),
  KEY `estudiantes_actividades_fk7` (`estudiante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `fecha_vence` date NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `paralelo_id` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `facturas_fk0` (`estudiante_id`),
  KEY `facturas_fk1` (`ciclo_id`),
  KEY `facturas_fk2` (`curso_id`),
  KEY `facturas_fk3` (`paralelo_id`),
  KEY `fecha_vence` (`fecha_vence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_detalle`
--

CREATE TABLE IF NOT EXISTS `facturas_detalle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `factura_id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `paralelo_id` smallint(6) NOT NULL,
  `cuota_id` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `monto` double(8,2) NOT NULL,
  `descuento` double(8,2) DEFAULT NULL,
  `total` double(10,2) NOT NULL,
  `payed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `facturas_detalle_fk0` (`factura_id`),
  KEY `facturas_detalle_fk1` (`estudiante_id`),
  KEY `facturas_detalle_fk2` (`ciclo_id`),
  KEY `facturas_detalle_fk3` (`curso_id`),
  KEY `facturas_detalle_fk4` (`paralelo_id`),
  KEY `facturas_detalle_fk5` (`cuota_id`),
  KEY `payed` (`payed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frecuencia_cuotas`
--

CREATE TABLE IF NOT EXISTS `frecuencia_cuotas` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `frecuencia` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE IF NOT EXISTS `gastos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha` date NOT NULL,
  `tipo_gasto_id` int(11) NOT NULL,
  `metodo_pago_id` smallint(6) NOT NULL,
  `monto` double(12,2) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gastos_fk0` (`tipo_gasto_id`),
  KEY `gastos_fk1` (`metodo_pago_id`),
  KEY `nombre` (`nombre`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos_materias`
--

CREATE TABLE IF NOT EXISTS `grupos_materias` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `peso_porciento` int(11) DEFAULT NULL,
  `materia_padre_id` smallint(6) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`),
  KEY `materia_padre_id` (`materia_padre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hijos`
--

CREATE TABLE IF NOT EXISTS `hijos` (
  `padre_id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`padre_id`,`estudiante_id`),
  KEY `hijos_fk1` (`estudiante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_medico`
--

CREATE TABLE IF NOT EXISTS `historial_medico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `grados_temp` smallint(6) DEFAULT NULL,
  `presion_sistolica` smallint(6) DEFAULT NULL,
  `presion_diastolica` smallint(6) DEFAULT NULL,
  `sintomas` varchar(255) NOT NULL,
  `antecedente_sintomas` varchar(255) DEFAULT NULL,
  `diagnostico` varchar(255) NOT NULL,
  `medicacion_aplicada` varchar(255) DEFAULT NULL,
  `medicacion_sugerida` varchar(255) DEFAULT NULL,
  `recomendaciones` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `historial_medico_fk0` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios_profesores`
--

CREATE TABLE IF NOT EXISTS `horarios_profesores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `materia_id` smallint(6) NOT NULL,
  `profesor_id` bigint(20) NOT NULL,
  `periodo_id` smallint(6) NOT NULL,
  `dia` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `horarios_profesores_fk0` (`ciclo_id`),
  KEY `horarios_profesores_fk1` (`curso_id`),
  KEY `horarios_profesores_fk2` (`materia_id`),
  KEY `horarios_profesores_fk3` (`profesor_id`),
  KEY `horarios_profesores_fk4` (`periodo_id`),
  KEY `dia` (`dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE IF NOT EXISTS `idiomas` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas_estudiantes`
--

CREATE TABLE IF NOT EXISTS `idiomas_estudiantes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idioma_id` smallint(6) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idiomas_estudiantes_fk0` (`idioma_id`),
  KEY `idiomas_estudiantes_fk1` (`estudiante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE IF NOT EXISTS `libros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `subtitulo` varchar(100) DEFAULT NULL,
  `autor` varchar(100) NOT NULL,
  `edicion` varchar(20) DEFAULT NULL,
  `ano_edicion` int(11) DEFAULT NULL,
  `ano_publicacion` int(11) DEFAULT NULL,
  `num_copias` smallint(6) DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `pdf_link` varchar(300) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  `categoria_id` smallint(6) NOT NULL,
  `ubicacion` varchar(150) DEFAULT NULL,
  `num_paginas` int(11) DEFAULT NULL,
  `notas` varchar(300) DEFAULT NULL,
  `ruta_portada` varchar(2000) DEFAULT NULL,
  `codigo_barras` varchar(100) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `libros_fk0` (`categoria_id`),
  KEY `ISBN` (`ISBN`),
  KEY `titulo` (`titulo`),
  KEY `autor` (`autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_categoria`
--

CREATE TABLE IF NOT EXISTS `libros_categoria` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_prestamos`
--

CREATE TABLE IF NOT EXISTS `libros_prestamos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `libro_id` bigint(20) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `fecha_retiro` date NOT NULL,
  `fecha_plazo` date NOT NULL,
  `fecha_retorno` date NOT NULL,
  `multa` decimal(5,2) DEFAULT NULL,
  `devuelto` tinyint(1) NOT NULL DEFAULT '0',
  `multa_pagada` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `libros_prestamos_fk0` (`libro_id`),
  KEY `libros_prestamos_fk1` (`persona_id`),
  KEY `devuelto` (`devuelto`),
  KEY `fecha_retiro` (`fecha_retiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llamadas_atencion`
--

CREATE TABLE IF NOT EXISTS `llamadas_atencion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_llamada_id` smallint(6) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `persona_reporto_id` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL,
  `explicacion` varchar(400) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `llamadas_atencion_fk0` (`tipo_llamada_id`),
  KEY `llamadas_atencion_fk1` (`estudiante_id`),
  KEY `llamadas_atencion_fk2` (`persona_reporto_id`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `secuencia` bigint(20) NOT NULL,
  `accion` varchar(50) NOT NULL,
  `basedatos` varchar(50) NOT NULL,
  `consulta` varchar(3000) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `log_fk0` (`user_id`),
  KEY `fecha` (`fecha`),
  KEY `accion` (`accion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE IF NOT EXISTS `materias` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `nombre_corto` varchar(50) NOT NULL,
  `grupo_id` smallint(6) NOT NULL,
  `orden` smallint(6) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `materias_fk0` (`grupo_id`),
  KEY `nombre` (`nombre`),
  KEY `nombre_corto` (`nombre_corto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medidas_disciplinarias_tomadas`
--

CREATE TABLE IF NOT EXISTS `medidas_disciplinarias_tomadas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `llamada_atencion_id` bigint(20) NOT NULL,
  `tipo_medida_id` smallint(6) NOT NULL,
  `fecha` datetime NOT NULL,
  `explicacion` varchar(400) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `medidas_disciplinarias_tomadas_fk0` (`llamada_atencion_id`),
  KEY `medidas_disciplinarias_tomadas_fk1` (`tipo_medida_id`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE IF NOT EXISTS `metodo_pago` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE IF NOT EXISTS `padres` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `email_trabajo` varchar(255) NOT NULL,
  `tel_fijo_trabajo` varchar(20) DEFAULT NULL,
  `tel_movil_trabajo` varchar(20) DEFAULT NULL,
  `profesion` varchar(100) DEFAULT NULL,
  `nit` varchar(30) DEFAULT NULL,
  `razon_social` varchar(180) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `padres_fk0` (`persona_id`),
  KEY `profesion` (`profesion`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE IF NOT EXISTS `paises` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nombre_corto` varchar(3) NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`),
  KEY `nombre_corto` (`nombre_corto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelos`
--

CREATE TABLE IF NOT EXISTS `paralelos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE IF NOT EXISTS `periodos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `hora_ini` time NOT NULL,
  `hora_fin` time NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(60) NOT NULL,
  `ap_pat` varchar(60) DEFAULT NULL,
  `ap_mat` varchar(60) DEFAULT NULL,
  `fec_nac` date DEFAULT NULL,
  `sex` varchar(1) NOT NULL,
  `ruta_foto` varchar(2000) DEFAULT NULL,
  `pais_id` smallint(6) NOT NULL,
  `estado_id` smallint(6) DEFAULT NULL,
  `tipo_sangre` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel_fijo` varchar(20) DEFAULT NULL,
  `tel_movil` varchar(20) DEFAULT NULL,
  `tel_emergencia` varchar(20) NOT NULL,
  `contacto_emergencia` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `tipo_doc_id` smallint(6) NOT NULL,
  `num_doc_id` varchar(30) NOT NULL,
  `direc` varchar(300) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `personas_fk0` (`pais_id`),
  KEY `personas_fk1` (`estado_id`),
  KEY `personas_fk2` (`user_id`),
  KEY `personas_fk3` (`tipo_doc_id`),
  KEY `nombres` (`nombres`),
  KEY `ap_pat` (`ap_pat`),
  KEY `ap_mat` (`ap_mat`),
  KEY `sex` (`sex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes_de_clases`
--

CREATE TABLE IF NOT EXISTS `planes_de_clases` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profesor_id` bigint(20) NOT NULL,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `paralelo_id` smallint(6) NOT NULL,
  `materia_id` smallint(6) NOT NULL,
  `hora` smallint(6) NOT NULL,
  `dia` smallint(6) NOT NULL,
  `objetivo` varchar(255) DEFAULT NULL,
  `procedimiento` varchar(255) DEFAULT NULL,
  `pag_libro` varchar(100) DEFAULT NULL,
  `otros_recursos` varchar(255) DEFAULT NULL,
  `tareas` varchar(255) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `planes_de_clases_fk0` (`profesor_id`),
  KEY `planes_de_clases_fk1` (`ciclo_id`),
  KEY `planes_de_clases_fk2` (`curso_id`),
  KEY `planes_de_clases_fk3` (`paralelo_id`),
  KEY `planes_de_clases_fk4` (`materia_id`),
  KEY `fecha` (`fecha`),
  KEY `dia` (`dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponderacion_actividades`
--

CREATE TABLE IF NOT EXISTS `ponderacion_actividades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ciclo_id` smallint(6) NOT NULL,
  `curso_id` smallint(6) NOT NULL,
  `materia_id` smallint(6) NOT NULL,
  `profesor_id` bigint(20) NOT NULL,
  `tipo_id` smallint(6) NOT NULL,
  `porcentaje` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ponderacion_actividades_fk0` (`ciclo_id`),
  KEY `ponderacion_actividades_fk1` (`curso_id`),
  KEY `ponderacion_actividades_fk2` (`materia_id`),
  KEY `ponderacion_actividades_fk3` (`profesor_id`),
  KEY `ponderacion_actividades_fk4` (`tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE IF NOT EXISTS `postulaciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(60) NOT NULL,
  `apellido_paterno` varchar(60) DEFAULT NULL,
  `apellido_materno` varchar(60) DEFAULT NULL,
  `fecha_postulacion` date NOT NULL,
  `ciclo_postulado` smallint(6) NOT NULL,
  `curso_postulado` smallint(6) NOT NULL,
  `destacado_materias` varchar(200) DEFAULT NULL,
  `destacado_deportes` varchar(200) DEFAULT NULL,
  `destacado_eventos` varchar(200) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postulaciones_fk0` (`ciclo_postulado`),
  KEY `postulaciones_fk1` (`curso_postulado`),
  KEY `nombres` (`nombres`),
  KEY `apellido_paterno` (`apellido_paterno`),
  KEY `apellido_materno` (`apellido_materno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE IF NOT EXISTS `profesores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `fec_ini` datetime DEFAULT NULL,
  `email_trabajo` varchar(255) NOT NULL,
  `tel_fijo_trabajo` varchar(20) DEFAULT NULL,
  `tel_movil_trabajo` varchar(20) DEFAULT NULL,
  `aula_oficina` varchar(255) DEFAULT NULL,
  `nombre_afp` varchar(30) DEFAULT NULL,
  `num_de_afp` varchar(15) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `profesores_fk0` (`persona_id`),
  KEY `nombre_afp` (`nombre_afp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntaje_admision`
--

CREATE TABLE IF NOT EXISTS `puntaje_admision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `postulacion_id` bigint(20) NOT NULL,
  `criterio_id` smallint(6) NOT NULL,
  `puntaje` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `puntaje_admision_fk0` (`postulacion_id`),
  KEY `puntaje_admision_fk1` (`criterio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `religiones`
--

CREATE TABLE IF NOT EXISTS `religiones` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `url_pagina_inicial` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE IF NOT EXISTS `rutas` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `zonas` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `zonas` (`zonas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento_llamadas_atencion`
--

CREATE TABLE IF NOT EXISTS `seguimiento_llamadas_atencion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `llamada_atencion_id` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL,
  `seguimiento_realizado` varchar(400) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `seguimiento_llamadas_atencion_fk0` (`llamada_atencion_id`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semanas`
--

CREATE TABLE IF NOT EXISTS `semanas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `fecha_ini` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_fin` datetime NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fecha_ini` (`fecha_ini`),
  KEY `fecha_fin` (`fecha_fin`),
  KEY `numero` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_actividades`
--

CREATE TABLE IF NOT EXISTS `tipo_actividades` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_becas`
--

CREATE TABLE IF NOT EXISTS `tipo_becas` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuotas`
--

CREATE TABLE IF NOT EXISTS `tipo_cuotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `monto` decimal(8,2) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documentos`
--

CREATE TABLE IF NOT EXISTS `tipo_documentos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_evento`
--

CREATE TABLE IF NOT EXISTS `tipo_evento` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_gastos`
--

CREATE TABLE IF NOT EXISTS `tipo_gastos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_llamada_atencion`
--

CREATE TABLE IF NOT EXISTS `tipo_llamada_atencion` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_medidas_disciplinarias`
--

CREATE TABLE IF NOT EXISTS `tipo_medidas_disciplinarias` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE IF NOT EXISTS `transporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruta_id` smallint(6) NOT NULL,
  `vehiculo_id` smallint(6) NOT NULL,
  `chofer_id` bigint(20) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `transporte_fk0` (`ruta_id`),
  KEY `transporte_fk1` (`vehiculo_id`),
  KEY `transporte_fk2` (`chofer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte_detalle`
--

CREATE TABLE IF NOT EXISTS `transporte_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transporte_id` int(11) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `transporte_detalle_fk0` (`transporte_id`),
  KEY `transporte_detalle_fk1` (`estudiante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE IF NOT EXISTS `turnos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varbinary(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varbinary(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, 'joseosman', 'EdFLy06686dd7iWXiuM-uzhVaFZPOT_k', '$2y$13$kmStvw0Va6ABdLrm.FO/ruKBj092/FwMrOJ2bfDf9qTTsQYLOFos2', NULL, 'joseosman@gmail.com', 10, 1460638174, 0, 1460638174, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_roles`
--

CREATE TABLE IF NOT EXISTS `users_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `rol_id` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `users_roles_fk0` (`user_id`),
  KEY `users_roles_fk1` (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `placa` varchar(15) NOT NULL,
  `num_asientos` smallint(6) NOT NULL,
  `datos_seguro` varchar(300) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `placa` (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_fk5` FOREIGN KEY (`bimestre_id`) REFERENCES `bimestres` (`id`),
  ADD CONSTRAINT `actividades_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `actividades_fk1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `actividades_fk2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `actividades_fk3` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `actividades_fk4` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_actividades` (`id`);

--
-- Filtros para la tabla `adjuntos_actividades`
--
ALTER TABLE `adjuntos_actividades`
  ADD CONSTRAINT `adjuntos_actividades_fk7` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `adjuntos_actividades_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `adjuntos_actividades_fk1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `adjuntos_actividades_fk2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `adjuntos_actividades_fk3` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `adjuntos_actividades_fk4` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_actividades` (`id`),
  ADD CONSTRAINT `adjuntos_actividades_fk5` FOREIGN KEY (`bimestre_id`) REFERENCES `bimestres` (`id`),
  ADD CONSTRAINT `adjuntos_actividades_fk6` FOREIGN KEY (`actividad_id`) REFERENCES `actividades` (`id`);

--
-- Filtros para la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD CONSTRAINT `administrativos_fk2` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`),
  ADD CONSTRAINT `administrativos_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `administrativos_fk1` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`);

--
-- Filtros para la tabla `antecedentes_medicos`
--
ALTER TABLE `antecedentes_medicos`
  ADD CONSTRAINT `antecedentes_medicos_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_fk7` FOREIGN KEY (`bimestre_id`) REFERENCES `bimestres` (`id`),
  ADD CONSTRAINT `asistencia_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `asistencia_fk1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `asistencia_fk2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `asistencia_fk3` FOREIGN KEY (`periodo_id`) REFERENCES `periodos` (`id`),
  ADD CONSTRAINT `asistencia_fk4` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `asistencia_fk5` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `asistencia_fk6` FOREIGN KEY (`estado_id`) REFERENCES `estado_asistencia` (`id`);

--
-- Filtros para la tabla `becas`
--
ALTER TABLE `becas`
  ADD CONSTRAINT `becas_fk1` FOREIGN KEY (`tipo_beca_id`) REFERENCES `tipo_becas` (`id`),
  ADD CONSTRAINT `becas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`);

--
-- Filtros para la tabla `becas_detalle`
--
ALTER TABLE `becas_detalle`
  ADD CONSTRAINT `becas_detalle_fk3` FOREIGN KEY (`tipo_cuota_id`) REFERENCES `tipo_cuotas` (`id`),
  ADD CONSTRAINT `becas_detalle_fk0` FOREIGN KEY (`beca_id`) REFERENCES `becas` (`id`),
  ADD CONSTRAINT `becas_detalle_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `becas_detalle_fk2` FOREIGN KEY (`tipo_beca_id`) REFERENCES `tipo_becas` (`id`);

--
-- Filtros para la tabla `calendario_eventos`
--
ALTER TABLE `calendario_eventos`
  ADD CONSTRAINT `calendario_eventos_fk0` FOREIGN KEY (`tipo_evento_id`) REFERENCES `tipo_evento` (`id`);

--
-- Filtros para la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD CONSTRAINT `choferes_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `ciclos_turnos`
--
ALTER TABLE `ciclos_turnos`
  ADD CONSTRAINT `ciclos_turnos_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos` (`id`),
  ADD CONSTRAINT `ciclos_turnos_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`);

--
-- Filtros para la tabla `ciclos_turnos_cursos_paralelos`
--
ALTER TABLE `ciclos_turnos_cursos_paralelos`
  ADD CONSTRAINT `ciclos_turnos_cursos_paralelos_fk3` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos` (`id`),
  ADD CONSTRAINT `ciclos_turnos_cursos_paralelos_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `ciclos_turnos_cursos_paralelos_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos` (`id`),
  ADD CONSTRAINT `ciclos_turnos_cursos_paralelos_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Filtros para la tabla `ciclos_turnos_profesores`
--
ALTER TABLE `ciclos_turnos_profesores`
  ADD CONSTRAINT `ciclos_turnos_profesores_fk2` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `ciclos_turnos_profesores_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `ciclos_turnos_profesores_fk1` FOREIGN KEY (`turno_id`) REFERENCES `turnos` (`id`);

--
-- Filtros para la tabla `cuotas`
--
ALTER TABLE `cuotas`
  ADD CONSTRAINT `cuotas_fk2` FOREIGN KEY (`frecuencia_id`) REFERENCES `frecuencia_cuotas` (`id`),
  ADD CONSTRAINT `cuotas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `cuotas_fk1` FOREIGN KEY (`tipo_cuota_id`) REFERENCES `tipo_cuotas` (`id`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`);

--
-- Filtros para la tabla `estados`
--
ALTER TABLE `estados`
  ADD CONSTRAINT `estados_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `estudiantes_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `estudiantes_fk1` FOREIGN KEY (`religion_id`) REFERENCES `religiones` (`id`);

--
-- Filtros para la tabla `estudiantes_actividades`
--
ALTER TABLE `estudiantes_actividades`
  ADD CONSTRAINT `estudiantes_actividades_fk7` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `estudiantes_actividades_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `estudiantes_actividades_fk1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `estudiantes_actividades_fk2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `estudiantes_actividades_fk3` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `estudiantes_actividades_fk4` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_actividades` (`id`),
  ADD CONSTRAINT `estudiantes_actividades_fk5` FOREIGN KEY (`bimestre_id`) REFERENCES `bimestres` (`id`),
  ADD CONSTRAINT `estudiantes_actividades_fk6` FOREIGN KEY (`actividad_id`) REFERENCES `actividades` (`id`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_fk3` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos` (`id`),
  ADD CONSTRAINT `facturas_fk0` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `facturas_fk1` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `facturas_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Filtros para la tabla `facturas_detalle`
--
ALTER TABLE `facturas_detalle`
  ADD CONSTRAINT `facturas_detalle_fk5` FOREIGN KEY (`cuota_id`) REFERENCES `cuotas` (`id`),
  ADD CONSTRAINT `facturas_detalle_fk0` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`),
  ADD CONSTRAINT `facturas_detalle_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `facturas_detalle_fk2` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `facturas_detalle_fk3` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `facturas_detalle_fk4` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos` (`id`);

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `gastos_fk1` FOREIGN KEY (`metodo_pago_id`) REFERENCES `metodo_pago` (`id`),
  ADD CONSTRAINT `gastos_fk0` FOREIGN KEY (`tipo_gasto_id`) REFERENCES `tipo_gastos` (`id`);

--
-- Filtros para la tabla `hijos`
--
ALTER TABLE `hijos`
  ADD CONSTRAINT `hijos_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `hijos_fk0` FOREIGN KEY (`padre_id`) REFERENCES `padres` (`id`);

--
-- Filtros para la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD CONSTRAINT `historial_medico_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `horarios_profesores`
--
ALTER TABLE `horarios_profesores`
  ADD CONSTRAINT `horarios_profesores_fk4` FOREIGN KEY (`periodo_id`) REFERENCES `periodos` (`id`),
  ADD CONSTRAINT `horarios_profesores_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `horarios_profesores_fk1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `horarios_profesores_fk2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `horarios_profesores_fk3` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`);

--
-- Filtros para la tabla `idiomas_estudiantes`
--
ALTER TABLE `idiomas_estudiantes`
  ADD CONSTRAINT `idiomas_estudiantes_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`persona_id`),
  ADD CONSTRAINT `idiomas_estudiantes_fk0` FOREIGN KEY (`idioma_id`) REFERENCES `idiomas` (`id`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `libros_categoria` (`id`);

--
-- Filtros para la tabla `libros_prestamos`
--
ALTER TABLE `libros_prestamos`
  ADD CONSTRAINT `libros_prestamos_fk1` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `libros_prestamos_fk0` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`id`);

--
-- Filtros para la tabla `llamadas_atencion`
--
ALTER TABLE `llamadas_atencion`
  ADD CONSTRAINT `llamadas_atencion_fk2` FOREIGN KEY (`persona_reporto_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `llamadas_atencion_fk0` FOREIGN KEY (`tipo_llamada_id`) REFERENCES `tipo_llamada_atencion` (`id`),
  ADD CONSTRAINT `llamadas_atencion_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`);

--
-- Filtros para la tabla `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_fk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_fk0` FOREIGN KEY (`grupo_id`) REFERENCES `grupos_materias` (`id`);

--
-- Filtros para la tabla `medidas_disciplinarias_tomadas`
--
ALTER TABLE `medidas_disciplinarias_tomadas`
  ADD CONSTRAINT `medidas_disciplinarias_tomadas_fk1` FOREIGN KEY (`tipo_medida_id`) REFERENCES `tipo_medidas_disciplinarias` (`id`),
  ADD CONSTRAINT `medidas_disciplinarias_tomadas_fk0` FOREIGN KEY (`llamada_atencion_id`) REFERENCES `llamadas_atencion` (`id`);

--
-- Filtros para la tabla `padres`
--
ALTER TABLE `padres`
  ADD CONSTRAINT `padres_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_fk3` FOREIGN KEY (`tipo_doc_id`) REFERENCES `tipo_documentos` (`id`),
  ADD CONSTRAINT `personas_fk0` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`),
  ADD CONSTRAINT `personas_fk1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `personas_fk2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `planes_de_clases`
--
ALTER TABLE `planes_de_clases`
  ADD CONSTRAINT `planes_de_clases_fk4` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `planes_de_clases_fk0` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `planes_de_clases_fk1` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `planes_de_clases_fk2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `planes_de_clases_fk3` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos` (`id`);

--
-- Filtros para la tabla `ponderacion_actividades`
--
ALTER TABLE `ponderacion_actividades`
  ADD CONSTRAINT `ponderacion_actividades_fk4` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_actividades` (`id`),
  ADD CONSTRAINT `ponderacion_actividades_fk0` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `ponderacion_actividades_fk1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `ponderacion_actividades_fk2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `ponderacion_actividades_fk3` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`);

--
-- Filtros para la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD CONSTRAINT `postulaciones_fk1` FOREIGN KEY (`curso_postulado`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `postulaciones_fk0` FOREIGN KEY (`ciclo_postulado`) REFERENCES `ciclos` (`id`);

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_fk0` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `puntaje_admision`
--
ALTER TABLE `puntaje_admision`
  ADD CONSTRAINT `puntaje_admision_fk1` FOREIGN KEY (`criterio_id`) REFERENCES `criterios_admision` (`id`),
  ADD CONSTRAINT `puntaje_admision_fk0` FOREIGN KEY (`postulacion_id`) REFERENCES `postulaciones` (`id`);

--
-- Filtros para la tabla `seguimiento_llamadas_atencion`
--
ALTER TABLE `seguimiento_llamadas_atencion`
  ADD CONSTRAINT `seguimiento_llamadas_atencion_fk0` FOREIGN KEY (`llamada_atencion_id`) REFERENCES `llamadas_atencion` (`id`);

--
-- Filtros para la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD CONSTRAINT `transporte_fk2` FOREIGN KEY (`chofer_id`) REFERENCES `choferes` (`id`),
  ADD CONSTRAINT `transporte_fk0` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`),
  ADD CONSTRAINT `transporte_fk1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`id`);

--
-- Filtros para la tabla `transporte_detalle`
--
ALTER TABLE `transporte_detalle`
  ADD CONSTRAINT `transporte_detalle_fk1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `transporte_detalle_fk0` FOREIGN KEY (`transporte_id`) REFERENCES `transporte` (`id`);

--
-- Filtros para la tabla `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_fk1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_roles_fk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
