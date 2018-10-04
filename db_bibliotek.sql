-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 04 okt 2018 kl 06:56
-- Serverversion: 10.1.21-MariaDB
-- PHP-version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `db_bibliotek`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `namn` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `fnamn` varchar(30) NOT NULL,
  `enamn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `bok`
--

CREATE TABLE `bok` (
  `Nr` int(11) NOT NULL,
  `ISBN` int(14) NOT NULL,
  `Titel` varchar(30) NOT NULL,
  `Utg-år` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `exemplar`
--

CREATE TABLE `exemplar` (
  `Enr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `författare`
--

CREATE TABLE `författare` (
  `Nr` int(11) NOT NULL,
  `fnamn` varchar(30) NOT NULL,
  `enamn` varchar(30) NOT NULL,
  `land` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `ljudbok`
--

CREATE TABLE `ljudbok` (
  `EAN` int(11) NOT NULL,
  `timmar` int(11) NOT NULL,
  `antal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `låntagare`
--

CREATE TABLE `låntagare` (
  `Nr` int(11) NOT NULL,
  `fnamn` varchar(30) NOT NULL,
  `enamn` varchar(30) NOT NULL,
  `hemadress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `skiva`
--

CREATE TABLE `skiva` (
  `EAN` int(11) NOT NULL,
  `antal` int(11) NOT NULL,
  `timmar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `tidning`
--

CREATE TABLE `tidning` (
  `ISSN` int(11) NOT NULL,
  `Titel` varchar(30) NOT NULL,
  `Utg-år` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index för tabell `bok`
--
ALTER TABLE `bok`
  ADD PRIMARY KEY (`Nr`,`ISBN`);

--
-- Index för tabell `exemplar`
--
ALTER TABLE `exemplar`
  ADD PRIMARY KEY (`Enr`);

--
-- Index för tabell `författare`
--
ALTER TABLE `författare`
  ADD PRIMARY KEY (`Nr`);

--
-- Index för tabell `ljudbok`
--
ALTER TABLE `ljudbok`
  ADD PRIMARY KEY (`EAN`);

--
-- Index för tabell `låntagare`
--
ALTER TABLE `låntagare`
  ADD PRIMARY KEY (`Nr`);

--
-- Index för tabell `skiva`
--
ALTER TABLE `skiva`
  ADD PRIMARY KEY (`EAN`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `bok`
--
ALTER TABLE `bok`
  MODIFY `Nr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `exemplar`
--
ALTER TABLE `exemplar`
  MODIFY `Enr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `författare`
--
ALTER TABLE `författare`
  MODIFY `Nr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `ljudbok`
--
ALTER TABLE `ljudbok`
  MODIFY `EAN` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `låntagare`
--
ALTER TABLE `låntagare`
  MODIFY `Nr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `skiva`
--
ALTER TABLE `skiva`
  MODIFY `EAN` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
