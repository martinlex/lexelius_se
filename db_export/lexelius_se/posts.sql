-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Tid vid skapande: 04 feb 2016 kl 17:55
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
  `body_1` varchar(3000) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `body_2` varchar(3000) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumpning av Data i tabell `posts`
--

INSERT INTO `posts` (`id`, `timestamp`, `title`, `subtitle`, `body_1`, `body_2`, `category`, `thumbnail_img`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `tag_1`, `tag_2`, `tag_3`, `tag_4`, `tag_5`) VALUES
(1, '2016-01-26 20:38:48', 'Exjobb ➜ No Bullshit Slides', '', 'Jag har under mina år som utbildare sett många presentationer och hållit många egna presentationer. Detta har gjort att jag skapat mig en egen uppfattning om vad som är bra presentationsteknik. Mitt exjobb heter No Bullshit Slides – en gratis tjänst på nätet, där man kan göra presentationer. Det kostar ingenting och man behöver inte ens registrera sig. Verktyget är mycket enkelt att använda, och är byggt för att hålla det enkelt. Inget onödigt krångel. Tjänsten kan användas av studenter, lärare/föreläsare, chefer och vem som helst egentligen.', 'http://www.nobullshitslides.com/', 'cat_dev', 'nobsdump.png', 'nobs-full.png', '', '', '', '', 'Vanilla Php', 'Files I/O', 'jQuery', 'NoBS', 'FED-14'),
(2, '2015-07-03 19:39:58', 'Målning hos Internetstiftelsen', '', 'Internetstiftelsen i Sverige ändrade namn och gjorde ny profil, med ny styling även inne på kontoret. Jag målade sköna snurriga kabelhärvor med typiska internet-ikoner på totalt sex väggar. Tycker helheten funkar riktigt bra.', '', 'cat_arts', 'kablar-sittgrupp.png', 'kablar-sittgrupp.jpg', 'kablar-heartCloudThumb.jpg', 'kablar-dashboardCloudTerminal.jpg', '', '', 'Interwebz', 'Swoosh', 'Font Awesome', '', ''),
(3, '2013-07-07 19:40:09', 'Pixlar på vägg i Kävlinge', '', 'Pixlad Core 2013.', '', 'cat_arts', 'pixladcore13.png', 'pixladcore13.jpg', '', '', '', '', 'Pixlar', 'Tejp', '', '', ''),
(4, '2015-05-13 19:40:19', 'Typsnittslektion på Enskede skola', '', 'Hade lektion och workshop för en klass i Enskede skola. Vi pratade om bokstäver, tittade på bokstäver och ritade bokstäver. Stort intresse bland kidsen! Kul :-)', '', 'cat_type', 'enskedeskola1.png', 'enskedeskola1.jpg', 'enskedeskola2.jpg', 'enskedeskola3.jpg', '', '', '', '', '', '', ''),
(5, '2015-04-24 19:40:56', 'Super FED-14 Bros.', '', 'Super FED-14 Bros. är ett litet spel jag pysslade ihop i jQuery. Finns bara en level. Tävla med dina kompisar!', 'http://fed14bros.lexelius.se/', 'cat_dev', 'mariostart.png', 'mariostart.png', '', '', '', '', '8-bit', 'jQuery', 'FED-14', '', ''),
(6, '2014-12-04 21:49:23', 'Bottle++ (theDrinkingCode)', '', 'Handmålade träflaskor med rolig pseudokod till utställningen Turned Street Art, Designgalleriet / Wallery 2014.', '', 'cat_dev cat_arts', 'core-flaskor.png', 'core-flask-1.jpg', 'core-flask-2.jpg', 'core-flask-3.jpg', '', '', 'Pseudokod', 'Posca', 'Bygge', '', ''),
(7, '2015-04-02 19:41:07', 'Borgstrand Pro ➜ Myfonts', '', 'En tung industrifont med inspiration från gamla neonskyltar. Det har visat sig att designers använder Borgstrand till allt möjligt: logos, affischer, skyltar och bokomslag. Ruby on Rails använder Borgstrand i sin logga (backenders know).', 'http://www.myfonts.com/fonts/martin-lexelius-core/borgstrand-pro/', 'cat_type', '165938.png', 'borgstrand_myfonts_poster_industrial.jpg', '', '', '', '', 'Fountain', 'Malmö', 'Industri', '', ''),
(8, '2015-03-19 20:41:13', 'Sauerkrauto Pro ➜ Myfonts', '', 'Hård typografi för automobiler. Tyska bilar har ett säreget typsnitt på registreringsskyltarna. Så underligt och macho på samma gång. Jag har byggt versaler utefter egna foton av tyska bilar, och gemener har jag konstruerat helt på egen känsla. Sauerkrauto har kapitäler också.', 'http://www.myfonts.com/fonts/martin-lexelius-core/sauerkrauto-pro/', 'cat_type', '165045.png', 'sauerkrauto_myfonts_poster_set.jpg', '', '', '', '', 'Chank', 'FE', '', '', ''),
(9, '2015-03-19 20:41:19', 'Malmö Sans Pro ➜ Myfonts', '', ' En geometrisk sans-serif i sex vikter. Jag har lagt mycket tid på att hitta balansen mellan minimalism, estetik och läsbarhet.', 'http://www.myfonts.com/fonts/martin-lexelius-core/malmo-sans-pro/', 'cat_type', '163297.png', 'malmosans_myfonts_poster.jpg', '', '', '', '', 'Fountain', 'Malmö', 'Sans-serif', 'Grotesk', ''),
(10, '2014-09-22 19:41:25', 'In The Comet', '', 'Rymden, cirkus, klänning? Elefant och städare? Denna målning är min fria tolkning av ''In The Comet'', en knasig och fin sång av Laleh. För att fatta motivet bättre, läs sångtexten eller lyssna på låten.', '', 'cat_arts', 'inthecomet-liten.png', 'inthecomet-1200.jpg', 'inthecomet-detail.jpg', '', '', '', '', '', '', '', ''),
(11, '2014-11-30 20:41:37', 'Föreläsning på KB om graffiti och typsnitt', '', 'Den 14 nov var jag inbjuden av A4 för att prata om graffiti och typsnitt på Kungliga biblioteket i Stockholm.', 'Länk till slidecast: https://youtu.be/WMffxvkaA-c', 'cat_type cat_arts', 'kungliga_biblioteket_2007.png', 'kungliga_biblioteket_2007.jpg', '', '', '', '', '', '', '', '', ''),
(12, '2014-04-17 19:41:43', 'Kretskort', '', 'Jag och Huge gjorde ett stort kretskort på ett kontor på Södermalm. Motivet är gjort med extrem noggrannhet i en intensiv knallgrön.', 'Vi använde luktfri vattenbaserad sprayfärg och kunde därför måla väggen på arbetstid.', 'cat_arts', 'corehuge-kretskort1.png', 'corehuge-kretskort1.jpg', 'corehuge-kretskort2.jpg', 'corehuge-kretskort3.jpg', 'corehuge-kretskort4.jpg', '', 'Data', 'Tejp', 'Tålamod', 'Liquitex', ''),
(13, '2014-01-30 20:41:50', 'We ❤ Internet', '', '13 meter bitmap tillsammans med Huge.', 'Se filmen här: https://vid.me/wMCc', 'cat_arts', 'weloveinternet_corehuge_2014.png', 'weloveinternet_corehuge_2014.jpg', '', '', '', '', 'Pixlar', '8-bit', '', '', ''),
(14, '2013-05-19 19:41:56', 'Breakout på Södra station', '', 'Det här är bara en skiss. Jag tycker om gamla pixliga TV-spel och blev tagen av hur perfekt den här väggen är för ''Breakout'' (arkadspel, Atari, 1976).', 'Jag ringde upp Trafikkontoret för att söka tillstånd att genomföra det här verket, jag ville fråga hur det går till och vem man ska vända sig till. Det visade sig bli en helt absurd historia, där tjänstemannen istället började fara med osanningar och sedan undrade vad jag skulle tycka om någon kom hem till mitt vardagsrum och målade bilder av aborterade foster. Ja, du läste rätt.', 'cat_arts', 'breakout.png', 'breakout.jpg', '', '', '', '', 'Myndigheter', 'Nolltoleransen', 'Stockholm', 'Vansinne', ''),
(15, '2012-08-24 19:42:01', 'Zlatan', '', 'Målning i barnrum.', '', 'cat_arts', 'core_zlatan_big.png', 'core_zlatan_big.jpg', '', '', '', '', '', '', '', '', ''),
(16, '2015-04-24 19:41:19', 'Filt Pro ➜ Myfonts', '', 'Unicase är i huset. Filt är ''all visual, no geometry''. Den är aggressiv och kaxig, fast ändå småknasig på samma gång.', 'http://www.myfonts.com/fonts/martin-lexelius-core/filt-pro/', 'cat_type', '168171.png', 'filt_myfonts_poster_hexagon.png', '', '', '', '', 'Unicase', '', '', '', ''),
(19, '2016-02-01 15:53:23', 'Mobilsajt ➜ Blanda billack med mobilen', '', 'Det är inte helt lätt att lackera en bil. Det är spackling, slipning och maskering och sprutning. Under hela processen kommer du att behöva använda olika färgprodukter. Det finns många slags produkter, och du måste blanda produkten rätt, annars får du göra om. Vi pratar syragrund, fyllgrund, sealer, baslack, klarlack, täcklack – och ofta har de olika härdare och olika förtunningar, och olika mängder. Allt detta kan du såklart inte minnas i huvudet.', 'Tillsammans med AkzoNobel Car Refinishes utvecklade jag en single purpose mobilsajt byggd för deras egna tekniker, deras kunder och återförsäljare, där de kan ta fram blandningsförhållanden för alla produkter. Den är optimerad för långsamma uppkopplingar och extremt lätt att använda. Den är alltid aktuell och kan uppdateras av personalen tack vare ett admin-gränssnitt.', 'cat_dev', 'akzomobile.png', 'akzomobile_big.jpg', '', '', '', '', 'Mobile', 'Vanilla Php', 'MySQL', 'Pure.css', '');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
