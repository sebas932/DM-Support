

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `drupal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dms_categories`
--

CREATE TABLE IF NOT EXISTS `dms_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dms_download`
--

CREATE TABLE IF NOT EXISTS `dms_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `institute` longtext NOT NULL,
  `intended_use` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dms_download_fbfc09f1` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15223 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dms_downloadinstitutelocation`
--

CREATE TABLE IF NOT EXISTS `dms_downloadinstitutelocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `download_id` int(11) NOT NULL,
  `africa` tinyint(1) NOT NULL DEFAULT '0',
  `asia` tinyint(1) NOT NULL DEFAULT '0',
  `oceania` tinyint(1) NOT NULL DEFAULT '0',
  `central_america_caribbean` tinyint(1) NOT NULL DEFAULT '0',
  `europe` tinyint(1) NOT NULL DEFAULT '0',
  `middle_east_north_africa` tinyint(1) NOT NULL DEFAULT '0',
  `north_america` tinyint(1) NOT NULL DEFAULT '0',
  `south_america` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dms_downloadinstitutelocation_30b991ec` (`download_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15205 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dms_downloadresearchlocation`
--

CREATE TABLE IF NOT EXISTS `dms_downloadresearchlocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `download_id` int(11) NOT NULL,
  `africa` tinyint(1) NOT NULL DEFAULT '0',
  `asia` tinyint(1) NOT NULL DEFAULT '0',
  `oceania` tinyint(1) NOT NULL DEFAULT '0',
  `central_america_caribbean` tinyint(1) NOT NULL DEFAULT '0',
  `europe` tinyint(1) NOT NULL DEFAULT '0',
  `middle_east_north_africa` tinyint(1) NOT NULL DEFAULT '0',
  `north_america` tinyint(1) NOT NULL DEFAULT '0',
  `south_america` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dms_downloadresearchlocation_30b991ec` (`download_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15205 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dms_importance_levels`
--

CREATE TABLE IF NOT EXISTS `dms_importance_levels` (
  `id_importance_level` int(11) NOT NULL,
  `importance_level` enum('Very important','Important','Useful','Optional') DEFAULT NULL,
  `guideline_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id_importance_level`),
  KEY `fk_DMS_importance_level_DMS_guidelines_idx` (`guideline_id`),
  KEY `fk_DMS_importance_level_DMS_what1_idx` (`category_id`),
  KEY `fk_DMS_importance_level_DMS_when1_idx` (`stage_id`),
  KEY `fk_DMS_importance_level_DMS_role1_idx` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dms_person`
--

CREATE TABLE IF NOT EXISTS `dms_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `registered` date NOT NULL,
  `email` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3090 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dms_roles`
--

CREATE TABLE IF NOT EXISTS `dms_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dms_stages`
--

CREATE TABLE IF NOT EXISTS `dms_stages` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `drupal`
--

--
-- Volcado de datos para la tabla `dms_categories`
--

INSERT INTO `dms_categories` (`id`, `name`) VALUES
(1, 'Research Protocols'),
(2, 'Data Management Policies & Plans'),
(3, 'Budgeting & Planning'),
(4, 'Data Ownership'),
(5, 'Data & Document Storage'),
(6, 'Archiving & Sharing'),
(7, 'CCAFS Data Portals'),
(8, 'Data Quality & Organisation'),
(0, 'Data Management Strategy');

--
-- Volcado de datos para la tabla `dms_importance_levels`
--

INSERT INTO `dms_importance_levels` (`id_importance_level`, `importance_level`, `guideline_id`, `category_id`, `stage_id`, `role_id`) VALUES
(1, 'Very important', 1, 0, 1, 1),
(2, 'Important', 1, 0, 1, 2),
(3, 'Very important', 1, 0, 1, 3),
(4, 'Optional', 1, 0, 2, 1),
(5, 'Optional', 1, 0, 2, 2),
(6, 'Optional', 1, 0, 2, 3),
(7, 'Very important', 1, 0, 3, 1),
(8, 'Optional', 1, 0, 3, 2),
(9, 'Optional', 1, 0, 3, 3),
(10, 'Very important', 2, 1, 1, 1),
(11, 'Very important', 2, 1, 1, 2),
(12, 'Very important', 2, 1, 1, 3),
(13, 'Optional', 2, 1, 2, 1),
(14, 'Optional', 2, 1, 2, 2),
(15, 'Optional', 2, 1, 2, 3),
(16, 'Optional', 2, 1, 3, 1),
(17, 'Optional', 2, 1, 3, 2),
(18, 'Optional', 2, 1, 3, 3),
(0, 'Useful', 3, 1, 1, 1),
(20, 'Useful', 3, 1, 1, 2),
(21, 'Useful', 3, 1, 1, 3),
(22, 'Optional', 3, 1, 2, 1),
(23, 'Very important', 3, 1, 2, 2),
(24, 'Useful', 3, 1, 2, 3),
(25, 'Optional', 3, 1, 3, 1),
(26, 'Useful', 3, 1, 3, 2),
(27, 'Useful', 3, 1, 3, 3),
(28, 'Useful', 4, 1, 1, 1),
(29, 'Very important', 4, 1, 1, 2),
(30, 'Important', 4, 1, 1, 3),
(31, 'Optional', 4, 1, 2, 1),
(32, 'Useful', 4, 1, 2, 2),
(33, 'Useful', 4, 1, 2, 3),
(34, 'Optional', 4, 1, 3, 1),
(35, 'Useful', 4, 1, 3, 2),
(36, 'Useful', 4, 1, 3, 3),
(37, 'Useful', 5, 1, 1, 1),
(38, 'Very important', 5, 1, 1, 2),
(39, 'Important', 5, 1, 1, 3),
(40, 'Optional', 5, 1, 2, 1),
(41, 'Useful', 5, 1, 2, 2),
(42, 'Useful', 5, 1, 2, 3),
(43, 'Optional', 5, 1, 3, 1),
(44, 'Useful', 5, 1, 3, 2),
(45, 'Useful', 5, 1, 3, 3),
(46, 'Useful', 6, 1, 1, 1),
(47, 'Very important', 6, 1, 1, 2),
(48, 'Important', 6, 1, 1, 3),
(49, 'Optional', 6, 1, 2, 1),
(50, 'Useful', 6, 1, 2, 2),
(51, 'Useful', 6, 1, 2, 3),
(52, 'Optional', 6, 1, 3, 1),
(53, 'Useful', 6, 1, 3, 2),
(54, 'Useful', 6, 1, 3, 3),
(55, 'Useful', 7, 1, 1, 1),
(56, 'Very important', 7, 1, 1, 2),
(57, 'Important', 7, 1, 1, 3),
(58, 'Optional', 7, 1, 2, 1),
(59, 'Useful', 7, 1, 2, 2),
(60, 'Useful', 7, 1, 2, 3),
(61, 'Optional', 7, 1, 3, 1),
(62, 'Useful', 7, 1, 3, 2),
(63, 'Useful', 7, 1, 3, 3),
(64, 'Very important', 8, 2, 1, 1),
(65, 'Very important', 8, 2, 1, 2),
(66, 'Very important', 8, 2, 1, 3),
(67, 'Useful', 8, 2, 2, 1),
(68, 'Useful', 8, 2, 2, 2),
(69, 'Useful', 8, 2, 2, 3),
(70, 'Optional', 8, 2, 3, 1),
(71, 'Useful', 8, 2, 3, 2),
(72, 'Useful', 8, 2, 3, 3),
(73, 'Useful', 9, 2, 1, 1),
(74, 'Important', 9, 2, 1, 2),
(75, 'Useful', 9, 2, 1, 3),
(76, 'Optional', 9, 2, 2, 1),
(77, 'Useful', 9, 2, 2, 2),
(78, 'Useful', 9, 2, 2, 3),
(79, 'Optional', 9, 2, 3, 1),
(80, 'Useful', 9, 2, 3, 2),
(81, 'Useful', 9, 2, 3, 3),
(82, 'Useful', 10, 2, 1, 1),
(83, 'Important', 10, 2, 1, 2),
(84, 'Useful', 10, 2, 1, 3),
(85, 'Optional', 10, 2, 2, 1),
(86, 'Useful', 10, 2, 2, 2),
(87, 'Useful', 10, 2, 2, 3),
(88, 'Optional', 10, 2, 3, 1),
(89, 'Useful', 10, 2, 3, 2),
(90, 'Useful', 10, 2, 3, 3),
(91, 'Useful', 11, 2, 1, 1),
(92, 'Very important', 11, 2, 1, 2),
(93, 'Important', 11, 2, 1, 3),
(94, 'Optional', 11, 2, 2, 1),
(95, 'Very important', 11, 2, 2, 2),
(96, 'Useful', 11, 2, 2, 3),
(97, 'Optional', 11, 2, 3, 1),
(98, 'Useful', 11, 2, 3, 2),
(99, 'Useful', 11, 2, 3, 3),
(100, 'Very important', 12, 2, 1, 1),
(101, 'Very important', 12, 2, 1, 2),
(102, 'Useful', 12, 2, 1, 3),
(103, 'Optional', 12, 2, 2, 1),
(104, 'Very important', 12, 2, 2, 2),
(105, 'Useful', 12, 2, 2, 3),
(106, 'Optional', 12, 2, 3, 1),
(107, 'Useful', 12, 2, 3, 2),
(108, 'Useful', 12, 2, 3, 3),
(109, 'Very important', 13, 3, 1, 1),
(110, 'Very important', 13, 3, 1, 2),
(111, 'Very important', 13, 3, 1, 3),
(112, 'Useful', 13, 3, 2, 1),
(113, 'Useful', 13, 3, 2, 2),
(114, 'Useful', 13, 3, 2, 3),
(115, 'Optional', 13, 3, 3, 1),
(116, 'Optional', 13, 3, 3, 2),
(117, 'Optional', 13, 3, 3, 3),
(118, 'Very important', 14, 3, 1, 1),
(119, 'Very important', 14, 3, 1, 2),
(120, 'Very important', 14, 3, 1, 3),
(121, 'Useful', 14, 3, 2, 1),
(122, 'Useful', 14, 3, 2, 2),
(123, 'Useful', 14, 3, 2, 3),
(124, 'Optional', 14, 3, 3, 1),
(125, 'Optional', 14, 3, 3, 2),
(126, 'Optional', 14, 3, 3, 3),
(127, 'Very important', 15, 3, 1, 1),
(128, 'Very important', 15, 3, 1, 2),
(129, 'Very important', 15, 3, 1, 3),
(130, 'Useful', 15, 3, 2, 1),
(131, 'Useful', 15, 3, 2, 2),
(132, 'Useful', 15, 3, 2, 3),
(133, 'Optional', 15, 3, 3, 1),
(134, 'Optional', 15, 3, 3, 2),
(135, 'Optional', 15, 3, 3, 3),
(136, 'Very important', 16, 3, 1, 1),
(137, 'Very important', 16, 3, 1, 2),
(138, 'Very important', 16, 3, 1, 3),
(139, 'Useful', 16, 3, 2, 1),
(140, 'Useful', 16, 3, 2, 2),
(141, 'Useful', 16, 3, 2, 3),
(142, 'Optional', 16, 3, 3, 1),
(143, 'Optional', 16, 3, 3, 2),
(144, 'Optional', 16, 3, 3, 3),
(145, 'Very important', 17, 4, 1, 1),
(146, 'Very important', 17, 4, 1, 2),
(147, 'Very important', 17, 4, 1, 3),
(148, 'Useful', 17, 4, 2, 1),
(149, 'Useful', 17, 4, 2, 2),
(150, 'Useful', 17, 4, 2, 3),
(151, 'Optional', 17, 4, 3, 1),
(152, 'Optional', 17, 4, 3, 2),
(153, 'Optional', 17, 4, 3, 3),
(154, 'Very important', 18, 4, 1, 1),
(155, 'Very important', 18, 4, 1, 2),
(156, 'Very important', 18, 4, 1, 3),
(157, 'Useful', 18, 4, 2, 1),
(158, 'Useful', 18, 4, 2, 2),
(159, 'Useful', 18, 4, 2, 3),
(160, 'Optional', 18, 4, 3, 1),
(161, 'Optional', 18, 4, 3, 2),
(162, 'Optional', 18, 4, 3, 3),
(163, 'Very important', 19, 4, 1, 1),
(164, 'Very important', 19, 4, 1, 2),
(165, 'Very important', 19, 4, 1, 3),
(166, 'Useful', 19, 4, 2, 1),
(167, 'Useful', 19, 4, 2, 2),
(168, 'Very important', 19, 4, 2, 3),
(169, 'Useful', 19, 4, 3, 1),
(170, 'Useful', 19, 4, 3, 2),
(171, 'Very important', 19, 4, 3, 3),
(172, 'Very important', 20, 4, 1, 1),
(173, 'Very important', 20, 4, 1, 2),
(174, 'Very important', 20, 4, 1, 3),
(175, 'Useful', 20, 4, 2, 1),
(176, 'Useful', 20, 4, 2, 2),
(177, 'Useful', 20, 4, 2, 3),
(178, 'Optional', 20, 4, 3, 1),
(179, 'Optional', 20, 4, 3, 2),
(180, 'Optional', 20, 4, 3, 3),
(190, 'Very important', 22, 4, 1, 1),
(191, 'Very important', 22, 4, 1, 2),
(192, 'Very important', 22, 4, 1, 3),
(193, 'Useful', 22, 4, 2, 1),
(194, 'Useful', 22, 4, 2, 2),
(195, 'Useful', 22, 4, 2, 3),
(196, 'Optional', 22, 4, 3, 1),
(197, 'Optional', 22, 4, 3, 2),
(198, 'Optional', 22, 4, 3, 3),
(199, 'Very important', 23, 5, 1, 1),
(200, 'Very important', 23, 5, 1, 2),
(201, 'Very important', 23, 5, 1, 3),
(202, 'Useful', 23, 5, 2, 1),
(203, 'Important', 23, 5, 2, 2),
(204, 'Very important', 23, 5, 2, 3),
(205, 'Optional', 23, 5, 3, 1),
(206, 'Optional', 23, 5, 3, 2),
(207, 'Very important', 23, 5, 3, 3),
(208, 'Very important', 24, 5, 1, 1),
(209, 'Very important', 24, 5, 1, 2),
(210, 'Very important', 24, 5, 1, 3),
(211, 'Useful', 24, 5, 2, 1),
(212, 'Important', 24, 5, 2, 2),
(213, 'Very important', 24, 5, 2, 3),
(214, 'Optional', 24, 5, 3, 1),
(215, 'Optional', 24, 5, 3, 2),
(216, 'Very important', 24, 5, 3, 3),
(217, 'Very important', 25, 5, 1, 1),
(218, 'Very important', 25, 5, 1, 2),
(219, 'Very important', 25, 5, 1, 3),
(220, 'Useful', 25, 5, 2, 1),
(221, 'Important', 25, 5, 2, 2),
(222, 'Very important', 25, 5, 2, 3),
(223, 'Optional', 25, 5, 3, 1),
(224, 'Optional', 25, 5, 3, 2),
(225, 'Very important', 25, 5, 3, 3),
(226, 'Useful', 26, 5, 1, 1),
(227, 'Useful', 26, 5, 1, 2),
(228, 'Very important', 26, 5, 1, 3),
(229, 'Useful', 26, 5, 2, 1),
(230, 'Important', 26, 5, 2, 2),
(231, 'Very important', 26, 5, 2, 3),
(232, 'Optional', 26, 5, 3, 1),
(233, 'Optional', 26, 5, 3, 2),
(234, 'Very important', 26, 5, 3, 3),
(235, 'Useful', 27, 5, 1, 1),
(236, 'Useful', 27, 5, 1, 2),
(237, 'Very important', 27, 5, 1, 3),
(238, 'Useful', 27, 5, 2, 1),
(239, 'Important', 27, 5, 2, 2),
(240, 'Very important', 27, 5, 2, 3),
(241, 'Optional', 27, 5, 3, 1),
(242, 'Optional', 27, 5, 3, 2),
(243, 'Very important', 27, 5, 3, 3),
(244, 'Useful', 28, 5, 1, 1),
(245, 'Useful', 28, 5, 1, 2),
(246, 'Very important', 28, 5, 1, 3),
(247, 'Useful', 28, 5, 2, 1),
(248, 'Important', 28, 5, 2, 2),
(249, 'Very important', 28, 5, 2, 3),
(250, 'Optional', 28, 5, 3, 1),
(251, 'Optional', 28, 5, 3, 2),
(252, 'Very important', 28, 5, 3, 3),
(253, 'Useful', 29, 5, 1, 1),
(254, 'Useful', 29, 5, 1, 2),
(255, 'Very important', 29, 5, 1, 3),
(256, 'Useful', 29, 5, 2, 1),
(257, 'Important', 29, 5, 2, 2),
(258, 'Very important', 29, 5, 2, 3),
(259, 'Optional', 29, 5, 3, 1),
(260, 'Optional', 29, 5, 3, 2),
(261, 'Very important', 29, 5, 3, 3),
(262, 'Optional', 30, 5, 1, 1),
(263, 'Useful', 30, 5, 1, 2),
(264, 'Useful', 30, 5, 1, 3),
(265, 'Useful', 30, 5, 2, 1),
(266, 'Useful', 30, 5, 2, 2),
(267, 'Useful', 30, 5, 2, 3),
(268, 'Optional', 30, 5, 3, 1),
(269, 'Optional', 30, 5, 3, 2),
(270, 'Useful', 30, 5, 3, 3),
(271, 'Optional', 31, 5, 1, 1),
(272, 'Useful', 31, 5, 1, 2),
(273, 'Useful', 31, 5, 1, 3),
(274, 'Useful', 31, 5, 2, 1),
(275, 'Useful', 31, 5, 2, 2),
(276, 'Useful', 31, 5, 2, 3),
(277, 'Optional', 31, 5, 3, 1),
(278, 'Optional', 31, 5, 3, 2),
(279, 'Useful', 31, 5, 3, 3),
(280, 'Very important', 32, 6, 1, 1),
(281, 'Useful', 32, 6, 1, 2),
(282, 'Very important', 32, 6, 1, 3),
(283, 'Optional', 32, 6, 2, 1),
(284, 'Useful', 32, 6, 2, 2),
(285, 'Useful', 32, 6, 2, 3),
(286, 'Very important', 32, 6, 3, 1),
(287, 'Very important', 32, 6, 3, 2),
(288, 'Very important', 32, 6, 3, 3),
(289, 'Useful', 33, 6, 1, 1),
(290, 'Useful', 33, 6, 1, 2),
(291, 'Useful', 33, 6, 1, 3),
(292, 'Useful', 33, 6, 2, 1),
(293, 'Useful', 33, 6, 2, 2),
(294, 'Useful', 33, 6, 2, 3),
(295, 'Very important', 33, 6, 3, 1),
(296, 'Very important', 33, 6, 3, 2),
(297, 'Very important', 33, 6, 3, 3),
(298, 'Very important', 34, 6, 1, 1),
(299, 'Very important', 34, 6, 1, 2),
(300, 'Very important', 34, 6, 1, 3),
(301, 'Useful', 34, 6, 2, 1),
(302, 'Useful', 34, 6, 2, 2),
(303, 'Useful', 34, 6, 2, 3),
(304, 'Very important', 34, 6, 3, 1),
(305, 'Very important', 34, 6, 3, 2),
(306, 'Very important', 34, 6, 3, 3),
(307, 'Useful', 35, 6, 1, 1),
(308, 'Useful', 35, 6, 1, 2),
(309, 'Useful', 35, 6, 1, 3),
(310, 'Useful', 35, 6, 2, 1),
(311, 'Useful', 35, 6, 2, 2),
(312, 'Useful', 35, 6, 2, 3),
(313, 'Very important', 35, 6, 3, 1),
(314, 'Useful', 35, 6, 3, 2),
(315, 'Very important', 35, 6, 3, 3),
(316, 'Useful', 36, 6, 1, 1),
(317, 'Useful', 36, 6, 1, 2),
(318, 'Useful', 36, 6, 1, 3),
(319, 'Useful', 36, 6, 2, 1),
(320, 'Useful', 36, 6, 2, 2),
(321, 'Useful', 36, 6, 2, 3),
(322, 'Very important', 36, 6, 3, 1),
(323, 'Useful', 36, 6, 3, 2),
(324, 'Very important', 36, 6, 3, 3),
(325, 'Useful', 37, 6, 1, 1),
(326, 'Useful', 37, 6, 1, 2),
(327, 'Useful', 37, 6, 1, 3),
(328, 'Useful', 37, 6, 2, 1),
(329, 'Useful', 37, 6, 2, 2),
(330, 'Useful', 37, 6, 2, 3),
(331, 'Very important', 37, 6, 3, 1),
(332, 'Useful', 37, 6, 3, 2),
(333, 'Very important', 37, 6, 3, 3),
(334, 'Useful', 38, 6, 1, 1),
(335, 'Useful', 38, 6, 1, 2),
(336, 'Useful', 38, 6, 1, 3),
(337, 'Useful', 38, 6, 2, 1),
(338, 'Useful', 38, 6, 2, 2),
(339, 'Useful', 38, 6, 2, 3),
(340, 'Very important', 38, 6, 3, 1),
(341, 'Useful', 38, 6, 3, 2),
(342, 'Very important', 38, 6, 3, 3),
(343, 'Useful', 39, 6, 1, 1),
(344, 'Useful', 39, 6, 1, 2),
(345, 'Useful', 39, 6, 1, 3),
(346, 'Useful', 39, 6, 2, 1),
(347, 'Useful', 39, 6, 2, 2),
(348, 'Useful', 39, 6, 2, 3),
(349, 'Useful', 39, 6, 3, 1),
(350, 'Useful', 39, 6, 3, 2),
(351, 'Useful', 39, 6, 3, 3),
(352, 'Useful', 40, 6, 1, 1),
(353, 'Useful', 40, 6, 1, 2),
(354, 'Useful', 40, 6, 1, 3),
(355, 'Useful', 40, 6, 2, 1),
(356, 'Useful', 40, 6, 2, 2),
(357, 'Useful', 40, 6, 2, 3),
(358, 'Useful', 40, 6, 3, 1),
(359, 'Useful', 40, 6, 3, 2),
(360, 'Useful', 40, 6, 3, 3),
(361, 'Useful', 41, 6, 1, 1),
(362, 'Useful', 41, 6, 1, 2),
(363, 'Useful', 41, 6, 1, 3),
(364, 'Useful', 41, 6, 2, 1),
(365, 'Useful', 41, 6, 2, 2),
(366, 'Useful', 41, 6, 2, 3),
(367, 'Useful', 41, 6, 3, 1),
(368, 'Useful', 41, 6, 3, 2),
(369, 'Useful', 41, 6, 3, 3),
(370, 'Useful', 42, 7, 1, 1),
(371, 'Useful', 42, 7, 1, 2),
(372, 'Useful', 42, 7, 1, 3),
(373, 'Useful', 42, 7, 2, 1),
(374, 'Useful', 42, 7, 2, 2),
(375, 'Useful', 42, 7, 2, 3),
(376, 'Useful', 42, 7, 3, 1),
(377, 'Useful', 42, 7, 3, 2),
(378, 'Very important', 42, 7, 3, 3),
(379, 'Useful', 43, 7, 1, 1),
(380, 'Useful', 43, 7, 1, 2),
(381, 'Useful', 43, 7, 1, 3),
(382, 'Useful', 43, 7, 2, 1),
(383, 'Useful', 43, 7, 2, 2),
(384, 'Useful', 43, 7, 2, 3),
(385, 'Useful', 43, 7, 3, 1),
(386, 'Useful', 43, 7, 3, 2),
(387, 'Very important', 43, 7, 3, 3),
(388, 'Useful', 44, 7, 1, 1),
(389, 'Useful', 44, 7, 1, 2),
(390, 'Useful', 44, 7, 1, 3),
(391, 'Useful', 44, 7, 2, 1),
(392, 'Useful', 44, 7, 2, 2),
(393, 'Useful', 44, 7, 2, 3),
(394, 'Useful', 44, 7, 3, 1),
(395, 'Useful', 44, 7, 3, 2),
(396, 'Very important', 44, 7, 3, 3),
(397, 'Useful', 45, 7, 1, 1),
(398, 'Useful', 45, 7, 1, 2),
(399, 'Useful', 45, 7, 1, 3),
(400, 'Useful', 45, 7, 2, 1),
(401, 'Useful', 45, 7, 2, 2),
(402, 'Useful', 45, 7, 2, 3),
(403, 'Useful', 45, 7, 3, 1),
(404, 'Useful', 45, 7, 3, 2),
(405, 'Very important', 45, 7, 3, 3),
(406, 'Useful', 46, 7, 1, 1),
(407, 'Useful', 46, 7, 1, 2),
(408, 'Useful', 46, 7, 1, 3),
(409, 'Useful', 46, 7, 2, 1),
(410, 'Useful', 46, 7, 2, 2),
(411, 'Useful', 46, 7, 2, 3),
(412, 'Useful', 46, 7, 3, 1),
(413, 'Useful', 46, 7, 3, 2),
(414, 'Very important', 46, 7, 3, 3),
(415, 'Useful', 47, 7, 1, 1),
(416, 'Useful', 47, 7, 1, 2),
(417, 'Useful', 47, 7, 1, 3),
(418, 'Useful', 47, 7, 2, 1),
(419, 'Useful', 47, 7, 2, 2),
(420, 'Useful', 47, 7, 2, 3),
(421, 'Useful', 47, 7, 3, 1),
(422, 'Useful', 47, 7, 3, 2),
(423, 'Very important', 47, 7, 3, 3),
(424, 'Useful', 48, 7, 1, 1),
(425, 'Useful', 48, 7, 1, 2),
(426, 'Useful', 48, 7, 1, 3),
(427, 'Useful', 48, 7, 2, 1),
(428, 'Useful', 48, 7, 2, 2),
(429, 'Useful', 48, 7, 2, 3),
(430, 'Useful', 48, 7, 3, 1),
(431, 'Useful', 48, 7, 3, 2),
(432, 'Very important', 48, 7, 3, 3),
(433, 'Useful', 49, 7, 1, 1),
(434, 'Useful', 49, 7, 1, 2),
(435, 'Useful', 49, 7, 1, 3),
(436, 'Useful', 49, 7, 2, 1),
(437, 'Useful', 49, 7, 2, 2),
(438, 'Useful', 49, 7, 2, 3),
(439, 'Useful', 49, 7, 3, 1),
(440, 'Useful', 49, 7, 3, 2),
(441, 'Very important', 49, 7, 3, 3),
(442, 'Useful', 50, 7, 1, 1),
(443, 'Useful', 50, 7, 1, 2),
(444, 'Useful', 50, 7, 1, 3),
(445, 'Useful', 50, 7, 2, 1),
(446, 'Useful', 50, 7, 2, 2),
(447, 'Useful', 50, 7, 2, 3),
(448, 'Useful', 50, 7, 3, 1),
(449, 'Useful', 50, 7, 3, 2),
(450, 'Very important', 50, 7, 3, 3),
(451, 'Useful', 51, 7, 1, 1),
(452, 'Useful', 51, 7, 1, 2),
(453, 'Useful', 51, 7, 1, 3),
(454, 'Useful', 51, 7, 2, 1),
(455, 'Useful', 51, 7, 2, 2),
(456, 'Useful', 51, 7, 2, 3),
(457, 'Useful', 51, 7, 3, 1),
(458, 'Useful', 51, 7, 3, 2),
(459, 'Very important', 51, 7, 3, 3),
(460, 'Useful', 52, 7, 1, 1),
(461, 'Useful', 52, 7, 1, 2),
(462, 'Useful', 52, 7, 1, 3),
(463, 'Useful', 52, 7, 2, 1),
(464, 'Useful', 52, 7, 2, 2),
(465, 'Useful', 52, 7, 2, 3),
(466, 'Useful', 52, 7, 3, 1),
(467, 'Useful', 52, 7, 3, 2),
(468, 'Very important', 52, 7, 3, 3),
(469, 'Very important', 53, 8, 1, 1),
(470, 'Very important', 53, 8, 1, 2),
(471, 'Very important', 53, 8, 1, 3),
(472, 'Very important', 53, 8, 2, 1),
(473, 'Very important', 53, 8, 2, 2),
(474, 'Very important', 53, 8, 2, 3),
(475, 'Very important', 53, 8, 3, 1),
(476, 'Very important', 53, 8, 3, 2),
(477, 'Very important', 53, 8, 3, 3),
(478, 'Useful', 54, 8, 1, 1),
(479, 'Useful', 54, 8, 1, 2),
(480, 'Important', 54, 8, 1, 3),
(481, 'Useful', 54, 8, 2, 1),
(482, 'Useful', 54, 8, 2, 2),
(483, 'Important', 54, 8, 2, 3),
(484, 'Useful', 54, 8, 3, 1),
(485, 'Useful', 54, 8, 3, 2),
(486, 'Important', 54, 8, 3, 3),
(487, 'Useful', 55, 8, 1, 1),
(488, 'Useful', 55, 8, 1, 2),
(489, 'Important', 55, 8, 1, 3),
(490, 'Useful', 55, 8, 2, 1),
(491, 'Useful', 55, 8, 2, 2),
(492, 'Important', 55, 8, 2, 3),
(493, 'Useful', 55, 8, 3, 1),
(494, 'Useful', 55, 8, 3, 2),
(495, 'Important', 55, 8, 3, 3),
(496, 'Very important', 56, 8, 1, 1),
(497, 'Very important', 56, 8, 1, 2),
(498, 'Very important', 56, 8, 1, 3),
(499, 'Very important', 56, 8, 2, 1),
(500, 'Very important', 56, 8, 2, 2),
(501, 'Very important', 56, 8, 2, 3),
(502, 'Very important', 56, 8, 3, 1),
(503, 'Very important', 56, 8, 3, 2),
(504, 'Very important', 56, 8, 3, 3),
(505, 'Very important', 57, 8, 1, 1),
(506, 'Very important', 57, 8, 1, 2),
(507, 'Very important', 57, 8, 1, 3),
(508, 'Very important', 57, 8, 2, 1),
(509, 'Very important', 57, 8, 2, 2),
(510, 'Very important', 57, 8, 2, 3),
(511, 'Very important', 57, 8, 3, 1),
(512, 'Very important', 57, 8, 3, 2),
(513, 'Very important', 57, 8, 3, 3),
(514, 'Useful', 58, 8, 1, 1),
(515, 'Useful', 58, 8, 1, 2),
(516, 'Important', 58, 8, 1, 3),
(517, 'Useful', 58, 8, 2, 1),
(518, 'Useful', 58, 8, 2, 2),
(519, 'Important', 58, 8, 2, 3),
(520, 'Useful', 58, 8, 3, 1),
(521, 'Useful', 58, 8, 3, 2),
(522, 'Important', 58, 8, 3, 3),
(523, 'Useful', 59, 8, 1, 1),
(524, 'Useful', 59, 8, 1, 2),
(525, 'Important', 59, 8, 1, 3),
(526, 'Useful', 59, 8, 2, 1),
(527, 'Useful', 59, 8, 2, 2),
(528, 'Important', 59, 8, 2, 3),
(529, 'Useful', 59, 8, 3, 1),
(530, 'Useful', 59, 8, 3, 2),
(531, 'Important', 59, 8, 3, 3),
(532, 'Useful', 60, 8, 1, 1),
(533, 'Useful', 60, 8, 1, 2),
(534, 'Important', 60, 8, 1, 3),
(535, 'Useful', 60, 8, 2, 1),
(536, 'Useful', 60, 8, 2, 2),
(537, 'Important', 60, 8, 2, 3),
(538, 'Useful', 60, 8, 3, 1),
(539, 'Useful', 60, 8, 3, 2),
(540, 'Important', 60, 8, 3, 3),
(541, 'Useful', 61, 8, 1, 1),
(542, 'Useful', 61, 8, 1, 2),
(543, 'Important', 61, 8, 1, 3),
(544, 'Useful', 61, 8, 2, 1),
(545, 'Useful', 61, 8, 2, 2),
(546, 'Important', 61, 8, 2, 3),
(547, 'Useful', 61, 8, 3, 1),
(548, 'Useful', 61, 8, 3, 2),
(549, 'Important', 61, 8, 3, 3);



--
-- Volcado de datos para la tabla `dms_roles`
--

INSERT INTO `dms_roles` (`id`, `name`) VALUES
(1, 'Principal Investigator'),
(2, 'Researcher'),
(3, 'Data Manager');

--
-- Volcado de datos para la tabla `dms_stages`
--

INSERT INTO `dms_stages` (`id`, `name`) VALUES
(1, 'Decisions while designing'),
(2, 'Management of research processes'),
(3, 'Delivery of research products');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;