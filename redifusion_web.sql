-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2019 a las 15:52:34
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `redifusion_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `fuente` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `autor` text NOT NULL,
  `fecha` text NOT NULL,
  `link` text NOT NULL,
  `imagen` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`fuente`, `titulo`, `descripcion`, `autor`, `fecha`, `link`, `imagen`, `id`) VALUES
('NYT &gt; Home Page', 'news analysis: ‘Women Here Are Very, Very Worried’', 'Afghan women used to be championed by almost everyone. Now they’re all but forgotten.', 'SUSAN CHIRA', '2019-03-22', 'https://www.nytimes.com/2019/03/22/sunday-review/women-afghanistan-taliban.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/24/sunday-review/24Chira/24Chira-moth.jpg', 1),
('NYT &gt; Home Page', 'Indonesia’s National Airline Seeks to Cancel Order of Boeing Max 8s', 'The request from the carrier, Garuda Indonesia, is the first publicly confirmed attempt to cancel a Max 8 order since the deadly crash in Ethiopia this month.', 'MUKTITA SUHARTONO and AMIE TSANG', '2019-03-22', 'https://www.nytimes.com/2019/03/22/world/asia/indonesia-boeing-737.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/world/22boeing-cancel-1/22boeing-cancel-1-moth.jpg', 2),
('NYT &gt; Home Page', 'Jimmy Carter Just Became the Longest-Living U.S. President', 'On Friday, the 39th president reached the age of 94 years and 172 days, making him a day older than former President George Bush was when he died last year.', 'MATT STEVENS', '2019-03-22', 'https://www.nytimes.com/2019/03/22/us/politics/jimmy-carter-age.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/world/22xp-carter/22xp-carter-moth.jpg', 3),
('NYT &gt; Home Page', 'Stuyvesant Has 29 Black Students Out of 3,300. How Do They Feel?', 'Black and Hispanic teenagers at Stuyvesant, one of the nation’s elite public schools, want their voices heard in a debate over admissions to the school.', 'ELIZA SHAPIRO', '2019-03-22', 'https://www.nytimes.com/2019/03/22/nyregion/stuyvesant-high-school-black-students.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/nyregion/22stuyvesant/21stuyvesant-moth.jpg', 4),
('NYT &gt; Home Page', 'Buying Your First Home? Save, and Save Some More', 'The dream of owning a home in New York City can seem unattainable, especially for first-time buyers in need of a hefty down payment.', 'CHRISTINA CARON', '2019-03-22', 'https://www.nytimes.com/2019/03/22/realestate/buying-your-first-home-save-and-save-some-more.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/24/realestate/22firsttime-Hildreth/merlin_152004750_fdfc8bb4-7ebf-4a56-afe0-63308c5283c3-moth.jpg', 5),
('NYT &gt; Home Page', 'In Golan Heights, Trump Bolsters Israel’s Netanyahu but Risks Roiling Middle East', 'Mr. Trump reversed decades of U.S. policy by declaring that Israel should have sovereignty over the Golan Heights — a move that has never been recognized internationally.', 'MARK LANDLER and EDWARD WONG', '2019-03-22', 'https://www.nytimes.com/2019/03/21/us/politics/golan-heights-trump.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/world/21dc-golan2/21dc-golan2-moth.jpg', 6),
('NYT &gt; Home Page', 'From a Swimsuit Model to the Trump Megaphone: The Genesis of ‘Jexodus’', 'At 23, Elizabeth Pipko is better known as a model than a political operative, if she’s known at all. But through the president, she has become the face of a push to woo Jews to the Republican Party.', 'SHERYL GAY STOLBERG', '2019-03-22', 'https://www.nytimes.com/2019/03/22/us/politics/swimsuit-model-trump-jews.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/us/politics/21dc-jexodus1/merlin_152361369_b0ca3780-9f88-4f5d-9ad0-d9a6aa87e4a1-moth.jpg', 7),
('NYT &gt; Home Page', 'California Today: The West Hollywood School Where Proctors Are Suspected of Giving Test Answers', 'Friday: How prosecutors say William Singer helped students cheat on college exams; layoffs at Disney; and broth from Nyum Bai in Oakland', 'JILL COWAN', '2019-03-22', 'https://www.nytimes.com/2019/03/22/us/west-hollywood-school-admissions-scandal.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/us/22wehoprepcatoday/merlin_152362386_8d372fc7-d17a-4880-b6d5-19d13557e184-moth.jpg', 8),
('NYT &gt; Home Page', 'Israel Is on the Brink of Disaster. Trump Just Made Things Worse.', 'Israel’s right-wing leaders are reading signals from Washington as a green light.', 'MICHAEL J. KOPLOW', '2019-03-22', 'https://www.nytimes.com/2019/03/22/opinion/trump-israel-golan-heights.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/opinion/22Koplow/22Koplow-moth.jpg', 9),
('NYT &gt; Home Page', 'While You Wait for Mueller', 'Do lawbreaking, lying to the public and colluding with a foreign enemy add up to innocence?', 'DAVID LEONHARDT', '2019-03-22', 'https://www.nytimes.com/2019/03/22/opinion/mueller-report-trump-russia.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/opinion/22leonhardt-newsletter/22leonhardt-newsletter-moth.jpg', 10),
('NYT &gt; Home Page', 'Should You Always Strive to Work at the Most ‘Prestigious’ Places? Well …', 'Small fish in a big pond? Or big fish in a small pond?', 'ADAM GRANT', '2019-03-22', 'https://www.nytimes.com/2019/03/22/smarter-living/should-you-always-strive-to-work-at-the-most-prestigious-places-well.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/smarter-living/22sl-grant3-rgbcolor/22sl-grant3-rgbcolor-moth.jpg', 11),
('NYT &gt; Home Page', 'The Golan Heights Was Once an Arab Rallying Cry. Not Anymore.', 'The muted Arab response to President Trump’s call to recognize Israeli sovereignty over the territory shows Syria’s weakness amid a reordered Arab world.', 'BEN HUBBARD', '2019-03-22', 'https://www.nytimes.com/2019/03/22/world/middleeast/golan-heights-israel-syria.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/world/22golan1sub/merlin_99827626_38172cec-98ac-4463-a0af-5df71dbb367d-moth.jpg', 12),
('NYT &gt; Home Page', 'Who Won Last Night’s N.C.A.A. Tournament Games', 'A roundup of the scores and highlights. It was more than Ja Morant’s breakout performance.', 'THE NEW YORK TIMES', '2019-03-22', 'https://www.nytimes.com/2019/03/22/sports/who-won-ncaa-tournament-games.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/sports/22ncaa-whowon1/merlin_152421888_0e7e9e5a-476e-42ad-aa6d-e7d1fa33b414-moth.jpg', 13),
('NYT &gt; Home Page', 'Golan Heights, Brexit, N.C.A.A. Basketball: Your Friday Briefing', 'Here’s what you need to know.', 'CHRIS STANFORD', '2019-03-22', 'https://www.nytimes.com/2019/03/22/briefing/golan-heights-brexit-ncaa-basketball-.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/world/22us-ambriefing-golan/merlin_137942184_6663b770-2504-448e-8a75-ab71ace12120-moth.jpg', 14),
('NYT &gt; Home Page', 'New York Today: Subway Time: Why the Numbered Lines Do Better', 'Friday: The diverging fates of the lines represented by letters and numbers.', 'AZI PAYBARAH', '2019-03-22', 'https://www.nytimes.com/2019/03/22/nyregion/newyorktoday/nyc-news-subway-lines-schedule.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/nyregion/22nytoday-subway/22nytoday-subway-moth.jpg', 15),
('NYT &gt; Home Page', 'How Strongmen Turned Interpol Into Their Personal Weapon', 'Time and again, people inside and outside Interpol warned that the world’s largest international police organization was leaving itself vulnerable to manipulation.', 'MATT APUZZO', '2019-03-22', 'https://www.nytimes.com/2019/03/22/world/europe/interpol-most-wanted-red-notices.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/02/18/world/xxinterpol1/xxinterpol1-moth.jpg', 16),
('NYT &gt; Home Page', 'Trigger Warnings May Not Do Much, Early Studies Suggest', 'Researchers found that the warnings, which alert people to disturbing material, may pose little benefit or harm to those who view them. But more study is needed, they agree.', 'NIRAJ CHOKSHI', '2019-03-22', 'https://www.nytimes.com/2019/03/22/science/trigger-warnings-studies.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/books/21xp-trigger1/21xp-trigger1-moth.jpg', 17),
('NYT &gt; Home Page', 'Tate Galleries Will Refuse Sackler Money Because of Opioid Links', '“In the present circumstances we do not think it right to seek or accept further donations from the Sacklers,” the group said in a statement.', 'ALEX MARSHALL', '2019-03-22', 'https://www.nytimes.com/2019/03/21/arts/design/tate-modern-sackler-britain-opioid-art.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/arts/21tate1/21tate1-moth.jpg', 18),
('NYT &gt; Home Page', 'Mourners Honor the Dead With Call to Prayer in Christchurch, New Zealand', 'A week after the massacre at two mosques, at least 26 victims were buried as residents and visitors also shared two minutes of silence.', 'DAMIEN CAVE', '2019-03-22', 'https://www.nytimes.com/2019/03/22/world/asia/new-zealand-shooting-vigil.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/world/22nz-vigil-9/22nz-vigil-9-moth.jpg', 19),
('NYT &gt; Home Page', 'Reunion Tour! The Band Is Back! Wait, Who Are These Guys?', 'Once a band name turns into a brand name, there’s a strong incentive to continue on, even with a lineup that fans might not recognize.', 'ROB TANNENBAUM', '2019-03-22', 'https://www.nytimes.com/2019/03/22/arts/music/band-name-reunions.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/24/arts/music/24reunions-illo/24reunions-illo-moth.jpg', 20),
('NYT &gt; Home Page', 'Best of Late Night: Seth Meyers Would Appreciate Joe Biden’s Announcing His Candidacy Already', '“It’s like going to a Lou Bega concert and wondering if he’s going to play ‘Mambo No. 5,’” Meyers said. “He’s going to.”', 'GIOVANNI RUSSONELLO', '2019-03-22', 'https://www.nytimes.com/2019/03/22/arts/television/seth-meyers-joe-biden-announce-candidacy.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/arts/22latenight1/22latenight1-moth.png', 21),
('NYT &gt; Home Page', 'How Virginia Has Coped With a One-of-a-Kind Loss', 'As a No. 1 seed last year, the Cavaliers lost to No. 16 Maryland, Baltimore County. Now they must deal with a similar matchup this year.', 'MARC TRACY', '2019-03-22', 'https://www.nytimes.com/2019/03/22/sports/virginia-cavaliers-upset.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/sports/22-ncaa-virginia-01-PRINT/merlin_151879779_31880fa7-4cb3-4dc4-81dc-c125466186ef-moth.jpg', 22),
('NYT &gt; Home Page', 'Modern Love: When Chivalry Is More Control Than Care', 'After a breakup, a woman wonders if traditional romance is a trap, and finds that the ordinary is the most romantic gesture of all.', 'RUTH READER', '2019-03-22', 'https://www.nytimes.com/2019/03/22/style/modern-love-chivalry-control.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/24/fashion/24MODERNLOVE/24MODERNLOVE-moth.jpg', 23),
('NYT &gt; Home Page', 'Critic’s Pick: Review: An All-Star Team in the Temptations Musical ‘Ain’t Too Proud’', 'This shrewdly assembled show, directed by Des McAnuff, considers the interchangeability of a crew of Motown’s finest, though there’s plenty of star shine, too.', 'BEN BRANTLEY', '2019-03-22', 'https://www.nytimes.com/2019/03/21/theater/aint-too-proud-review-the-temptations.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/arts/22TOPROUD-COVER/22TOPROUD-COVER-moth.jpg', 24),
('NYT &gt; Home Page', 'America Deserves a Leader as Good as Jacinda Ardern', 'New Zealand’s prime minister moved swiftly to ban weapons of mass killing after a gunman attacked two mosques.', 'THE EDITORIAL BOARD', '2019-03-22', 'https://www.nytimes.com/2019/03/21/opinion/new-zealand-ardern.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/opinion/21ardernSub/21ardernSub-moth.jpg', 25),
('NYT &gt; Home Page', 'Re-emergence of Trump Aide Accused of Abuse Is ‘Deeply Troubling,’ Ex-Wife Says', 'After the publication of an op-ed article by Rob Porter, the former White House staff secretary, Jennifer Willoughby wrote that he “has yet to publicly show regret or contrition for his actions.”', 'ANNIE KARNI', '2019-03-22', 'https://www.nytimes.com/2019/03/21/us/politics/rob-porter-jennifer-willoughby-wall-street-journal.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/us/politics/21dc-porter/21dc-porter-moth.jpg', 26),
('NYT &gt; Home Page', 'Racism in Jury Selection Is Real. Can the Supreme Court Put an End to It?', 'The ordeal of death-row inmate Curtis Flowers will yet again test the court’s commitment to equal justice under law.', 'THE EDITORIAL BOARD', '2019-03-22', 'https://www.nytimes.com/2019/03/21/opinion/curtis-flowers-supreme-court.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/opinion/21juries/21juries-moth.jpg', 27),
('NYT &gt; Home Page', 'Mozambique, Battered by Cyclone, Takes Stock: ‘It’s All Rotten’', 'As the storm waters began to recede, people who had very little before the storm found that they now have even less.', 'NORIMITSU ONISHI', '2019-03-22', 'https://www.nytimes.com/2019/03/21/world/africa/mozambique-cyclone.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/world/21mozambique/21mozambique-moth.jpg', 28),
('NYT &gt; Home Page', 'Why Should Americans Be Grateful for $137 Insulin? Germans Get It for $55', 'Only by the bizarre logic of the U.S. pharmaceutical industry does this drug count as any kind of generic.', 'ELISABETH ROSENTHAL', '2019-03-21', 'https://www.nytimes.com/2019/03/21/opinion/diabetes-insulin-generics-humalog.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/opinion/21Rosenthal1/21Rosenthal1-moth.jpg', 29),
('NYT &gt; Home Page', 'What Rural America Has to Teach Us', 'Civic service as a way of life.', 'DAVID BROOKS', '2019-03-21', 'https://www.nytimes.com/2019/03/21/opinion/nebraska-rural-america.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/opinion/21brooks1/21brooks1-moth.jpg', 30),
('NYT &gt; Home Page', 'Don’t Make Health Care a Purity Test', 'There are multiple ways to achieve universal coverage.', 'PAUL KRUGMAN', '2019-03-21', 'https://www.nytimes.com/2019/03/21/opinion/medicare-for-all-democrats.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/opinion/21krugmanWeb/21krugmanWeb-moth.jpg', 31),
('NYT &gt; Home Page', 'Editorial Observer: The Outspoken Women of the House', 'Three freshman lawmakers shatter stereotypes as they make waves.', 'MICHELLE COTTLE', '2019-03-21', 'https://www.nytimes.com/2019/03/21/opinion/house-of-representatives-women.html?partner=rss&amp;emc=rss', '', 32),
('NYT &gt; Home Page', 'James Comey: What I Want From the Mueller Report', 'I am rooting for a demonstration to the world that the United States justice system works.', 'JAMES COMEY', '2019-03-21', 'https://www.nytimes.com/2019/03/21/opinion/james-comey-mueller-report.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/opinion/21Comey2/21Comey2-moth-v2.jpg', 33),
('NYT &gt; Home Page', 'Getting Rid of the Electoral College Isn’t Just About Trump', 'But does anyone really think popular vote losers make better presidents?', 'JAMELLE BOUIE', '2019-03-21', 'https://www.nytimes.com/2019/03/21/opinion/electoral-college-warren-trump.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/opinion/21bouieSub/21bouieSub-moth.jpg', 34),
('NYT &gt; Home Page', 'Trilobites: DNA Clues to an Ancient Canary Islands Voyage', 'The islands’ pioneers likely arrived centuries before European conquest, as part of a large-scale movement of people from North Africa.', 'NICHOLAS ST. FLEUR', '2019-03-21', 'https://www.nytimes.com/2019/03/21/science/canary-islands-indigenous-dna.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/science/21TB-CANARY/21TB-CANARY-moth.jpg', 35),
('NYT &gt; Home Page', 'Seduced by Singapore’s Charismatic Orchids', 'For its annual orchid display, the New York Botanical Garden has drawn inspiration from Southeast Asia. Rich beauty abounds.', 'WILLIAM L. HAMILTON', '2019-03-21', 'https://www.nytimes.com/2019/03/21/arts/design/orchids-new-york-botanical-garden.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/arts/22orchid1/20orchid1-moth.jpg', 36),
('NYT &gt; Home Page', 'Amsterdam to Ban Tours of Its Red-Light District', 'The Dutch capital will prohibit guided visits to the area in an effort to tackle overcrowding by tourists and improve working conditions for prostitutes.', 'ILIANA MAGRA', '2019-03-21', 'https://www.nytimes.com/2019/03/21/world/europe/amsterdam-tours-red-light-district.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/world/21Amsterdam/21Amsterdam-moth.jpg', 37),
('NYT &gt; Home Page', 'Remember Chickenpox Parties? Kentucky Governor Says He Let His 9 Children Get the Virus', 'Gov. Matt Bevin said he intentionally exposed his children to chickenpox. Of people who shun vaccines, he said, the government “should not be forcing this.”', 'JULIE BOSMAN', '2019-03-21', 'https://www.nytimes.com/2019/03/21/us/kentucky-governor-chickenpox.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/21/us/21kentucky/21kentucky-moth.jpg', 38),
('NYT &gt; Home Page', 'The Shock Over Casio’s New G-Shock', 'The cheap, durable and really quite ugly watch has gotten a makeover. And its Japanese maker is a bit nervous about how the legions of loyal fans will take the news.', 'VIVIAN MORELLI', '2019-03-20', 'https://www.nytimes.com/2019/03/20/fashion/watches-casio-g-shock.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/22/fashion/22sp-CASIO-INYT1/22sp-CASIO-INYT1-moth.jpg', 39),
('NYT &gt; Home Page', 'Neptune’s Moon Triton Is Destination of Proposed NASA Mission', 'Scientists at a conference in Houston presented the concept for a flyby mission to study a mysterious moon that may contain an ocean.', 'DAVID W. BROWN', '2019-03-20', 'https://www.nytimes.com/2019/03/19/science/triton-neptune-nasa-trident.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/19/science/19TRITON3/19TRITON3-moth.jpg', 40),
('NYT &gt; Home Page', 'Knowing the Right Time to Say Goodbye to a Pet', 'End-of-life decisions for animals are difficult. A veterinarian has developed a scale to help clear up the confusion.', 'TARA PARKER-POPE', '2019-03-19', 'https://www.nytimes.com/2019/03/19/well/family/pet-dog-cat-death-euthanasia.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/26/smarter-living/12well_petgoodbyes/12well_petgoodbyes-moth.jpg', 41),
('NYT &gt; Home Page', 'Share a Bed Without Losing Sleep', 'Two in three Americans share a bed with a partner. Here’s how to make it more comfortable.', 'GANDA SUTHIVARAKOM', '2019-03-18', 'https://www.nytimes.com/2019/03/18/smarter-living/wirecutter/how-to-share-bed-sleep-partner.html?partner=rss&amp;emc=rss', '', 42),
('NYT &gt; Home Page', 'The Right Way to Ask, ‘Can I Pick Your Brain?’', 'Know what you want. Be kind. Stick the landing.', 'ANNA GOLDFARB', '2019-03-18', 'https://www.nytimes.com/2019/03/17/smarter-living/the-right-way-to-ask-can-i-pick-your-brain.html?partner=rss&amp;emc=rss', 'https://static01.nyt.com/images/2019/03/15/smarter-living/15sl-brainpick-color/15sl-brainpick-color-moth-v2.jpg', 43);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
