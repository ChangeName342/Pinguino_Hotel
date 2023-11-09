-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 02:52:17
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pinguino_hotel_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add administradores', 7, 'add_administradores'),
(26, 'Can change administradores', 7, 'change_administradores'),
(27, 'Can delete administradores', 7, 'delete_administradores'),
(28, 'Can view administradores', 7, 'view_administradores'),
(29, 'Can add clientes', 8, 'add_clientes'),
(30, 'Can change clientes', 8, 'change_clientes'),
(31, 'Can delete clientes', 8, 'delete_clientes'),
(32, 'Can view clientes', 8, 'view_clientes'),
(33, 'Can add habitaciones', 9, 'add_habitaciones'),
(34, 'Can change habitaciones', 9, 'change_habitaciones'),
(35, 'Can delete habitaciones', 9, 'delete_habitaciones'),
(36, 'Can view habitaciones', 9, 'view_habitaciones'),
(37, 'Can add reservas', 10, 'add_reservas'),
(38, 'Can change reservas', 10, 'change_reservas'),
(39, 'Can delete reservas', 10, 'delete_reservas'),
(40, 'Can view reservas', 10, 'view_reservas'),
(41, 'Can add servicios', 11, 'add_servicios'),
(42, 'Can change servicios', 11, 'change_servicios'),
(43, 'Can delete servicios', 11, 'delete_servicios'),
(44, 'Can view servicios', 11, 'view_servicios'),
(45, 'Can add usuarios', 12, 'add_usuarios'),
(46, 'Can change usuarios', 12, 'change_usuarios'),
(47, 'Can delete usuarios', 12, 'delete_usuarios'),
(48, 'Can view usuarios', 12, 'view_usuarios'),
(49, 'Can add servicios_has_ reservas', 13, 'add_servicios_has_reservas'),
(50, 'Can change servicios_has_ reservas', 13, 'change_servicios_has_reservas'),
(51, 'Can delete servicios_has_ reservas', 13, 'delete_servicios_has_reservas'),
(52, 'Can view servicios_has_ reservas', 13, 'view_servicios_has_reservas'),
(53, 'Can add reservas_has_ habitaciones', 14, 'add_reservas_has_habitaciones'),
(54, 'Can change reservas_has_ habitaciones', 14, 'change_reservas_has_habitaciones'),
(55, 'Can delete reservas_has_ habitaciones', 14, 'delete_reservas_has_habitaciones'),
(56, 'Can view reservas_has_ habitaciones', 14, 'view_reservas_has_habitaciones'),
(57, 'Can add metodos_ pago', 15, 'add_metodos_pago'),
(58, 'Can change metodos_ pago', 15, 'change_metodos_pago'),
(59, 'Can delete metodos_ pago', 15, 'delete_metodos_pago'),
(60, 'Can view metodos_ pago', 15, 'view_metodos_pago'),
(61, 'Can add habitaciones_has_ servicios', 16, 'add_habitaciones_has_servicios'),
(62, 'Can change habitaciones_has_ servicios', 16, 'change_habitaciones_has_servicios'),
(63, 'Can delete habitaciones_has_ servicios', 16, 'delete_habitaciones_has_servicios'),
(64, 'Can view habitaciones_has_ servicios', 16, 'view_habitaciones_has_servicios'),
(65, 'Can add resumen', 17, 'add_resumen'),
(66, 'Can change resumen', 17, 'change_resumen'),
(67, 'Can delete resumen', 17, 'delete_resumen'),
(68, 'Can view resumen', 17, 'view_resumen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'principal', 'administradores'),
(8, 'principal', 'clientes'),
(9, 'principal', 'habitaciones'),
(16, 'principal', 'habitaciones_has_servicios'),
(15, 'principal', 'metodos_pago'),
(10, 'principal', 'reservas'),
(14, 'principal', 'reservas_has_habitaciones'),
(17, 'principal', 'resumen'),
(11, 'principal', 'servicios'),
(13, 'principal', 'servicios_has_reservas'),
(12, 'principal', 'usuarios'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-06 18:15:59.030594'),
(2, 'auth', '0001_initial', '2023-11-06 18:15:59.363080'),
(3, 'admin', '0001_initial', '2023-11-06 18:15:59.440080'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-06 18:15:59.445081'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-06 18:15:59.449080'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-06 18:15:59.489080'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-06 18:15:59.498080'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-06 18:15:59.508080'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-06 18:15:59.514088'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-06 18:15:59.543082'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-06 18:15:59.545081'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-06 18:15:59.549081'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-06 18:15:59.559082'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-06 18:15:59.568080'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-06 18:15:59.577082'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-06 18:15:59.581081'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-06 18:15:59.592082'),
(18, 'principal', '0001_initial', '2023-11-06 18:16:00.131975'),
(19, 'principal', '0002_administradores_rol_alter_usuarios_rol', '2023-11-06 18:16:00.146225'),
(20, 'sessions', '0001_initial', '2023-11-06 18:16:00.167904'),
(21, 'principal', '0003_habitaciones_precio', '2023-11-06 18:19:38.902656'),
(22, 'principal', '0004_alter_habitaciones_precio', '2023-11-06 18:21:19.808765'),
(23, 'principal', '0005_alter_administradores_rol', '2023-11-06 18:24:47.110888'),
(24, 'principal', '0006_alter_administradores_rol', '2023-11-06 18:31:55.834346'),
(25, 'principal', '0007_remove_habitaciones_precio', '2023-11-06 18:32:41.517288'),
(26, 'principal', '0008_habitaciones_precio', '2023-11-06 18:39:40.218183'),
(27, 'principal', '0009_reservas_precio_reserva_servicios_precio_servicio', '2023-11-07 21:04:19.554410'),
(28, 'principal', '0010_habitaciones_nombre', '2023-11-08 18:08:11.036946'),
(29, 'principal', '0011_habitaciones_imagen', '2023-11-08 18:32:00.227032'),
(30, 'principal', '0012_alter_reservas_usuarios_user_id', '2023-11-08 20:16:24.141632'),
(31, 'principal', '0013_alter_reservas_fecha_ingreso_and_more', '2023-11-08 20:41:14.354050'),
(32, 'principal', '0014_remove_habitaciones_has_servicios_habitaciones_hab_id_and_more', '2023-11-09 00:37:19.716169'),
(33, 'principal', '0015_reservas_habitacion', '2023-11-09 00:59:31.387514'),
(34, 'principal', '0016_remove_reservas_habitacion', '2023-11-09 01:01:06.927186'),
(35, 'principal', '0017_resumen', '2023-11-09 01:21:23.223295'),
(36, 'principal', '0018_remove_reservas_precio_reserva', '2023-11-09 01:28:39.501327');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dj6rg7t6xyyrelfqnibzeoqgqtr4vk8v', 'eyJlbWFpbCI6ImNoYW5nZXN0ZWFtMTIzNEBnbWFpbC5jb20ifQ:1r0u5i:VLJS2ov6431YL3RFK8sO4fbH145BvBGwRxh8PsgD4PY', '2023-11-23 01:44:18.045416');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_administradores`
--

CREATE TABLE `principal_administradores` (
  `admin_id` int(11) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `principal_administradores`
--

INSERT INTO `principal_administradores` (`admin_id`, `contraseña`, `email`, `rol`) VALUES
(3, 'vivelavida90', 'raulgonzales.pinguino@pinguino.com', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_clientes`
--

CREATE TABLE `principal_clientes` (
  `rut` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `principal_clientes`
--

INSERT INTO `principal_clientes` (`rut`, `nombre`, `apellidos`, `fono`) VALUES
('21308012-Z', 'Ignacio', 'Barrientos', '972710646');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_habitaciones`
--

CREATE TABLE `principal_habitaciones` (
  `hab_id` int(11) NOT NULL,
  `max_personas` int(11) NOT NULL,
  `tamaño` double NOT NULL,
  `descripcion` longtext NOT NULL,
  `estado` varchar(45) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `principal_habitaciones`
--

INSERT INTO `principal_habitaciones` (`hab_id`, `max_personas`, `tamaño`, `descripcion`, `estado`, `precio`, `nombre`, `imagen`) VALUES
(101, 2, 20, 'Esta habitación cuenta con: Cama tamaño King, televisión por cable, Wi-Fi, caja de seguridad, baño privado, aire acondicionado, teléfono con discado directo nacional e internacional y secador de pelo.', 'Disponible', 70000, 'PINGUINO STANDARD', 'habitacion.jpg'),
(201, 2, 30, 'Esta habitación cuenta con: cama tamaño King, televisión por cable, Wi-Fi, caja de seguridad, baño privado, aire acondicionado, teléfono con discado directo nacional e internacional y secador de pelo.', 'Disponible', 70000, 'PINGUINO EMPERATOR', 'habitacion_dos.jpg'),
(301, 2, 20, 'Esta habitación cuenta con: Cama tamaño Individual, living room, escritorio, walk-in closet, caja de seguridad, secador de pelo.', 'Disponible', 50000, 'PINGUINO KING', 'habitacion_tres.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_habitaciones_has_servicios`
--

CREATE TABLE `principal_habitaciones_has_servicios` (
  `id` bigint(20) NOT NULL,
  `Servicios_id_serv_id` int(11) DEFAULT NULL,
  `Reservas_id_reserva_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_metodos_pago`
--

CREATE TABLE `principal_metodos_pago` (
  `id_metodo` int(11) NOT NULL,
  `nombre_titular` varchar(150) NOT NULL,
  `ccv` varchar(3) NOT NULL,
  `fecha_vencimiento` datetime(6) NOT NULL,
  `direccion` longtext NOT NULL,
  `Clientes_rut_id` varchar(10) NOT NULL,
  `Usuarios_user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_reservas`
--

CREATE TABLE `principal_reservas` (
  `id_reserva` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `adultos` int(11) NOT NULL,
  `niños` int(11) NOT NULL,
  `Usuarios_user_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `principal_reservas`
--

INSERT INTO `principal_reservas` (`id_reserva`, `fecha_ingreso`, `fecha_salida`, `adultos`, `niños`, `Usuarios_user_id_id`) VALUES
(1, '2023-11-09', '2023-12-15', 3, 2, NULL),
(123, '2023-11-15', '2023-12-28', 1, 1, NULL),
(124, '2023-11-15', '2023-11-23', 1, 1, NULL),
(125, '2023-11-09', '2023-11-16', 1, 1, NULL),
(126, '2023-11-10', '2023-11-18', 4, 4, NULL),
(127, '2023-11-18', '2023-11-25', 1, 1, NULL),
(128, '2023-11-18', '2023-11-18', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_reservas_has_habitaciones`
--

CREATE TABLE `principal_reservas_has_habitaciones` (
  `id` bigint(20) NOT NULL,
  `Habitaciones_hab_id_id` int(11) NOT NULL,
  `Reservas_id_reserva_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_resumen`
--

CREATE TABLE `principal_resumen` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `titular_tarjeta` varchar(255) NOT NULL,
  `numero_tarjeta` varchar(16) NOT NULL,
  `ccv` varchar(4) NOT NULL,
  `mes_ano` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_servicios`
--

CREATE TABLE `principal_servicios` (
  `id_serv` int(11) NOT NULL,
  `nombre_serv` varchar(255) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `precio_servicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_servicios_has_reservas`
--

CREATE TABLE `principal_servicios_has_reservas` (
  `id` bigint(20) NOT NULL,
  `Reservas_id_reserva_id` int(11) NOT NULL,
  `Servicios_id_serv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal_usuarios`
--

CREATE TABLE `principal_usuarios` (
  `user_id` int(11) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `Clientes_rut_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `principal_usuarios`
--

INSERT INTO `principal_usuarios` (`user_id`, `contraseña`, `email`, `rol`, `Clientes_rut_id`) VALUES
(1, 'vivelavida8', 'changesteam1234@gmail.com', 'Cliente', '21308012-Z');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `principal_administradores`
--
ALTER TABLE `principal_administradores`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indices de la tabla `principal_clientes`
--
ALTER TABLE `principal_clientes`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `principal_habitaciones`
--
ALTER TABLE `principal_habitaciones`
  ADD PRIMARY KEY (`hab_id`);

--
-- Indices de la tabla `principal_habitaciones_has_servicios`
--
ALTER TABLE `principal_habitaciones_has_servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principal_habitacion_Reservas_id_reserva__340418a2_fk_principal` (`Reservas_id_reserva_id`),
  ADD KEY `principal_habitacion_Servicios_id_serv_id_d258cc9a_fk_principal` (`Servicios_id_serv_id`);

--
-- Indices de la tabla `principal_metodos_pago`
--
ALTER TABLE `principal_metodos_pago`
  ADD PRIMARY KEY (`id_metodo`),
  ADD KEY `principal_metodos_pa_Clientes_rut_id_e4658211_fk_principal` (`Clientes_rut_id`),
  ADD KEY `principal_metodos_pa_Usuarios_user_id_id_60ce4388_fk_principal` (`Usuarios_user_id_id`);

--
-- Indices de la tabla `principal_reservas`
--
ALTER TABLE `principal_reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `principal_reservas_Usuarios_user_id_id_de7ea4a5_fk_principal` (`Usuarios_user_id_id`);

--
-- Indices de la tabla `principal_reservas_has_habitaciones`
--
ALTER TABLE `principal_reservas_has_habitaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principal_reservas_h_Habitaciones_hab_id__d4178399_fk_principal` (`Habitaciones_hab_id_id`),
  ADD KEY `principal_reservas_h_Reservas_id_reserva__88c03cb4_fk_principal` (`Reservas_id_reserva_id`);

--
-- Indices de la tabla `principal_resumen`
--
ALTER TABLE `principal_resumen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `principal_servicios`
--
ALTER TABLE `principal_servicios`
  ADD PRIMARY KEY (`id_serv`);

--
-- Indices de la tabla `principal_servicios_has_reservas`
--
ALTER TABLE `principal_servicios_has_reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principal_servicios__Reservas_id_reserva__623ef862_fk_principal` (`Reservas_id_reserva_id`),
  ADD KEY `principal_servicios__Servicios_id_serv_id_5337baa1_fk_principal` (`Servicios_id_serv_id`);

--
-- Indices de la tabla `principal_usuarios`
--
ALTER TABLE `principal_usuarios`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `principal_usuarios_Clientes_rut_id_03300c38_fk_principal` (`Clientes_rut_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `principal_administradores`
--
ALTER TABLE `principal_administradores`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `principal_habitaciones`
--
ALTER TABLE `principal_habitaciones`
  MODIFY `hab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT de la tabla `principal_habitaciones_has_servicios`
--
ALTER TABLE `principal_habitaciones_has_servicios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `principal_metodos_pago`
--
ALTER TABLE `principal_metodos_pago`
  MODIFY `id_metodo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `principal_reservas`
--
ALTER TABLE `principal_reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `principal_reservas_has_habitaciones`
--
ALTER TABLE `principal_reservas_has_habitaciones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `principal_resumen`
--
ALTER TABLE `principal_resumen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `principal_servicios`
--
ALTER TABLE `principal_servicios`
  MODIFY `id_serv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `principal_servicios_has_reservas`
--
ALTER TABLE `principal_servicios_has_reservas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `principal_usuarios`
--
ALTER TABLE `principal_usuarios`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `principal_habitaciones_has_servicios`
--
ALTER TABLE `principal_habitaciones_has_servicios`
  ADD CONSTRAINT `principal_habitacion_Reservas_id_reserva__340418a2_fk_principal` FOREIGN KEY (`Reservas_id_reserva_id`) REFERENCES `principal_reservas` (`id_reserva`),
  ADD CONSTRAINT `principal_habitacion_Servicios_id_serv_id_d258cc9a_fk_principal` FOREIGN KEY (`Servicios_id_serv_id`) REFERENCES `principal_servicios` (`id_serv`);

--
-- Filtros para la tabla `principal_metodos_pago`
--
ALTER TABLE `principal_metodos_pago`
  ADD CONSTRAINT `principal_metodos_pa_Clientes_rut_id_e4658211_fk_principal` FOREIGN KEY (`Clientes_rut_id`) REFERENCES `principal_clientes` (`rut`),
  ADD CONSTRAINT `principal_metodos_pa_Usuarios_user_id_id_60ce4388_fk_principal` FOREIGN KEY (`Usuarios_user_id_id`) REFERENCES `principal_usuarios` (`user_id`);

--
-- Filtros para la tabla `principal_reservas`
--
ALTER TABLE `principal_reservas`
  ADD CONSTRAINT `principal_reservas_Usuarios_user_id_id_de7ea4a5_fk_principal` FOREIGN KEY (`Usuarios_user_id_id`) REFERENCES `principal_usuarios` (`user_id`);

--
-- Filtros para la tabla `principal_reservas_has_habitaciones`
--
ALTER TABLE `principal_reservas_has_habitaciones`
  ADD CONSTRAINT `principal_reservas_h_Habitaciones_hab_id__d4178399_fk_principal` FOREIGN KEY (`Habitaciones_hab_id_id`) REFERENCES `principal_habitaciones` (`hab_id`),
  ADD CONSTRAINT `principal_reservas_h_Reservas_id_reserva__88c03cb4_fk_principal` FOREIGN KEY (`Reservas_id_reserva_id`) REFERENCES `principal_reservas` (`id_reserva`);

--
-- Filtros para la tabla `principal_servicios_has_reservas`
--
ALTER TABLE `principal_servicios_has_reservas`
  ADD CONSTRAINT `principal_servicios__Reservas_id_reserva__623ef862_fk_principal` FOREIGN KEY (`Reservas_id_reserva_id`) REFERENCES `principal_reservas` (`id_reserva`),
  ADD CONSTRAINT `principal_servicios__Servicios_id_serv_id_5337baa1_fk_principal` FOREIGN KEY (`Servicios_id_serv_id`) REFERENCES `principal_servicios` (`id_serv`);

--
-- Filtros para la tabla `principal_usuarios`
--
ALTER TABLE `principal_usuarios`
  ADD CONSTRAINT `principal_usuarios_Clientes_rut_id_03300c38_fk_principal` FOREIGN KEY (`Clientes_rut_id`) REFERENCES `principal_clientes` (`rut`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
