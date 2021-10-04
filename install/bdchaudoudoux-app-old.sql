-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 06 Novembre 2019 à 11:39
-- Version du serveur :  5.7.27-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `chaudoudoux`
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
(1, 'unicorn1', '3b0df1577270514e045fdb2ba95483e7', 'boudeffa@gmail.com');

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
-- Index pour la table `cdd_users`
--
ALTER TABLE `cdd_users`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
