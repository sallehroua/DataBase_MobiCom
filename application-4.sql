-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2020 at 03:30 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.3.21-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `application`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrateur`
--

CREATE TABLE `administrateur` (
  `Id_Ad` varchar(30) NOT NULL,
  `Login_Ad` varchar(30) NOT NULL,
  `Pass_Ad` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application mobile`
--

CREATE TABLE `application mobile` (
  `Id_App` varchar(30) NOT NULL,
  `Nom` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `Id_Audio` varchar(30) NOT NULL,
  `Contenu` varchar(30) NOT NULL,
  `publication_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `demande_dajout`
--

CREATE TABLE `demande_dajout` (
  `Id_Demande` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `Id_Etudiant` varchar(30) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prénom` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `Id_Image` varchar(30) NOT NULL,
  `Contenu` varchar(30) NOT NULL,
  `publication_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `liste_admis`
--

CREATE TABLE `liste_admis` (
  `Id_liste` varchar(30) NOT NULL,
  `Ami` varchar(30) NOT NULL,
  `Nobmre Ami` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Id_Message` varchar(30) NOT NULL,
  `id_source` int(11) NOT NULL,
  `id_des` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message joint`
--

CREATE TABLE `message joint` (
  `Id_Joint` varchar(30) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message text`
--

CREATE TABLE `message text` (
  `Id_Msg` varchar(30) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page_facebook`
--

CREATE TABLE `page_facebook` (
  `Id_Fb` varchar(30) NOT NULL,
  `Lien` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `Id_Points` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nbr_pt` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `Id_Pub` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `texte`
--

CREATE TABLE `texte` (
  `Id_Text` varchar(30) NOT NULL,
  `Contenu` varchar(30) NOT NULL,
  `publication_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Id_Utilisateur` varchar(30) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prénom` varchar(30) NOT NULL,
  `Login` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Id_points` varchar(30) NOT NULL,
  `Id_Ad` varchar(30) NOT NULL,
  `Id_Pub` varchar(30) NOT NULL,
  `Id_App` varchar(30) NOT NULL,
  `Id_Message` varchar(30) NOT NULL,
  `Id_liste` varchar(30) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `Id_Vidéo` varchar(30) NOT NULL,
  `Contenu` varchar(30) NOT NULL,
  `publication_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`Id_Ad`);

--
-- Indexes for table `application mobile`
--
ALTER TABLE `application mobile`
  ADD PRIMARY KEY (`Id_App`);

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`Id_Audio`);

--
-- Indexes for table `demande_dajout`
--
ALTER TABLE `demande_dajout`
  ADD PRIMARY KEY (`Id_Demande`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`Id_Etudiant`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`Id_Image`),
  ADD KEY `publication_id` (`publication_id`);

--
-- Indexes for table `liste_admis`
--
ALTER TABLE `liste_admis`
  ADD PRIMARY KEY (`Id_liste`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id_Message`);

--
-- Indexes for table `message joint`
--
ALTER TABLE `message joint`
  ADD PRIMARY KEY (`Id_Joint`);

--
-- Indexes for table `message text`
--
ALTER TABLE `message text`
  ADD PRIMARY KEY (`Id_Msg`);

--
-- Indexes for table `page_facebook`
--
ALTER TABLE `page_facebook`
  ADD PRIMARY KEY (`Id_Fb`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`Id_Points`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`Id_Pub`);

--
-- Indexes for table `texte`
--
ALTER TABLE `texte`
  ADD PRIMARY KEY (`Id_Text`),
  ADD KEY `publication_id` (`publication_id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Id_Utilisateur`),
  ADD KEY `Id_points` (`Id_points`),
  ADD KEY `Administrateur` (`Id_Ad`),
  ADD KEY `Id_Pub` (`Id_Pub`),
  ADD KEY `Id_App` (`Id_App`),
  ADD KEY `Id_Message` (`Id_Message`),
  ADD KEY `Id_liste` (`Id_liste`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`Id_Vidéo`),
  ADD KEY `publication_id` (`publication_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
