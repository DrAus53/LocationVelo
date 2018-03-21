-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 21 Mars 2018 à 08:56
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `locationVelo`
--

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

--
-- Contenu de la table `Client`
--

INSERT INTO `Client` (`idClient`, `nom`, `prenom`, `telephone`, `email`, `adresse`) VALUES
(1, 'client1', 'prenom', NULL, NULL, NULL);

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
  `booleenPaiementEffectue` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Reservation`
--

INSERT INTO `Reservation` (`idReservation`, `idVelo`, `idClient`, `dateLocationDebut`, `dateLocationFin`, `booleenPaiementEffectue`) VALUES
(1, 1, 1, '2018-03-01 06:00:00', '2018-04-13 00:00:00', 0),
(2, 5, 1, '2018-02-01 06:00:00', '2018-03-09 00:00:00', 0),
(3, 2, 1, '2018-03-16 00:00:00', '2018-03-19 00:00:00', 0),
(4, 151, 1, '2018-03-02 00:00:00', '2018-03-09 00:00:00', 0);

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
(2, 'VTT', 'nantes', 14),
(3, 'vélo homme', 'nantes', 10),
(4, 'vélo femme', 'nantes', 10),
(5, 'vélo enfant ', 'nantes', 8),
(6, 'fixie', 'bordeaux', 15),
(7, 'VTT', 'bordeaux', 14),
(8, 'vélo homme', 'bordeaux', 10),
(9, 'vélo femme', 'bordeaux', 10),
(10, 'vélo enfant ', 'bordeaux', 8),
(11, 'fixie', 'angers', 15),
(12, 'VTT', 'angers', 14),
(13, 'vélo homme', 'angers', 10),
(14, 'vélo femme', 'angers', 10),
(15, 'vélo enfant ', 'angers', 8),
(151, 'VTT', 'nantes', 14),
(152, 'VTT', 'nantes', 14);

--
-- Index pour les tables exportées
--

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
  ADD KEY `idClient` (`idClient`);

--
-- Index pour la table `Velo`
--
ALTER TABLE `Velo`
  ADD PRIMARY KEY (`idVelo`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `Reservation`
--
ALTER TABLE `Reservation`
  MODIFY `idReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Velo`
--
ALTER TABLE `Velo`
  MODIFY `idVelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
