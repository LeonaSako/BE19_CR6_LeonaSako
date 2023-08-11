-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Aug 2023 um 20:33
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be19_cr6_bigeventsleonasako`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811075628', '2023-08-11 09:56:42', 53);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_description` longtext NOT NULL,
  `event_image` varchar(255) DEFAULT NULL,
  `event_capacity` int(11) NOT NULL,
  `event_email` varchar(50) NOT NULL,
  `event_phone_number` longtext NOT NULL,
  `event_address` varchar(255) NOT NULL,
  `event_url` varchar(255) NOT NULL,
  `event_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_date`, `event_description`, `event_image`, `event_capacity`, `event_email`, `event_phone_number`, `event_address`, `event_url`, `event_type`) VALUES
(6, 'Summer Movie Nights', '2023-08-15 00:00:00', 'Enjoy a relaxing evening under the stars with classic movies.', 'https://cdn.pixabay.com/photo/2013/07/12/11/59/movie-145060_640.png', 150, 'info@summermovies.com', '+43 1 234 5678', 'City Park, Vienna', 'https://example.com/movie_nights', 'movie'),
(7, 'Vienna Music Festival', '2023-09-02 00:00:00', 'A celebration of diverse musical genres featuring local and international artists.', 'https://cdn.pixabay.com/photo/2016/11/22/18/56/audience-1850022_640.jpg', 1000, 'tickets@viennamusicfest.com', '+43 1 987 6543', 'Danube Island, Vienna', 'https://example.com/music_festival', 'music'),
(8, 'Vienna International Film Showcase', '2023-10-10 00:00:00', 'Discover compelling films from around the world in this annual film festival.', 'https://cdn.pixabay.com/photo/2019/05/23/13/11/headphones-4223911_640.jpg', 300, 'info@viennafilmshowcase.com', '+43 1 543 2109', 'Cineplex Central, Vienna', 'https://example.com/film_showcase', 'movie'),
(9, 'Vienna Theater Week', '2023-11-18 00:00:00', 'Experience captivating theatrical performances from local and international troupes.', 'https://cdn.pixabay.com/photo/2013/02/26/01/10/auditorium-86197_640.jpg', 250, 'tickets@viennatheaterweek.com', '+43 1 345 6789', 'Vienna Theaterhaus, Vienna', 'https://example.com/theater_week', 'theater'),
(10, 'Autumn Sports Gala', '2023-09-25 00:00:00', 'Celebrate athleticism and sportsmanship in this grand sports event.', 'https://cdn.pixabay.com/photo/2016/11/14/03/38/achieve-1822503_1280.jpg', 500, 'info@sportsgalavienna.com', '+43 1 876 5432', 'Vienna Stadium, Vienna', 'https://example.com/sports_gala', 'sport'),
(11, 'Vienna Jazz Night', '2023-10-05 00:00:00', 'Immerse yourself in a night of soulful jazz music by talented local artists.', 'https://cdn.pixabay.com/photo/2016/09/10/11/11/jazz-1658886_640.jpg', 150, 'info@viennajazznight.com', '+43 1 654 3210', 'Blue Note Club, Vienna', 'https://example.com/jazz_night', 'music'),
(12, 'Vienna Comedy Fest', '2023-09-12 00:00:00', 'Laugh out loud with stand-up comedians from all over the world.', 'https://cdn.pixabay.com/photo/2021/02/24/10/24/microphone-6046111_640.jpg', 200, 'tickets@viennacomedyfest.com', '+43 1 234 5678', 'Vienna Convention Center, Vienna', 'https://example.com/comedy_fest', 'theater'),
(13, 'Vienna Winter Ball', '2023-12-31 00:00:00', 'Ring in the new year with elegance and style at the Vienna Winter Ball.', 'https://cdn.pixabay.com/photo/2013/02/26/05/36/metz-86226_640.jpg', 400, 'info@viennawinterball.com', '+43 1 987 6543', 'Hofburg Palace, Vienna', 'https://example.com/winter_ball', 'theater'),
(15, 'Vienna Art Exhibition', '2023-10-20 11:15:00', 'Experience the creativity of local and international artists in a variety of mediums.', 'https://cdn.pixabay.com/photo/2016/11/23/00/37/art-1851483_640.jpg', 100, 'info@viennaartexhibition.com', '+43 1 345 6789', 'Vienna Art Gallery, Vienna', 'https://example.com/art_exhibition', 'theater'),
(16, 'Vienna Symphony Orchestra', '2023-11-08 22:00:00', 'Be mesmerized by the enchanting melodies of the Vienna Symphony Orchestra.', 'https://cdn.pixabay.com/photo/2017/02/25/22/05/orchestra-2098877_640.jpg', 250, 'tickets@viennasymphony.com', '+43 1 876 5432', 'Vienna Concert Hall, Vienna', 'https://example.com/symphony_orchestra', 'music'),
(18, 'Vienna Dance Showcase', '2023-10-15 18:30:00', 'Witness the beauty and grace of dancers performing various styles in this showcase.', 'https://cdn.pixabay.com/photo/2016/05/06/17/06/ballerinas-1376250_640.jpg', 150, 'tickets@viennadanceshowcase.com', '+43 1 987 6543', 'Vienna Dance Studios, Vienna', 'https://example.com/dance_showcase', 'theater'),
(19, 'Vienna International Soccer Tournament', '2023-09-29 05:02:00', 'Experience the excitement of international soccer teams competing for the championship.', 'https://cdn.pixabay.com/photo/2016/05/20/21/57/football-1406106_640.jpg', 300, 'info@viennasoccertournament.com', '+43 1 543 2109', 'Prater Park, Vienna', 'https://example.com/soccer_tournament', 'sport'),
(20, 'Vienna Opera Night', '2023-11-25 19:00:00', 'Indulge in a night of operatic performances by world-renowned vocalists and musicians.', 'https://cdn.pixabay.com/photo/2017/05/12/12/42/dresden-2306937_640.jpg', 350, 'info@viennaoperanight.com', '+43 1 345 6789', 'Vienna State Opera, Vienna', 'https://example.com/opera_night', 'theater');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
