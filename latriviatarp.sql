-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 25 okt 2018 kl 08:33
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
(20, 'Du väljer att dumpa Violetta och går hem ensam istället. Du kom inte hit för att hitta ditt livs kärlek, du kom hit för att njuta av festande. <br> <br> \r\nHon blir helt förbluffad då du säger att du inte finner något intresse av henne längre och du går din väg.', 'Festen'),
(21, 'Du väljer att stanna med Violetta, ni blir förälskade och flyttar till landet där ni lever lyckliga och i lyx. Ni har flertal tjänare som gör alla sysslor åt er och ni behöver inte oroa er om något.\r\n<br> <br> \r\n1 Månad senare.\r\n<br> <br> \r\nVioletta har börjat bli svagare och har varit sjuk under en längre tid nu. Du är orolig att det ska visa sig att hon har blivit allvarligt sjuk\r\n<br> <br> \r\n3 Månader senare.\r\n<br> <br> \r\nDin värsta skräck har blivit sann, Violetta har blivit diagnostiserad med Tuberkulos, och de medicinska räkningarna är igenom taket och ni är på gränsen att bli bankrutt. \r\n<br> Hon erkänner även att hon har varit medvetande att hon skulle bli sjuk hela tiden men inte vågat säga något eftersom att hon var rädd att du skulle lämna henne. <br> <br> \r\nI din ilska och sorg så funderar du över vad du ska göra, antingen kan du lämna henne och försöka gå vidare med ditt liv, eller så kan du åka tillbaka till staden för att tjäna pengar på något sätt.\r\n<br> <br> \r\nVad gör du?', 'Landet'),
(22, 'Du har valt att lämna Violetta, att hon höll sin sjukdom gömd för dig är mycket för dig att förlåta. Du tar dina ägodelar och sticker.', 'Landet'),
(23, 'Du har valt att förlåta Violetta, men eran finansiella situation är inte bättre för det. Du måste fortfarande tjäna pengar på något sätt. \r\n<br> <br> \r\nDu bestämmer dig för att återvända temporärt till staden för att på något sätt tjäna lite kosing.\r\n<br> <br> \r\nEfter en veckas resande så har du anlänt till staden igen. Men nu kommer då det stora kruxet, hur ska du lyckas tjäna tillräckligt med pengar så att ni ska ha råd med Violettas medicin?', 'Staden'),
(24, 'Du tänker dig att gambla är nog det lättaste sättet att tjäna stora summor pengar på, du går till den närmaste baren och sätter dig vid ett gamblingsbord. \r\n<br>\r\nDu är redo på att satsa alla dina ägodelar för att få råd med läkemedelskostnaderna och rädda Violetta.\r\n<br> <br> \r\nDu sitter och spelar i ett par timmar då du både går lite pluss och minus. Men efter ett tag så ser du din chans, du kan äntligen vinna de pengar som du behöver, du satsar allt som du har med hoppet om att kunna vinna. \r\n\r\n<br> <br> \r\nSorligt nog så förlorar du spelet och du har helt slut på både pengar och ägodelar att spela för. Förkrossad så går du ut och är förtvivlad. Du är nu fast i staden, utan bostad, utan pengar och ägodelar. Violetta kommer inte ha råd för sin medicin och kommer med all sannolikhet dö inom kort tid.\r\n<br> <br> \r\nDu ser ingen anledning att leva längre då du misslyckades med din enda uppgift.', 'Staden'),
(25, 'Du väljer att försöka sälja allt du har istället för att försöka gambla de. Du går till marknaden och efter en kort förhandling med marknadsägaren så har du tillstånd till att sälja dina saker.\r\n<br> <br> \r\nTiden går långsamt när du står på marknaden och försöker locka köpare, men du har hittills inte lyckats sälja en enda sak. Du börjar få ångest eftersom att du känner att tiden börja ta slut.\r\n<br>\r\nDu har inte all tid i världen på dig och Violetta blir bara sjukare och sjukare utan sin medicin.\r\n<br> <br> \r\nEfter en vecka så har du knappt lyckats sälja något. Ingen värkar vara intresserad i dina varor.\r\n<br> <br> \r\nEfter 1 månad så har du äntligen lyckats sälja tillräckligt med ägodelar för att ha råd med läkemedelskostnaderna. \r\n<br> <br> \r\nMen när du återvänder till Violetta märker du till din förskräckelse att Violetta redan har gått bort. Du blir helt förkrossad att du inte vågade gambla dina ägodelar och att det tog för lång tid för dig att få allting sålt.\r\n<br> <br> \r\nDu känner ingen lust att leva utan Violetta och du kort efter hennes död väljer att begå självmord. ', 'Staden'),
(26, 'Du väljer att gå till det lokala rekryteringskontoret. Då Napoleon erövrat Italien och är i krig med nästan hela Europa så ha behovet för legosoldater blivit allt större och större under krigets gång.\r\n<br> <br> \r\nDu är med i hans armé och krigar, efter ganska kort tid så får du en nasty sjukdom och sten dör.', 'Okänd'),
(27, 'Efter du lämnade den sunkiga festen så befinner du dig nu i en mörk gränd på din väg hem, det är en fett creepy stämning i denna gränd och plötsligt så hör du hur någon kommer springandes bakom dig.\r\n<br> <br>\r\nVad gör du?', 'Utanför Festen'),
(28, 'Du väljer att stanna till och vänder dig om för att se vad det är som försegår.\r\n<br><br>\r\nEn gubbe springer fram till dig och drogar kvickt ned och kidnappar dig.', 'Mörk gränd'),
(29, 'Du tänker inte bli rånad eller mördad i denna läskiga gränd, du lägger svansen mellan bena och springer för ditt liv.\r\n<br> <br>\r\nEftersom att det är så pass mörkt ute ser du knappt något och när du springer för ditt liv så snubblar du vid en trottoarkant och slår i huvudet mot asfalten och dör kort efter.', 'Utomhus'),
(30, 'Du vaknar till och känner dig yr och förvirrad, du märker snabbt att du sitter fastbunden i en stol och är just nu i ett mörkt rum.\r\n<br><br>\r\nVad ska du göra?', 'Okänd'),
(31, 'Du tänker inte sitta kvar här och vänta tills din kidnappare återvänder så du bestämmer dig för att försöka ta dig loss.\r\n<br><br>\r\nDu börjar vicka på stolen och sliter i repen som binder dig till stolen.\r\n<br>\r\nEfter att kämpat med repen ett tag så lossar de och du kommer loss. Personen som knöt fast dig kan uppenbarligen inte knyta rep för shit. \r\n<br> <br>\r\nDu ser att det finns ett fönster vid ena väggen.\r\n<br><br> Vad gör du?', 'Okänd'),
(32, 'Du tänker att det är bäst att sitta kvar här och vänta tills din kidnappare återvänder och försöka förhandla med personer eftersom att du är så pass karismatisk och är snabb tänkande så avser du att det blir enkelt att övertala denna person att släppa dig lös.', 'Okänd'),
(33, 'Din kidnappare kommer tillbaka och när du försöker starta en dialog med denna person så får du inget svar tillbaka. Han går raskt till ena sidan av rummet och ha ryggen mot dig medans han står och mekar på något.\r\n<br><br>\r\nEfter en kort stund så vänder han ryggen mot dig och du ser att det är Albert Einstein. Han sätter sig bredvid dig och börjar omedelbart såga upp din bröstkorg och plockar ut dina organ.\r\n<br><br>\r\nTack vare drogerna i din kropp känner du inget men du ser hur han obrytt plockar ut dina inälvor och du börjar fundera på om du ska göra något.', 'Okänd'),
(34, 'Du bestämmer dig för att försöka ta dig loss nu, men med en bröstkorg helt öppen och en kropp utan inälvor så lyckas du inte åstadkomma något och Albert kollar bara på dig och tycker bara att du är patetisk för att du ens försöker göra något.\r\n<br><br>\r\nDu sten dog', 'Okänd'),
(35, 'Du inser att du är helt körd och du väljer att acceptera din död så du försöker inte göra något motstånd utan du låter han bara göra klart sina ärenden och sedan dumpar han din livlössa kropp.\r\n<br><br>\r\nDu sten dog', 'Okänd'),
(36, 'Du tänker inte stanna i detta rum en enda sekund längre än nödvändigt så du bestämmer dig för att hoppa direkt ut ur fönstret.\r\n<br><br>\r\nTill din förvåning så märker du att du var på den 27e våning i huset som du befann dig i. Du faller just nu mot din död.\r\n<br><br>\r\nVad gör du?', 'Okänd'),
(37, 'Du bestämmer dig för att stanna och kolla runt lite i rummet. Det finns en trappa upp mot en dörr som värkar låst.\r\n<br><br>\r\nVad gör du?', 'Okänd'),
(38, 'Du märker att det finns en fallskärm på din rygg för någon anledning, du drar kvickt i snöret för att veckla ut den. Men med din otur så verkar det som att den inte fungerar.\r\n<br><br>\r\nDu landar i ett pladask och stendör', 'Okänd'),
(39, 'Du lutar dig mot träden med hopp om att de ska dämpa din landning och därmed inte landa i ett pladask.\r\n<br><br>\r\nDu blundar när du landar och till din förvåning så är du vid liv efter landningen. Dock så när du öppnar dina ögon så inser du att det är en stor och fet gren som har spetsat dig och går rakt igenom din bröstkort. Du sitter helt fast och hänger fast spetsad.\r\n<br><br>\r\nMedans detta händer så kommer det en flock ekorrar mot dig, de ser hungriga ut.\r\n<br><br>\r\nVad gör du?', 'Träd'),
(40, 'Du försöker landa på studsmattan eftersom att du anser att det är den mest säkra landningen.\r\n<br>\r\nTyvär så när du landar så studsar du upp igen och landar i rummet igen. Din kidnappare kommer inspringandes eftersom allt ljud du har skapat.\r\n<br><br>\r\nDu sten dör.', 'Okänd'),
(41, 'Du försöker äta upp de eftersom att du också är hungrig du han inte få i dig något under tiden du var på festen.\r\n<br><br>\r\nTyvär så misslyckas du med att äta upp de eftersom att du sitter fastspetsad i ett träd. Efter att insett att du är en fara för de så väljer de att äta upp dig.\r\n<br><br>\r\nDu dör en plågsam och långsam död.', 'Träd'),
(42, 'Du försöker skrämma bort de genom att skrika åt de och flaxa med dina armar och ben.\r\n<br><br>\r\nDe tycker inte att du är läskig nog och äter upp dig levande\r\n<br><br>\r\nDu dör en plågsam och långsam död.', 'Träd'),
(43, 'Du tänker att spela död är det bästa alternativet.\r\n<br><br>\r\nDu hade tyvär fel eftersom att det är inte en fucking björn du har emot dig. Det är små hungriga träd-råttor. Och de äter glatt upp dig levande\r\n<br><br>\r\nDu dör en plågsam och långsam död', 'Träd'),
(44, 'Du bestämmer dig för att gömma dig bakom dörren då du tänker att det är det bästa ställer att överraska honom ifrån.\r\n<br><br>\r\nTyvär så när han öppnar dörren så knuffas du bakåt av dörren och du faller ned för trappan och han står bara och kollar på dig medans du rullar ned för trappan.\r\n<br><br>\r\nDu sten dog.\r\n', 'Okänd'),
(45, 'Du krossar glaset och gömmer dig bakom stolen.\r\n<br><br>\r\nNär han kommer ned för att undersöka det krossade glaset så hoppar du på honom och lyckas knuffa ut honom genom fönstret.\r\nTill din förvåning så inser du att du är på den 27e våningen och ser bara hur din kidnappare faller mot sin död.\r\n<br><br>\r\nDu tar dig ut ur byggnaden och beger dig hem. Du har blivit extremt traumatiserad av händelserna som skedde denna kväll och efter ett par månader av psykisk vård så har du återhämtat dig helt.\r\n<br><br>\r\nDu går vidare med ditt liv och bildar en familj något år efter. Du lever ditt liv lyckligt i alla dina dagar.', 'Okänd'),
(46, 'Grattis! Du lyckades komma till det enda slutet som har en lyckligt slut för Pasta Alfredo. Du lyckades undvika de många faror som kunde såra Herr Pasta Alfredo.\r\n', 'Slut');

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
(32, 23, 26, 'Gå till rekryteringskontoret'),
(33, 26, 15, 'Slut?'),
(34, 25, 15, 'slut?'),
(35, 24, 15, 'Slut?'),
(36, 10, 27, 'Gå ut'),
(37, 27, 28, 'Stanna'),
(38, 27, 29, 'Spring'),
(39, 29, 15, 'Slut?'),
(40, 28, 30, 'Ojdå'),
(41, 30, 31, 'Försök fly'),
(42, 30, 32, 'Sitt kvar'),
(43, 32, 33, 'Du hade fel'),
(44, 33, 34, 'Försök fly'),
(45, 33, 35, 'Acceptera din död'),
(46, 34, 15, 'Slut?'),
(47, 35, 15, 'Slut?'),
(48, 31, 36, 'Hoppa ut'),
(49, 31, 37, 'Kika runt lite'),
(50, 36, 38, 'Fäll ut fallsärm'),
(51, 36, 39, 'Landa bland träden'),
(52, 36, 40, 'Landa på studsmattan'),
(53, 38, 15, 'Slut?'),
(54, 40, 15, 'Slut?'),
(55, 39, 41, 'Ät upp de'),
(56, 39, 42, 'Skräm bort de'),
(57, 39, 43, 'Spela död'),
(58, 41, 15, 'Slut?'),
(59, 42, 15, 'Slut?'),
(60, 43, 15, 'Slut?'),
(61, 45, 46, 'Slut?'),
(62, 37, 44, 'Göm dig bakom dörren'),
(63, 37, 45, 'Krossa fönstret'),
(64, 44, 15, 'Slut?'),
(65, 20, 27, 'Du går hem ensam');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT för tabell `storylinks`
--
ALTER TABLE `storylinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
