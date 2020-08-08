-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 03 avr. 2020 à 11:11
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cnam_cuisine`
--

-- --------------------------------------------------------

--
-- Structure de la table `cuisine_plat`
--

CREATE TABLE `cuisine_plat` (
  `plat_id` int(2) NOT NULL,
  `plat_nom` varchar(20) NOT NULL,
  `plat_ordre` int(2) DEFAULT NULL COMMENT 'c''est l''ordre des plats lorsqu''ils sont servis'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cuisine_plat`
--

INSERT INTO `cuisine_plat` (`plat_id`, `plat_nom`, `plat_ordre`) VALUES
(1, 'Apéro', 10),
(2, 'Entrée', 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cuisine_plat`
--
ALTER TABLE `cuisine_plat`
  ADD PRIMARY KEY (`plat_id`),
  ADD UNIQUE KEY `plat_nom` (`plat_nom`),
  ADD KEY `plat_ordre` (`plat_ordre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cuisine_plat`
--
ALTER TABLE `cuisine_plat`
  MODIFY `plat_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
