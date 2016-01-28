-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Tid vid skapande: 28 jan 2016 kl 12:48
-- Serverversion: 5.6.20
-- PHP-version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `lexelius_se`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `body` varchar(3000) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `category` varchar(64) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `thumbnail_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `img_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `img_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `img_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `img_4` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `img_5` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `tag_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `tag_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `tag_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `tag_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `tag_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumpning av Data i tabell `posts`
--

INSERT INTO `posts` (`id`, `timestamp`, `title`, `subtitle`, `body`, `category`, `thumbnail_img`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `tag_1`, `tag_2`, `tag_3`, `tag_4`, `tag_5`) VALUES
(1, '2016-01-26 20:38:48', 'Exjobb: No Bullshit Slides', 'Cut the Bullshit. Respect Your Audience.', 'No Bullshit Slides är en bla bla som du kan bla bla asdf asdf och bla bla', 'cat_dev', 'nobsdump.png', 'lkjhasd.jpg', '', '', '', '', 'werwer', 'werwer', 'wer', '', ''),
(2, '2015-07-03 19:39:58', 'Målning hos Internetstiftelsen', '', 'Internetstiftelsen i Sverige ändrade namn och gjorde ny profil, med ny styling även inne på kontoret. Jag målade sköna snurriga kabelhärvor med typiska internet-ikoner på totalt sex väggar. Tycker helheten funkar riktigt bra.', 'cat_arts', 'kablar-sittgrupp.png', 'lkjhasd.jpg', '', '', '', '', 'tyhtyh', 'tyh', 'tyhtyh', 'tyh', ''),
(3, '2013-07-07 19:40:09', 'Pixlar på vägg i Kävlinge', '', 'Pixlar på vägg i Kävlinge', 'cat_arts', 'pixladcore13.png', 'lkjhasd.jpg', '', '', '', '', 'yyj', 'ymjmyy', 'yjyjmyjymyum', 'yjmyjm', 'yjmym'),
(4, '2015-05-13 19:40:19', 'Typsnittslektion på Enskede skola', '', 'Hade lektion och workshop för en klass i Enskede skola. Vi pratade om bokstäver, tittade på bokstäver och ritade bokstäver. Stort intresse bland kidsen! Kul :-)', 'cat_type', 'enskedeskola1.png', 'enskedeskola1.jpg', '', '', '', '', '', '', '', '', ''),
(5, '2015-04-24 19:40:56', 'Super FED-14 Bros.', '', 'wefwef', 'cat_dev', 'mariostart.png', 'sdfsdf.png', '', '', '', '', '', '', '', '', ''),
(6, '2014-12-04 21:49:23', 'Bottle++ (theDrinkingCode)', '', 'Handmålade träflaskor till utställningen Turned Street Art, Designgalleriet / Wallery 2014.', 'cat_dev cat_arts', 'core-flaskor.png', 'wefwefwef.jpg', '', '', '', '', '', '', '', '', ''),
(7, '2015-04-02 19:41:07', 'Borgstrand Pro ➜ Myfonts', '', 'wefwefwef', 'cat_type', '165938.png', 'scsdcsdc', '', '', '', '', '', '', '', '', ''),
(8, '2015-03-19 20:41:13', 'Sauerkrauto Pro ➜ Myfonts', 'Hård typografi för automobiler.', 'wefwefwefwef', 'cat_type', '165045.png', 'dnsifudsf', '', '', '', '', '', '', '', '', ''),
(9, '2015-03-19 20:41:19', 'Malmö Sans Pro ➜ Myfonts', 'sdf', 'sdoiufho s', 'cat_type', '163297.png', 'vyvyvyvyvyvyv', '', '', '', '', '', '', '', '', ''),
(10, '2014-09-22 19:41:25', 'In The Comet', 'Fri tolkning av låttext', 'Rymden, cirkus, klänning? Elefant och städare? Denna målning är inspirerad av ''In The Comet'', en knasig och fin sång av Laleh. För att fatta motivet bättre, läs sångtexten eller lyssna på låten.', 'cat_arts', 'inthecomet-liten.png', 'pizza.jpg', '', '', '', '', '', '', '', '', ''),
(11, '2014-11-30 20:41:37', 'Föreläsning på KB om graffiti och typsnitt', 'Finns det likheter?', 'Den 14 nov var jag inbjuden av A4 för att prata om graffiti och typsnitt på Kungliga biblioteket i Stockholm. Här har ni länken till en slidecast: http://youtu.be/0FFDtqC7rsQ', 'cat_type cat_arts', 'kungliga_biblioteket_2007.png', 'asc', '', '', '', '', '', '', '', '', ''),
(12, '2014-04-17 19:41:43', 'Kretskort', '', 'erverv', 'cat_arts', 'corehuge-kretskort1.png', 'vsvsvsv', '', '', '', '', 'Data', '', '', '', ''),
(13, '2014-01-30 20:41:50', 'We ❤ Internet', '14 meter retro', 'asdasasd', 'cat_arts', 'weloveinternet_corehuge_2014.png', 'pizza.jpg', '', '', '', '', 'Pixlar', '8-bit', '', '', ''),
(14, '2013-05-19 19:41:56', 'Breakout på Södra station', 'En helt vansinnig historia', 'acacacz', 'cat_arts', 'breakout.png', 'breakout.jpg', '', '', '', '', '', '', '', '', ''),
(15, '2012-08-24 19:42:01', 'Zlatan', 'Målning i barnrum', 'cascacacac', 'cat_arts', 'core_zlatan_big.png', 'core_zlatan_big.jpg', '', '', '', '', '', '', '', '', ''),
(16, '2015-04-24 19:41:19', 'Filt Pro ➜ Myfonts', 'Unicase är i huset', 'sdoiufho s', 'cat_type', '168171.png', 'vyvyvyvyvyvyv', '', '', '', '', '', '', '', '', ''),
(17, '2016-01-28 07:54:12', 'Martin och webben', 'Saker på nätet', 'Jag har varit med ett tag. Jag var med redan på 90-talet när det ringdes upp med modem, när snurrande logotyper i 3D var hett och när webdesigners sov i våningssängar på Spray. Jag var där när folk använde <marquee> och <blink>. Jag har gjort många sajter, innan det ens hette frontend och backend – hemsidor för biografer, bilmärken, utställningar och evenemang. Jag har sett trender komma och gå. Jag gillar digitala saker, det märks i mina målningar också. De senaste två åren har jag hämtat upp mycket inom js och dynamisk webbutveckling. Läs mer på min Linkedin om mina kompetenser.Hör av er om ni behöver en frontend-utvecklare.', 'cat_dev', 'internet_3166125b.png', 'frontend', 'skills', '', '', '', '', '', '', '', '');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
