-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 30 mai 2024 à 16:47
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `piscine_bts`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

CREATE TABLE `achat` (
  `id_achat` int(11) NOT NULL,
  `id_piscine` int(11) DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `date_achat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `achat`
--

INSERT INTO `achat` (`id_achat`, `id_piscine`, `montant`, `date_achat`) VALUES
(1, 1, 100.00, '2024-03-27'),
(2, 2, 120.00, '2024-03-27');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'boni', '123boni123');

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id_admin`, `username`, `password`) VALUES
(1, 'boni', '123boni123');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `code`, `items`) VALUES
(1, 'RZ330D4SA', '[{\"nom\":\"Formule A\"},{\"nom\":\"Formule B\"}]'),
(2, 'CDH21UW08', '[{\"nom\":\"Formule A\"},{\"nom\":\"Formule B\"}]'),
(3, 'GRMF9F0IX', '[{\"nom\":\"Formule A\"}]'),
(4, 'G4I67Z01H', '[{\"nom\":\"Formule B\"}]'),
(5, 'KE5N15K7I', '[{\"nom\":\"Formule A\"}]'),
(6, 'MHVZV4XB7', '[{\"nom\":\"Formule A\"}]'),
(7, '7LAYZCI0G', '[{\"nom\":\"Formule A\"},{\"nom\":\"Ajout\"}]'),
(8, '5DJUF6SWT', '[{\"nom\":\"Ajout\"}]'),
(9, 'X9Q6R25NF', '[{\"nom\":\"Ajout\"}]'),
(10, 'K1N23DHQ1', '[{\"nom\":\"Ajout\"}]'),
(11, 'FP8E2L382', '[{\"nom\":\"Formule A\"}]'),
(12, 'U7JJ45FL9', '[{\"nom\":\"Formule A\",\"montant\":\"50\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `creneau`
--

CREATE TABLE `creneau` (
  `id_creneau` int(11) NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `place` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formule`
--

CREATE TABLE `formule` (
  `id_formule` int(11) NOT NULL,
  `id_piscine` int(11) DEFAULT NULL,
  `duree_validite` int(11) DEFAULT NULL,
  `nom` varchar(255) NOT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `nbr_personnes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formule`
--

INSERT INTO `formule` (`id_formule`, `id_piscine`, `duree_validite`, `nom`, `montant`, `quantite`, `nbr_personnes`) VALUES
(1, 1, 30, 'Formule A', 50.00, 10, 2),
(2, 2, 30, 'Formule B', 100.00, 8, 3),
(3, NULL, 30, 'Ajout', 10.00, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `piscine`
--

CREATE TABLE `piscine` (
  `id_piscine` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `nbr_bassins` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `piscine`
--

INSERT INTO `piscine` (`id_piscine`, `nom`, `adresse`, `nbr_bassins`) VALUES
(1, 'Piscine A', 'Adresse A', 3),
(2, 'Piscine B', 'Adresse B', 2),
(3, 'Test', 'lalala', 8);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id_prof` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id_prof`, `Nom`) VALUES
(1, 'Professeur A'),
(2, 'Professeur B');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL,
  `id_formule` int(11) DEFAULT NULL,
  `id_achat` int(11) DEFAULT NULL,
  `id_prof` int(11) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `code_validation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `id_formule`, `id_achat`, `id_prof`, `date_debut`, `quantite`, `code_validation`) VALUES
(1, 1, 1, 1, '2024-03-27', 1, 'code123'),
(2, 2, 2, 2, '2024-03-27', 2, 'code456');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat`
--
ALTER TABLE `achat`
  ADD PRIMARY KEY (`id_achat`),
  ADD KEY `id_piscine` (`id_piscine`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `creneau`
--
ALTER TABLE `creneau`
  ADD PRIMARY KEY (`id_creneau`);

--
-- Index pour la table `formule`
--
ALTER TABLE `formule`
  ADD PRIMARY KEY (`id_formule`),
  ADD KEY `id_piscine` (`id_piscine`);

--
-- Index pour la table `piscine`
--
ALTER TABLE `piscine`
  ADD PRIMARY KEY (`id_piscine`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`id_prof`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Index pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `id_formule` (`id_formule`),
  ADD KEY `id_achat` (`id_achat`),
  ADD KEY `id_prof` (`id_prof`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achat`
--
ALTER TABLE `achat`
  MODIFY `id_achat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `creneau`
--
ALTER TABLE `creneau`
  MODIFY `id_creneau` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formule`
--
ALTER TABLE `formule`
  MODIFY `id_formule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `piscine`
--
ALTER TABLE `piscine`
  MODIFY `id_piscine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `professeur`
--
ALTER TABLE `professeur`
  MODIFY `id_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `achat_ibfk_1` FOREIGN KEY (`id_piscine`) REFERENCES `piscine` (`id_piscine`);

--
-- Contraintes pour la table `formule`
--
ALTER TABLE `formule`
  ADD CONSTRAINT `formule_ibfk_1` FOREIGN KEY (`id_piscine`) REFERENCES `piscine` (`id_piscine`);

--
-- Contraintes pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_formule`) REFERENCES `formule` (`id_formule`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_achat`) REFERENCES `achat` (`id_achat`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`id_prof`) REFERENCES `professeur` (`id_prof`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
