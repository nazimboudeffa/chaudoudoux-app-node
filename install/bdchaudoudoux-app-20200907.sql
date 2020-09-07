-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 07 Septembre 2020 à 22:05
-- Version du serveur :  5.7.31-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdchaudoudoux-app`
--

-- --------------------------------------------------------

--
-- Structure de la table `cdd_my_tasks`
--

CREATE TABLE `cdd_my_tasks` (
  `id_user` int(11) NOT NULL,
  `id_task` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cdd_profile`
--

CREATE TABLE `cdd_profile` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cdd_profile`
--

INSERT INTO `cdd_profile` (`id`, `first_name`, `last_name`, `address`, `zip_code`, `city`) VALUES
(1233, 'Alix', 'Godard', '32, rue Louise Lagarde', '35700', 'Rennes');

-- --------------------------------------------------------

--
-- Structure de la table `cdd_tasks`
--

CREATE TABLE `cdd_tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cdd_tasks`
--

INSERT INTO `cdd_tasks` (`id`, `name`) VALUES
(1, 'Acheter le pain'),
(2, 'Prendre un café');

-- --------------------------------------------------------

--
-- Structure de la table `cdd_trainings`
--

CREATE TABLE `cdd_trainings` (
  `id` int(5) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `duration` varchar(15) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `organisation` varchar(100) DEFAULT NULL,
  `remuneration` tinyint(1) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cdd_trainings`
--

INSERT INTO `cdd_trainings` (`id`, `title`, `duration`, `description`, `organisation`, `remuneration`, `type`) VALUES
(1, 'Garde d\'enfant 0-1 an', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(2, 'Gestion du stress et relaxation', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(3, 'Prévention des risques sanitaires', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(4, 'Contes et histoires', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(5, 'Eveil musical', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(6, 'Eveil sportif et motricité', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(7, 'Garde d\'enfant 0-3 ans', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(8, 'Préparation des repas', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(9, 'Préparation des repas (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(10, 'Règle d\'hygiène et d\'ergonomie (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(11, 'Recyclage PSC1 (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(12, 'PSC1 (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(13, 'Relation communication', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(14, 'Entretien du linge', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(15, 'Aide aux devoirs', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(16, 'Prévention secours intervenant à domicile', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(17, 'Intégrer le développement durable dans son activité professionnelle', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(18, 'Ma santé au travail', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(19, 'Sécurité et prévention auprès des enfants', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(20, 'Entretien du cadre de vie (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(21, 'Gestion du stress et relaxation (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(22, 'Ma santé au travail (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(23, 'Droits et devoirs', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(24, 'Faire face à l\'agressivité et adapter son comportement', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(25, 'Proposer des activités à moindre coût', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(26, 'Relation communication (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(27, 'S\'occuper d\'un enfant atteint d\'autisme', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(28, 'Prévention des accidents domestiques (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(29, 'Initiation aux produits eco-biologiques', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(30, 'Garde d\'enfant en situation de handicap', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(31, 'Prendre soin de soi pour prendre soin des autres', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(32, 'Communiquer par internet (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(33, 'Techniques et conseils spécifiques et règles d\'hygiène de base (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(34, 'Garde d\'enfant 1-3 ans', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(35, 'Troubles du langage', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(36, 'Apprentissage de la langue des signes', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(37, 'Techniques d\'entretien de la vitrerie (PRET)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(38, 'Préparation du certificat Sauveteur Secouriste du Travail (SST)', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(39, 'Recyclage du certificat SST', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(40, 'Aide aux devoirs (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(41, 'Prévention des risques, gestes et postures (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(42, 'Prévention des risques et sécurtié dans les déplacements avec les enfants', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(43, 'Gérer les situations difficiles', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(44, 'Acitivités ludiques et éveil sensoriel', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(45, 'Prévention et sécurité des enfants de plus de 3 ans (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(46, 'Prévention et sécurité des enfants de moins de 3 ans (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(47, 'Prévenir et gérer les situations difficiles (PREST)', '2018 et avant', '', '', 1, 'PRESTATAIRE'),
(48, 'Expression spontannée et créativité du jeune enfant', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(49, 'Activités périscolaires', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(50, 'Garde partagée', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(51, 'S\'occuper d\'enfant de plus de 3 ans', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(52, 'PSC1', '2018 et avant', '', '', 1, 'MANDATAIRE'),
(53, 'SST 2018', '2018', '', 'AGORA ', 1, 'MANDATAIRE'),
(54, 'PSC1 2018', '2018', '', 'Breizh Sauvetage Cötier', 1, 'PRESTATAIRE'),
(56, 'Aide aux devoirs 2018', '2018', '', 'AGORA', 1, 'MANDATAIRE'),
(57, 'Perfectionnement entretien et repassage 2018', '2018', '', 'CLPS', 1, 'PRESTATAIRE'),
(58, 'Activités adaptées aux enfants selon l\'âge 2018', '2018', '', 'AGORA', 1, 'MANDATAIRE'),
(59, 'S\'occuper d\'un enfant en situation de handicap', 'avril 2019', '', 'AREP', 1, 'MANDATAIRE'),
(60, 'S\'occuper d\'un enfant en situation de handicap (2019)', '2019', '', 'AREP', 1, 'MANDATAIRE'),
(61, 'Accompagnement à la séparation', '2019', '', 'AREP', 1, 'MANDATAIRE'),
(62, 'Situations difficiles et cas de maltraitance', '', '', '', 1, 'PRESTATAIRE');

-- --------------------------------------------------------

--
-- Structure de la table `cdd_users`
--

CREATE TABLE `cdd_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cdd_users`
--

INSERT INTO `cdd_users` (`id`, `username`, `password`, `email`) VALUES
(1, 'chaudoudoux', '2b0b5b75904472ef54c56e229609e060', 'boudeffa@gmail.com'),
(2, 'unicorn1', '2b0b5b75904472ef54c56e229609e060', 'boudeffa@gmail.com');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cdd_profile`
--
ALTER TABLE `cdd_profile`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cdd_tasks`
--
ALTER TABLE `cdd_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cdd_trainings`
--
ALTER TABLE `cdd_trainings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cdd_users`
--
ALTER TABLE `cdd_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cdd_trainings`
--
ALTER TABLE `cdd_trainings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
