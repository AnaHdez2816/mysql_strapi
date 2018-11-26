-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2018 a las 23:20:50
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `210`
--
CREATE DATABASE IF NOT EXISTS `210` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `210`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areastrabajos`
--

CREATE TABLE `areastrabajos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `undefined` int(11) DEFAULT NULL,
  `municipio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `areastrabajos`
--

INSERT INTO `areastrabajos` (`id`, `nombre`, `created_at`, `updated_at`, `undefined`, `municipio`) VALUES
(1, 'Atención a jóvenes en conflicto con la ley', '2018-11-24 02:02:10', '2018-11-27 02:45:42', 123, 124),
(2, 'Atención al desplazamiento forzado', '2018-11-24 02:02:17', '2018-11-24 02:02:17', NULL, NULL),
(3, 'Atención en salud mental', '2018-11-24 02:02:23', '2018-11-24 02:02:23', NULL, NULL),
(4, 'Cultura de paz', '2018-11-24 02:02:30', '2018-11-24 02:02:30', NULL, NULL),
(5, 'Derechos humanos', '2018-11-24 02:02:37', '2018-11-24 02:02:37', NULL, NULL),
(6, 'Desarrollo integral de jóvenes', '2018-11-24 02:02:45', '2018-11-24 02:02:45', NULL, NULL),
(7, 'Desarrollo local', '2018-11-24 02:02:55', '2018-11-24 02:02:55', NULL, NULL),
(8, 'Educación formal', '2018-11-24 02:03:02', '2018-11-24 02:03:02', NULL, NULL),
(9, 'Educación no formal', '2018-11-24 02:03:09', '2018-11-24 02:03:09', NULL, NULL),
(10, 'Formación en artes', '2018-11-24 02:03:20', '2018-11-24 02:03:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areastrabajos_orgs__orgs_areastrabajos`
--

CREATE TABLE `areastrabajos_orgs__orgs_areastrabajos` (
  `id` int(11) NOT NULL,
  `areastrabajo_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `areastrabajos_orgs__orgs_areastrabajos`
--

INSERT INTO `areastrabajos_orgs__orgs_areastrabajos` (`id`, `areastrabajo_id`, `org_id`) VALUES
(3, 1, 6),
(4, 1, 7),
(6, 1, 12),
(7, 3, 12),
(9, 1, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_store`
--

CREATE TABLE `core_store` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(2, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(3, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(4, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(5, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(6, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"}}', 'object', NULL, NULL),
(7, 'core_application', '{\"name\":\"Default Application\",\"description\":\"This API is going to be awesome!\"}', 'object', '', ''),
(8, 'plugin_content-manager_schema', '{\"generalSettings\":{\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10},\"models\":{\"plugins\":{\"upload\":{\"file\":{\"label\":\"File\",\"labelPlural\":\"Files\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"hash\":{\"label\":\"Hash\",\"type\":\"string\",\"description\":\"\",\"name\":\"hash\",\"editable\":true,\"placeholder\":\"\"},\"sha256\":{\"label\":\"Sha256\",\"type\":\"string\",\"description\":\"\",\"name\":\"sha256\",\"editable\":true,\"placeholder\":\"\"},\"ext\":{\"label\":\"Ext\",\"type\":\"string\",\"description\":\"\",\"name\":\"ext\",\"editable\":true,\"placeholder\":\"\"},\"mime\":{\"label\":\"Mime\",\"type\":\"string\",\"description\":\"\",\"name\":\"mime\",\"editable\":true,\"placeholder\":\"\"},\"size\":{\"label\":\"Size\",\"type\":\"string\",\"description\":\"\",\"name\":\"size\",\"editable\":true,\"placeholder\":\"\"},\"url\":{\"label\":\"Url\",\"type\":\"string\",\"description\":\"\",\"name\":\"url\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"name\",\"hash\",\"sha256\",\"ext\",\"mime\",\"size\",\"url\",\"provider\"],\"relations\":[]},\"info\":{\"name\":\"file\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"upload_file\",\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false}},\"globalId\":\"UploadFile\",\"globalName\":\"UploadFile\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"related\",\"type\":\"collection\",\"related\":[],\"nature\":\"manyMorphToMany\",\"autoPopulate\":true,\"filter\":\"field\"}],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"hash\":{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},\"sha256\":{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},\"ext\":{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true},\"mime\":{\"label\":\"Mime\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"mime\",\"sortable\":true,\"searchable\":true},\"size\":{\"label\":\"Size\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"size\",\"sortable\":true,\"searchable\":true},\"url\":{\"label\":\"Url\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"url\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"related\":{\"alias\":\"related\",\"type\":\"collection\",\"related\":[],\"nature\":\"manyMorphToMany\",\"autoPopulate\":true,\"filter\":\"field\",\"description\":\"\",\"label\":\"Related\",\"displayedAttribute\":\"id\"}}}},\"users-permissions\":{\"permission\":{\"label\":\"Permission\",\"labelPlural\":\"Permissions\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"},\"controller\":{\"label\":\"Controller\",\"type\":\"string\",\"description\":\"\",\"name\":\"controller\",\"editable\":true,\"placeholder\":\"\"},\"action\":{\"label\":\"Action\",\"type\":\"string\",\"description\":\"\",\"name\":\"action\",\"editable\":true,\"placeholder\":\"\"},\"enabled\":{\"label\":\"Enabled\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"enabled\",\"editable\":true,\"placeholder\":\"\"},\"policy\":{\"label\":\"Policy\",\"type\":\"string\",\"description\":\"\",\"name\":\"policy\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"type\",\"controller\",\"action\",\"enabled\",\"policy\"],\"relations\":[\"role\"]},\"info\":{\"name\":\"permission\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_permission\",\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"globalId\":\"UsersPermissionsPermission\",\"globalName\":\"UsersPermissionsPermission\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},\"controller\":{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},\"action\":{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},\"enabled\":{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true},\"policy\":{\"label\":\"Policy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"policy\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}}},\"role\":{\"label\":\"Role\",\"labelPlural\":\"Roles\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"string\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"},\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"name\",\"description\",\"type\"],\"relations\":[\"permissions\",\"users\"]},\"info\":{\"name\":\"role\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_role\",\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}},\"globalId\":\"UsersPermissionsRole\",\"globalName\":\"UsersPermissionsRole\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"},{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"permissions\":{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Permissions\",\"displayedAttribute\":\"type\"},\"users\":{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Users\",\"displayedAttribute\":\"username\"}}},\"user\":{\"label\":\"User\",\"labelPlural\":\"Users\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"resetPasswordToken\":{\"label\":\"ResetPasswordToken\",\"type\":\"string\",\"description\":\"\",\"name\":\"resetPasswordToken\",\"editable\":true,\"placeholder\":\"\"},\"confirmed\":{\"label\":\"Confirmed\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"confirmed\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\"],\"relations\":[\"role\"]},\"info\":{\"name\":\"user\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_user\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"globalId\":\"UsersPermissionsUser\",\"globalName\":\"UsersPermissionsUser\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"resetPasswordToken\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"resetPasswordToken\",\"sortable\":true,\"searchable\":true},\"confirmed\":{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}}}}},\"juzgadomenores\":{\"label\":\"Juzgadomenores\",\"labelPlural\":\"Juzgadomenores\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[\"municipio\"]},\"info\":{\"name\":\"juzgadomenores\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"juzgadomenores\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"municipio\":{\"collection\":\"municipio\",\"via\":\"juzgadomenores\",\"attribute\":\"municipio\",\"column\":\"id\",\"isVirtual\":true}},\"globalId\":\"Juzgadomenores\",\"globalName\":\"Juzgadomenores\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"municipio\",\"type\":\"collection\",\"collection\":\"municipio\",\"via\":\"juzgadomenores\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false}],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"municipio\":{\"alias\":\"municipio\",\"type\":\"collection\",\"collection\":\"municipio\",\"via\":\"juzgadomenores\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"description\":\"\",\"label\":\"Municipio\",\"displayedAttribute\":\"nombre\"}}},\"juzgadoejecucion\":{\"label\":\"Juzgadoejecucion\",\"labelPlural\":\"Juzgadoejecucions\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[]},\"info\":{\"name\":\"juzgadoejecucion\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"juzgadoejecucions\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"}},\"globalId\":\"Juzgadoejecucion\",\"globalName\":\"Juzgadoejecucion\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"municipio\":{\"label\":\"Municipio\",\"labelPlural\":\"Municipios\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[\"orgs\",\"juzgadomenores\",\"juzgadoejecucion\"]},\"info\":{\"name\":\"municipio\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"municipios\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"orgs\":{\"collection\":\"org\",\"via\":\"procedencia\",\"attribute\":\"org\",\"column\":\"id\",\"isVirtual\":true},\"juzgadomenores\":{\"collection\":\"juzgadomenores\",\"via\":\"municipio\",\"dominant\":true,\"attribute\":\"juzgadomenore\",\"column\":\"id\",\"isVirtual\":true},\"juzgadoejecucion\":{\"model\":\"juzgadoejecucion\"}},\"globalId\":\"Municipio\",\"globalName\":\"Municipio\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"orgs\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"procedencia\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false},{\"alias\":\"juzgadomenores\",\"type\":\"collection\",\"collection\":\"juzgadomenores\",\"via\":\"municipio\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"juzgadoejecucion\",\"type\":\"model\",\"model\":\"juzgadoejecucion\",\"nature\":\"oneWay\",\"autoPopulate\":true,\"dominant\":true}],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"orgs\":{\"alias\":\"orgs\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"procedencia\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"description\":\"\",\"label\":\"Orgs\",\"displayedAttribute\":\"nombre\"},\"juzgadomenores\":{\"alias\":\"juzgadomenores\",\"type\":\"collection\",\"collection\":\"juzgadomenores\",\"via\":\"municipio\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Juzgadomenores\",\"displayedAttribute\":\"nombre\"},\"juzgadoejecucion\":{\"alias\":\"juzgadoejecucion\",\"type\":\"model\",\"model\":\"juzgadoejecucion\",\"nature\":\"oneWay\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Juzgadoejecucion\",\"displayedAttribute\":\"nombre\"}}},\"areastrabajo\":{\"label\":\"Areastrabajo\",\"labelPlural\":\"Areastrabajos\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[\"orgs\"]},\"info\":{\"name\":\"areastrabajo\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"areastrabajos\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"orgs\":{\"collection\":\"org\",\"via\":\"areastrabajos\",\"attribute\":\"org\",\"column\":\"id\",\"isVirtual\":true}},\"globalId\":\"Areastrabajo\",\"globalName\":\"Areastrabajo\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"orgs\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"areastrabajos\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false}],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"orgs\":{\"alias\":\"orgs\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"areastrabajos\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"description\":\"\",\"label\":\"Orgs\",\"displayedAttribute\":\"nombre\"}}},\"departamentos\":{\"label\":\"Departamentos\",\"labelPlural\":\"Departamentos\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[]},\"info\":{\"name\":\"departamentos\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"departamentos\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"}},\"globalId\":\"Departamentos\",\"globalName\":\"Departamentos\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"problema\":{\"label\":\"Problema\",\"labelPlural\":\"Problemas\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[\"org\"]},\"info\":{\"name\":\"problema\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"problemas\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"org\":{\"collection\":\"org\",\"via\":\"problema\",\"attribute\":\"org\",\"column\":\"id\",\"isVirtual\":true}},\"globalId\":\"Problema\",\"globalName\":\"Problema\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"org\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"problema\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false}],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"org\":{\"alias\":\"org\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"problema\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"description\":\"\",\"label\":\"Org\",\"displayedAttribute\":\"nombre\"}}},\"procesosadmision\":{\"label\":\"Procesosadmision\",\"labelPlural\":\"Procesosadmisions\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[\"undefined\"]},\"info\":{\"name\":\"procesosadmision\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"procesosadmisions\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"undefined\":{\"collection\":\"org\",\"via\":\"procesosadmision\",\"isVirtual\":true}},\"globalId\":\"Procesosadmision\",\"globalName\":\"Procesosadmision\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"undefined\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"procesosadmision\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true}],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"undefined\":{\"alias\":\"undefined\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"procesosadmision\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Undefined\",\"displayedAttribute\":\"nombre\"}}},\"tiposervicios\":{\"label\":\"Tiposervicios\",\"labelPlural\":\"Tiposervicios\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[\"orgs\"]},\"info\":{\"name\":\"tiposervicios\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"tiposervicios\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"orgs\":{\"collection\":\"org\",\"via\":\"tiposervicios\",\"attribute\":\"org\",\"column\":\"id\",\"isVirtual\":true}},\"globalId\":\"Tiposervicios\",\"globalName\":\"Tiposervicios\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"orgs\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"tiposervicios\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false}],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"orgs\":{\"alias\":\"orgs\",\"type\":\"collection\",\"collection\":\"org\",\"via\":\"tiposervicios\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"description\":\"\",\"label\":\"Orgs\",\"displayedAttribute\":\"nombre\"}}},\"naturaleza\":{\"label\":\"Naturaleza\",\"labelPlural\":\"Naturalezas\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\"],\"relations\":[]},\"info\":{\"name\":\"naturaleza\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"naturalezas\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"}},\"globalId\":\"Naturaleza\",\"globalName\":\"Naturaleza\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"org\":{\"label\":\"Org\",\"labelPlural\":\"Orgs\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"editDisplay\":{\"availableFields\":{\"nombre\":{\"label\":\"Nombre\",\"type\":\"string\",\"description\":\"\",\"name\":\"nombre\",\"editable\":true,\"placeholder\":\"\"},\"direccion\":{\"label\":\"Direccion\",\"type\":\"text\",\"description\":\"\",\"name\":\"direccion\",\"editable\":true,\"placeholder\":\"\"},\"inscrita\":{\"label\":\"Inscrita\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"inscrita\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"nombre\",\"direccion\",\"inscrita\"],\"relations\":[\"departamentos\",\"procedencia\",\"naturaleza\",\"problema\",\"procesosadmision\",\"tiposervicios\",\"areastrabajos\"]},\"info\":{\"name\":\"org\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"orgs\",\"attributes\":{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"direccion\":{\"default\":\"\",\"type\":\"text\"},\"inscrita\":{\"default\":false,\"type\":\"boolean\"},\"departamentos\":{\"model\":\"departamentos\"},\"procedencia\":{\"collection\":\"municipio\",\"dominant\":true,\"via\":\"orgs\",\"attribute\":\"municipio\",\"column\":\"id\",\"isVirtual\":true},\"naturaleza\":{\"model\":\"naturaleza\"},\"problema\":{\"collection\":\"problema\",\"via\":\"org\",\"dominant\":true,\"attribute\":\"problema\",\"column\":\"id\",\"isVirtual\":true},\"procesosadmision\":{\"model\":\"procesosadmision\"},\"tiposervicios\":{\"collection\":\"tiposervicios\",\"via\":\"orgs\",\"dominant\":true,\"attribute\":\"tiposervicio\",\"column\":\"id\",\"isVirtual\":true},\"areastrabajos\":{\"collection\":\"areastrabajo\",\"via\":\"orgs\",\"dominant\":true,\"attribute\":\"areastrabajo\",\"column\":\"id\",\"isVirtual\":true}},\"globalId\":\"Org\",\"globalName\":\"Org\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"departamentos\",\"type\":\"model\",\"model\":\"departamentos\",\"nature\":\"oneWay\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"procedencia\",\"type\":\"collection\",\"collection\":\"municipio\",\"via\":\"orgs\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"naturaleza\",\"type\":\"model\",\"model\":\"naturaleza\",\"nature\":\"oneWay\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"problema\",\"type\":\"collection\",\"collection\":\"problema\",\"via\":\"org\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"procesosadmision\",\"type\":\"model\",\"model\":\"procesosadmision\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"tiposervicios\",\"type\":\"collection\",\"collection\":\"tiposervicios\",\"via\":\"orgs\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"areastrabajos\",\"type\":\"collection\",\"collection\":\"areastrabajo\",\"via\":\"orgs\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true}],\"fields\":{\"nombre\":{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true},\"direccion\":{\"label\":\"Direccion\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"direccion\",\"sortable\":true,\"searchable\":true},\"inscrita\":{\"label\":\"Inscrita\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"inscrita\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Nombre\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"nombre\",\"sortable\":true,\"searchable\":true},{\"label\":\"Direccion\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"direccion\",\"sortable\":true,\"searchable\":true},{\"label\":\"Inscrita\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"inscrita\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"departamentos\":{\"alias\":\"departamentos\",\"type\":\"model\",\"model\":\"departamentos\",\"nature\":\"oneWay\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Departamentos\",\"displayedAttribute\":\"nombre\"},\"procedencia\":{\"alias\":\"procedencia\",\"type\":\"collection\",\"collection\":\"municipio\",\"via\":\"orgs\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Procedencia\",\"displayedAttribute\":\"nombre\"},\"naturaleza\":{\"alias\":\"naturaleza\",\"type\":\"model\",\"model\":\"naturaleza\",\"nature\":\"oneWay\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Naturaleza\",\"displayedAttribute\":\"nombre\"},\"problema\":{\"alias\":\"problema\",\"type\":\"collection\",\"collection\":\"problema\",\"via\":\"org\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Problema\",\"displayedAttribute\":\"nombre\"},\"procesosadmision\":{\"alias\":\"procesosadmision\",\"type\":\"model\",\"model\":\"procesosadmision\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Procesosadmision\",\"displayedAttribute\":\"nombre\"},\"tiposervicios\":{\"alias\":\"tiposervicios\",\"type\":\"collection\",\"collection\":\"tiposervicios\",\"via\":\"orgs\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Tiposervicios\",\"displayedAttribute\":\"nombre\"},\"areastrabajos\":{\"alias\":\"areastrabajos\",\"type\":\"collection\",\"collection\":\"areastrabajo\",\"via\":\"orgs\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Areastrabajos\",\"displayedAttribute\":\"nombre\"}}}},\"layout\":{\"user\":{\"actions\":{\"create\":\"User.create\",\"update\":\"User.update\",\"destroy\":\"User.destroy\",\"deleteall\":\"User.destroyAll\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"provider\":{\"className\":\"d-none\"},\"resetPasswordToken\":{\"className\":\"d-none\"},\"role\":{\"className\":\"d-none\"}}},\"juzgadomenores\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"juzgadoejecucion\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"municipio\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"areastrabajo\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"departamentos\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"problema\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"procesosadmision\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"tiposervicios\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"naturaleza\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"}}},\"fdsdfsd\":{\"attributes\":{\"vcbcvb\":{\"appearance\":\"\"}}},\"org\":{\"attributes\":{\"nombre\":{\"appearance\":\"\"},\"direccion\":{\"appearance\":\"\"},\"inscrita\":{\"appearance\":\"\"}}}}}', 'object', '', ''),
(9, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"comments\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-official\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"}}', 'object', '', ''),
(10, 'plugin_email_provider', '{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}', 'object', 'development', ''),
(11, 'plugin_upload_provider', '{\"provider\":\"local\",\"name\":\"Local server\",\"enabled\":true,\"sizeLimit\":1000000}', 'object', 'development', ''),
(12, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"refresh\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"­Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square-o\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(13, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"default_role\":\"authenticated\"}', 'object', '', ''),
(14, 'db_model_organizaciones', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"juzgadomenores\":{\"collection\":\"juzgadomenores\",\"via\":\"organizaciones\",\"dominant\":true,\"attribute\":\"juzgadomenore\",\"column\":\"id\",\"isVirtual\":true},\"siglas\":{\"default\":\"\",\"type\":\"string\"},\"juzgadoejecucion\":{\"model\":\"juzgadoejecucion\"},\"areastrabajo\":{\"model\":\"areastrabajo\"},\"inscrita_conna\":{\"default\":false,\"type\":\"boolean\"},\"tiposervicios\":{\"collection\":\"tiposervicios\",\"via\":\"organizaciones\",\"dominant\":true,\"attribute\":\"tiposervicio\",\"column\":\"id\",\"isVirtual\":true},\"lugaresprocedencia\":{\"collection\":\"municipio\",\"via\":\"organizaciones\",\"dominant\":true,\"attribute\":\"municipio\",\"column\":\"id\",\"isVirtual\":true},\"municipio\":{\"model\":\"municipio\"},\"problem\":{\"collection\":\"problema\",\"via\":\"org\",\"dominant\":true,\"attribute\":\"problema\",\"column\":\"id\",\"isVirtual\":true},\"direccion\":{\"default\":\"\",\"type\":\"text\"},\"admision\":{\"collection\":\"procesosadmision\",\"via\":\"org\",\"dominant\":true,\"attribute\":\"procesosadmision\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(15, 'db_model_juzgadomenores', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"municipio\":{\"collection\":\"municipio\",\"via\":\"juzgadomenores\",\"attribute\":\"municipio\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(16, 'db_model_juzgadomenores_organizaciones__organizaciones_juzgadomenores', '{\"juzgadomenore_id\":{\"type\":\"integer\"},\"organizacione_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(17, 'db_model_juzgadoejecucions', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(18, 'db_model_municipios', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"orgs\":{\"collection\":\"org\",\"via\":\"procedencia\",\"attribute\":\"org\",\"column\":\"id\",\"isVirtual\":true},\"juzgadomenores\":{\"collection\":\"juzgadomenores\",\"via\":\"municipio\",\"dominant\":true,\"attribute\":\"juzgadomenore\",\"column\":\"id\",\"isVirtual\":true},\"juzgadoejecucion\":{\"model\":\"juzgadoejecucion\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(19, 'db_model_naturaleza', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(20, 'db_model_areastrabajos', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"orgs\":{\"collection\":\"org\",\"via\":\"areastrabajos\",\"attribute\":\"org\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(21, 'db_model_departamentos', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(22, 'db_model_problemas', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"org\":{\"collection\":\"org\",\"via\":\"problema\",\"attribute\":\"org\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(23, 'db_model_procesosadmisions', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"undefined\":{\"collection\":\"org\",\"via\":\"procesosadmision\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(24, 'db_model_tiposervicios', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"orgs\":{\"collection\":\"org\",\"via\":\"tiposervicios\",\"attribute\":\"org\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(25, 'db_model_naturalezas', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(26, 'db_model_fdsdfsds', '{\"departamentos\":{\"collection\":\"departamentos\",\"via\":\"fdsdfsds\",\"dominant\":true,\"attribute\":\"departamento\",\"column\":\"id\",\"isVirtual\":true},\"vcbcvb\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(27, 'db_model_departamentos_fdsdfsds__fdsdfsds_departamentos', '{\"departamento_id\":{\"type\":\"integer\"},\"fdsdfsd_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(28, 'db_model_gdfgdfs', '{\"departamentos\":{\"collection\":\"departamentos\",\"via\":\"gdfgdfs\",\"dominant\":true,\"attribute\":\"departamento\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(29, 'db_model_departamentos_gdfgdfs__gdfgdfs_departamentos', '{\"departamento_id\":{\"type\":\"integer\"},\"gdfgdf_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(30, 'db_model_gdfgdf', '{\"departamentos\":{\"collection\":\"departamentos\",\"via\":\"gdfgdfs\",\"dominant\":true,\"attribute\":\"departamento\",\"column\":\"id\",\"isVirtual\":true},\"departamento\":{\"collection\":\"departamentos\",\"via\":\"gdfgd\",\"dominant\":true,\"attribute\":\"departamento\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(31, 'db_model_orgs', '{\"nombre\":{\"default\":\"\",\"type\":\"string\"},\"direccion\":{\"default\":\"\",\"type\":\"text\"},\"inscrita\":{\"default\":false,\"type\":\"boolean\"},\"departamentos\":{\"model\":\"departamentos\"},\"procedencia\":{\"collection\":\"municipio\",\"dominant\":true,\"via\":\"orgs\",\"attribute\":\"municipio\",\"column\":\"id\",\"isVirtual\":true},\"naturaleza\":{\"model\":\"naturaleza\"},\"problema\":{\"collection\":\"problema\",\"via\":\"org\",\"dominant\":true,\"attribute\":\"problema\",\"column\":\"id\",\"isVirtual\":true},\"procesosadmision\":{\"model\":\"procesosadmision\"},\"tiposervicios\":{\"collection\":\"tiposervicios\",\"via\":\"orgs\",\"dominant\":true,\"attribute\":\"tiposervicio\",\"column\":\"id\",\"isVirtual\":true},\"areastrabajos\":{\"collection\":\"areastrabajo\",\"via\":\"orgs\",\"dominant\":true,\"attribute\":\"areastrabajo\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(32, 'db_model_juzgadomenores_orgs__orgs_juzgadomenores', '{\"juzgadomenore_id\":{\"type\":\"integer\"},\"org_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(33, 'db_model_municipios_orgs__orgs_procedencias', '{\"municipio_id\":{\"type\":\"integer\"},\"org_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'La Paz', '2018-11-24 02:03:35', '2018-11-26 11:26:14'),
(2, 'Cuscatlán', '2018-11-24 02:03:42', '2018-11-24 02:03:42'),
(3, 'Santa Ana', '2018-11-24 02:03:48', '2018-11-24 02:03:48'),
(4, 'San Salvador', '2018-11-24 02:03:54', '2018-11-24 02:03:55'),
(5, 'San Miguel', '2018-11-24 02:04:05', '2018-11-24 02:04:05'),
(6, 'La Libertad', '2018-11-24 02:04:14', '2018-11-24 02:04:14'),
(7, 'Chalatenango', '2018-11-24 02:04:32', '2018-11-24 02:04:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juzgadoejecucions`
--

CREATE TABLE `juzgadoejecucions` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `juzgadoejecucions`
--

INSERT INTO `juzgadoejecucions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'juzgado ejecucion1', '2018-11-22 23:07:22', '2018-11-22 23:07:22'),
(2, 'juzgado ejecucion2', '2018-11-22 23:07:27', '2018-11-22 23:07:27'),
(3, 'juzgado ejecucion3', '2018-11-22 23:07:34', '2018-11-22 23:07:34'),
(4, 'juzgado ejecucion4', '2018-11-22 23:07:38', '2018-11-22 23:07:38'),
(5, 'juzgado ejecucion5', '2018-11-22 23:07:42', '2018-11-22 23:07:42'),
(6, 'juzgado ejecucion6', '2018-11-22 23:07:46', '2018-11-22 23:07:46'),
(7, 'juzgado ejecucion7', '2018-11-22 23:07:50', '2018-11-22 23:07:50'),
(8, 'juzgado ejecucion8', '2018-11-22 23:07:53', '2018-11-22 23:07:54'),
(9, 'juzgado ejecucion9', '2018-11-22 23:07:58', '2018-11-22 23:07:58'),
(10, 'juzgado ejecucion10', '2018-11-22 23:08:03', '2018-11-22 23:08:03'),
(11, 'Juzgado de Ejecución de Medidas Santa Ana', '2018-11-27 01:28:36', '2018-11-27 01:28:36'),
(12, 'Juzgado de Ejecución de Medidas San Vicente', '2018-11-27 01:28:54', '2018-11-27 01:28:54'),
(13, 'Juzgado 1° de Ejecución de Medidas San Salvador', '2018-11-27 01:29:02', '2018-11-27 01:29:02'),
(14, 'Juzgado 2° de Ejecución de Medidas San Salvador', '2018-11-27 01:29:09', '2018-11-27 01:29:09'),
(15, 'Juzgado de Ejecución de Medidas San Miguel', '2018-11-27 01:29:31', '2018-11-27 01:29:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juzgadomenores`
--

CREATE TABLE `juzgadomenores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `municipio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `juzgadomenores`
--

INSERT INTO `juzgadomenores` (`id`, `nombre`, `created_at`, `updated_at`, `municipio`) VALUES
(1, 'juzgado 1', '2018-11-22 22:45:41', '2018-11-26 23:49:29', 103),
(2, 'juzgado 2', '2018-11-22 22:45:50', '2018-11-26 23:49:29', 103),
(3, 'juzgado 3', '2018-11-22 22:46:03', '2018-11-26 23:49:29', 103),
(4, 'juzgado 4', '2018-11-22 22:46:08', '2018-11-26 23:49:29', 103),
(5, 'juzgado 5', '2018-11-22 22:46:14', '2018-11-22 22:46:14', NULL),
(6, 'juzgado 7', '2018-11-22 22:46:21', '2018-11-24 02:04:53', NULL),
(7, 'juzgado 8', '2018-11-22 22:46:29', '2018-11-24 02:04:59', NULL),
(8, 'juzgado 9', '2018-11-22 22:46:35', '2018-11-24 02:05:05', NULL),
(9, 'juzgado 10', '2018-11-22 22:46:40', '2018-11-24 02:05:09', NULL),
(10, 'juzgado11', '2018-11-24 02:09:38', '2018-11-24 02:09:38', NULL),
(12, 'Juzgado de Menores Ahuachapán', '2018-11-27 01:26:04', '2018-11-27 01:26:04', NULL),
(13, 'Juzgado 1° de Menores Santa Ana', '2018-11-27 01:26:22', '2018-11-27 01:26:23', NULL),
(14, 'Juzgado de Menores Sonsonate', '2018-11-27 01:26:41', '2018-11-27 01:26:41', NULL),
(15, 'Juzgado 1° de Menores San Salvador', '2018-11-27 01:26:56', '2018-11-27 01:26:56', NULL),
(16, 'Juzgado 2° de Menores San Salvador', '2018-11-27 01:27:07', '2018-11-27 01:27:07', NULL),
(17, 'Juzgado 3° de Menores San Salvador', '2018-11-27 01:27:16', '2018-11-27 01:27:16', NULL),
(18, 'Juzgado 4° de Menores San Salvador', '2018-11-27 01:27:33', '2018-11-27 01:27:33', NULL),
(19, 'Juzgado de Menores San Vicente', '2018-11-27 01:27:46', '2018-11-27 01:27:46', NULL),
(20, 'Juzgado de Menores Zacatecoluca', '2018-11-27 01:27:55', '2018-11-27 01:27:55', NULL),
(21, 'Juzgado de Menores San Francisco Gotera', '2018-11-27 01:28:16', '2018-11-27 01:28:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juzgadomenores_municipios__municipios_juzgadomenores`
--

CREATE TABLE `juzgadomenores_municipios__municipios_juzgadomenores` (
  `id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `juzgadomenore_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `juzgadomenores_municipios__municipios_juzgadomenores`
--

INSERT INTO `juzgadomenores_municipios__municipios_juzgadomenores` (`id`, `municipio_id`, `juzgadomenore_id`) VALUES
(12, 110, 15),
(13, 110, 16),
(14, 110, 17),
(15, 110, 18),
(16, 111, 12),
(17, 112, 12),
(18, 113, 13),
(19, 114, 14),
(20, 115, 20),
(21, 116, 21),
(22, 117, 19),
(23, 118, 19),
(24, 119, 18),
(25, 120, 14),
(26, 121, 15),
(27, 122, 20),
(28, 123, 1),
(29, 123, 2),
(30, 124, 1),
(31, 124, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `juzgadoejecucion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `nombre`, `created_at`, `updated_at`, `juzgadoejecucion`) VALUES
(1, 'Alabama', '2018-11-26 05:20:41', '2018-11-26 05:20:41', NULL),
(2, 'Tennessee', '2018-11-26 05:20:41', '2018-11-27 03:26:43', NULL),
(3, 'Alaska', '2018-11-26 05:20:41', '2018-11-26 05:20:41', NULL),
(4, 'Michigan', '2018-11-26 05:20:41', '2018-11-26 05:20:41', NULL),
(5, 'California', '2018-11-26 05:20:41', '2018-11-26 05:20:41', NULL),
(6, 'Alabama', '2018-11-26 05:20:41', '2018-11-26 05:20:41', NULL),
(7, 'Idaho', '2018-11-26 05:20:41', '2018-11-26 05:20:41', NULL),
(8, 'Nebraska', '2018-11-26 05:20:41', '2018-11-26 05:20:41', NULL),
(9, 'Tennessee', '2018-11-26 05:20:41', '2018-11-26 05:20:41', NULL),
(10, 'Iowa', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(11, 'Washington', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(12, 'Kentucky', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(13, 'Maine', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(14, 'Pennsylvania', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(15, 'Minnesota', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(16, 'Massachusetts', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(17, 'Utah', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(18, 'Kansas', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(19, 'Arkansas', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(20, 'Idaho', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(21, 'Colorado', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(22, 'Wyoming', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(23, 'Missouri', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(24, 'Virginia', '2018-11-26 05:20:42', '2018-11-26 05:20:42', NULL),
(25, 'Arizona', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(26, 'Kentucky', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(27, 'Pennsylvania', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(28, 'Missouri', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(29, 'Maine', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(30, 'Alabama', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(31, 'Massachusetts', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(32, 'Connecticut', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(33, 'Missouri', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(34, 'Montana', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(35, 'Illinois', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(36, 'Wisconsin', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(37, 'Minnesota', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(38, 'Nebraska', '2018-11-26 05:20:43', '2018-11-26 05:20:43', NULL),
(39, 'Vermont', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(40, 'Iowa', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(41, 'Utah', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(42, 'Montana', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(43, 'Wisconsin', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(44, 'Wyoming', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(45, 'Ohio', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(46, 'Tennessee', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(47, 'Mississippi', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(48, 'Mississippi', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(49, 'Nebraska', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(50, 'Oklahoma', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(51, 'California', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(52, 'Texas', '2018-11-26 05:20:44', '2018-11-26 05:20:44', NULL),
(53, 'Pennsylvania', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(54, 'Georgia', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(55, 'Washington', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(56, 'Montana', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(57, 'Oregon', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(58, 'Virginia', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(59, 'Wyoming', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(60, 'Alabama', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(61, 'Montana', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(62, 'Texas', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(63, 'Vermont', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(64, 'Vermont', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(65, 'Colorado', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(66, 'Alaska', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(67, 'Illinois', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(68, 'Mississippi', '2018-11-26 05:20:45', '2018-11-26 05:20:45', NULL),
(69, 'Illinois', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(70, 'Montana', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(71, 'Georgia', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(72, 'Vermont', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(73, 'Illinois', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(74, 'Virginia', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(75, 'Florida', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(76, 'Pennsylvania', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(77, 'Illinois', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(78, 'Oklahoma', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(79, 'Maryland', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(80, 'Delaware', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(81, 'Kansas', '2018-11-26 05:20:46', '2018-11-26 05:20:46', NULL),
(82, 'Kentucky', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(83, 'Massachusetts', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(84, 'Alaska', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(85, 'Delaware', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(86, 'Nebraska', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(87, 'Delaware', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(88, 'Vermont', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(89, 'Minnesota', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(90, 'Kansas', '2018-11-26 05:20:47', '2018-11-26 05:20:47', NULL),
(110, 'San Salvador', '2018-11-27 01:31:40', '2018-11-27 01:31:40', 13),
(111, 'Ahuachapan', '2018-11-27 01:32:16', '2018-11-27 01:32:16', 11),
(112, 'Apaneca', '2018-11-27 01:32:39', '2018-11-27 01:32:39', 11),
(113, 'Chalchuapa', '2018-11-27 01:33:16', '2018-11-27 01:33:16', 11),
(114, 'Caluco', '2018-11-27 01:34:38', '2018-11-27 01:34:38', 11),
(115, 'Paraíso de Osorio', '2018-11-27 01:36:34', '2018-11-27 01:36:34', 12),
(116, 'Arambala', '2018-11-27 01:45:35', '2018-11-27 01:45:35', 15),
(117, 'San Lorenzo', '2018-11-27 01:48:06', '2018-11-27 01:48:06', 12),
(118, 'San Cayetano Istepeque', '2018-11-27 01:48:45', '2018-11-27 01:48:45', 12),
(119, 'Panchimalco', '2018-11-27 01:49:25', '2018-11-27 01:49:25', 14),
(120, 'Armenia', '2018-11-27 01:49:51', '2018-11-27 01:49:51', 11),
(121, 'Mejicanos', '2018-11-27 01:59:03', '2018-11-27 01:59:03', 13),
(122, 'Olocuilta', '2018-11-27 01:59:33', '2018-11-27 01:59:33', 12),
(123, 'Prueba1', '2018-11-27 02:31:55', '2018-11-27 02:31:55', 1),
(124, 'Prueba2', '2018-11-27 02:45:42', '2018-11-27 02:45:42', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios_orgs__orgs_procedencias`
--

CREATE TABLE `municipios_orgs__orgs_procedencias` (
  `id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipios_orgs__orgs_procedencias`
--

INSERT INTO `municipios_orgs__orgs_procedencias` (`id`, `municipio_id`, `org_id`) VALUES
(1, 4, 6),
(2, 5, 6),
(3, 6, 6),
(4, 7, 6),
(5, 9, 6),
(6, 1, 7),
(7, 2, 7),
(8, 3, 7),
(9, 4, 7),
(12, 121, 12),
(13, 122, 12),
(15, 1, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `naturalezas`
--

CREATE TABLE `naturalezas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `naturalezas`
--

INSERT INTO `naturalezas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(2, 'Alcaldia', '2018-11-26 09:54:53', '2018-11-27 02:45:42'),
(3, 'Gobierno de El Salvador', '2018-11-26 09:56:29', '2018-11-26 09:56:29'),
(4, 'Organizacion basada en la fe', '2018-11-26 09:56:43', '2018-11-26 09:56:43'),
(5, 'organizacion no gubernamental', '2018-11-26 09:56:56', '2018-11-26 09:56:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orgs`
--

CREATE TABLE `orgs` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` longtext,
  `inscrita` tinyint(1) DEFAULT NULL,
  `departamentos` int(11) DEFAULT NULL,
  `municipio` int(11) DEFAULT NULL,
  `naturaleza` int(11) DEFAULT NULL,
  `procesosadmision` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orgs`
--

INSERT INTO `orgs` (`id`, `nombre`, `direccion`, `inscrita`, `departamentos`, `municipio`, `naturaleza`, `procesosadmision`, `created_at`, `updated_at`) VALUES
(6, 'Iglesia', 'Col. 1', 0, 1, 1, 2, 1, '2018-11-26 11:23:54', '2018-11-26 11:59:27'),
(7, 'ISNA', 'Colonia 2', 1, 1, 1, 2, 1, '2018-11-26 11:26:14', '2018-11-26 11:59:32'),
(12, 'Servicio Social Pasionista', 'Col.5', 1, 4, 121, 5, 1, '2018-11-27 02:03:39', '2018-11-27 02:03:39'),
(14, 'p4', NULL, NULL, 1, 123, 2, 1, '2018-11-27 02:34:18', '2018-11-27 02:34:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orgs_problemas__problemas_orgs`
--

CREATE TABLE `orgs_problemas__problemas_orgs` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `problema_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orgs_problemas__problemas_orgs`
--

INSERT INTO `orgs_problemas__problemas_orgs` (`id`, `org_id`, `problema_id`) VALUES
(3, 6, 1),
(4, 6, 2),
(5, 7, 1),
(6, 7, 2),
(8, 12, 1),
(9, 12, 2),
(10, 12, 3),
(12, 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orgs_tiposervicios__tiposervicios_orgs`
--

CREATE TABLE `orgs_tiposervicios__tiposervicios_orgs` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `tiposervicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orgs_tiposervicios__tiposervicios_orgs`
--

INSERT INTO `orgs_tiposervicios__tiposervicios_orgs` (`id`, `org_id`, `tiposervicio_id`) VALUES
(3, 6, 2),
(4, 7, 2),
(5, 7, 3),
(7, 12, 2),
(8, 12, 4),
(10, 14, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problemas`
--

CREATE TABLE `problemas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `problemas`
--

INSERT INTO `problemas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Acoso de pandillas', '2018-11-24 02:16:40', '2018-11-24 02:16:40'),
(2, 'Baja formación académica', '2018-11-24 02:16:54', '2018-11-24 02:16:54'),
(3, 'Escasos recursos económicos', '2018-11-24 02:17:10', '2018-11-24 02:17:10'),
(4, ' Se desarrollan en contextos violentos', '2018-11-24 02:17:18', '2018-11-24 02:17:18'),
(5, 'Propensión a involucrarse en pandillas y drogas', '2018-11-24 02:17:30', '2018-11-24 02:17:30'),
(6, 'Descuido o abandono de los padres', '2018-11-24 02:17:45', '2018-11-24 02:17:45'),
(7, 'Falta de oportunidades (educación, empleo)', '2018-11-24 02:19:03', '2018-11-24 02:19:03'),
(8, 'Desconocimiento de sus derechos y  mecanismos de protección', '2018-11-24 02:19:25', '2018-11-24 02:19:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesosadmisions`
--

CREATE TABLE `procesosadmisions` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `procesosadmisions`
--

INSERT INTO `procesosadmisions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Admisión  no excluyente. Los aspirantes siguen un proceso de inscripción con requisitos mínimos', '2018-11-24 02:20:23', '2018-11-24 02:20:23'),
(2, 'Admisión excluyente por edad. Los aspirantes deben tener 18 años o más', '2018-11-24 02:20:50', '2018-11-24 02:20:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposervicios`
--

CREATE TABLE `tiposervicios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tiposervicios`
--

INSERT INTO `tiposervicios` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(2, 'Educación formal', '2018-11-26 10:58:06', '2018-11-26 10:58:06'),
(3, 'Educación no formal', '2018-11-26 10:58:19', '2018-11-26 10:58:19'),
(4, 'Habilidades para la vida', '2018-11-26 10:58:31', '2018-11-26 10:58:31'),
(5, 'Habilidades para el trabajo', '2018-11-26 10:58:40', '2018-11-26 10:58:40'),
(6, 'Orientación y asistencia', '2018-11-26 10:58:49', '2018-11-26 10:58:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `sha256` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(11) NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(1, 'content-manager', 'contentmanager', 'models', 1, '', 1),
(2, 'content-manager', 'contentmanager', 'find', 1, '', 1),
(3, 'content-manager', 'contentmanager', 'count', 1, '', 1),
(4, 'content-manager', 'contentmanager', 'findone', 1, '', 1),
(5, 'content-manager', 'contentmanager', 'create', 1, '', 1),
(6, 'content-manager', 'contentmanager', 'delete', 1, '', 1),
(7, 'content-type-builder', 'contenttypebuilder', 'getmodels', 1, '', 1),
(8, 'content-manager', 'contentmanager', 'updatesettings', 1, '', 1),
(9, 'content-manager', 'contentmanager', 'update', 1, '', 1),
(10, 'content-type-builder', 'contenttypebuilder', 'getmodel', 1, '', 1),
(11, 'content-type-builder', 'contenttypebuilder', 'getconnections', 1, '', 1),
(12, 'content-type-builder', 'contenttypebuilder', 'createmodel', 1, '', 1),
(13, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 1, '', 1),
(14, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 1, '', 1),
(15, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 1),
(16, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 1, '', 1),
(17, 'email', 'email', 'send', 1, '', 1),
(18, 'email', 'email', 'getenvironments', 1, '', 1),
(19, 'email', 'email', 'getsettings', 1, '', 1),
(20, 'email', 'email', 'updatesettings', 1, '', 1),
(21, 'settings-manager', 'settingsmanager', 'menu', 1, '', 1),
(22, 'content-manager', 'contentmanager', 'deleteall', 1, '', 1),
(23, 'settings-manager', 'settingsmanager', 'environments', 1, '', 1),
(24, 'settings-manager', 'settingsmanager', 'languages', 1, '', 1),
(25, 'settings-manager', 'settingsmanager', 'databases', 1, '', 1),
(26, 'settings-manager', 'settingsmanager', 'database', 1, '', 1),
(27, 'settings-manager', 'settingsmanager', 'databasemodel', 1, '', 1),
(28, 'settings-manager', 'settingsmanager', 'get', 1, '', 1),
(29, 'settings-manager', 'settingsmanager', 'update', 1, '', 1),
(30, 'settings-manager', 'settingsmanager', 'createlanguage', 1, '', 1),
(31, 'settings-manager', 'settingsmanager', 'deletelanguage', 1, '', 1),
(32, 'settings-manager', 'settingsmanager', 'createdatabase', 1, '', 1),
(33, 'settings-manager', 'settingsmanager', 'updatedatabase', 1, '', 1),
(34, 'settings-manager', 'settingsmanager', 'deletedatabase', 1, '', 1),
(35, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 1),
(36, 'upload', 'upload', 'upload', 1, '', 1),
(37, 'upload', 'upload', 'getenvironments', 1, '', 1),
(38, 'upload', 'upload', 'getsettings', 1, '', 1),
(39, 'upload', 'upload', 'updatesettings', 1, '', 1),
(40, 'upload', 'upload', 'find', 1, '', 1),
(41, 'upload', 'upload', 'findone', 1, '', 1),
(42, 'upload', 'upload', 'count', 1, '', 1),
(43, 'upload', 'upload', 'destroy', 1, '', 1),
(44, 'upload', 'upload', 'search', 1, '', 1),
(45, 'users-permissions', 'auth', 'callback', 1, '', 1),
(46, 'users-permissions', 'auth', 'changepassword', 1, '', 1),
(47, 'users-permissions', 'auth', 'connect', 1, '', 1),
(48, 'users-permissions', 'auth', 'forgotpassword', 1, '', 1),
(49, 'users-permissions', 'auth', 'register', 1, '', 1),
(50, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 1),
(51, 'users-permissions', 'user', 'find', 1, '', 1),
(52, 'users-permissions', 'user', 'me', 1, '', 1),
(53, 'users-permissions', 'user', 'findone', 1, '', 1),
(54, 'users-permissions', 'user', 'create', 1, '', 1),
(55, 'users-permissions', 'user', 'update', 1, '', 1),
(56, 'users-permissions', 'user', 'destroy', 1, '', 1),
(57, 'users-permissions', 'user', 'destroyall', 1, '', 1),
(58, 'users-permissions', 'userspermissions', 'createrole', 1, '', 1),
(59, 'users-permissions', 'userspermissions', 'deleteprovider', 1, '', 1),
(60, 'users-permissions', 'userspermissions', 'deleterole', 1, '', 1),
(61, 'users-permissions', 'userspermissions', 'getpermissions', 1, '', 1),
(62, 'users-permissions', 'userspermissions', 'getpolicies', 1, '', 1),
(63, 'users-permissions', 'userspermissions', 'getrole', 1, '', 1),
(64, 'users-permissions', 'userspermissions', 'getroles', 1, '', 1),
(65, 'users-permissions', 'userspermissions', 'getroutes', 1, '', 1),
(66, 'users-permissions', 'userspermissions', 'index', 1, '', 1),
(67, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(68, 'users-permissions', 'userspermissions', 'searchusers', 1, '', 1),
(69, 'users-permissions', 'userspermissions', 'updaterole', 1, '', 1),
(70, 'users-permissions', 'userspermissions', 'getemailtemplate', 1, '', 1),
(71, 'users-permissions', 'userspermissions', 'updateemailtemplate', 1, '', 1),
(72, 'users-permissions', 'userspermissions', 'getadvancedsettings', 1, '', 1),
(73, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 1, '', 1),
(74, 'users-permissions', 'userspermissions', 'getproviders', 1, '', 1),
(75, 'users-permissions', 'userspermissions', 'updateproviders', 1, '', 1),
(76, 'content-manager', 'contentmanager', 'models', 0, '', 2),
(77, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(78, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(79, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(80, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(81, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(82, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 2),
(83, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(84, 'content-manager', 'contentmanager', 'deleteall', 0, '', 2),
(85, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 2),
(86, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 2),
(87, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 2),
(88, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 2),
(89, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 2),
(90, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 2),
(91, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 2),
(92, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 2),
(93, 'email', 'email', 'send', 0, '', 2),
(94, 'email', 'email', 'getenvironments', 0, '', 2),
(95, 'email', 'email', 'getsettings', 0, '', 2),
(96, 'email', 'email', 'updatesettings', 0, '', 2),
(97, 'settings-manager', 'settingsmanager', 'menu', 0, '', 2),
(98, 'settings-manager', 'settingsmanager', 'environments', 0, '', 2),
(99, 'settings-manager', 'settingsmanager', 'languages', 0, '', 2),
(100, 'settings-manager', 'settingsmanager', 'databases', 0, '', 2),
(101, 'settings-manager', 'settingsmanager', 'database', 0, '', 2),
(102, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 2),
(103, 'settings-manager', 'settingsmanager', 'get', 0, '', 2),
(104, 'settings-manager', 'settingsmanager', 'update', 0, '', 2),
(105, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 2),
(106, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 2),
(107, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 2),
(108, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 2),
(109, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 2),
(110, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 2),
(111, 'upload', 'upload', 'upload', 0, '', 2),
(112, 'upload', 'upload', 'getenvironments', 0, '', 2),
(113, 'upload', 'upload', 'getsettings', 0, '', 2),
(114, 'upload', 'upload', 'updatesettings', 0, '', 2),
(115, 'upload', 'upload', 'find', 0, '', 2),
(116, 'upload', 'upload', 'findone', 0, '', 2),
(117, 'upload', 'upload', 'count', 0, '', 2),
(118, 'upload', 'upload', 'destroy', 0, '', 2),
(119, 'upload', 'upload', 'search', 0, '', 2),
(120, 'users-permissions', 'auth', 'callback', 0, '', 2),
(121, 'users-permissions', 'auth', 'changepassword', 0, '', 2),
(122, 'users-permissions', 'auth', 'connect', 1, '', 2),
(123, 'users-permissions', 'auth', 'forgotpassword', 0, '', 2),
(124, 'users-permissions', 'auth', 'register', 0, '', 2),
(125, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 2),
(126, 'users-permissions', 'user', 'find', 0, '', 2),
(127, 'users-permissions', 'user', 'me', 1, '', 2),
(128, 'users-permissions', 'user', 'findone', 0, '', 2),
(129, 'users-permissions', 'user', 'create', 0, '', 2),
(130, 'users-permissions', 'user', 'update', 0, '', 2),
(131, 'users-permissions', 'user', 'destroy', 0, '', 2),
(132, 'users-permissions', 'user', 'destroyall', 0, '', 2),
(133, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2),
(134, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 2),
(135, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2),
(136, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2),
(137, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2),
(138, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2),
(139, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2),
(140, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2),
(141, 'users-permissions', 'userspermissions', 'index', 0, '', 2),
(142, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(143, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2),
(144, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2),
(145, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2),
(146, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2),
(147, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2),
(148, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2),
(149, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2),
(150, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2),
(151, 'content-manager', 'contentmanager', 'models', 0, '', 3),
(152, 'content-manager', 'contentmanager', 'find', 0, '', 3),
(153, 'content-manager', 'contentmanager', 'count', 0, '', 3),
(154, 'content-manager', 'contentmanager', 'findone', 0, '', 3),
(155, 'content-manager', 'contentmanager', 'create', 0, '', 3),
(156, 'content-manager', 'contentmanager', 'update', 0, '', 3),
(157, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 3),
(158, 'content-manager', 'contentmanager', 'delete', 0, '', 3),
(159, 'content-manager', 'contentmanager', 'deleteall', 0, '', 3),
(160, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 3),
(161, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 3),
(162, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 3),
(163, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 3),
(164, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 3),
(165, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 3),
(166, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 3),
(167, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 3),
(168, 'email', 'email', 'send', 0, '', 3),
(169, 'email', 'email', 'getenvironments', 0, '', 3),
(170, 'email', 'email', 'getsettings', 0, '', 3),
(171, 'email', 'email', 'updatesettings', 0, '', 3),
(172, 'settings-manager', 'settingsmanager', 'menu', 0, '', 3),
(173, 'settings-manager', 'settingsmanager', 'environments', 0, '', 3),
(174, 'settings-manager', 'settingsmanager', 'languages', 0, '', 3),
(175, 'settings-manager', 'settingsmanager', 'databases', 0, '', 3),
(176, 'settings-manager', 'settingsmanager', 'database', 0, '', 3),
(177, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 3),
(178, 'settings-manager', 'settingsmanager', 'get', 0, '', 3),
(179, 'settings-manager', 'settingsmanager', 'update', 0, '', 3),
(180, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 3),
(181, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 3),
(182, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 3),
(183, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 3),
(184, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 3),
(185, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 3),
(186, 'upload', 'upload', 'upload', 0, '', 3),
(187, 'upload', 'upload', 'getenvironments', 0, '', 3),
(188, 'upload', 'upload', 'getsettings', 0, '', 3),
(189, 'upload', 'upload', 'updatesettings', 0, '', 3),
(190, 'upload', 'upload', 'find', 0, '', 3),
(191, 'upload', 'upload', 'findone', 0, '', 3),
(192, 'upload', 'upload', 'count', 0, '', 3),
(193, 'upload', 'upload', 'destroy', 0, '', 3),
(194, 'upload', 'upload', 'search', 0, '', 3),
(195, 'users-permissions', 'auth', 'callback', 1, '', 3),
(196, 'users-permissions', 'auth', 'changepassword', 1, '', 3),
(197, 'users-permissions', 'auth', 'connect', 1, '', 3),
(198, 'users-permissions', 'auth', 'forgotpassword', 1, '', 3),
(199, 'users-permissions', 'auth', 'register', 1, '', 3),
(200, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 3),
(201, 'users-permissions', 'user', 'find', 0, '', 3),
(202, 'users-permissions', 'user', 'me', 1, '', 3),
(203, 'users-permissions', 'user', 'findone', 0, '', 3),
(204, 'users-permissions', 'user', 'create', 0, '', 3),
(205, 'users-permissions', 'user', 'update', 0, '', 3),
(206, 'users-permissions', 'user', 'destroy', 0, '', 3),
(207, 'users-permissions', 'user', 'destroyall', 0, '', 3),
(208, 'users-permissions', 'userspermissions', 'createrole', 0, '', 3),
(209, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 3),
(210, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 3),
(211, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 3),
(212, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 3),
(213, 'users-permissions', 'userspermissions', 'getrole', 0, '', 3),
(214, 'users-permissions', 'userspermissions', 'getroles', 0, '', 3),
(215, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 3),
(216, 'users-permissions', 'userspermissions', 'index', 0, '', 3),
(217, 'users-permissions', 'userspermissions', 'init', 1, '', 3),
(218, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 3),
(219, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 3),
(220, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 3),
(221, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 3),
(222, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 3),
(223, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 3),
(224, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 3),
(225, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 3),
(253, 'application', 'juzgadomenores', 'find', 1, '', 1),
(254, 'application', 'juzgadomenores', 'findone', 1, '', 1),
(255, 'application', 'juzgadomenores', 'count', 1, '', 1),
(256, 'application', 'juzgadomenores', 'create', 1, '', 1),
(257, 'application', 'juzgadomenores', 'update', 1, '', 1),
(258, 'application', 'juzgadomenores', 'destroy', 1, '', 1),
(259, 'application', 'juzgadomenores', 'createrelation', 1, '', 1),
(260, 'application', 'juzgadomenores', 'updaterelation', 1, '', 1),
(261, 'application', 'juzgadomenores', 'destroyrelation', 1, '', 1),
(262, 'application', 'juzgadomenores', 'find', 0, '', 2),
(263, 'application', 'juzgadomenores', 'findone', 0, '', 2),
(264, 'application', 'juzgadomenores', 'count', 0, '', 2),
(265, 'application', 'juzgadomenores', 'create', 0, '', 2),
(266, 'application', 'juzgadomenores', 'update', 0, '', 2),
(267, 'application', 'juzgadomenores', 'destroy', 0, '', 2),
(268, 'application', 'juzgadomenores', 'createrelation', 0, '', 2),
(269, 'application', 'juzgadomenores', 'updaterelation', 0, '', 2),
(270, 'application', 'juzgadomenores', 'destroyrelation', 0, '', 2),
(271, 'application', 'juzgadomenores', 'find', 1, '', 3),
(272, 'application', 'juzgadomenores', 'findone', 1, '', 3),
(273, 'application', 'juzgadomenores', 'count', 1, '', 3),
(274, 'application', 'juzgadomenores', 'create', 1, '', 3),
(275, 'application', 'juzgadomenores', 'update', 1, '', 3),
(276, 'application', 'juzgadomenores', 'destroy', 1, '', 3),
(277, 'application', 'juzgadomenores', 'createrelation', 1, '', 3),
(278, 'application', 'juzgadomenores', 'updaterelation', 1, '', 3),
(279, 'application', 'juzgadomenores', 'destroyrelation', 1, '', 3),
(280, 'application', 'juzgadoejecucion', 'find', 1, '', 1),
(281, 'application', 'juzgadoejecucion', 'findone', 1, '', 1),
(282, 'application', 'juzgadoejecucion', 'count', 1, '', 1),
(283, 'application', 'juzgadoejecucion', 'create', 1, '', 1),
(284, 'application', 'juzgadoejecucion', 'update', 1, '', 1),
(285, 'application', 'juzgadoejecucion', 'destroy', 1, '', 1),
(286, 'application', 'juzgadoejecucion', 'createrelation', 1, '', 1),
(287, 'application', 'juzgadoejecucion', 'updaterelation', 1, '', 1),
(288, 'application', 'juzgadoejecucion', 'destroyrelation', 1, '', 1),
(289, 'application', 'juzgadoejecucion', 'find', 0, '', 2),
(290, 'application', 'juzgadoejecucion', 'findone', 0, '', 2),
(291, 'application', 'juzgadoejecucion', 'count', 0, '', 2),
(292, 'application', 'juzgadoejecucion', 'create', 0, '', 2),
(293, 'application', 'juzgadoejecucion', 'update', 0, '', 2),
(294, 'application', 'juzgadoejecucion', 'destroy', 0, '', 2),
(295, 'application', 'juzgadoejecucion', 'createrelation', 0, '', 2),
(296, 'application', 'juzgadoejecucion', 'updaterelation', 0, '', 2),
(297, 'application', 'juzgadoejecucion', 'destroyrelation', 0, '', 2),
(298, 'application', 'juzgadoejecucion', 'find', 1, '', 3),
(299, 'application', 'juzgadoejecucion', 'findone', 1, '', 3),
(300, 'application', 'juzgadoejecucion', 'count', 1, '', 3),
(301, 'application', 'juzgadoejecucion', 'create', 1, '', 3),
(302, 'application', 'juzgadoejecucion', 'update', 1, '', 3),
(303, 'application', 'juzgadoejecucion', 'destroy', 1, '', 3),
(304, 'application', 'juzgadoejecucion', 'createrelation', 1, '', 3),
(305, 'application', 'juzgadoejecucion', 'updaterelation', 1, '', 3),
(306, 'application', 'juzgadoejecucion', 'destroyrelation', 1, '', 3),
(307, 'application', 'municipio', 'find', 1, '', 1),
(308, 'application', 'municipio', 'findone', 1, '', 1),
(309, 'application', 'municipio', 'count', 1, '', 1),
(310, 'application', 'municipio', 'create', 1, '', 1),
(311, 'application', 'municipio', 'update', 1, '', 1),
(312, 'application', 'municipio', 'destroy', 1, '', 1),
(313, 'application', 'municipio', 'createrelation', 1, '', 1),
(314, 'application', 'municipio', 'updaterelation', 1, '', 1),
(315, 'application', 'municipio', 'destroyrelation', 1, '', 1),
(316, 'application', 'municipio', 'find', 0, '', 2),
(317, 'application', 'municipio', 'findone', 0, '', 2),
(318, 'application', 'municipio', 'count', 0, '', 2),
(319, 'application', 'municipio', 'create', 0, '', 2),
(320, 'application', 'municipio', 'update', 0, '', 2),
(321, 'application', 'municipio', 'destroy', 0, '', 2),
(322, 'application', 'municipio', 'createrelation', 0, '', 2),
(323, 'application', 'municipio', 'updaterelation', 0, '', 2),
(324, 'application', 'municipio', 'destroyrelation', 0, '', 2),
(325, 'application', 'municipio', 'find', 1, '', 3),
(326, 'application', 'municipio', 'findone', 1, '', 3),
(327, 'application', 'municipio', 'count', 1, '', 3),
(328, 'application', 'municipio', 'create', 1, '', 3),
(329, 'application', 'municipio', 'update', 1, '', 3),
(330, 'application', 'municipio', 'destroy', 1, '', 3),
(331, 'application', 'municipio', 'createrelation', 1, '', 3),
(332, 'application', 'municipio', 'updaterelation', 1, '', 3),
(333, 'application', 'municipio', 'destroyrelation', 1, '', 3),
(352, 'application', 'areastrabajo', 'find', 1, '', 1),
(353, 'application', 'areastrabajo', 'findone', 1, '', 1),
(354, 'application', 'areastrabajo', 'count', 1, '', 1),
(355, 'application', 'areastrabajo', 'create', 1, '', 1),
(356, 'application', 'areastrabajo', 'update', 1, '', 1),
(357, 'application', 'areastrabajo', 'destroy', 1, '', 1),
(358, 'application', 'areastrabajo', 'createrelation', 1, '', 1),
(359, 'application', 'areastrabajo', 'updaterelation', 1, '', 1),
(360, 'application', 'areastrabajo', 'destroyrelation', 1, '', 1),
(361, 'application', 'areastrabajo', 'find', 0, '', 2),
(362, 'application', 'areastrabajo', 'findone', 0, '', 2),
(363, 'application', 'areastrabajo', 'count', 0, '', 2),
(364, 'application', 'areastrabajo', 'create', 0, '', 2),
(365, 'application', 'areastrabajo', 'update', 0, '', 2),
(366, 'application', 'areastrabajo', 'destroy', 0, '', 2),
(367, 'application', 'areastrabajo', 'createrelation', 0, '', 2),
(368, 'application', 'areastrabajo', 'updaterelation', 0, '', 2),
(369, 'application', 'areastrabajo', 'destroyrelation', 0, '', 2),
(370, 'application', 'areastrabajo', 'find', 1, '', 3),
(371, 'application', 'areastrabajo', 'findone', 1, '', 3),
(372, 'application', 'areastrabajo', 'count', 1, '', 3),
(373, 'application', 'areastrabajo', 'create', 1, '', 3),
(374, 'application', 'areastrabajo', 'update', 1, '', 3),
(375, 'application', 'areastrabajo', 'destroy', 1, '', 3),
(376, 'application', 'areastrabajo', 'createrelation', 1, '', 3),
(377, 'application', 'areastrabajo', 'updaterelation', 1, '', 3),
(378, 'application', 'areastrabajo', 'destroyrelation', 1, '', 3),
(379, 'application', 'departamentos', 'find', 1, '', 1),
(380, 'application', 'departamentos', 'findone', 1, '', 1),
(381, 'application', 'departamentos', 'count', 1, '', 1),
(382, 'application', 'departamentos', 'create', 1, '', 1),
(383, 'application', 'departamentos', 'update', 1, '', 1),
(384, 'application', 'departamentos', 'destroy', 1, '', 1),
(385, 'application', 'departamentos', 'createrelation', 1, '', 1),
(386, 'application', 'departamentos', 'updaterelation', 1, '', 1),
(387, 'application', 'departamentos', 'destroyrelation', 1, '', 1),
(388, 'application', 'departamentos', 'find', 0, '', 2),
(389, 'application', 'departamentos', 'findone', 0, '', 2),
(390, 'application', 'departamentos', 'count', 0, '', 2),
(391, 'application', 'departamentos', 'create', 0, '', 2),
(392, 'application', 'departamentos', 'update', 0, '', 2),
(393, 'application', 'departamentos', 'destroy', 0, '', 2),
(394, 'application', 'departamentos', 'createrelation', 0, '', 2),
(395, 'application', 'departamentos', 'updaterelation', 0, '', 2),
(396, 'application', 'departamentos', 'destroyrelation', 0, '', 2),
(397, 'application', 'departamentos', 'find', 1, '', 3),
(398, 'application', 'departamentos', 'findone', 1, '', 3),
(399, 'application', 'departamentos', 'count', 1, '', 3),
(400, 'application', 'departamentos', 'create', 1, '', 3),
(401, 'application', 'departamentos', 'update', 1, '', 3),
(402, 'application', 'departamentos', 'destroy', 1, '', 3),
(403, 'application', 'departamentos', 'createrelation', 1, '', 3),
(404, 'application', 'departamentos', 'updaterelation', 1, '', 3),
(405, 'application', 'departamentos', 'destroyrelation', 1, '', 3),
(406, 'application', 'problema', 'find', 1, '', 1),
(407, 'application', 'problema', 'findone', 1, '', 1),
(408, 'application', 'problema', 'count', 1, '', 1),
(409, 'application', 'problema', 'create', 1, '', 1),
(410, 'application', 'problema', 'update', 1, '', 1),
(411, 'application', 'problema', 'destroy', 1, '', 1),
(412, 'application', 'problema', 'createrelation', 1, '', 1),
(413, 'application', 'problema', 'updaterelation', 1, '', 1),
(414, 'application', 'problema', 'destroyrelation', 1, '', 1),
(415, 'application', 'problema', 'find', 0, '', 2),
(416, 'application', 'problema', 'findone', 0, '', 2),
(417, 'application', 'problema', 'count', 0, '', 2),
(418, 'application', 'problema', 'create', 0, '', 2),
(419, 'application', 'problema', 'update', 0, '', 2),
(420, 'application', 'problema', 'destroy', 0, '', 2),
(421, 'application', 'problema', 'createrelation', 0, '', 2),
(422, 'application', 'problema', 'updaterelation', 0, '', 2),
(423, 'application', 'problema', 'destroyrelation', 0, '', 2),
(424, 'application', 'problema', 'find', 1, '', 3),
(425, 'application', 'problema', 'findone', 1, '', 3),
(426, 'application', 'problema', 'count', 1, '', 3),
(427, 'application', 'problema', 'create', 1, '', 3),
(428, 'application', 'problema', 'update', 1, '', 3),
(429, 'application', 'problema', 'destroy', 1, '', 3),
(430, 'application', 'problema', 'createrelation', 1, '', 3),
(431, 'application', 'problema', 'updaterelation', 1, '', 3),
(432, 'application', 'problema', 'destroyrelation', 1, '', 3),
(433, 'application', 'procesosadmision', 'find', 1, '', 1),
(434, 'application', 'procesosadmision', 'findone', 1, '', 1),
(435, 'application', 'procesosadmision', 'count', 1, '', 1),
(436, 'application', 'procesosadmision', 'create', 1, '', 1),
(437, 'application', 'procesosadmision', 'update', 1, '', 1),
(438, 'application', 'procesosadmision', 'destroy', 1, '', 1),
(439, 'application', 'procesosadmision', 'createrelation', 1, '', 1),
(440, 'application', 'procesosadmision', 'updaterelation', 1, '', 1),
(441, 'application', 'procesosadmision', 'destroyrelation', 1, '', 1),
(442, 'application', 'procesosadmision', 'find', 0, '', 2),
(443, 'application', 'procesosadmision', 'findone', 0, '', 2),
(444, 'application', 'procesosadmision', 'count', 0, '', 2),
(445, 'application', 'procesosadmision', 'create', 0, '', 2),
(446, 'application', 'procesosadmision', 'update', 0, '', 2),
(447, 'application', 'procesosadmision', 'destroy', 0, '', 2),
(448, 'application', 'procesosadmision', 'createrelation', 0, '', 2),
(449, 'application', 'procesosadmision', 'updaterelation', 0, '', 2),
(450, 'application', 'procesosadmision', 'destroyrelation', 0, '', 2),
(451, 'application', 'procesosadmision', 'find', 1, '', 3),
(452, 'application', 'procesosadmision', 'findone', 1, '', 3),
(453, 'application', 'procesosadmision', 'count', 1, '', 3),
(454, 'application', 'procesosadmision', 'create', 1, '', 3),
(455, 'application', 'procesosadmision', 'update', 1, '', 3),
(456, 'application', 'procesosadmision', 'destroy', 1, '', 3),
(457, 'application', 'procesosadmision', 'createrelation', 1, '', 3),
(458, 'application', 'procesosadmision', 'updaterelation', 1, '', 3),
(459, 'application', 'procesosadmision', 'destroyrelation', 1, '', 3),
(460, 'application', 'tiposervicios', 'find', 1, '', 1),
(461, 'application', 'tiposervicios', 'findone', 1, '', 1),
(462, 'application', 'tiposervicios', 'count', 1, '', 1),
(463, 'application', 'tiposervicios', 'create', 1, '', 1),
(464, 'application', 'tiposervicios', 'update', 1, '', 1),
(465, 'application', 'tiposervicios', 'destroy', 1, '', 1),
(466, 'application', 'tiposervicios', 'createrelation', 1, '', 1),
(467, 'application', 'tiposervicios', 'updaterelation', 1, '', 1),
(468, 'application', 'tiposervicios', 'destroyrelation', 1, '', 1),
(469, 'application', 'tiposervicios', 'find', 0, '', 2),
(470, 'application', 'tiposervicios', 'findone', 0, '', 2),
(471, 'application', 'tiposervicios', 'count', 0, '', 2),
(472, 'application', 'tiposervicios', 'create', 0, '', 2),
(473, 'application', 'tiposervicios', 'update', 0, '', 2),
(474, 'application', 'tiposervicios', 'destroy', 0, '', 2),
(475, 'application', 'tiposervicios', 'createrelation', 0, '', 2),
(476, 'application', 'tiposervicios', 'updaterelation', 0, '', 2),
(477, 'application', 'tiposervicios', 'destroyrelation', 0, '', 2),
(478, 'application', 'tiposervicios', 'find', 1, '', 3),
(479, 'application', 'tiposervicios', 'findone', 1, '', 3),
(480, 'application', 'tiposervicios', 'count', 1, '', 3),
(481, 'application', 'tiposervicios', 'create', 1, '', 3),
(482, 'application', 'tiposervicios', 'update', 1, '', 3),
(483, 'application', 'tiposervicios', 'destroy', 1, '', 3),
(484, 'application', 'tiposervicios', 'createrelation', 1, '', 3),
(485, 'application', 'tiposervicios', 'updaterelation', 1, '', 3),
(486, 'application', 'tiposervicios', 'destroyrelation', 1, '', 3),
(487, 'application', 'naturaleza', 'find', 1, '', 1),
(488, 'application', 'naturaleza', 'findone', 1, '', 1),
(489, 'application', 'naturaleza', 'count', 1, '', 1),
(490, 'application', 'naturaleza', 'create', 1, '', 1),
(491, 'application', 'naturaleza', 'update', 1, '', 1),
(492, 'application', 'naturaleza', 'destroy', 1, '', 1),
(493, 'application', 'naturaleza', 'createrelation', 1, '', 1),
(494, 'application', 'naturaleza', 'updaterelation', 1, '', 1),
(495, 'application', 'naturaleza', 'destroyrelation', 1, '', 1),
(496, 'application', 'naturaleza', 'find', 0, '', 2),
(497, 'application', 'naturaleza', 'findone', 0, '', 2),
(498, 'application', 'naturaleza', 'count', 0, '', 2),
(499, 'application', 'naturaleza', 'create', 0, '', 2),
(500, 'application', 'naturaleza', 'update', 0, '', 2),
(501, 'application', 'naturaleza', 'destroy', 0, '', 2),
(502, 'application', 'naturaleza', 'createrelation', 0, '', 2),
(503, 'application', 'naturaleza', 'updaterelation', 0, '', 2),
(504, 'application', 'naturaleza', 'destroyrelation', 0, '', 2),
(505, 'application', 'naturaleza', 'find', 1, '', 3),
(506, 'application', 'naturaleza', 'findone', 1, '', 3),
(507, 'application', 'naturaleza', 'count', 1, '', 3),
(508, 'application', 'naturaleza', 'create', 1, '', 3),
(509, 'application', 'naturaleza', 'update', 1, '', 3),
(510, 'application', 'naturaleza', 'destroy', 1, '', 3),
(511, 'application', 'naturaleza', 'createrelation', 1, '', 3),
(512, 'application', 'naturaleza', 'updaterelation', 1, '', 3),
(513, 'application', 'naturaleza', 'destroyrelation', 1, '', 3),
(568, 'application', 'org', 'find', 1, '', 1),
(569, 'application', 'org', 'findone', 1, '', 1),
(570, 'application', 'org', 'count', 1, '', 1),
(571, 'application', 'org', 'create', 1, '', 1),
(572, 'application', 'org', 'update', 1, '', 1),
(573, 'application', 'org', 'destroy', 1, '', 1),
(574, 'application', 'org', 'createrelation', 1, '', 1),
(575, 'application', 'org', 'updaterelation', 1, '', 1),
(576, 'application', 'org', 'destroyrelation', 1, '', 1),
(577, 'application', 'org', 'find', 0, '', 2),
(578, 'application', 'org', 'findone', 0, '', 2),
(579, 'application', 'org', 'count', 0, '', 2),
(580, 'application', 'org', 'create', 0, '', 2),
(581, 'application', 'org', 'update', 0, '', 2),
(582, 'application', 'org', 'destroy', 0, '', 2),
(583, 'application', 'org', 'createrelation', 0, '', 2),
(584, 'application', 'org', 'updaterelation', 0, '', 2),
(585, 'application', 'org', 'destroyrelation', 0, '', 2),
(586, 'application', 'org', 'find', 1, '', 3),
(587, 'application', 'org', 'findone', 1, '', 3),
(588, 'application', 'org', 'count', 1, '', 3),
(589, 'application', 'org', 'create', 1, '', 3),
(590, 'application', 'org', 'update', 1, '', 3),
(591, 'application', 'org', 'destroy', 1, '', 3),
(592, 'application', 'org', 'createrelation', 1, '', 3),
(593, 'application', 'org', 'updaterelation', 1, '', 3),
(594, 'application', 'org', 'destroyrelation', 1, '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Administrator', 'These users have all access in the project.', 'root'),
(2, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(3, 'Public', 'Default role given to unauthenticated user.', 'public');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users-permissions_user`
--

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmed`, `blocked`, `role`) VALUES
(1, 'admin', 'admin@admin.com', 'local', '$2a$10$sICTgZaTYiiSOpVXPeFBHuJP6d1yNfB9WwXHfDe68amCRFauDApMq', NULL, 1, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areastrabajos`
--
ALTER TABLE `areastrabajos`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `areastrabajos` ADD FULLTEXT KEY `SEARCH_AREASTRABAJOS` (`nombre`);

--
-- Indices de la tabla `areastrabajos_orgs__orgs_areastrabajos`
--
ALTER TABLE `areastrabajos_orgs__orgs_areastrabajos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `core_store` ADD FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `departamentos` ADD FULLTEXT KEY `SEARCH_DEPARTAMENTOS` (`nombre`);

--
-- Indices de la tabla `juzgadoejecucions`
--
ALTER TABLE `juzgadoejecucions`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `juzgadoejecucions` ADD FULLTEXT KEY `SEARCH_JUZGADOEJECUCIONS` (`nombre`);

--
-- Indices de la tabla `juzgadomenores`
--
ALTER TABLE `juzgadomenores`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `juzgadomenores` ADD FULLTEXT KEY `SEARCH_JUZGADOMENORES` (`nombre`);

--
-- Indices de la tabla `juzgadomenores_municipios__municipios_juzgadomenores`
--
ALTER TABLE `juzgadomenores_municipios__municipios_juzgadomenores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `municipios` ADD FULLTEXT KEY `SEARCH_MUNICIPIOS` (`nombre`);

--
-- Indices de la tabla `municipios_orgs__orgs_procedencias`
--
ALTER TABLE `municipios_orgs__orgs_procedencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `naturalezas`
--
ALTER TABLE `naturalezas`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `naturalezas` ADD FULLTEXT KEY `SEARCH_NATURALEZAS` (`nombre`);

--
-- Indices de la tabla `orgs`
--
ALTER TABLE `orgs`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `orgs` ADD FULLTEXT KEY `SEARCH_ORGS` (`nombre`,`direccion`);

--
-- Indices de la tabla `orgs_problemas__problemas_orgs`
--
ALTER TABLE `orgs_problemas__problemas_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orgs_tiposervicios__tiposervicios_orgs`
--
ALTER TABLE `orgs_tiposervicios__tiposervicios_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `problemas`
--
ALTER TABLE `problemas`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `problemas` ADD FULLTEXT KEY `SEARCH_PROBLEMAS` (`nombre`);

--
-- Indices de la tabla `procesosadmisions`
--
ALTER TABLE `procesosadmisions`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `procesosadmisions` ADD FULLTEXT KEY `SEARCH_PROCESOSADMISIONS` (`nombre`);

--
-- Indices de la tabla `tiposervicios`
--
ALTER TABLE `tiposervicios`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tiposervicios` ADD FULLTEXT KEY `SEARCH_TIPOSERVICIOS` (`nombre`);

--
-- Indices de la tabla `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE` (`name`,`hash`,`sha256`,`ext`,`mime`,`size`,`url`,`provider`);

--
-- Indices de la tabla `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file_morph` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE_MORPH` (`related_type`,`field`);

--
-- Indices de la tabla `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_permission` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`);

--
-- Indices de la tabla `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_role` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`);

--
-- Indices de la tabla `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_user` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areastrabajos`
--
ALTER TABLE `areastrabajos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `areastrabajos_orgs__orgs_areastrabajos`
--
ALTER TABLE `areastrabajos_orgs__orgs_areastrabajos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `juzgadoejecucions`
--
ALTER TABLE `juzgadoejecucions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `juzgadomenores`
--
ALTER TABLE `juzgadomenores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `juzgadomenores_municipios__municipios_juzgadomenores`
--
ALTER TABLE `juzgadomenores_municipios__municipios_juzgadomenores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `municipios_orgs__orgs_procedencias`
--
ALTER TABLE `municipios_orgs__orgs_procedencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `naturalezas`
--
ALTER TABLE `naturalezas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `orgs`
--
ALTER TABLE `orgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `orgs_problemas__problemas_orgs`
--
ALTER TABLE `orgs_problemas__problemas_orgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `orgs_tiposervicios__tiposervicios_orgs`
--
ALTER TABLE `orgs_tiposervicios__tiposervicios_orgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `problemas`
--
ALTER TABLE `problemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `procesosadmisions`
--
ALTER TABLE `procesosadmisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tiposervicios`
--
ALTER TABLE `tiposervicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- AUTO_INCREMENT de la tabla `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
