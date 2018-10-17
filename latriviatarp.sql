-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 17 okt 2018 kl 11:06
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
(1, 'Ditt Namn är Pasta Alfredo<br> <br> \r\nDu har just anlänt till en fest hos den vackra damen Violetta du är iklädd i din finaste kostym som tog din tjänarinna hela 2 månader att sy! Du ser hur folk har en underbar fest, det dansas, umgås och det spelas musik det finns även en hörna där folk spelar kort och satsar pengar. Du ser dig om och lyckas få syn på Violetta. <br><br> Du tvivlar över vad du ska göra.\r\n<br><br> \r\nVad gör du?', 'Festen'),
(2, 'Du väljer att gå fram till den Vackra damen, hon vänder sig om och kollar på dig intresserad och väntar på vad du har och säga.\r\n<br> <br> \r\nHur inleder du konversationen?', 'Fester'),
(3, 'Du är för blyg för att prata med någon eftersom att du inte känner en enda person på den här festen, du börjar tvivla på varför du ens kom hit i första början.', 'Festen'),
(4, 'Du struntar i den vackra damen eftersom att ditt gamblings beroende är på tok för stort för att du ska kunna ignorera det. Särskilt då du ser att det är folk som står och redan står och gamblar. \r\nDu går raskt dit med ett enormt sug att tjäna pengar.\r\n<br> <br> \r\nDu har med dig 1500 Riksdaler. Hur mycket vill du satsa? ', 'Festen'),
(5, 'Hon kollar på dig konstigt och tycker säkert att du är en idiot.\r\nVad gör du?', 'Festen'),
(6, '\"Men godkväll min fina herre, hur står det till?\" Svarar Violetta artigt', 'Festen'),
(7, 'Hon Kollar på dig med en nedlåtande blick, hon ser dig som en riktig loser.\r\nVad gör du?', 'Festen'),
(8, 'Du väljer att bara sats 500 Riksdaler, du vill inte blåsa bort allting direkt som på förra festen', 'Festen'),
(9, 'Du skiter i och går all-in, Du känner att du har turen med dig denna kväll och du inbillar dig om hur alla kommer hylla dig när du vunnit denna stora summa pengar.', 'Festen'),
(10, 'Du väljer att gå hem, det var ändå en skit fest. Du tar din rock, rättar till din kostym och beger dig därifrån.', 'Festen'),
(11, 'Du försöker rädda situationen. Men vad säger du för att rädda denna pinsamma tystnad som har uppstått?\r\n', 'Festen'),
(12, 'Du går besegrat därifrån. Du känner dig som en riktig idiot att du ens trodde att Violetta skulle vela prata med dig.', 'Festen'),
(13, 'Hon ger dig en örfil som svar på din kommentar, hon rusar bestämt därifrån medans festen stannar upp och alla stirrar på dig. De här kan nog vara det värsta du varit med om.<br> Vad gör du?', 'Festen'),
(14, 'Du klarar inte av alla blickar du får, ditt hjärta bultar som om det skulle hoppa ut ur din bröstkorg. Du ser ingen annan väg ur denna sits utan att göra det enda tänkbara för dig. <br><br>Du traskar till baren och plockar fram en smutsig sked. Du väljer sedan att begå självmord genom att gröpa ur dina ögon. Folk blir både chockerade och vissa blir till och med imponerade över ditt mod. Du faller till golvet och känner hur livet sipprar ur dig, du ser ljuset. Men det är inte du som kommer mot ljuset. Det är ljuset som kommer till dig, Du känner hur din kropp får liv i sig igen och du vaknar till.\r\n<br>\r\n<br>\r\nLUCIA! Du hör hur gesterna skriker och du märker snabbt att du har återuppföds som Lucia, och du blir ett allhelgon. Denna dag ses från och med nu som den dagen då Lucia återkom till Jorden.\r\n<br>\r\n<br>\r\n\r\nMen vad ska du göra nu? Både Gud och Satan har sett vad som har skett och båda har gett dig en inbjudan att gå med på deras sida.', 'Festen'),
(15, 'Slut! Detta är slutet på denna valserie, antingen spela om och göra andra val eller rör aldrig detta spel igen. Det är ditt val.', 'Slut'),
(16, 'Du har valt att sluta en pakt med Jesus Gud och den heliga anden. Du blir en ängel och ägnar dina krafter åt att hjälpa sorgliga själar till oändligheten.', 'Okänd'),
(17, 'Du har valt att sluta en pakt med Lucifer och Satan istället. Du blir till en demon och ägnar din tid åt att terrorisera sorgliga själar i all oändlighet. ', 'Okänd'),
(18, 'Du tänker att fortsätta vara artig är nog din bästa strategi för att fortsätta umgås med Violetta. <br> <br> Ni små pratar med varandra och du frågar Damen på en dans.\r\n<br> <br> Hon tackar ja, du får dansa med Violetta och har det kalas. Ni båda har en underbar fest tillsammans och ni börjar bli kära i varandra.\r\n<br> <br> Vad gör du nu?', 'Festen'),
(19, 'Du pallar inte vara artig längre, du tänker att det kommer nog bli extremt roligt om du spottar champagne i ansiktet på henne.<br><br> Du gör det, men du får inte alls den reaktion du förväntade dig, du får istället en hård örfil som gör din kind röd medans hon stormar ilsket iväg.\r\n<br> <br>\r\nAlla på festen såg vad du gjorde och alla tycker att du är en riktig skitstövel, ingen vill prata med dig och alla fryser ut dig. Du känner att det nog är dags att bege dig härifrån.', 'Festen'),
(20, 'Du väljer att dumpa Violetta och går hem ensam istället. Du kom inte hit för att hitta din livs kärlek, du kom hit för att njuta av festande. <br> <br> \r\nHon blir helt förbluffad då du säger att du inte finner något intresse av henne längre och du går din väg.', 'Festen'),
(21, 'Du väljer att stanna med Violetta, ni blir förälskade och flyttar till landet där ni lever lyckliga och i lyx. Ni har flertal tjänare som gör alla sysslor åt er och ni behöver inte oroa er om något.\r\n<br> <br> \r\n1 Månad senare.\r\n<br> <br> \r\nVioletta har börjat bli svagare och har varit sjuk under en längre tid nu. Du är orolig att det ska visa sig att hon har blivit allvarligt sjuk\r\n<br> <br> \r\n3 Månader senare.\r\n<br> <br> \r\nDin värsta skräck har blivit sann, Violetta har blivit diagnostiserad med Tuberkulos, och de medicinska räkningarna är igenom taket och ni är på gränsen att bli bankrutt. \r\n<br> Hon erkänner även att hon har varit medvetande att hon skulle bli sjuk hela tiden men inte vågat säga något eftersom att hon var rädd att du skulle lämna henne. <br> <br> \r\nI din ilska och sorg så funderar du över vad du ska göra, antingen kan du lämna henne och försöka gå vidare med ditt liv, eller så kan du åka tillbaka till staden för att tjäna pengar på något sätt.\r\n<br> <br> \r\nVad gör du?', 'Landet'),
(22, 'Du har valt att lämna Violetta, att hon höll sin sjukdom gömd för dig är mycket för dig att förlåta. Du tar dina ägodelar och sticker.', 'Landet'),
(23, 'Du har valt att förlåta Violetta, men eran finansiella situation är inte bättre för det. Du måste fortfarande tjäna pengar på något sätt. \r\n<br> <br> \r\nDu bestämmer dig för att återvända temporärt till staden för att på något sätt tjäna lite kosing.\r\n<br> <br> \r\nEfter en veckas resande så har du anlänt till staden igen. Men nu kommer då det stora kruxet, hur ska du lyckas tjäna tillräckligt med pengar så att ni ska ha råd med Violettas medicin?', 'Staden'),
(24, 'Du tänker dig att gambla är nog det lättaste sättet att tjäna stora summor pengar på, du går till den närmaste baren och sätter dig vid ett gamblingsbord. \r\n<br>\r\nDu är redo på att satsa alla dina ägodelar för att få råd med läkemedelskostnaderna och rädda Violetta.\r\n<br> <br> \r\nDu sitter och spelar i ett par timmar då du både går lite pluss och minus. Men efter ett tag så ser du din chans, du kan äntligen vinna de pengar som du behöver, du satsar allt som du har med hoppet om att kunna vinna. \r\n\r\n<br> <br> \r\nSorligt nog så förlorar du spelet och du har helt slut på både pengar och ägodelar att spela för. Förkrossad så går du ut och är förtvivlad. Du är nu fast i staden, utan bostad, utan pengar och ägodelar. Violetta kommer inte ha råd för sin medicin och kommer med all sannolikhet dö inom kort tid.\r\n<br> <br> \r\nDu ser ingen anledning att leva längre då du misslyckades med din enda uppgift.', 'Staden'),
(25, 'Du väljer att försöka sälja allt du har istället för att försöka gambla de. Du går till marknaden och efter en kort förhandling med marknadsägaren så har du tillstånd till att sälja dina saker.\r\n<br> <br> \r\nTiden går långsamt när du står på marknaden och försöker locka köpare, men du har hittills inte lyckats sälja en enda sak. Du börjar få ångest eftersom att du känner att tiden börja ta slut.\r\n<br>\r\nDu har inte all tid i världen på dig och Violetta blir bara sjukare och sjukare utan sin medicin.\r\n<br> <br> \r\nEfter en vecka så har du knappt lyckats sälja något. Ingen värkar vara intresserad i dina varor.\r\n<br> <br> \r\nEfter 1 månad så har du äntligen lyckats sälja tillräckligt med ägodelar för att ha råd med läkemedelskostnaderna. \r\n<br> <br> \r\nMen när du återvänder till Violetta märker du till din förskräckelse att Violetta redan har gått bort. Du blir helt förkrossad att du inte vågade gambla dina ägodelar och att det tog för lång tid för dig att få allting sålt.\r\n<br> <br> \r\nDu känner ingen lust att leva utan Violetta och du kort efter hennes död väljer att begå självmord. ', 'Staden'),
(26, 'Du väljer att gå till det lokala rekryteringskontoret. Då Napoleon erövrat Italien och är i krig med nästan hela Europa så ha behovet för legosoldater blivit allt större och större under krigets gång.\r\n<br> <br> \r\nDu går in och skriver upp dig på att gå med i hans armé som legosoldat. <br>\r\nLönen täcker gott och väl medicinskostnaderna och du får ett gott samvete eftersom att du vet att Violetta kommer att leva vidare och det enda du behöver göra är att gå ut och kriga mot Ryssland.\r\n<br> <br> \r\n2 Månader har gått sedan du bestämde dig för att gå med i armén och du har varit med i ett par strider hittills och du har märkt hur erfaren alla andra är i armén. Ni leds av en suverän ledare enligt dig, Napoleon Bonaparte har inte förlorat en strid under sitt krigståg mot Ryssland.\r\n<br> Ni befinner er nu i östra Österrike  och ni marscherar djupare in mot Ryssland.\r\n<br> <br> \r\n4 månader har gått nu, och ni har kommit djupt inne i Ryssland. Men kriget har vänt för länge sen. Ni har vunnit de senaste striderna men det har varit till dyr kostnad. Det finns ingen mat eftersom att Ryssarna bränner all mark då de faller djupare och djupare in i landet.\r\n<br> \r\nSvält och sjukdomar härjar i armé och moralen är otroligt låg, du har sett hur mängder andra legosoldater har valt att desertera och lämnat armén. Tanken har slaget dig flertal gånger att fly och försöka ta dig tillbaka till Violetta, men rädslan för att bli fångad och med det, även avrättad skrämmer dig tillräckligt för att fortsätta kriga.\r\n<br> <br> \r\n6 Månader har gått nu och ni har äntligen anlätt till Moskva. Dina trumhinnor tjuter konstant eftersom att kanonen dånar utan paus varje dag in och ut då ni beskjuter staden i hopp om att erövra den. \r\n<br> <br> ', 'Okänd'),
(27, 'Du väljer att gå till det lokala rekryteringskontoret, efter Napoleons erövrande av Italien så har behovet att lokala rekryter blivit allt större eftersom att de behövs i hans krig mot resten av Europa. <br> <br> \r\nDu bestämmer dig för att skriva upp dig som rekryt i hans armé eftersom att din lön just så pass täcker medicinskostnaderna.\r\n', 'Staden');

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
(9, 3, 10, 'Du väljer att gå hem'),
(10, 5, 11, 'Försök Rädda Situationen'),
(11, 5, 12, 'Du går besegrat därifrån'),
(12, 11, 13, '\"Dang U thicc girl\"'),
(13, 11, 6, '\"Vad jag menade var att du är så otroligt vacker denna fina vinternatt.\"'),
(14, 13, 14, 'Begå självmord.'),
(15, 13, 10, 'Du går ut.'),
(16, 14, 16, 'Slut en pakt med Gud'),
(17, 14, 17, 'Slut en pakt med Satan'),
(18, 16, 15, 'Slut?'),
(19, 17, 15, 'Slut?'),
(20, 7, 10, 'Du går hem'),
(21, 12, 10, 'Du går hem'),
(22, 6, 18, 'Fortsätt vara artig'),
(23, 6, 19, 'Sluta vara artig'),
(24, 19, 10, 'Du väljer att gå hem'),
(25, 18, 20, 'Du dumpar henne'),
(26, 18, 21, 'Du stannar med Violetta'),
(27, 21, 22, 'Lämna henne'),
(28, 21, 23, 'Förlåt henne'),
(29, 22, 15, 'Slut?'),
(30, 23, 24, 'Gambla med dina ägodelar'),
(31, 23, 25, 'Sälj dina ägodelar'),
(32, 23, 26, 'Gå till rekryteringskontoret');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT för tabell `storylinks`
--
ALTER TABLE `storylinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
