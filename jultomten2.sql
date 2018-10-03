-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 03 okt 2018 kl 08:38
-- Serverversion: 10.1.19-MariaDB
-- PHP-version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `jultomten2`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `barn`
--

CREATE TABLE `barn` (
  `Bid` int(11) NOT NULL,
  `Fnamn` varchar(100) NOT NULL,
  `Enamn` varchar(100) NOT NULL,
  `Snall` int(255) NOT NULL,
  `Land` varchar(100) NOT NULL,
  `TUTid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `barn`
--

INSERT INTO `barn` (`Bid`, `Fnamn`, `Enamn`, `Snall`, `Land`, `TUTid`) VALUES
(1, 'Test', 'Testsson', 120, 'Sverige', 1),
(2, 'Teste', 'Testesson', 120, 'Svorge', 2),
(3, 'Testes', 'Testesson', 121, 'Svorge', 1),
(4, 'Lars', 'Larsson', 140, 'Sverige', 2),
(5, 'Anton', 'Nilsson', 105, 'Sverige', 3),
(6, 'Anton', 'Nilssss', 120, 'NOrge', 2),
(7, 'Anton', 'Nilsson', 220, 'Danmark', 2),
(8, 'Anton', 'Nilsson', 120, 'Norge', 2),
(10, 'Anton', 'Nilsson', 120, 'Sverige', 2);

-- --------------------------------------------------------

--
-- Tabellstruktur `chef`
--

CREATE TABLE `chef` (
  `Cid` int(11) NOT NULL,
  `Chefnamn` varchar(100) NOT NULL,
  `Tnid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `chef`
--

INSERT INTO `chef` (`Cid`, `Chefnamn`, `Tnid`) VALUES
(1, 'Tomtemor', 1),
(2, 'Tomtefar', 2);

-- --------------------------------------------------------

--
-- Tabellstruktur `land`
--

CREATE TABLE `land` (
  `TUTid` int(11) NOT NULL,
  `Lid` int(11) NOT NULL,
  `Land` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `land`
--

INSERT INTO `land` (`TUTid`, `Lid`, `Land`) VALUES
(1, 1, 'Sverige'),
(2, 2, 'Svorge');

-- --------------------------------------------------------

--
-- Tabellstruktur `present`
--

CREATE TABLE `present` (
  `Pid` int(11) NOT NULL,
  `presentnamn` varchar(200) NOT NULL,
  `tillverkningsid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `present`
--

INSERT INTO `present` (`Pid`, `presentnamn`, `tillverkningsid`) VALUES
(1, 'chevrolet bel air 1957', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `rapport`
--

CREATE TABLE `rapport` (
  `Snäll` int(255) NOT NULL,
  `Bid` int(11) NOT NULL,
  `TUTid` int(11) NOT NULL,
  `Rid` int(11) NOT NULL,
  `Granskad` int(11) NOT NULL,
  `Rapport` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `rapport`
--

INSERT INTO `rapport` (`Snäll`, `Bid`, `TUTid`, `Rid`, `Granskad`, `Rapport`) VALUES
(100, 1, 1, 1, 1, 'Tjoho'),
(-20, 1, 1, 1, 1, 'Nae'),
(250, 2, 2, 2, 2, 'wew');

-- --------------------------------------------------------

--
-- Tabellstruktur `tillverkningstomte`
--

CREATE TABLE `tillverkningstomte` (
  `Tnid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `tomtenisse`
--

CREATE TABLE `tomtenisse` (
  `Tnid` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `namn` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `tomtenisse`
--

INSERT INTO `tomtenisse` (`Tnid`, `Cid`, `namn`) VALUES
(1, 1, 'Tjoho');

-- --------------------------------------------------------

--
-- Tabellstruktur `tut`
--

CREATE TABLE `tut` (
  `Tnid` int(11) NOT NULL,
  `Säkerhetsnivå` int(11) NOT NULL,
  `TUTid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `underrättelsetomte`
--

CREATE TABLE `underrättelsetomte` (
  `Uid` int(11) NOT NULL,
  `Snivå` int(11) NOT NULL,
  `namn` varchar(100) NOT NULL,
  `TUTid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `underrättelsetomte`
--

INSERT INTO `underrättelsetomte` (`Uid`, `Snivå`, `namn`, `TUTid`) VALUES
(1, 1, 'Undertomte', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `önskelista`
--

CREATE TABLE `önskelista` (
  `Öid` int(11) NOT NULL,
  `Bid` int(11) NOT NULL,
  `Pid` int(11) NOT NULL,
  `Uppfylld` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `önskelista`
--

INSERT INTO `önskelista` (`Öid`, `Bid`, `Pid`, `Uppfylld`) VALUES
(1, 1, 1, 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `barn`
--
ALTER TABLE `barn`
  ADD PRIMARY KEY (`Bid`);

--
-- Index för tabell `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`Cid`);

--
-- Index för tabell `land`
--
ALTER TABLE `land`
  ADD PRIMARY KEY (`Lid`);

--
-- Index för tabell `present`
--
ALTER TABLE `present`
  ADD PRIMARY KEY (`Pid`);

--
-- Index för tabell `tillverkningstomte`
--
ALTER TABLE `tillverkningstomte`
  ADD PRIMARY KEY (`Tnid`);

--
-- Index för tabell `tomtenisse`
--
ALTER TABLE `tomtenisse`
  ADD PRIMARY KEY (`Tnid`);

--
-- Index för tabell `tut`
--
ALTER TABLE `tut`
  ADD PRIMARY KEY (`TUTid`);

--
-- Index för tabell `underrättelsetomte`
--
ALTER TABLE `underrättelsetomte`
  ADD PRIMARY KEY (`Uid`);

--
-- Index för tabell `önskelista`
--
ALTER TABLE `önskelista`
  ADD PRIMARY KEY (`Öid`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `barn`
--
ALTER TABLE `barn`
  MODIFY `Bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT för tabell `tut`
--
ALTER TABLE `tut`
  MODIFY `TUTid` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
