-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 11 okt 2018 kl 11:15
-- Serverversion: 10.1.29-MariaDB
-- PHP-version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `latriviatarp`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `story`
--

CREATE TABLE `story` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `place` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `story`
--

INSERT INTO `story` (`id`, `text`, `place`) VALUES
(1, 'Ditt Namn är Pasta Alfredo och du har just anlänt till en fest hos den vackra damen Violetta du är iklädd i din finaste kostym som tog din tjänarinna hela 2 månader att sy! Du ser hur folk har en underbar fest, det dansas, umgås och det spelas musik det finns även en hörna där folk spelar kort och satsar pengar. Du ser dig om och lyckas få syn på den vackra damen Violetta. Du tvivlar över vad du ska göra.\r\n\r\nVad gör du?', 'Festen'),
(2, 'Du väljer att gå fram till den Vackra damen, hon vänder sig om och kollar på dig intresserad och väntar på vad du har och säga.\r\nHur inleder du konversationen?', 'Fester'),
(3, 'Du är för blyg för att prata med någon eftersom att du inte känner en enda person på den här festen, du börjar tvivla på varför du ens kom hit i första början.', 'Festen'),
(4, 'Du struntar i den vackra damen eftersom att ditt gamblings beroende är på tok för stort för att du ska kunna ignorera det. Särskilt då du ser att det är folk som står och redan står och gamblar. \r\nDu går raskt dit med ett enormt sug att tjäna pengar.\r\n\r\nDu har med dig 1500 Riksdaler. Hur mycket vill du satsa? ', 'Festen'),
(5, 'Hon kollar på dig konstigt och tycker säkert att du är en idiot.\r\nVad gör du?', 'Festen'),
(6, '\"Men godkväll min fina herre, hur står det till?\" Svarar Violetta artigt', 'Festen'),
(7, 'Hon Kollar på dig med en nedlåtande blick, hon ser dig som en riktig loser.\r\nVad gör du?', 'Festen'),
(8, 'Du väljer att bara sats 500 Riksdaler, du vill inte blåsa bort allting direkt som på förra festen', 'Festen'),
(9, 'Du skiter i och går all-in, Du känner att du har turen med dig denna kväll och du inbillar dig om hur alla kommer hylla dig när du vunnit denna stora summa pengar.', 'Festen'),
(10, 'Du väljer att gå hem. Det var en skit fest endå', 'Festen');

-- --------------------------------------------------------

--
-- Tabellstruktur `storylinks`
--

CREATE TABLE `storylinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `storyid` int(10) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `text` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `storylinks`
--

INSERT INTO `storylinks` (`id`, `storyid`, `target`, `text`) VALUES
(1, 1, 2, 'Du väljer att gå till Violetta'),
(2, 1, 3, 'Du gör inget och står kvar'),
(3, 1, 4, 'Du går och gamblar istället'),
(4, 2, 5, '\"Yo Yo Yo What\'s crackin?\"'),
(5, 2, 6, '\"God Kväll min vackra dam\"'),
(6, 2, 7, '\"H-h-Hej J-jag Het-ter A-a-Alf-f-f-redo...hehe\"'),
(7, 4, 8, '500 Riksdaler'),
(8, 4, 9, 'All in'),
(9, 3, 10, 'Du väljer att gå hem');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `storylinks`
--
ALTER TABLE `storylinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storyid` (`storyid`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `story`
--
ALTER TABLE `story`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT för tabell `storylinks`
--
ALTER TABLE `storylinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
