-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 14 Mars 2018 à 11:34
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `locationvelo`
--

-- --------------------------------------------------------

--
-- Structure de la table `Accessoire`
--

CREATE TABLE `Accessoire` (
  `idAccessoire` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Accessoire`
--

INSERT INTO `Accessoire` (`idAccessoire`, `type`) VALUES
(1, 'petites roulettes'),
(2, 'remorque pour enfant'),
(3, 'porte bagages'),
(4, 'siège enfant');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `idClient` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adresse` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Reservation`
--

CREATE TABLE `Reservation` (
  `idReservation` int(11) NOT NULL,
  `idVelo` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `dateLocationDebut` datetime NOT NULL,
  `dateLocationFin` datetime NOT NULL,
  `booleenPaiementEffectue` tinyint(4) NOT NULL,
  `idAccessoire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Velo`
--

CREATE TABLE `Velo` (
  `idVelo` int(11) NOT NULL,
  `categorie` varchar(20) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `prixLocationDebase` float NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Velo`
--

INSERT INTO `Velo` (`idVelo`, `categorie`, `ville`, `prixLocationDebase`) VALUES
(1, 'fixie', 'nantes', 15),
(2, 'fixie', 'nantes', 15),
(3, 'fixie', 'nantes', 15),
(4, 'fixie', 'nantes', 15),
(5, 'fixie', 'nantes', 15),
(6, 'fixie', 'nantes', 15),
(7, 'fixie', 'nantes', 15),
(8, 'fixie', 'nantes', 15),
(9, 'fixie', 'nantes', 15),
(10, 'fixie', 'nantes', 15),
(11, 'VTT', 'nantes', 14),
(12, 'VTT', 'nantes', 14),
(13, 'VTT', 'nantes', 14),
(14, 'VTT', 'nantes', 14),
(15, 'VTT', 'nantes', 14),
(16, 'VTT', 'nantes', 14),
(17, 'VTT', 'nantes', 14),
(18, 'VTT', 'nantes', 14),
(19, 'VTT', 'nantes', 14),
(20, 'VTT', 'nantes', 14),
(21, 'vélo homme', 'nantes', 10),
(22, 'vélo homme', 'nantes', 10),
(23, 'vélo homme', 'nantes', 10),
(24, 'vélo homme', 'nantes', 10),
(25, 'vélo homme', 'nantes', 10),
(26, 'vélo homme', 'nantes', 10),
(27, 'vélo homme', 'nantes', 10),
(28, 'vélo homme', 'nantes', 10),
(29, 'vélo homme', 'nantes', 10),
(30, 'vélo homme', 'nantes', 10),
(31, 'vélo femme', 'nantes', 10),
(32, 'vélo femme', 'nantes', 10),
(33, 'vélo femme', 'nantes', 10),
(34, 'vélo femme', 'nantes', 10),
(35, 'vélo femme', 'nantes', 10),
(36, 'vélo femme', 'nantes', 10),
(37, 'vélo femme', 'nantes', 10),
(38, 'vélo femme', 'nantes', 10),
(39, 'vélo femme', 'nantes', 10),
(40, 'vélo femme', 'nantes', 10),
(41, 'vélo enfant ', 'nantes', 8),
(42, 'vélo enfant ', 'nantes', 8),
(43, 'vélo enfant ', 'nantes', 8),
(44, 'vélo enfant ', 'nantes', 8),
(45, 'vélo enfant ', 'nantes', 8),
(46, 'vélo enfant ', 'nantes', 8),
(47, 'vélo enfant ', 'nantes', 8),
(48, 'vélo enfant ', 'nantes', 8),
(49, 'vélo enfant ', 'nantes', 8),
(50, 'vélo enfant ', 'nantes', 8),
(51, 'fixie', 'bordeaux', 15),
(52, 'fixie', 'bordeaux', 15),
(53, 'fixie', 'bordeaux', 15),
(54, 'fixie', 'bordeaux', 15),
(55, 'fixie', 'bordeaux', 15),
(56, 'fixie', 'bordeaux', 15),
(57, 'fixie', 'bordeaux', 15),
(58, 'fixie', 'bordeaux', 15),
(59, 'fixie', 'bordeaux', 15),
(60, 'fixie', 'bordeaux', 15),
(61, 'VTT', 'bordeaux', 14),
(62, 'VTT', 'bordeaux', 14),
(63, 'VTT', 'bordeaux', 14),
(64, 'VTT', 'bordeaux', 14),
(65, 'VTT', 'bordeaux', 14),
(66, 'VTT', 'bordeaux', 14),
(67, 'VTT', 'bordeaux', 14),
(68, 'VTT', 'bordeaux', 14),
(69, 'VTT', 'bordeaux', 14),
(70, 'VTT', 'bordeaux', 14),
(71, 'vélo homme', 'bordeaux', 10),
(72, 'vélo homme', 'bordeaux', 10),
(73, 'vélo homme', 'bordeaux', 10),
(74, 'vélo homme', 'bordeaux', 10),
(75, 'vélo homme', 'bordeaux', 10),
(76, 'vélo homme', 'bordeaux', 10),
(77, 'vélo homme', 'bordeaux', 10),
(78, 'vélo homme', 'bordeaux', 10),
(79, 'vélo homme', 'bordeaux', 10),
(80, 'vélo homme', 'bordeaux', 10),
(81, 'vélo femme', 'bordeaux', 10),
(82, 'vélo femme', 'bordeaux', 10),
(83, 'vélo femme', 'bordeaux', 10),
(84, 'vélo femme', 'bordeaux', 10),
(85, 'vélo femme', 'bordeaux', 10),
(86, 'vélo femme', 'bordeaux', 10),
(87, 'vélo femme', 'bordeaux', 10),
(88, 'vélo femme', 'bordeaux', 10),
(89, 'vélo femme', 'bordeaux', 10),
(90, 'vélo femme', 'bordeaux', 10),
(91, 'vélo enfant ', 'bordeaux', 8),
(92, 'vélo enfant ', 'bordeaux', 8),
(93, 'vélo enfant ', 'bordeaux', 8),
(94, 'vélo enfant ', 'bordeaux', 8),
(95, 'vélo enfant ', 'bordeaux', 8),
(96, 'vélo enfant ', 'bordeaux', 8),
(97, 'vélo enfant ', 'bordeaux', 8),
(98, 'vélo enfant ', 'bordeaux', 8),
(99, 'vélo enfant ', 'bordeaux', 8),
(100, 'vélo enfant ', 'bordeaux', 8),
(101, 'fixie', 'angers', 15),
(102, 'fixie', 'angers', 15),
(103, 'fixie', 'angers', 15),
(104, 'fixie', 'angers', 15),
(105, 'fixie', 'angers', 15),
(106, 'fixie', 'angers', 15),
(107, 'fixie', 'angers', 15),
(108, 'fixie', 'angers', 15),
(109, 'fixie', 'angers', 15),
(110, 'fixie', 'angers', 15),
(111, 'VTT', 'angers', 14),
(112, 'VTT', 'angers', 14),
(113, 'VTT', 'angers', 14),
(114, 'VTT', 'angers', 14),
(115, 'VTT', 'angers', 14),
(116, 'VTT', 'angers', 14),
(117, 'VTT', 'angers', 14),
(118, 'VTT', 'angers', 14),
(119, 'VTT', 'angers', 14),
(120, 'VTT', 'angers', 14),
(121, 'vélo homme', 'angers', 10),
(122, 'vélo homme', 'angers', 10),
(123, 'vélo homme', 'angers', 10),
(124, 'vélo homme', 'angers', 10),
(125, 'vélo homme', 'angers', 10),
(126, 'vélo homme', 'angers', 10),
(127, 'vélo homme', 'angers', 10),
(128, 'vélo homme', 'angers', 10),
(129, 'vélo homme', 'angers', 10),
(130, 'vélo homme', 'angers', 10),
(131, 'vélo femme', 'angers', 10),
(132, 'vélo femme', 'angers', 10),
(133, 'vélo femme', 'angers', 10),
(134, 'vélo femme', 'angers', 10),
(135, 'vélo femme', 'angers', 10),
(136, 'vélo femme', 'angers', 10),
(137, 'vélo femme', 'angers', 10),
(138, 'vélo femme', 'angers', 10),
(139, 'vélo femme', 'angers', 10),
(140, 'vélo femme', 'angers', 10),
(141, 'vélo enfant ', 'angers', 8),
(142, 'vélo enfant ', 'angers', 8),
(143, 'vélo enfant ', 'angers', 8),
(144, 'vélo enfant ', 'angers', 8),
(145, 'vélo enfant ', 'angers', 8),
(146, 'vélo enfant ', 'angers', 8),
(147, 'vélo enfant ', 'angers', 8),
(148, 'vélo enfant ', 'angers', 8),
(149, 'vélo enfant ', 'angers', 8),
(150, 'vélo enfant ', 'angers', 8);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Accessoire`
--
ALTER TABLE `Accessoire`
  ADD PRIMARY KEY (`idAccessoire`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `Reservation`
--
ALTER TABLE `Reservation`
  ADD PRIMARY KEY (`idReservation`),
  ADD KEY `idVelo` (`idVelo`),
  ADD KEY `idClient` (`idClient`),
  ADD KEY `idAccessoire` (`idAccessoire`);

--
-- Index pour la table `Velo`
--
ALTER TABLE `Velo`
  ADD PRIMARY KEY (`idVelo`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Accessoire`
--
ALTER TABLE `Accessoire`
  MODIFY `idAccessoire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Reservation`
--
ALTER TABLE `Reservation`
  MODIFY `idReservation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Velo`
--
ALTER TABLE `Velo`
  MODIFY `idVelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Reservation`
--
ALTER TABLE `Reservation`
  ADD CONSTRAINT `Reservation_ibfk_1` FOREIGN KEY (`idVelo`) REFERENCES `Velo` (`idVelo`),
  ADD CONSTRAINT `Reservation_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `Client` (`idClient`),
  ADD CONSTRAINT `Reservation_ibfk_3` FOREIGN KEY (`idAccessoire`) REFERENCES `Accessoire` (`idAccessoire`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
