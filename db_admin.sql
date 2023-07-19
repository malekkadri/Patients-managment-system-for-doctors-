-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 19 juil. 2023 à 00:45
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_admin`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `Name` varchar(50) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Categorie` varchar(50) NOT NULL,
  `etat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE IF NOT EXISTS `tbl_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'role_id',
  `role` varchar(255) DEFAULT NULL COMMENT 'role_text',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'User');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `poids` varchar(200) DEFAULT NULL,
  `taille` varchar(200) DEFAULT NULL,
  `roleid` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `num`, `name`, `fname`, `username`, `email`, `password`, `mobile`, `genre`, `adress`, `ville`, `poids`, `taille`, `roleid`, `isActive`, `created_at`, `updated_at`) VALUES
(23, 0, 'achref', NULL, 'achref', 'achref.nefzazoui@gmail.com', '3ea543d29ad3c1c09fcfbdda3f2f0617c50ab138', '54852852', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-19 14:35:56', '2020-12-19 14:35:56'),
(24, 0, 'ahmed', NULL, 'benahmed', 'achme@gmail.com', '7f0c9d56d40c3cc1e23e0113d5377779a4de86ff', '54277528', NULL, NULL, NULL, NULL, NULL, 3, 0, '2020-12-19 15:13:39', '2020-12-19 15:13:39'),
(25, 0, 'Fathi', NULL, 'fathiA', 'fathianh@gmail.com', '0a859b9a4ebbde4f63383bca7e34890985782348', '54672828', NULL, NULL, NULL, NULL, NULL, 3, 0, '2020-12-19 15:15:52', '2020-12-19 15:15:52'),
(26, 0, 'Makrem', NULL, 'makrem', 'makrem@gmail.com', 'adef7009a84a71c226ddf68671e929d68a707762', '42551771', NULL, NULL, NULL, NULL, NULL, 3, 0, '2020-12-19 15:16:59', '2020-12-19 15:16:59'),
(27, 0, 'Sirin', NULL, 'Sirin', 'Sirin@gmail.com', '03ee5fda2eae80be34c0142fe28ac6401e63324c', '23451671', NULL, NULL, NULL, NULL, NULL, 3, 0, '2020-12-19 15:17:34', '2020-12-19 15:17:34'),
(30, 0, 'Malek kadri', NULL, 'malik', 'malekmak@live.fr', '53ad04bf1b0452dfd81ffc6d89241e4b254c22d7', '27414462', NULL, NULL, NULL, NULL, NULL, 3, 0, '2023-07-18 21:50:59', '2023-07-18 21:50:59'),
(31, 2, 'ghada', 'tabbesi', 'ghada', 'ghada@gmail.com', '535a97a8c7ab406294c5a5f8c022c73f2bacc0a7', '27414462', 'Masculin', NULL, 'gafsa', '67', '123', 1, 0, '2023-07-18 22:22:27', '2023-07-18 22:22:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
