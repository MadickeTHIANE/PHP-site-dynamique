-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 11 juin 2021 à 15:06
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`) VALUES
(1, 'article 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae nostrum aperiam nisi dolores pariatur quos voluptas alias magni, nesciunt unde nemo incidunt tempore! Illo molestiae veniam vitae amet, beatae odit.'),
(2, 'article 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae nostrum aperiam nisi dolores pariatur quos voluptas alias magni, nesciunt unde nemo incidunt tempore! Illo molestiae veniam vitae amet, beatae odit.'),
(2, 'article 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae nostrum aperiam nisi dolores pariatur quos voluptas alias magni, nesciunt unde nemo incidunt tempore! Illo molestiae veniam vitae amet, beatae odit.'),
(4, 'article 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae nostrum periam nisi dolores pariatur quos voluptas alias magni, nesciunt unde nemo incidunt tempore! Illo molestiae veniam vitae amet, beatae odit.'),
(5, 'article 5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae nostrum aperiam nisi dolores pariatur quos voluptas alias magni, nesciunt unde nemo incidunt tempore! Illo molestiae veniam vitae amet, beatae odit.'),
(6, 'article 6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae nostrum aperiam nisi dolores pariatur quos voluptas alias magni, nesciunt unde nemo incidunt tempore! Illo molestiae veniam vitae amet, beatae odit.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
