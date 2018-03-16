-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 16 Mars 2018 à 14:51
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
  `type` varchar(20) NOT NULL,
  `prix` int(11) NOT NULL,
  `ville` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Accessoire`
--

INSERT INTO `Accessoire` (`idAccessoire`, `type`, `prix`, `ville`) VALUES
(1, 'petites roulettes', 5, 'nantes'),
(2, 'remorque pour enfant', 15, 'nantes'),
(3, 'porte bagages', 5, 'nantes'),
(4, 'siège enfant', 5, 'nantes'),
(5, 'petites roulettes', 5, 'bordeaux'),
(6, 'remorque pour enfant', 15, 'bordeaux'),
(7, 'porte bagages', 5, 'bordeaux'),
(8, 'siège enfant', 5, 'bordeaux'),
(9, 'petites roulettes', 5, 'angers'),
(10, 'remorque pour enfant', 15, 'angers'),
(11, 'porte bagages', 5, 'angers'),
(12, 'siège enfant', 5, 'angers');

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
-- Structure de la table `StockAccessoire`
--

CREATE TABLE `StockAccessoire` (
  `idAccessoire` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `StockAccessoire`
--

INSERT INTO `StockAccessoire` (`idAccessoire`, `quantite`) VALUES
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(5, 20),
(6, 20),
(7, 20),
(8, 20),
(9, 20),
(10, 20),
(11, 20),
(12, 20);

-- --------------------------------------------------------

--
-- Structure de la table `StockVelo`
--

CREATE TABLE `StockVelo` (
  `idVelo` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `StockVelo`
--

INSERT INTO `StockVelo` (`idVelo`, `quantite`) VALUES
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(5, 20),
(6, 20),
(7, 20),
(8, 20),
(9, 20),
(12, 20),
(14, 20),
(15, 20),
(10, 20),
(11, 20),
(13, 20);

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
(15, 'vélo enfant ', 'angers', 8);

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
-- Index pour la table `StockAccessoire`
--
ALTER TABLE `StockAccessoire`
  ADD KEY `idAccessoire` (`idAccessoire`);

--
-- Index pour la table `StockVelo`
--
ALTER TABLE `StockVelo`
  ADD KEY `idVelo` (`idVelo`);

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
  MODIFY `idAccessoire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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

--
-- Contraintes pour la table `StockAccessoire`
--
ALTER TABLE `StockAccessoire`
  ADD CONSTRAINT `StockAccessoire_ibfk_1` FOREIGN KEY (`idAccessoire`) REFERENCES `Accessoire` (`idAccessoire`);

--
-- Contraintes pour la table `StockVelo`
--
ALTER TABLE `StockVelo`
  ADD CONSTRAINT `StockVelo_ibfk_1` FOREIGN KEY (`idVelo`) REFERENCES `Velo` (`idVelo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
