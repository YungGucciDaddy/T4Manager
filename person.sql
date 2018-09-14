-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 14 sep 2018 kl 10:27
-- Serverversion: 10.1.19-MariaDB
-- PHP-version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `person`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `registera`
--

CREATE TABLE `registera` (
  `id` int(50) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `registera`
--

INSERT INTO `registera` (`id`, `username`, `pass`, `email`) VALUES
(0, 'david', '13', 'david@'),
(1, 'zalami', '12345', 'zalami@gmail.com'),
(2, 'sammi', '123', '123@abc'),
(3, 'sami', '1234', 'zami');

-- --------------------------------------------------------

--
-- Tabellstruktur `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `tasks`
--

INSERT INTO `tasks` (`id`, `task`) VALUES
(1, 'vattna blommor'),
(2, 'köpa in kaffe'),
(3, 'brygga kaffe');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `registera`
--
ALTER TABLE `registera`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
