-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 17 sep. 2022 à 12:59
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestevote1`
--

-- --------------------------------------------------------

--
-- Structure de la table `arrondissement`
--

DROP TABLE IF EXISTS `arrondissement`;
CREATE TABLE IF NOT EXISTS `arrondissement` (
  `id_arron` int NOT NULL AUTO_INCREMENT,
  `nom_arron` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_dep` int DEFAULT NULL,
  PRIMARY KEY (`id_arron`),
  KEY `id_dep` (`id_dep`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `arrondissement`
--

INSERT INTO `arrondissement` (`id_arron`, `nom_arron`, `id_dep`) VALUES
(3, 'Dakar Plateau', 1),
(4, 'Almadie', 1),
(5, 'Parcelles Assainie', 1),
(6, 'Grand Dakar', 1),
(7, 'guediawaye', 4),
(8, 'Pikine Dagoudane', 3),
(9, 'Thiaroye', 3),
(10, 'Niayes', 3),
(11, 'rufisque', 5),
(12, 'sangalkam', 5),
(13, 'mbambilor', 5),
(14, 'thies nord', 6),
(15, 'thies sud', 6),
(16, 'Mbour arrondissement 1', 8),
(17, 'Mbour arrondissement 2', 8);

-- --------------------------------------------------------

--
-- Structure de la table `bureau`
--

DROP TABLE IF EXISTS `bureau`;
CREATE TABLE IF NOT EXISTS `bureau` (
  `id_bureau` int NOT NULL AUTO_INCREMENT,
  `nom_bureau` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_commune` int DEFAULT NULL,
  PRIMARY KEY (`id_bureau`),
  KEY `id_commune` (`id_commune`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `bureau`
--

INSERT INTO `bureau` (`id_bureau`, `nom_bureau`, `id_commune`) VALUES
(1, 'bureau1', 1),
(2, 'bureau2', 1),
(3, 'bureau1', 2),
(4, 'bureau2', 2),
(5, 'bureau1', 6),
(6, 'bureau1', 5),
(7, 'bureau1', 3),
(8, 'bureau2', 3),
(9, 'bureau 1', 3),
(10, 'bureau 3', 5),
(11, 'bureau1', 7),
(12, 'bureau2', 7),
(13, 'bureau1', 8),
(14, 'bureau2', 8),
(15, 'bureau 3', 2),
(16, 'bureau1', 4),
(17, 'premier bureau mbour', 4);

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

DROP TABLE IF EXISTS `candidat`;
CREATE TABLE IF NOT EXISTS `candidat` (
  `id_candidat` int NOT NULL AUTO_INCREMENT,
  `nom_candidat` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nom_partie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `photo_parti` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id_candidat`),
  UNIQUE KEY `photo` (`id_candidat`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `candidat`
--

INSERT INTO `candidat` (`id_candidat`, `nom_candidat`, `nom_partie`, `photo_parti`) VALUES
(13, 'Robert BALLO', 'DEFI', 'WhatsApp Image 2022-08-31 at 23.16.39.jpeg'),
(14, 'Sory Abdoulaye DOUMBIA', 'UPC', 'SORY.jpeg'),
(15, 'Mamadou baba DERO', 'Osez le changement', 'DERO.jpeg'),
(16, 'Cherif', 'UDP', 'CHERIF.jpeg'),
(17, 'Bulletin nul', 'nul', 'kisspng-null-pointer-symbol-computer-icons-pi-5ac1c0964f62d5.3135633215226471903252-removebg-preview.png');

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

DROP TABLE IF EXISTS `commune`;
CREATE TABLE IF NOT EXISTS `commune` (
  `id_commune` int NOT NULL AUTO_INCREMENT,
  `nom_commune` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_arron` int DEFAULT NULL,
  PRIMARY KEY (`id_commune`),
  KEY `id_arron` (`id_arron`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commune`
--

INSERT INTO `commune` (`id_commune`, `nom_commune`, `id_arron`) VALUES
(1, 'commune thiaroye sud', 9),
(2, 'commune thiaroye nord', 9),
(3, 'commune mbour', 16),
(4, 'Mbour commune', 17),
(5, 'Commune GD', 6),
(6, 'Commune DP', 3),
(7, 'commune des plateau', 3),
(8, 'commune des plateau 2', 3);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `id_dep` int NOT NULL AUTO_INCREMENT,
  `nom_dep` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_region` int DEFAULT NULL,
  PRIMARY KEY (`id_dep`),
  KEY `id_region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id_dep`, `nom_dep`, `id_region`) VALUES
(1, 'dakar', 1),
(3, 'pakine', 1),
(4, 'guediawaye', 1),
(5, 'rufisque', 1),
(6, 'thies', 2),
(7, 'tivaoune', 2),
(8, 'mbour', 2);

-- --------------------------------------------------------

--
-- Structure de la table `electeur`
--

DROP TABLE IF EXISTS `electeur`;
CREATE TABLE IF NOT EXISTS `electeur` (
  `id_electeur` int NOT NULL AUTO_INCREMENT,
  `nom_electeur` varchar(40) NOT NULL,
  `prenom_electeur` varchar(40) NOT NULL,
  `cni` double DEFAULT NULL,
  `num_electeur` varchar(10) DEFAULT NULL,
  `sexe` varchar(30) NOT NULL,
  `date_nais` date DEFAULT NULL,
  `lieu_nais` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `adress` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` varchar(40) NOT NULL DEFAULT 'electeur',
  `status_vote` tinyint(1) NOT NULL DEFAULT '0',
  `login` varchar(20) NOT NULL,
  `mdp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `region` int DEFAULT NULL,
  `dep` int DEFAULT NULL,
  `arron` int DEFAULT NULL,
  `commune` int DEFAULT NULL,
  `id_bureau` int DEFAULT NULL,
  `etat` varchar(50) NOT NULL,
  PRIMARY KEY (`id_electeur`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `electeur`
--

INSERT INTO `electeur` (`id_electeur`, `nom_electeur`, `prenom_electeur`, `cni`, `num_electeur`, `sexe`, `date_nais`, `lieu_nais`, `adress`, `type`, `status_vote`, `login`, `mdp`, `region`, `dep`, `arron`, `commune`, `id_bureau`, `etat`) VALUES
(1, 'DIAKITE', 'Sekou', 12345, 'BD-001', 'masculin', '1999-01-20', 'Baco djicoroni', 'PDI', 'admin', 1, 'BD-ADMIN-01', '3a00a98200d393ea83b40825ba04269874be9177', 1, 3, 9, 2, 4, 'actif'),
(2, 'DIARRA', 'Bourama', NULL, 'BD-7569', 'masculin', '2000-09-06', 'ACI 2000 SIEGE', 'RIT', 'admin', 1, 'BD-ADMIN-02', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(47, 'DIARRA', 'Bourama', NULL, 'BD-7595', 'masculin', '1998-04-25', 'ACI 2000 SIEGE', 'GEA', 'electeur', 1, 'BD-7595', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(48, 'Soumaila', 'TRAORE', NULL, 'BD-5964', 'masculin', '1997-05-14', 'BACO DJICORONI', 'GLT', 'electeur', 1, 'BD-5964', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(49, 'TIRERA ', 'Bakary', NULL, 'BD-5488', 'masculin', '1999-04-05', 'BACO DJICORONI', 'PDI', 'electeur', 1, 'BD-5488', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(50, 'KANOUTE', 'Rokiatou', NULL, 'BD-5618', 'feminin', '2002-12-15', 'BACO DJICORONI', 'PDI', 'electeur', 1, 'BD-5618', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(51, 'TOURE', 'Fatoumata', NULL, 'BD-2697', 'feminin', '1999-05-05', 'BACO DJICORONI', 'RIT', 'electeur', 1, 'BD-2697', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(52, 'TOGOLA', 'Hawa', NULL, 'BD-0562', 'feminin', '1997-12-15', 'BACO DJICORONI', 'RIT', 'electeur', 1, 'BD-0567', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(53, 'KAROUNGA', 'Moutou', NULL, 'BD-2545', 'masculin', '1998-02-15', 'BACO DJICORONI', 'RIT', 'electeur', 1, 'BD-2545', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(54, 'COULIBALY', 'Fatoumata', NULL, 'BD-2457', 'feminin', '2000-04-25', 'HIPPODROME', 'GEA', 'electeur', 1, 'BD-2457', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(55, 'KEITA', 'Mahamadou', NULL, 'BD-2565', 'masculin', '1998-08-05', 'HIPPODROME', 'FC', 'electeur', 1, 'BD-2565', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(56, 'DIAWARA', 'Karim', NULL, 'BD-1547', 'masculin', '1997-07-04', 'ACI 2000 SIEGE', 'MCM', 'electeur', 1, 'BD-1547', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(57, 'COULIBALY', 'Adama', NULL, 'BD-4684', 'masculin', '2000-08-25', 'BACO DJICORONI', 'GRH', 'electeur', 1, 'BD-4684', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(58, 'SY', 'Fatoumata', NULL, 'BD-5846', 'feminin', '1999-12-08', 'HIPPODROME', 'DP', 'electeur', 0, 'BD-5846', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(59, 'CISSE ', 'Fadima', NULL, 'BD-2157', 'feminin', '1997-04-25', 'BACO DJICORONI', 'DAF', 'electeur', 0, 'BD-2157', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(60, 'BORE', 'Souleymane', NULL, 'BD-2451', 'masculin', '2001-08-05', 'HIPPODROME', 'IG2', 'electeur', 1, 'BD-2451', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(61, 'KONE ', 'Aicha', NULL, 'BD-1571', 'feminin', '2000-04-25', 'ACI 2000 SIEGE', 'MTC', 'electeur', 1, 'BD-1571', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(62, 'BOUARE', 'Kadidiatou', NULL, 'BD-4585', 'feminin', '2002-05-04', 'BACO DJICORONI', 'IG2', 'electeur', 0, 'BD-4585', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(63, ' DIARRA', 'Djouratie', NULL, 'BD-7445', 'masculin', '1999-07-25', 'ACI 2000 SIEGE', 'PDI', 'electeur', 1, 'BD-7445', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(64, 'SOUMARE', 'Mohamed', NULL, 'BD-4524', 'masculin', '1996-08-21', 'BACO DJICORONI', 'GLT', 'electeur', 1, 'BD-4524', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(65, 'SY', 'Abdoulaye', NULL, 'BD-2648', 'masculin', '1998-01-25', 'HIPPODROME', 'GEA', 'electeur', 1, 'BD-2648', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(66, 'DJIGUIBA', 'Bareima', NULL, 'BD-2789', 'masculin', '2001-07-25', 'ACI 2000 SIEGE', 'MCM', 'electeur', 0, 'BD-2789', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(67, 'DIAKITE', 'Bakary', NULL, 'BD-2477', 'masculin', '2000-12-20', 'HIPPODROME', 'GRH', 'electeur', 0, 'BD-2477', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(68, 'TRAORE', 'Mamady', NULL, 'BD-5441', 'masculin', '2001-08-07', 'ACI 2000 SIEGE', 'GRH', 'electeur', 0, 'BD-5441', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(69, 'COULIBALY', 'Oumou', NULL, 'BD-5722', 'feminin', '2002-08-05', 'BACO DJICORONI', 'FC', 'electeur', 0, 'BD-5441', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(70, 'COULIBALY', 'Hawa', NULL, 'BD-2145', 'feminin', '1995-08-07', 'HIPPODROME', 'ACG', 'electeur', 0, 'BD-2145', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(71, 'DIALLO', 'Hadjaratou', NULL, 'BD-5224', 'feminin', '2000-02-25', 'BACO DJICORONI', 'RIT', 'electeur', 0, 'BD-5224', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(72, 'DJENIKA', 'Aboubacar', NULL, 'BD-5485', 'masculin', '2000-07-25', 'BACO DJICORONI', 'MCM', 'electeur', 0, 'BD-5485', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(73, 'SENOU', 'Khalifa', NULL, 'BD-1545', 'masculin', '1997-07-25', 'ACI 2000 SIEGE', 'FC', 'electeur', 1, 'BD-1545', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(74, 'BALLO', 'Ibrahima', NULL, 'BD-2482', 'masculin', '1995-04-25', 'HIPPODROME', 'GLT', 'electeur', 0, 'BD-2482', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(75, 'KONE', 'Hawa', NULL, 'BD-5452', 'feminin', '1998-08-05', 'HIPPODROME', 'MCM', 'electeur', 1, 'BD-5452', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(76, 'KIRE', 'Fatoumata', NULL, 'BD-2542', 'feminin', '2000-07-25', 'HIPPODROME', 'FC', 'electeur', 1, 'BD-2542', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(77, 'TRAORE', 'Moussoudou', NULL, 'BD-5482', 'masculin', '1997-07-14', 'HIPPODROME', 'DP', 'electeur', 0, 'BD-5485', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(78, 'SANGARE', 'Aissata', NULL, 'BD-9588', 'feminin', '1999-04-25', 'HIPPODROME', 'GEA', 'electeur', 1, 'BD-9588', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(79, 'SISSOKO', 'Adam', NULL, 'BD-5247', 'feminin', '2001-05-08', 'HIPPODROME', 'MCM', 'electeur', 1, 'BD-5247', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(80, 'DEMBELE', 'Lala', NULL, 'BD-4741', 'feminin', '2000-04-21', 'BACO DJICORONI', 'RIT', 'electeur', 1, 'BD-4741', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(81, 'DIARRA', 'Zeynabou', NULL, 'BD-5455', 'feminin', '2002-07-25', 'ACI 2000 SIEGE', 'FC', 'electeur', 1, 'BD-5455', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(82, 'SISSOKO', 'Assetou', NULL, 'BD-4522', 'feminin', '1998-07-05', 'BACO DJICORONI', 'JC', 'electeur', 1, 'BD-4522', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(83, 'BAH', 'Ibrahima', NULL, 'BD-4511', 'masculin', '2000-07-25', 'BACO DJICORONI', 'JC', 'electeur', 0, 'BD-4511', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(84, 'SISSOKO', 'Abdoulaye', NULL, 'BD-1414', 'masculin', '2001-01-25', 'BACO DJICORONI', 'RIT', 'electeur', 1, 'BD-1414', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(85, 'TOURE', 'Mohamed', NULL, 'BD-2485', 'masculin', '2000-08-05', 'HIPPODROME', 'GRH', 'electeur', 1, 'BD-2485', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(86, 'BANE', 'Alpha', NULL, 'BD-1512', 'masculin', '2001-01-12', 'HIPPODROME', 'JC', 'electeur', 1, 'BD-1512', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(87, 'BANE ', 'Moussa', NULL, 'BD-2510', 'masculin', '2001-07-21', 'HIPPODROME', 'PDI', 'electeur', 0, 'BD-2510', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(88, 'TOURE', 'Hamane', NULL, 'BD-7842', 'masculin', '1999-07-25', 'HIPPODROME', 'GLT', 'electeur', 0, 'BD-7842', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(89, 'DIONFAGA', 'Bourama', NULL, 'BD-1225', 'masculin', '1997-05-07', 'BACO DJICORONI', 'DP', 'electeur', 0, 'BD-1225', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(90, 'COULIBALY', 'Bourama', NULL, 'BD-1478', 'masculin', '1999-08-25', 'HIPPODROME', 'JC', 'electeur', 0, 'BD-1478', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(91, 'DIARRA', 'Tiecoura', NULL, 'BD-1236', 'masculin', '1998-07-25', 'ACI 2000 SIEGE', 'PDI', 'electeur', 1, 'BD-1236', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(92, 'MAIGA', 'Abasse', NULL, 'BD-5785', 'masculin', '1999-07-25', 'HIPPODROME', 'GEA', 'electeur', 0, 'BD-5785', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(93, 'DJIRE ', 'Youssouf', NULL, 'BD-1010', 'masculin', '2000-07-25', 'BACO DJICORONI', 'MCM', 'electeur', 0, 'BD-5785', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(94, 'BERTHE', 'Mohamed', NULL, 'BD-5410', 'masculin', '1997-06-25', 'BACO DJICORONI', 'GEA', 'electeur', 0, 'BD-5410', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(95, 'BERTHE', 'Hassan ', NULL, 'BD-1479', 'masculin', '2001-07-25', 'BACO DJICORONI', 'GLT2', 'electeur', 0, 'BD-1479', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(96, 'DJENEPO', 'Zeynab', NULL, 'BD-5478', 'feminin', '2001-07-25', 'BACO DJICORONI', 'RIT', 'electeur', 0, 'BD-5478', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(97, 'AYA', 'Fatoumata', NULL, 'BD-8989', 'feminin', '2000-07-25', 'BACO DJICORONI', 'JC', 'electeur', 1, 'BD-8989', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(98, 'TOURE', 'Aîcha', NULL, 'BD-4545', 'feminin', '1999-05-04', 'HIPPODROME', 'JC', 'electeur', 0, 'BD-4545', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(99, 'SALL', 'Aminata', NULL, 'BD-7887', 'feminin', '2001-05-08', 'BACO DJICORONI', 'MCM', 'electeur', 0, 'BD-4545', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(100, 'GASSAMBA', 'Dedeou', NULL, 'BD-1578', 'feminin', '1998-05-24', 'BACO DJICORONI', 'JC', 'electeur', 0, 'BD-1578', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(101, 'KEITA', 'Fadima', NULL, 'BD-7856', 'feminin', '2000-05-08', 'HIPPODROME', 'JC', 'electeur', 1, 'BD-7856', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(102, 'BALO', 'Robert', NULL, 'BD-1579', 'masculin', '1997-06-28', 'ACI 2000 SIEGE', 'MCM', 'electeur', 0, 'BD-1579', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(103, 'DOUMBIA', 'Sory Abdoulaye', NULL, 'BD-2563', 'masculin', '2000-07-28', 'BACO DJICORONI', 'ACG', 'electeur', 0, 'BD-2563', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(104, 'DIALLO', 'Moussa', NULL, 'BD-1212', 'masculin', '1999-05-08', 'HIPPODROME', 'GLT', 'electeur', 1, 'BD-1212', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(105, 'TOURE', 'Ibrahim Aliou', NULL, 'BD-6996', 'masculin', '1999-08-27', 'HIPPODROME', 'MCM', 'electeur', 0, 'BD-6996', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(106, 'SOW', 'Mamadou', NULL, 'BD-4788', 'masculin', '2002-07-08', 'HIPPODROME', 'IG1', 'electeur', 0, 'BD-4788', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(107, 'DIAKITE', 'Sekou', NULL, 'BD-ADMIN', 'masculin', '1999-12-28', 'BACO DJICORONI', 'PDI', 'electeur', 0, 'BD-ADMIN', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif'),
(108, 'TOURE', 'Hawa', NULL, 'BD-3215', 'feminin', '2000-08-09', 'HIPPODROME', 'RIT', 'electeur', 0, 'BD-3215', '71cfe0ffbffaaa3c183ebd45f18ac84e092ff3cc', NULL, NULL, NULL, NULL, NULL, 'actif');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `id_region` int NOT NULL AUTO_INCREMENT,
  `nom_region` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id_region`, `nom_region`) VALUES
(1, 'Dakar'),
(2, 'Thies');

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id_vote` int NOT NULL AUTO_INCREMENT,
  `nom_candidat` varchar(100) NOT NULL,
  `id_candidat` int DEFAULT NULL,
  `id_electeur` int DEFAULT NULL,
  PRIMARY KEY (`id_vote`),
  KEY `id_candidat` (`id_candidat`),
  KEY `id_electeur` (`id_electeur`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `vote`
--

INSERT INTO `vote` (`id_vote`, `nom_candidat`, `id_candidat`, `id_electeur`) VALUES
(48, 'Sory Abdoulaye DOUMBIA', 14, 2),
(49, 'Robert BALLO', 13, 47),
(50, 'Robert BALLO', 13, 48),
(51, 'Sory Abdoulaye DOUMBIA', 14, 49),
(52, 'Mamadou baba DERO', 15, 64),
(53, 'Bulletin nul', 17, 50),
(54, 'Cherif', 16, 51),
(55, 'Robert BALLO', 13, 52),
(56, 'Robert BALLO', 13, 53),
(57, 'Robert BALLO', 13, 54),
(58, 'Mamadou baba DERO', 15, 65),
(59, 'Mamadou baba DERO', 15, 61),
(60, 'Robert BALLO', 13, 73),
(61, 'Bulletin nul', 17, 75),
(62, 'Robert BALLO', 13, 80),
(63, 'Robert BALLO', 13, 79),
(64, 'Robert BALLO', 13, 81),
(65, 'Robert BALLO', 13, 85),
(66, 'Robert BALLO', 13, 84),
(67, 'Robert BALLO', 13, 82),
(68, 'Sory Abdoulaye DOUMBIA', 14, 78),
(69, 'Sory Abdoulaye DOUMBIA', 14, 104),
(70, 'Sory Abdoulaye DOUMBIA', 14, 101),
(71, 'Sory Abdoulaye DOUMBIA', 14, 97),
(72, 'Mamadou baba DERO', 15, 91),
(73, 'Robert BALLO', 13, 76),
(74, 'Bulletin nul', 17, 86),
(75, 'Cherif', 16, 55),
(76, 'Sory Abdoulaye DOUMBIA', 14, 56),
(77, 'Sory Abdoulaye DOUMBIA', 14, 57),
(78, 'Mamadou baba DERO', 15, 60),
(79, 'Sory Abdoulaye DOUMBIA', 14, 63);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `arrondissement`
--
ALTER TABLE `arrondissement`
  ADD CONSTRAINT `arrondissement_ibfk_1` FOREIGN KEY (`id_dep`) REFERENCES `departement` (`id_dep`);

--
-- Contraintes pour la table `bureau`
--
ALTER TABLE `bureau`
  ADD CONSTRAINT `bureau_ibfk_1` FOREIGN KEY (`id_commune`) REFERENCES `commune` (`id_commune`);

--
-- Contraintes pour la table `commune`
--
ALTER TABLE `commune`
  ADD CONSTRAINT `commune_ibfk_1` FOREIGN KEY (`id_arron`) REFERENCES `arrondissement` (`id_arron`);

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `departement_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`);

--
-- Contraintes pour la table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `candidat` (`id_candidat`),
  ADD CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`id_electeur`) REFERENCES `electeur` (`id_electeur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
