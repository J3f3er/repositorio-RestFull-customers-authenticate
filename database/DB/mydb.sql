-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2024 a las 18:02:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `communes`
--

CREATE TABLE `communes` (
  `id_com` int(11) NOT NULL,
  `id_reg` int(11) NOT NULL,
  `description` varchar(90) NOT NULL,
  `status` enum('A','I','trash') NOT NULL DEFAULT 'A'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `communes`
--

INSERT INTO `communes` (`id_com`, `id_reg`, `description`, `status`) VALUES
(1, 1, 'nostrum', 'A'),
(2, 1, 'similique', 'A'),
(3, 1, 'accusantium', 'A'),
(4, 2, 'at', 'I'),
(5, 2, 'veniam', 'A'),
(6, 2, 'omnis', 'A'),
(7, 3, 'rerum', 'I'),
(8, 3, 'et', 'trash'),
(9, 3, 'voluptatem', 'A'),
(10, 4, 'laboriosam', 'I'),
(11, 4, 'id', 'I'),
(12, 4, 'illum', 'A'),
(13, 5, 'aut', 'trash'),
(14, 5, 'porro', 'trash'),
(15, 5, 'laudantium', 'trash'),
(16, 6, 'nisi', 'trash'),
(17, 6, 'sequi', 'I'),
(18, 6, 'est', 'trash'),
(19, 7, 'eaque', 'trash'),
(20, 7, 'et', 'trash'),
(21, 7, 'debitis', 'A'),
(22, 8, 'veniam', 'I'),
(23, 8, 'voluptatem', 'I'),
(24, 8, 'nemo', 'I'),
(25, 9, 'aspernatur', 'A'),
(26, 9, 'temporibus', 'A'),
(27, 9, 'qui', 'trash'),
(28, 10, 'est', 'I'),
(29, 10, 'suscipit', 'trash'),
(30, 10, 'autem', 'A'),
(31, 11, 'dicta', 'trash'),
(32, 12, 'facilis', 'A'),
(33, 13, 'iusto', 'trash'),
(34, 14, 'temporibus', 'A'),
(35, 15, 'vero', 'A'),
(36, 16, 'ipsum', 'I'),
(37, 17, 'dolorem', 'A'),
(38, 18, 'repellat', 'I'),
(39, 19, 'accusantium', 'A'),
(40, 20, 'perferendis', 'A'),
(41, 21, 'commodi', 'trash'),
(42, 22, 'quia', 'I'),
(43, 23, 'suscipit', 'trash'),
(44, 24, 'et', 'A'),
(45, 25, 'assumenda', 'A'),
(46, 26, 'omnis', 'A'),
(47, 27, 'fugit', 'A'),
(48, 28, 'odio', 'A'),
(49, 29, 'assumenda', 'I'),
(50, 30, 'est', 'I'),
(51, 31, 'iusto', 'A'),
(52, 32, 'dolorem', 'A'),
(53, 33, 'expedita', 'trash'),
(54, 34, 'odit', 'A'),
(55, 35, 'labore', 'A'),
(56, 36, 'magni', 'A'),
(57, 37, 'aut', 'trash'),
(58, 38, 'necessitatibus', 'trash'),
(59, 39, 'animi', 'trash'),
(60, 40, 'excepturi', 'A'),
(61, 41, 'nostrum', 'trash'),
(62, 42, 'fugiat', 'trash'),
(63, 43, 'corrupti', 'I'),
(64, 44, 'nostrum', 'I'),
(65, 45, 'assumenda', 'I'),
(66, 46, 'harum', 'I'),
(67, 47, 'blanditiis', 'I'),
(68, 48, 'magni', 'A'),
(69, 49, 'rerum', 'trash'),
(70, 50, 'id', 'A'),
(71, 51, 'cum', 'trash'),
(72, 52, 'minima', 'I'),
(73, 53, 'et', 'A'),
(74, 54, 'molestiae', 'trash'),
(75, 55, 'inventore', 'A'),
(76, 56, 'officia', 'trash'),
(77, 57, 'nesciunt', 'A'),
(78, 58, 'sit', 'trash'),
(79, 59, 'impedit', 'I'),
(80, 60, 'dignissimos', 'A'),
(81, 61, 'in', 'trash'),
(82, 62, 'ut', 'I'),
(83, 63, 'consequuntur', 'trash'),
(84, 64, 'dicta', 'trash'),
(85, 65, 'in', 'A'),
(86, 66, 'sit', 'trash'),
(87, 67, 'illum', 'I'),
(88, 68, 'omnis', 'I'),
(89, 69, 'architecto', 'trash'),
(90, 70, 'saepe', 'A'),
(91, 71, 'fugit', 'I'),
(92, 72, 'id', 'I'),
(93, 73, 'molestias', 'I'),
(94, 74, 'est', 'I'),
(95, 75, 'molestiae', 'trash'),
(96, 76, 'nam', 'trash'),
(97, 77, 'animi', 'trash'),
(98, 78, 'explicabo', 'I'),
(99, 79, 'sint', 'A'),
(100, 80, 'et', 'trash'),
(101, 81, 'aut', 'I'),
(102, 82, 'delectus', 'trash'),
(103, 83, 'pariatur', 'I'),
(104, 84, 'sit', 'I'),
(105, 85, 'quas', 'I'),
(106, 86, 'eaque', 'trash'),
(107, 87, 'error', 'I'),
(108, 88, 'quod', 'A'),
(109, 89, 'et', 'trash'),
(110, 90, 'eligendi', 'A'),
(111, 91, 'in', 'trash'),
(112, 92, 'a', 'trash'),
(113, 93, 'vero', 'I'),
(114, 94, 'rerum', 'I'),
(115, 95, 'consectetur', 'trash'),
(116, 96, 'voluptatem', 'I'),
(117, 97, 'et', 'I'),
(118, 98, 'asperiores', 'A'),
(119, 99, 'dicta', 'A'),
(120, 100, 'commodi', 'I'),
(121, 101, 'ut', 'I'),
(122, 102, 'nisi', 'A'),
(123, 103, 'quia', 'I'),
(124, 104, 'qui', 'trash'),
(125, 105, 'qui', 'trash'),
(126, 106, 'adipisci', 'trash'),
(127, 107, 'blanditiis', 'A'),
(128, 108, 'ipsum', 'A'),
(129, 109, 'cum', 'trash'),
(130, 110, 'dolor', 'A'),
(131, 111, 'ut', 'trash'),
(132, 112, 'tempora', 'A'),
(133, 113, 'veritatis', 'A'),
(134, 114, 'praesentium', 'trash'),
(135, 115, 'consequuntur', 'A'),
(136, 116, 'ipsa', 'trash'),
(137, 117, 'iure', 'A'),
(138, 118, 'vel', 'trash'),
(139, 119, 'dolor', 'I'),
(140, 120, 'sit', 'trash'),
(141, 121, 'ratione', 'A'),
(142, 122, 'perferendis', 'I'),
(143, 123, 'quae', 'A'),
(144, 124, 'eos', 'A'),
(145, 125, 'quia', 'I'),
(146, 126, 'cum', 'trash'),
(147, 127, 'ut', 'A'),
(148, 128, 'laboriosam', 'trash'),
(149, 129, 'et', 'trash'),
(150, 130, 'magnam', 'I'),
(151, 131, 'consequatur', 'trash'),
(152, 132, 'velit', 'I'),
(153, 133, 'possimus', 'trash'),
(154, 134, 'dolore', 'trash'),
(155, 135, 'quisquam', 'trash'),
(156, 136, 'mollitia', 'A'),
(157, 137, 'odio', 'trash'),
(158, 138, 'reiciendis', 'trash'),
(159, 139, 'neque', 'A'),
(160, 140, 'dignissimos', 'I'),
(161, 141, 'voluptatem', 'I'),
(162, 142, 'quae', 'I'),
(163, 143, 'et', 'I'),
(164, 144, 'vel', 'A'),
(165, 145, 'facilis', 'I'),
(166, 146, 'sint', 'trash'),
(167, 147, 'expedita', 'I'),
(168, 148, 'hic', 'I'),
(169, 149, 'iste', 'trash'),
(170, 150, 'eaque', 'I'),
(171, 151, 'odit', 'trash'),
(172, 152, 'non', 'trash'),
(173, 153, 'porro', 'A'),
(174, 154, 'vero', 'A'),
(175, 155, 'blanditiis', 'A'),
(176, 156, 'aliquid', 'A'),
(177, 157, 'et', 'trash'),
(178, 158, 'libero', 'trash'),
(179, 159, 'quas', 'A'),
(180, 160, 'iure', 'trash');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `dni` varchar(45) NOT NULL COMMENT 'Documento de Identidad',
  `id_reg` int(11) NOT NULL,
  `id_com` int(11) NOT NULL,
  `email` varchar(120) NOT NULL COMMENT 'Correo Electrónico',
  `name` varchar(45) NOT NULL COMMENT 'Nombre',
  `last_name` varchar(45) NOT NULL COMMENT 'Apellido',
  `address` varchar(255) DEFAULT NULL COMMENT 'Dirección',
  `date_reg` datetime NOT NULL COMMENT 'Fecha y hora del registro',
  `status` enum('A','I','trash') NOT NULL DEFAULT 'A' COMMENT 'estado del registro:\nA\r\n: Activo\nI : Desactivo\ntrash : Registro eliminado'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`dni`, `id_reg`, `id_com`, `email`, `name`, `last_name`, `address`, `date_reg`, `status`) VALUES
('49208065', 1, 1, 'muriel.fahey@example.com', 'Celestino', 'Kuphal', '625 Clara Stravenue\nNew Arnulfoville, CO 25283-8055', '1974-10-24 00:00:00', 'A'),
('74224449', 1, 1, 'isawayn@example.com', 'Bertram', 'Schoen', '5570 Bailey Shoal\nOlsonborough, LA 99538', '2015-07-05 00:00:00', 'A'),
('86085789', 1, 1, 'eabshire@example.com', 'Enrique', 'Rowe', '615 Brekke Meadow Suite 973\nBradtkeborough, AL 55266-9703', '1998-04-03 00:00:00', 'I'),
('01480325', 1, 1, 'hellen.rau@example.org', 'Vivianne', 'Heidenreich', '3812 Hettie Port Suite 625\nRobertafort, ME 28153-7738', '1996-06-24 00:00:00', 'I'),
('22778578', 1, 1, 'ulices.hagenes@example.com', 'Misael', 'Lakin', '35495 Wilkinson Meadows\nPort Tiannahaven, MO 43155', '1971-09-23 00:00:00', 'trash'),
('01082516', 1, 2, 'fondricka@example.org', 'Estella', 'Green', '734 Isobel River\nNorth Selenashire, NJ 79094', '2002-10-08 00:00:00', 'I'),
('60657177', 1, 2, 'cathryn.bruen@example.com', 'Rahul', 'Ruecker', '7652 Flatley Mountains Apt. 471\nWest Norris, KY 99282-0532', '2005-02-06 00:00:00', 'I'),
('18989747', 1, 2, 'runolfsson.elmo@example.net', 'Caleigh', 'Dibbert', '98582 Jeanie Loaf\nSouth Shannonside, MO 22564-4137', '1977-06-29 00:00:00', 'trash'),
('42174598', 1, 2, 'mhill@example.net', 'Rebecca', 'Boyer', '555 Jovanny Fork Suite 086\nNorth Cleveland, SD 39760-3819', '1999-03-12 00:00:00', 'A'),
('08588933', 1, 2, 'stehr.giovani@example.org', 'Baylee', 'Kohler', '1328 Caleigh Summit\nEast Milton, IA 53788', '2018-07-27 00:00:00', 'I'),
('93133320', 1, 3, 'lferry@example.net', 'Bonita', 'O\'Reilly', '24927 Angela Land Suite 998\nGiovannishire, OH 10911-2595', '1971-12-09 00:00:00', 'A'),
('62530587', 1, 3, 'isenger@example.com', 'Aaliyah', 'Harber', '1180 Morar Groves\nWest Dameonberg, NV 98063-2915', '1978-10-02 00:00:00', 'A'),
('47589374', 1, 3, 'kaitlyn70@example.net', 'Jedediah', 'Kshlerin', '26779 Hattie Extensions\nPort Arvilla, IA 63074', '1994-07-09 00:00:00', 'trash'),
('44661129', 1, 3, 'jenkins.jamison@example.com', 'Vern', 'Schaefer', '63027 Koepp Pines\nBreitenbergborough, NV 77775-9810', '1996-08-04 00:00:00', 'I'),
('18907414', 1, 3, 'garnet.mohr@example.com', 'Lexi', 'Hane', '99346 Isaias Crossroad Suite 823\nHeathcoteton, NC 29721', '2002-02-25 00:00:00', 'trash'),
('89289663', 2, 4, 'emmerich.lionel@example.org', 'Jovanny', 'Oberbrunner', '40842 Malachi Port\nWiegandview, SD 40594', '1979-01-22 00:00:00', 'A'),
('30407450', 2, 4, 'nborer@example.org', 'Roy', 'Sipes', '536 Marquise Flats\nOsinskimouth, NH 08180-9169', '2006-07-23 00:00:00', 'A'),
('45137457', 2, 4, 'showe@example.net', 'Crystel', 'Batz', '135 Glover Forge\nDouglasville, KS 80313', '1994-04-26 00:00:00', 'I'),
('10860342', 2, 4, 'aurore.conroy@example.org', 'Erwin', 'O\'Reilly', '205 Connie Crescent\nHarveymouth, OR 58964', '1981-02-11 00:00:00', 'I'),
('61044424', 2, 4, 'prohaska.gordon@example.net', 'Danyka', 'Pouros', '31385 Prosacco Trail\nWest Shayneside, WV 77511', '1984-10-23 00:00:00', 'I'),
('99828342', 2, 5, 'heath55@example.org', 'Elwin', 'Crooks', '1643 Thomas Dale Apt. 681\nHarrisonberg, CT 36631', '1984-05-29 00:00:00', 'trash'),
('25934170', 2, 5, 'ortiz.aletha@example.org', 'Andreanne', 'DuBuque', '29116 Funk Harbors\nBeierberg, ND 53751', '1995-09-09 00:00:00', 'I'),
('59931066', 2, 5, 'mariam.gleason@example.com', 'Schuyler', 'Tillman', '8328 Javier Coves Apt. 418\nMichaelport, LA 23181-7335', '1984-02-06 00:00:00', 'I'),
('18387828', 2, 5, 'west.herminio@example.com', 'Ayla', 'King', '982 Heaney Mews Suite 034\nEast Arianna, FL 73494-2380', '2009-11-13 00:00:00', 'trash'),
('91274360', 2, 5, 'jettie66@example.org', 'Camryn', 'Hyatt', '16697 Koepp Inlet\nWatershaven, NM 44799-0840', '1974-08-06 00:00:00', 'A'),
('91573571', 2, 6, 'conner04@example.com', 'Kiel', 'Rice', '984 Farrell Union Suite 502\nBrianmouth, SC 00877', '2003-04-12 00:00:00', 'trash'),
('44634949', 2, 6, 'yschroeder@example.org', 'Kacey', 'Baumbach', '27095 Frederic Port Apt. 552\nEast Mariane, MN 24828', '1984-03-25 00:00:00', 'trash'),
('45908925', 2, 6, 'aylin69@example.com', 'Sierra', 'Mueller', '9404 Krajcik Springs\nSouth Earlene, IL 44511', '2006-05-17 00:00:00', 'A'),
('96695764', 2, 6, 'ryleigh21@example.net', 'Viva', 'Ondricka', '52839 Nitzsche Extension Suite 979\nLake Kaylinshire, WY 17977', '2014-06-16 00:00:00', 'trash'),
('25653565', 2, 6, 'heaney.nola@example.com', 'Audrey', 'Mayer', '7473 Noelia Gardens Apt. 173\nNew Stan, TX 72507', '1975-08-29 00:00:00', 'A'),
('30338385', 3, 7, 'marlon44@example.com', 'Brayan', 'Funk', '975 Bailey Forge\nWalshfort, AZ 92744', '2007-02-28 00:00:00', 'I'),
('40982309', 3, 7, 'kertzmann.clinton@example.com', 'Amira', 'Dooley', '184 Braun Run\nBoehmmouth, SD 90247-7968', '2024-06-25 00:00:00', 'trash'),
('30371662', 3, 7, 'tleannon@example.com', 'Clint', 'Senger', '29187 Labadie Plains\nJacintotown, CO 42414', '1995-03-09 00:00:00', 'trash'),
('15844390', 3, 7, 'marcia78@example.org', 'Kendrick', 'Stanton', '797 Gleichner Station Apt. 267\nSanfordhaven, RI 96666', '1972-07-24 00:00:00', 'A'),
('54859604', 3, 7, 'urban26@example.com', 'Cassandre', 'Hill', '489 Howe View Suite 095\nLake Sigridshire, WI 14735', '2005-12-09 00:00:00', 'trash'),
('96097009', 3, 8, 'grace14@example.com', 'Everette', 'Hyatt', '31620 Jordyn Isle Suite 218\nNew Reilly, MS 22738', '1984-05-05 00:00:00', 'trash'),
('02825824', 3, 8, 'ggleason@example.net', 'Tavares', 'Pagac', '23521 Watsica Pass\nEast Halie, CA 88388-7951', '1997-11-20 00:00:00', 'trash'),
('80654561', 3, 8, 'margarette.conroy@example.net', 'Augusta', 'Schuster', '696 Abshire Shoals\nLake Arturoberg, WI 21589', '1980-02-01 00:00:00', 'A'),
('17793028', 3, 8, 'sklocko@example.org', 'Elizabeth', 'Pouros', '6500 Goyette Squares Suite 210\nBodefort, WA 67406-3373', '2001-05-22 00:00:00', 'A'),
('76264425', 3, 8, 'wmueller@example.com', 'Kadin', 'Blick', '99633 Murray Road Apt. 056\nRusselport, NE 52250', '1982-02-24 00:00:00', 'I'),
('87581951', 3, 9, 'qkunze@example.com', 'Darrel', 'Waelchi', '7352 Nathanael Circle\nWest Karson, NM 58174-1145', '1989-02-09 00:00:00', 'I'),
('32786059', 3, 9, 'sigrid.dubuque@example.com', 'Lori', 'D\'Amore', '8826 Elisa Fields\nEast Eliane, NC 05049-5933', '1975-04-21 00:00:00', 'I'),
('93715475', 3, 9, 'dhamill@example.net', 'Mackenzie', 'Brakus', '85316 Collier Roads Suite 087\nMarionbury, GA 40166-7851', '1981-12-06 00:00:00', 'trash'),
('42859635', 3, 9, 'rfay@example.com', 'Destinee', 'Terry', '150 Bernice Turnpike Apt. 676\nSouth Bernietown, HI 57842-6871', '2003-03-06 00:00:00', 'trash'),
('88451414', 3, 9, 'larissa.mann@example.org', 'Tillman', 'Nolan', '578 Funk Radial Apt. 120\nKochside, KY 30959-5121', '2018-06-03 00:00:00', 'A'),
('15280974', 4, 10, 'earnestine.torphy@example.org', 'Darren', 'Kihn', '6759 Edmond River\nCedrickport, NJ 93965', '2003-10-10 00:00:00', 'A'),
('15170548', 4, 10, 'jackson30@example.org', 'Margie', 'O\'Hara', '190 Reynold Stream Apt. 354\nWest Janet, MT 25996-9392', '1974-11-25 00:00:00', 'I'),
('78162536', 4, 10, 'renner.liam@example.com', 'Vincenza', 'Nienow', '477 Sadye Mountain Suite 072\nPort Philipbury, TX 65533', '1996-10-09 00:00:00', 'trash'),
('27499283', 4, 10, 'sigurd.kemmer@example.org', 'Euna', 'Cummings', '249 Riley Shoals Apt. 851\nZionmouth, ND 13240', '1993-11-13 00:00:00', 'A'),
('91637719', 4, 10, 'qbailey@example.org', 'Tess', 'Langworth', '950 Vincenza Meadows\nLake Jerrod, AL 96294-3708', '2014-02-16 00:00:00', 'I'),
('80092803', 4, 11, 'larissa.white@example.org', 'Orlo', 'Von', '60368 Nels Spurs\nWest Zola, PA 59223', '2004-10-21 00:00:00', 'trash'),
('21578638', 4, 11, 'joshuah.schulist@example.org', 'Sigurd', 'Waelchi', '327 Pfeffer Highway Apt. 261\nPort Devenport, WY 93699', '1998-06-11 00:00:00', 'I'),
('60238272', 4, 11, 'rowland61@example.org', 'Erling', 'VonRueden', '8441 Bradtke Extensions Apt. 051\nThadmouth, NY 97783', '1975-05-02 00:00:00', 'A'),
('89586782', 4, 11, 'runolfsson.danial@example.com', 'Annalise', 'Pagac', '457 Braun Loop\nWunschstad, OR 48757-4259', '2009-09-21 00:00:00', 'trash'),
('75151242', 4, 11, 'kertzmann.braulio@example.net', 'Annette', 'Hyatt', '1856 King Island\nLueilwitzhaven, MT 69342', '1993-05-23 00:00:00', 'A'),
('99623257', 4, 12, 'lynch.wyatt@example.net', 'Ernest', 'Kunde', '693 Johnathan Oval\nMcLaughlinton, VA 22684-8176', '2016-08-31 00:00:00', 'I'),
('44569786', 4, 12, 'martina.koelpin@example.com', 'Rico', 'Berge', '59878 McClure Spurs\nLake Claudia, ID 94634', '1999-03-20 00:00:00', 'I'),
('32218488', 4, 12, 'wkling@example.net', 'Hettie', 'Wilderman', '1873 Amira Stravenue\nNew Leora, RI 87579-4198', '2008-02-24 00:00:00', 'trash'),
('50147881', 4, 12, 'daniel.dillon@example.net', 'Allene', 'Casper', '337 Daniel Plaza Apt. 449\nSouth Hardy, AZ 69817', '2021-04-30 00:00:00', 'A'),
('63570614', 4, 12, 'kskiles@example.org', 'Joanie', 'O\'Kon', '228 Noel Gateway Apt. 935\nSouth Clementinebury, MI 64104-7172', '2007-08-30 00:00:00', 'trash'),
('88955496', 5, 13, 'osinski.alexie@example.com', 'Keegan', 'Anderson', '8914 Travis Throughway\nLake Kellie, WY 98865-9365', '2007-05-17 00:00:00', 'I'),
('50244610', 5, 13, 'schroeder.cristina@example.com', 'Jolie', 'Prohaska', '6578 Schoen Center Apt. 564\nHymanburgh, MO 20909', '1995-04-10 00:00:00', 'I'),
('33327424', 5, 13, 'ivolkman@example.org', 'Marguerite', 'Cole', '44638 O\'Reilly Springs\nNorth Jayde, ID 53150', '1994-10-18 00:00:00', 'trash'),
('90761640', 5, 13, 'daija12@example.com', 'Elvis', 'Langosh', '348 Stamm Coves Apt. 541\nPort Bradleyborough, UT 48645-2841', '2021-01-24 00:00:00', 'A'),
('44117326', 5, 13, 'mvandervort@example.net', 'Frederik', 'Bailey', '373 Romaine Plains\nWest Thaddeustown, MS 77637', '2009-08-14 00:00:00', 'trash'),
('27166619', 5, 14, 'mpacocha@example.com', 'Krista', 'Homenick', '70423 Ferry Mountain Suite 520\nLoyalton, IN 12363-2108', '1979-01-21 00:00:00', 'I'),
('76585396', 5, 14, 'else28@example.com', 'Nettie', 'Osinski', '95509 Muller Pike\nPort Esmeraldaview, MT 56952-8490', '1995-07-10 00:00:00', 'trash'),
('91364667', 5, 14, 'leanna.wyman@example.net', 'Karine', 'Bode', '954 Hoppe Stream Apt. 672\nNew Percivalside, SC 88511', '2015-12-22 00:00:00', 'A'),
('25408264', 5, 14, 'jedediah.gottlieb@example.com', 'Jess', 'Padberg', '29163 Spinka Crossing Suite 553\nWest Chasity, MN 98414', '2001-04-25 00:00:00', 'trash'),
('41413696', 5, 14, 'igutkowski@example.org', 'Marcia', 'Fisher', '549 Verlie Flats Apt. 249\nHermannstad, WI 67049-8903', '1992-06-18 00:00:00', 'A'),
('96244748', 5, 15, 'jordy.donnelly@example.net', 'Sally', 'Ruecker', '15361 Kuhic Ferry\nMinervachester, AL 19309', '2000-01-30 00:00:00', 'I'),
('06199295', 5, 15, 'rogelio.kerluke@example.com', 'Angus', 'Langworth', '97351 Kuhn Cape\nSouth Eloisechester, KY 38781-4720', '2009-07-03 00:00:00', 'A'),
('75027448', 5, 15, 'block.skylar@example.com', 'Lysanne', 'Turner', '102 Kiarra Meadow Apt. 741\nWillmsview, DE 19342', '1992-06-16 00:00:00', 'trash'),
('96167185', 5, 15, 'howell.roel@example.org', 'Stanton', 'Bechtelar', '473 Sydnie Hill\nTadton, IA 93185', '1998-09-07 00:00:00', 'trash'),
('57312690', 5, 15, 'tillman.dulce@example.com', 'Jovani', 'Rohan', '553 Rebekah View\nCarrollville, OR 25697-1914', '1997-08-24 00:00:00', 'A'),
('62476899', 6, 16, 'john60@example.org', 'Arjun', 'Stamm', '62245 Alberto Ridges Suite 738\nFarrellside, NJ 85620-6325', '2024-05-12 00:00:00', 'I'),
('74072495', 6, 16, 'ukub@example.net', 'Dennis', 'Becker', '566 Florian Green Suite 370\nElfriedastad, WI 60744-4962', '1970-07-10 00:00:00', 'trash'),
('85891189', 6, 16, 'sallie.klein@example.com', 'Myron', 'Cormier', '8970 Everett Track\nHarriston, WV 82671', '2018-08-31 00:00:00', 'I'),
('85177382', 6, 16, 'carleton.breitenberg@example.org', 'Brennan', 'Moore', '8752 Eliza Keys Apt. 534\nPort Federico, IL 50881-4972', '1981-11-04 00:00:00', 'A'),
('75399336', 6, 16, 'kassulke.chester@example.net', 'Maryse', 'Wyman', '5396 Schaden Port Apt. 575\nEast Coyland, MD 78688', '2023-01-16 00:00:00', 'trash'),
('74427711', 6, 17, 'jjacobson@example.org', 'Sonya', 'Wolf', '4764 Eddie Trace\nJillianmouth, MS 31400', '2014-08-20 00:00:00', 'trash'),
('77236908', 6, 17, 'oberbrunner.porter@example.org', 'Joshua', 'Dietrich', '36304 Paucek Extension Suite 065\nNorth Maymie, HI 02561-5439', '1974-12-21 00:00:00', 'trash'),
('30212994', 6, 17, 'hbeier@example.com', 'Elsie', 'Stroman', '718 Bechtelar Park\nAuermouth, IN 06307', '1997-03-18 00:00:00', 'trash'),
('33389238', 6, 17, 'aaron13@example.org', 'April', 'Berge', '63805 Marta Bypass\nNorth Wilfredstad, MI 05691-5708', '2018-10-05 00:00:00', 'I'),
('39888705', 6, 17, 'jayce.gutkowski@example.com', 'Aliyah', 'Hills', '129 Adriel Valleys Suite 279\nNikkiburgh, IN 20849-3479', '2018-05-28 00:00:00', 'A'),
('09005929', 6, 18, 'cecilia.koepp@example.net', 'Johnathon', 'Schaefer', '4202 Twila Drive Apt. 103\nEichmannhaven, MS 73240-0402', '1973-02-10 00:00:00', 'A'),
('68167604', 6, 18, 'imonahan@example.org', 'Dagmar', 'Raynor', '80401 Bernadette Centers\nAltenwerthmouth, AZ 21076-8922', '2006-05-29 00:00:00', 'trash'),
('94952604', 6, 18, 'nikolaus.ethel@example.com', 'Modesta', 'Cormier', '64978 Rose Lane\nHalleborough, RI 31945-8618', '2007-09-19 00:00:00', 'trash'),
('94788772', 6, 18, 'bart.bayer@example.org', 'Kale', 'Buckridge', '87177 Gregorio Passage\nNew Elianechester, ME 66441-2018', '1975-01-18 00:00:00', 'A'),
('38886093', 6, 18, 'stephanie.reynolds@example.org', 'Crystel', 'Hammes', '961 Kale Manors\nLehnerbury, ID 94502', '1995-01-15 00:00:00', 'A'),
('37859028', 7, 19, 'blangosh@example.com', 'Chelsie', 'Konopelski', '984 Kassandra Field Suite 564\nHammesside, VA 15080-6746', '2021-01-03 00:00:00', 'A'),
('80886972', 7, 19, 'katarina06@example.com', 'Cletus', 'Mante', '29254 Stoltenberg Hollow\nLake Nikita, OH 98566', '1981-05-11 00:00:00', 'I'),
('20638930', 7, 19, 'arvilla.blick@example.net', 'Clinton', 'Lang', '91255 Murray Flat\nAlbinville, NE 02887', '1986-09-29 00:00:00', 'trash'),
('26188073', 7, 19, 'melissa35@example.com', 'Cleveland', 'Kassulke', '335 Caesar Estate Suite 619\nEast Deronland, ID 50583-7643', '1993-04-12 00:00:00', 'trash'),
('24828889', 7, 19, 'maggio.nedra@example.net', 'Kaylie', 'Jast', '7967 Audrey Pine Suite 969\nStantonbury, NM 76985', '1981-09-30 00:00:00', 'trash'),
('11760431', 7, 20, 'samantha.damore@example.net', 'Erwin', 'Johnson', '27475 Jakayla Summit Apt. 237\nHartmannfort, MN 76928-2413', '1972-12-14 00:00:00', 'trash'),
('19216919', 7, 20, 'zion09@example.net', 'Edythe', 'Brown', '48820 Kieran Glens Suite 217\nWest Matilde, MN 53326', '1974-08-18 00:00:00', 'trash'),
('22725864', 7, 20, 'jovani82@example.com', 'Breana', 'Daniel', '43239 Amari Creek Suite 226\nSouth Sammie, AK 68541-6001', '1978-02-22 00:00:00', 'I'),
('16642741', 7, 20, 'kuhn.enoch@example.org', 'Florian', 'Gutmann', '40039 Kelley Junctions\nHoldenton, AR 42779', '2011-01-23 00:00:00', 'trash'),
('01012520', 7, 20, 'sheila00@example.net', 'Name', 'Aufderhar', '6571 Huel Mews Suite 723\nKolbymouth, MS 20023-9710', '1986-08-09 00:00:00', 'A'),
('20428260', 7, 21, 'eugenia.cummerata@example.com', 'Naomi', 'Brakus', '70592 Ward Junction Suite 645\nPort Rodericktown, CO 18789-3384', '2012-03-01 00:00:00', 'trash'),
('92890631', 7, 21, 'manuel.doyle@example.org', 'Karl', 'Hegmann', '87621 Mitchell Highway Apt. 632\nKylestad, MA 47236-7229', '2019-01-08 00:00:00', 'I'),
('91422992', 7, 21, 'maggio.jalyn@example.org', 'Sammy', 'Rowe', '5269 Pacocha Row\nWatsicaberg, FL 26733', '1979-06-16 00:00:00', 'I'),
('37592128', 7, 21, 'burdette.runolfsdottir@example.com', 'Trudie', 'Boyer', '103 Romaine Court\nProhaskaberg, AK 70854-5379', '1974-08-08 00:00:00', 'trash'),
('46987752', 7, 21, 'lbruen@example.org', 'Lisette', 'Murphy', '7065 Donnelly Village Apt. 702\nBorerton, KS 18180-5650', '2023-12-02 00:00:00', 'trash'),
('66219739', 8, 22, 'vincenza20@example.org', 'Rodolfo', 'Prosacco', '706 Elinor Estate\nLangoshbury, NY 62135', '1987-09-18 00:00:00', 'trash'),
('12040558', 8, 22, 'waldo.lehner@example.org', 'Rebekah', 'Dickinson', '740 Pfannerstill Lane\nNew Leslieland, SD 78559', '2011-04-05 00:00:00', 'A'),
('16062542', 8, 22, 'arogahn@example.org', 'Lucio', 'Block', '802 Tabitha Oval\nWest Verda, ND 61305', '1987-01-21 00:00:00', 'trash'),
('30522486', 8, 22, 'adela.botsford@example.net', 'Declan', 'Schneider', '1272 Altenwerth Port\nEmilianoland, WV 02369-3921', '2024-08-21 00:00:00', 'trash'),
('30029722', 8, 22, 'melvin.ziemann@example.com', 'Jackeline', 'Torphy', '572 Emard Green\nLake Justiceberg, WY 60576-7418', '2002-07-05 00:00:00', 'A'),
('77168831', 8, 23, 'karley65@example.net', 'Shaniya', 'Pollich', '9371 Goldner Knoll Apt. 157\nTerenceland, WA 69424', '2024-05-24 00:00:00', 'trash'),
('05647250', 8, 23, 'vsipes@example.net', 'Vella', 'Gleichner', '200 Cole Divide\nLeuschkeberg, CO 84443', '2019-12-17 00:00:00', 'A'),
('19897005', 8, 23, 'schultz.judson@example.com', 'Estrella', 'Bins', '181 Adrien Lakes\nNorth Joanychester, WY 59996-5467', '2024-03-30 00:00:00', 'A'),
('11002016', 8, 23, 'denis.gorczany@example.com', 'Else', 'Jast', '5702 Krystina Summit\nWalshfurt, MS 47711-3075', '2013-03-21 00:00:00', 'A'),
('90747500', 8, 23, 'jillian87@example.net', 'Clemens', 'Stamm', '21247 Vilma Junction Apt. 231\nGrimesbury, GA 67899', '2021-02-17 00:00:00', 'I'),
('23699082', 8, 24, 'johnson.kaylee@example.com', 'Laurence', 'Heller', '53333 Vella Burg Apt. 727\nDakotahaven, AZ 31369', '1981-08-01 00:00:00', 'A'),
('10997813', 8, 24, 'claudine.botsford@example.org', 'Zachery', 'Daniel', '80590 Jewel Points\nMarkmouth, WA 67651-5054', '2006-04-21 00:00:00', 'I'),
('45928677', 8, 24, 'destini38@example.net', 'Madisen', 'Von', '195 Brionna Ports Apt. 852\nHudsonhaven, MO 36490-5674', '1994-09-02 00:00:00', 'I'),
('79938181', 8, 24, 'lera19@example.net', 'Gisselle', 'Ruecker', '568 Virginie Fort\nSouth Rhiannabury, NY 97543', '1999-07-16 00:00:00', 'I'),
('94462686', 8, 24, 'clemens37@example.net', 'Vella', 'Nienow', '595 Jacobson Burg Suite 362\nPort Mosesborough, GA 70558', '2022-04-05 00:00:00', 'trash'),
('39591789', 9, 25, 'hudson.rolfson@example.org', 'Amina', 'Runolfsdottir', '8383 Smitham Landing Apt. 439\nNew Owenfurt, WA 93998', '2007-07-27 00:00:00', 'A'),
('29526468', 9, 25, 'harmon56@example.com', 'Albertha', 'Ryan', '832 Jimmy Cape\nSteubermouth, NE 64024-1364', '2023-03-06 00:00:00', 'A'),
('97107352', 9, 25, 'lorena46@example.org', 'Carole', 'Schumm', '2707 Nicolas Rapids Suite 744\nHaleyport, KY 54637', '1992-05-17 00:00:00', 'I'),
('37248815', 9, 25, 'hyatt.asa@example.org', 'Wallace', 'Volkman', '9026 Ferry Brooks\nGiovannaton, RI 62643', '1996-06-04 00:00:00', 'I'),
('31918413', 9, 25, 'wilber75@example.net', 'Carolanne', 'DuBuque', '231 Fae Key\nWest Ned, NY 47154', '1997-11-21 00:00:00', 'A'),
('48071314', 9, 26, 'umann@example.com', 'Lilian', 'Mueller', '8280 Wilkinson Ports\nPort Amalia, SD 04995', '1995-08-26 00:00:00', 'trash'),
('39744775', 9, 26, 'ebartoletti@example.com', 'Juliet', 'Hagenes', '257 Jake Shore Suite 265\nWest Juana, NV 91346-3099', '1970-05-14 00:00:00', 'A'),
('13289929', 9, 26, 'hane.ressie@example.com', 'Bella', 'Fritsch', '2118 Quigley Forest Apt. 140\nPort Brittanyborough, AL 84661', '1988-02-24 00:00:00', 'A'),
('15452555', 9, 26, 'rasheed26@example.com', 'Tia', 'Crona', '8768 Will Inlet Suite 173\nPort Cathrineton, IA 91146', '1988-08-12 00:00:00', 'I'),
('89802410', 9, 26, 'monahan.myrtle@example.net', 'Geraldine', 'Bartoletti', '931 Griffin Gateway Apt. 738\nStrackeport, TX 47203', '1972-08-30 00:00:00', 'I'),
('16286455', 9, 27, 'claude42@example.com', 'Destiney', 'Ritchie', '4884 Moen Port\nSouth Ardella, IA 22891-7746', '1995-11-03 00:00:00', 'I'),
('21719602', 9, 27, 'jjohns@example.com', 'Anika', 'Rosenbaum', '19039 Ronny Union Suite 568\nSouth Alessiabury, RI 91864', '1977-07-26 00:00:00', 'trash'),
('38670964', 9, 27, 'dokon@example.org', 'Pearline', 'Bauch', '8617 Hayes Glen\nNorth Ansley, MT 65839-7584', '2005-12-10 00:00:00', 'I'),
('28432611', 9, 27, 'jast.lavonne@example.com', 'Eldred', 'Heathcote', '1860 Bosco Brooks\nRaulland, CT 15042-0124', '1986-05-05 00:00:00', 'trash'),
('12126698', 9, 27, 'rodolfo.wolff@example.org', 'Wendell', 'Boyle', '304 Kuhic Stream\nEast Tessiefort, PA 97285', '2010-02-04 00:00:00', 'A'),
('05816325', 10, 28, 'mallie.kulas@example.com', 'Jimmy', 'Bayer', '7252 Heathcote Harbor Apt. 598\nLake Kurttown, ND 11200-0461', '1989-12-18 00:00:00', 'trash'),
('09054112', 10, 28, 'hudson.brown@example.com', 'Craig', 'Senger', '71963 Durgan Islands Apt. 420\nEast Schuylerstad, MS 84683-3536', '2001-09-23 00:00:00', 'I'),
('20762836', 10, 28, 'uharris@example.com', 'Brock', 'Harvey', '8048 Pascale Dam Apt. 370\nEast Eusebio, WI 24465', '2011-03-29 00:00:00', 'A'),
('71581514', 10, 28, 'zemlak.hazel@example.org', 'Zoey', 'Nienow', '51699 Pinkie Manor Apt. 903\nPort Elena, LA 85372', '2016-10-18 00:00:00', 'trash'),
('55753135', 10, 28, 'alisha00@example.net', 'Richard', 'Luettgen', '39189 Adan Summit\nIsaiasmouth, SC 42180-1031', '1979-01-14 00:00:00', 'trash'),
('50162459', 10, 29, 'torphy.hoyt@example.org', 'Darron', 'Cormier', '6876 Schinner Walk\nCamilatown, NE 79803-8644', '2007-08-24 00:00:00', 'I'),
('64245555', 10, 29, 'wilton94@example.com', 'Carolanne', 'Nolan', '2290 Erin Skyway Suite 802\nWest Kristinafort, VT 14289-5673', '2009-07-16 00:00:00', 'A'),
('06599435', 10, 29, 'carter.roosevelt@example.net', 'Lottie', 'Crona', '582 Mosciski Overpass Suite 730\nPort Carlotta, CA 17252-5125', '1987-01-24 00:00:00', 'I'),
('94236956', 10, 29, 'jarrod27@example.org', 'Francis', 'Cummerata', '4102 Toy Camp\nWest Lilla, NV 31852', '1972-09-15 00:00:00', 'trash'),
('68206862', 10, 29, 'spencer16@example.com', 'Darron', 'Ondricka', '4467 Stoltenberg Locks Apt. 893\nPort Crystalview, DC 57961', '2003-08-03 00:00:00', 'A'),
('75889746', 10, 30, 'israel23@example.com', 'Garrett', 'Rohan', '3665 Greenfelder Hollow\nDoloresborough, ND 00848-5560', '1976-07-06 00:00:00', 'I'),
('11002851', 10, 30, 'ernestina.walsh@example.com', 'Akeem', 'Kub', '26386 Shaniya Pine Suite 876\nNorth Alek, LA 27842-8337', '1973-09-12 00:00:00', 'A'),
('54539311', 10, 30, 'kulas.lew@example.com', 'Annette', 'Dietrich', '375 Carli Common Apt. 638\nPort Annamaeland, GA 71555', '1971-02-23 00:00:00', 'A'),
('42317853', 10, 30, 'jacobi.salvatore@example.org', 'Baby', 'Schimmel', '6777 Yoshiko Burg\nBulahborough, MA 02806', '1999-04-20 00:00:00', 'trash'),
('27049654', 10, 30, 'emmalee.bruen@example.com', 'Mckenna', 'O\'Keefe', '3700 Raynor Parkway\nPowlowskishire, RI 78418', '1977-12-13 00:00:00', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE `regions` (
  `id_reg` int(11) NOT NULL,
  `description` varchar(90) NOT NULL,
  `status` enum('A','I','trash') NOT NULL DEFAULT 'A'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`id_reg`, `description`, `status`) VALUES
(1, 'eos', 'I'),
(2, 'maxime', 'A'),
(3, 'quibusdam', 'I'),
(4, 'quia', 'I'),
(5, 'sint', 'A'),
(6, 'odit', 'A'),
(7, 'sit', 'trash'),
(8, 'ab', 'I'),
(9, 'fuga', 'trash'),
(10, 'accusantium', 'A'),
(11, 'at', 'A'),
(12, 'voluptas', 'I'),
(13, 'dolores', 'A'),
(14, 'omnis', 'trash'),
(15, 'nobis', 'I'),
(16, 'cumque', 'trash'),
(17, 'esse', 'trash'),
(18, 'eius', 'A'),
(19, 'alias', 'I'),
(20, 'cumque', 'I'),
(21, 'rem', 'I'),
(22, 'ut', 'trash'),
(23, 'et', 'I'),
(24, 'dicta', 'A'),
(25, 'fugiat', 'trash'),
(26, 'ea', 'A'),
(27, 'rerum', 'trash'),
(28, 'sunt', 'I'),
(29, 'ex', 'trash'),
(30, 'aut', 'trash'),
(31, 'quis', 'I'),
(32, 'asperiores', 'I'),
(33, 'est', 'I'),
(34, 'rerum', 'trash'),
(35, 'aliquid', 'I'),
(36, 'est', 'trash'),
(37, 'commodi', 'A'),
(38, 'nihil', 'A'),
(39, 'itaque', 'trash'),
(40, 'non', 'trash'),
(41, 'id', 'trash'),
(42, 'saepe', 'I'),
(43, 'temporibus', 'trash'),
(44, 'nisi', 'trash'),
(45, 'ut', 'I'),
(46, 'eos', 'I'),
(47, 'eos', 'A'),
(48, 'hic', 'trash'),
(49, 'et', 'I'),
(50, 'qui', 'I'),
(51, 'laboriosam', 'trash'),
(52, 'libero', 'trash'),
(53, 'voluptatem', 'trash'),
(54, 'quo', 'trash'),
(55, 'saepe', 'trash'),
(56, 'natus', 'A'),
(57, 'est', 'A'),
(58, 'ipsam', 'A'),
(59, 'voluptatem', 'I'),
(60, 'sit', 'trash'),
(61, 'ratione', 'A'),
(62, 'est', 'A'),
(63, 'aliquid', 'A'),
(64, 'qui', 'trash'),
(65, 'ab', 'trash'),
(66, 'vitae', 'trash'),
(67, 'et', 'A'),
(68, 'natus', 'A'),
(69, 'nam', 'trash'),
(70, 'illo', 'A'),
(71, 'enim', 'A'),
(72, 'aut', 'I'),
(73, 'voluptatem', 'trash'),
(74, 'iusto', 'A'),
(75, 'tempore', 'I'),
(76, 'est', 'trash'),
(77, 'sit', 'trash'),
(78, 'laudantium', 'trash'),
(79, 'est', 'trash'),
(80, 'autem', 'trash'),
(81, 'soluta', 'A'),
(82, 'velit', 'trash'),
(83, 'ad', 'I'),
(84, 'sunt', 'I'),
(85, 'minus', 'A'),
(86, 'voluptate', 'I'),
(87, 'culpa', 'A'),
(88, 'voluptatem', 'I'),
(89, 'omnis', 'A'),
(90, 'qui', 'I'),
(91, 'quaerat', 'I'),
(92, 'inventore', 'trash'),
(93, 'reiciendis', 'trash'),
(94, 'velit', 'trash'),
(95, 'quia', 'A'),
(96, 'velit', 'A'),
(97, 'sed', 'I'),
(98, 'similique', 'A'),
(99, 'pariatur', 'A'),
(100, 'perspiciatis', 'A'),
(101, 'beatae', 'A'),
(102, 'qui', 'I'),
(103, 'voluptatem', 'A'),
(104, 'numquam', 'trash'),
(105, 'pariatur', 'trash'),
(106, 'animi', 'A'),
(107, 'voluptatem', 'I'),
(108, 'dolor', 'A'),
(109, 'dignissimos', 'trash'),
(110, 'aut', 'A'),
(111, 'quibusdam', 'trash'),
(112, 'fuga', 'I'),
(113, 'eos', 'A'),
(114, 'eius', 'A'),
(115, 'aut', 'A'),
(116, 'atque', 'A'),
(117, 'asperiores', 'I'),
(118, 'quos', 'trash'),
(119, 'sapiente', 'A'),
(120, 'quis', 'I'),
(121, 'perferendis', 'I'),
(122, 'excepturi', 'A'),
(123, 'in', 'A'),
(124, 'commodi', 'A'),
(125, 'adipisci', 'A'),
(126, 'consequatur', 'trash'),
(127, 'sed', 'trash'),
(128, 'debitis', 'I'),
(129, 'dolorem', 'I'),
(130, 'eaque', 'trash'),
(131, 'ut', 'I'),
(132, 'debitis', 'A'),
(133, 'vero', 'I'),
(134, 'ratione', 'trash'),
(135, 'neque', 'I'),
(136, 'quasi', 'I'),
(137, 'vitae', 'A'),
(138, 'dolor', 'I'),
(139, 'perferendis', 'trash'),
(140, 'quasi', 'I'),
(141, 'rerum', 'trash'),
(142, 'consequatur', 'A'),
(143, 'numquam', 'trash'),
(144, 'qui', 'A'),
(145, 'et', 'trash'),
(146, 'explicabo', 'A'),
(147, 'sit', 'A'),
(148, 'neque', 'A'),
(149, 'alias', 'I'),
(150, 'a', 'trash'),
(151, 'et', 'A'),
(152, 'optio', 'A'),
(153, 'porro', 'A'),
(154, 'quod', 'trash'),
(155, 'reprehenderit', 'trash'),
(156, 'occaecati', 'trash'),
(157, 'in', 'I'),
(158, 'perferendis', 'I'),
(159, 'qui', 'I'),
(160, 'aut', 'trash');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tokens`
--

INSERT INTO `tokens` (`id`, `email`, `token`, `created_at`, `expires_at`) VALUES
(1, 'jjba@gmail.com', '0339e4b3063e39ad263f956774b43da6b0a3881b', '2024-11-04 16:59:56', '2024-11-04 21:59:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id_com`,`id_reg`),
  ADD KEY `fk_communes_region_idx` (`id_reg`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`dni`,`id_reg`,`id_com`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_customers_communes1_idx` (`id_com`,`id_reg`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indices de la tabla `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `communes`
--
ALTER TABLE `communes`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `regions`
--
ALTER TABLE `regions`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
