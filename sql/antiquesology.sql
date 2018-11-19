-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2018 at 03:50 PM
-- Server version: 5.6.32-78.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezshocom_antiquesology`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogComments`
--

CREATE TABLE `blogComments` (
  `IDcomment` int(6) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `commenterID` int(5) NOT NULL,
  `commentBlogID` int(5) NOT NULL,
  `thumbsUp` int(5) NOT NULL,
  `thumbsDown` int(5) NOT NULL,
  `replyCount` int(5) NOT NULL,
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `IDblog` int(5) NOT NULL,
  `blogMbrID` int(5) NOT NULL,
  `blogTitle` varchar(150) NOT NULL,
  `blogBlurb` varchar(250) NOT NULL,
  `blogEntry` varchar(25000) NOT NULL,
  `blogImage1` varchar(50) NOT NULL,
  `blogDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `IDcategory` int(2) NOT NULL,
  `categoryName` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`IDcategory`, `categoryName`) VALUES
(1, 'Ceramics / Porcelain'),
(2, 'Furniture'),
(3, 'Masks'),
(4, 'Paintings'),
(5, 'Statuary / Sculpture / Carvings / Castings'),
(6, 'Boxes / Chests'),
(7, 'Silver'),
(8, 'Sports Memorabilia'),
(9, 'Tools / Implements'),
(10, 'Wearables'),
(15, 'Food / drink related'),
(11, 'Militaria'),
(12, 'Musical Instruments'),
(13, 'Books / Maps'),
(14, 'Scientific Instruments'),
(16, 'Nautical'),
(17, 'Advertising'),
(18, 'Toys'),
(20, 'Ceremonial / Religious'),
(21, 'Miniature'),
(22, 'Architectural'),
(24, 'Clocks / Watches'),
(25, 'Photos'),
(27, 'NA'),
(19, 'Cards'),
(23, 'Lighting'),
(26, 'Mirrors'),
(28, 'Bottles / Containers for Liquids');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `IDcountry` int(3) NOT NULL,
  `countryName` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`IDcountry`, `countryName`) VALUES
(26, 'Thailand'),
(1, 'Australia'),
(2, 'Indonesia'),
(3, 'Burma'),
(4, 'Canada'),
(5, 'Cameroon'),
(6, 'China'),
(7, 'Congo'),
(8, 'England'),
(9, 'France'),
(10, 'Gabon'),
(11, 'Ghana'),
(12, 'Germany'),
(13, 'United States'),
(14, 'Japan'),
(15, 'India'),
(16, 'Ecuador'),
(17, 'Peru'),
(18, 'Mexico'),
(19, 'Holland'),
(20, 'Spain'),
(21, 'Italy'),
(22, 'Borneo'),
(23, 'Papua New Guinea'),
(24, 'Russia'),
(25, 'Tibet'),
(27, 'Liberia'),
(28, 'Iran'),
(29, 'Nepal'),
(30, 'Egypt'),
(31, 'Ireland'),
(32, 'Portugal'),
(33, 'Morocco'),
(34, 'Guatemala'),
(35, 'Greece'),
(36, 'Bolivia'),
(37, 'Turkey'),
(38, 'Sweden'),
(39, 'Norway'),
(40, 'Kenya'),
(41, 'Switzerland'),
(42, 'Malaysia'),
(43, 'Pakistan'),
(44, 'Vietnam'),
(45, 'Brazil'),
(46, 'South Korea'),
(47, 'Philippines'),
(48, 'Argentina'),
(49, 'Poland'),
(50, 'Finland'),
(51, 'Tunisia'),
(52, 'Israel'),
(53, 'Jordan'),
(54, 'Austria'),
(55, 'South Africa'),
(56, 'Nigeria'),
(57, 'Chile'),
(58, 'Sri Lanka'),
(59, 'Fiji'),
(60, 'Uruguay'),
(61, 'Paraguay'),
(62, 'Surianme'),
(63, 'Mali'),
(64, 'Burkina Faso');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `IDimg` int(5) NOT NULL,
  `imgName` varchar(150) NOT NULL,
  `imgTitle` varchar(100) NOT NULL,
  `imgFolder` varchar(50) NOT NULL,
  `imgDesc` varchar(500) NOT NULL,
  `foreignID` int(5) NOT NULL,
  `catID` int(2) NOT NULL,
  `isMainPic` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `IDitem` int(5) NOT NULL,
  `materialID` int(2) NOT NULL,
  `categoryID` int(2) NOT NULL,
  `periodID` int(2) NOT NULL,
  `regionID` int(2) NOT NULL,
  `countryID` int(2) NOT NULL,
  `title` varchar(150) NOT NULL,
  `subtitle` varchar(250) NOT NULL,
  `yearMade` int(4) NOT NULL,
  `yearMade2` varchar(4) NOT NULL,
  `price` int(7) NOT NULL,
  `cost` int(5) NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `depth` float NOT NULL,
  `diameter` float NOT NULL DEFAULT '0',
  `weightLbs` float NOT NULL,
  `description` varchar(1000) NOT NULL,
  `isSold` tinyint(1) NOT NULL,
  `isForSale` tinyint(1) NOT NULL DEFAULT '1',
  `provenance` varchar(250) NOT NULL,
  `condition` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`IDitem`, `materialID`, `categoryID`, `periodID`, `regionID`, `countryID`, `title`, `subtitle`, `yearMade`, `yearMade2`, `price`, `cost`, `width`, `height`, `depth`, `diameter`, `weightLbs`, `description`, `isSold`, `isForSale`, `provenance`, `condition`) VALUES
(30, 14, 5, 52, 4, 13, 'Papua New Guinea Gope Board with finial, ex. Laurie Bragge collection', 'Exquisitely carved in raised relief, with natural pigment polychrome, 48\" tall', 1930, '', 875, 200, 14, 48, 2, 0, 3, 'Papua New Guinea Gope Board with finial, ex. Laurie Bragge collection. Mr. Bragge was a Patrol Officer in charge of the Sepik Region for the Australian colonial government from 1971-76, during which time he collected this gope, as well as many other old, authentic and tribally used pieces', 0, 1, 'Laurie Bragge', 'veru good'),
(24, 14, 6, 5, 3, 8, 'George III mahogany and satinwood tea caddy', 'sarcophagus form with satinwood string inlay, late-18th - early 19th century', 1810, '', 1750, 485, 12, 8, 5, 0, 2, 'A very fine George III mahogany Tea Caddy of sarcophagus form with satinwood string inlay, with hinged lip opening to reveal twin lidded compartments flanking a period cut glass mixing bowl; cross banded mahogany veneer inlay with diamond-shaped bone escutcheon, all original brass hardware includes basket-of-flowers ringed pulls and ball feet', 1, 1, '', ''),
(14, 14, 3, 44, 2, 6, 'Guanyin statue', 'authentic temple piece', 1750, '', 3750, 1150, 24, 28, 12, 0, 13, 'Carved wood and lacquered Guanyin figure in “Royal Relaxation” pose on lotus stand; traces of polychrome lacquer; square notch cut in back for anchoring figure to its niche', 1, 1, '', ''),
(13, 14, 2, 45, 2, 6, 'Chinese carved and lacquered mirror stand', 'Qing Dynasty, c. 18th century', 1750, '', 850, 320, 24, 28, 12, 0, 8, 'Carved and lacquered mirror stand or table-top altar, with three-panel screen lavishly carved in the Ming manner, with tendrils and central lotus; adorned with short-snouted dragon heads; cupboard doors flanked by finial-topped posts, opening to reveal two pull drawers, each with lozenge-shaped pull; appears to retain original surface and snipe-hinge hardware; abundant signs of authentic use and age', 0, 1, '', ''),
(12, 14, 2, 44, 2, 6, 'Pair Chinese huali or hongmu horseshoe back armchairs', '\"probably late 19th or early 20th century (late Qing)\" - Christie\'s', 1900, '', 1250, 85, 30, 44, 27, 0, 40, 'Continuous curved back ending in carved armrests and supported by central carved, pierced back splat, flanked by filigree-carved spandrels; rattan covered waisted seat, above curved legs ending in curved feet supported by low stretchers', 1, 1, '', ''),
(15, 15, 5, 44, 2, 6, 'Chinese Ananda iron Lohan figure', 'Ananda, disciple of Buddha', 1850, '', 250, 205, 0, 18, 0, 5, 14, 'Iron figure with praying hands, traces of polychrome and gilding, evidence of mounting in temple niche: square-cut hole in back of head, old anchoring nails', 0, 1, '', ''),
(17, 18, 4, 68, 2, 6, '18th-19th century Chinese ancestor portrait', 'authentic Qing-era painting', 1830, '', 2500, 360, 36, 60, 0, 0, 3, 'Six seated and robed figures in courtyard with ancestral shrine; identifying calligraphy; foo dogs flanking entrance', 0, 1, '', 'numerous patches in back, slight fraying, fading, especially to lower area, evidence of folding, dirty, three ink letters near upper left corner, probably an owner\'s monogram'),
(21, 14, 5, 42, 4, 23, 'Papua New Guinea Kakame figure', 'Exquisite, well-carved, ancestor spirit', 1930, '', 1200, 290, 30, 43, 12, 0, 30, 'Rare and fine Kakame ancestor spirit figure made from a single piece of wood, with each limb a tree branch, with raised relief carving and natural pigment polychrome', 0, 1, 'Los Angeles collection; New Guinea Primitive Arts, Sydney (1970s)', 'excellent'),
(7, 4, 1, 44, 2, 6, 'Censer', 'porcelain bowl-form incense burner', 1730, '', 1275, 275, 0, 3.5, 0, 7, 0.5, 'Porcelain, polychrome enamel bowl with mythical beasts in medallions', 0, 1, '', ''),
(11, 4, 1, 42, 2, 14, '18th century Japanese Imari scalloped charger ', 'Polychrome enamels, gilding and underglaze blue in dark colbalt blue; most likdely made for Dutch market, c. 1730', 1760, '', 875, 185, 0, 2, 0, 10, 1, 'Dark colbalt underglaze blue with vivid enameled polychrome and gilding; eight scalloped panels surrounding central vase; apocryphal Ming Jiajing reign mark; repaired break, terminating in \r\nsmall chip on reverse', 0, 1, '', ''),
(23, 18, 11, 41, 1, 13, 'Rare c. 1800 American Federal Period military bicorn hat', 'Beaver, silk, leather and brass, embroidered with stars & eagles circa 1800', 1800, '', 1500, 14, 17, 10, 5, 0, 1, 'Very rare American military bicorn hat, circa 1800, of embroidered silk featuring eagles and stars, together with beaver fur lining, metal, possibly electrum, braids and epaulettes, with a leather lining', 1, 1, 'Same owner since purchasing hat in Liberty, NY, mid-1970s', 'Fair'),
(25, 14, 6, 12, 4, 8, 'African Congo Lulua maternity figure', 'Exquisitely carved, with kaolin over black pigment over fine honey-colored wood', 1920, '', 2345, 450, 15, 8, 12, 0, 3, 'African Congo Lulua maternity figure. Exquisitely carved, with kaolin over black pigment over fine honey-colored wood. Fine raised relief, notch cut in chest and throat for holding sacrificial items; beautiful proportions, a very rare piece', 0, 0, '', ''),
(26, 14, 3, 20, 4, 12, 'African Congo Kwesi Janus helmet mask, mid-20th century', 'Polychrome pigments with lion crest, exquisitely carved', 1930, '', 1875, 1450, 15, 8, 12, 0, 3, 'African Congo Kwesi Janus polychrome helmet mask, mid-20th century. Polychrome pigments with lion crest, exquisitely carved, ex. Belgian collection, vetted authentic by two experts', 0, 1, '', ''),
(28, 14, 5, 24, 4, 13, 'African Cameroon Mambila Tadep figure, huge', 'Striking figure, 50\" tall, dynamically carved, fringed in cowrey shells', 1970, '', 675, 650, 15, 8, 12, 0, 3, 'Striking figure, 50\" tall, dynamically carved, fringed in cowrey shells, with belt of heshi beads, and inset antelope horn in back cavity; coiffure studded with hundreds of pegs; kaolin and red pigment face, probably made for the collector market in the third quarter of the 20th century, a rare example by a master carver', 0, 1, '', ''),
(31, 12, 2, 49, 1, 13, 'American Hepplewhite carved mahogany side chair, c. 1790', 'shield back with carved back splat, spade feet and original basket weave seat', 1790, '', 1800, 185, 15, 8, 12, 0, 3, 'American Hepplewhite carved mahogany side chair, c. 1790, shield back with carved back splat, spade feet and original basket weave seat', 0, 1, '', ''),
(32, 14, 3, 28, 4, 13, 'African Congo Kuba Bwoom helmet mask', 'Tribally used, early 20th century, with period Belgian bicycle medallion', 1830, '', 2400, 185, 15, 8, 12, 0, 3, 'African Congo Kuba Bwoom helmet mask. Tribally used, early 20th century, with period Belgian bicycle medallion inset in forehead. Carved wood, cloth, cowry shells, beads, metal.', 0, 1, '', ''),
(33, 14, 3, 26, 4, 13, 'Exquisite, authetic African Congo Songye Kifwebe mask', 'powerfully carved with famtastic patina, abundant signs of use and age, including rerilling of rafia holes, and sweat-induced grungy stains to interior, full mane of head gear, including pig-tail ', 1930, '', 900, 400, 15, 8, 12, 0, 3, 'A rare American toleware bread tray.', 1, 1, '', ''),
(34, 18, 11, 49, 5, 13, 'French brass hourglass, inset with two Napoleon medallions, dated 1805', 'Medallions commemorate Napoelon\'s coronation as Emperor of Italy in Milan, May 1805', 1830, '', 1875, 185, 15, 8, 12, 0, 3, 'French brass hourglass, inset with two Napoleon medallions, dated 1805, Medallions commemorate Napoelon\'s coronation as Emperor of Italy in Milan, May 1805. medallion-coins are silver-plated bronze, numismatically excellent, uncirculated coins, one displaying obverse with bust of Napoleon Bonaparte, the reverse showing a classical temple, as well as the date MDXXXV (1805)', 0, 1, '', ''),
(1, 4, 1, 21, 2, 6, 'Iron-red porcelain bowl, Guangxu Mark and Period ', 'Six-character Guangxu mark, iron-red enamel with gold accents, very finely potted with excellent translucency and tone', 1890, '', 1175, 270, 7.5, 5, 12, 0, 1, 'Dragon and clouds motif in underglaze iron-red with gold accents; flawless, thinly potted with excellent translucency', 1, 1, '', ''),
(2, 4, 1, 11, 2, 6, 'FAKE Ming Longquan celadon vase', 'Ming style', 2000, '', 100, 250, 0, 9, 0, 4.5, 0.5, 'Ming style Longquan celadon ring-handled vase with relief carved phoenixes; pale greenish-blue translucent glaze with fine crazing', 0, 1, '', ''),
(4, 4, 1, 53, 2, 6, 'Porcelain Blanc de Chine vase', 'Qing Dynasty, c. 1750', 1750, '', 1000, 210, 0, 12, 0, 5, 1.5, 'Period Qing 18th century Blanc de Chine porcelain vase, with applied floral motifs, and wood-style handles; ivory-tone with fine crazing', 0, 1, '', ''),
(96, 15, 11, 59, 0, 14, 'Samurai Suit', 'Edo Period 16th century', 0, '', 30000, 5000, 0, 0, 0, 0, 0, 'Samurai Suit Edo Period 16th century', 0, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `IDmaterial` int(2) NOT NULL,
  `materialName` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`IDmaterial`, `materialName`) VALUES
(1, 'Brass/Bronze'),
(3, 'Bamboo/Wicker'),
(4, 'Ceramic/Porcelain'),
(5, 'Hide/Leather/Fur'),
(6, 'Glass/Crystal'),
(7, 'Plaster/Gesso'),
(9, 'Marble/Stone/Jade'),
(10, 'Paper/Cardboard'),
(12, 'Tin/Pewter'),
(13, 'Silver'),
(14, 'Wood'),
(15, 'Iron/Steel'),
(16, 'Copper/Bronze'),
(18, 'Textile/Cloth/Silk'),
(17, 'Lacquer/Cinnebar'),
(11, 'Wicker/Bamboo'),
(2, 'Canvas'),
(23, 'NA'),
(19, 'Other'),
(20, 'Bakelite'),
(21, 'Ivory/Bone'),
(22, 'Digital');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `IDmember` int(5) NOT NULL,
  `firstName` varchar(35) NOT NULL,
  `lastName` varchar(35) NOT NULL,
  `user` varchar(35) NOT NULL,
  `pswd` varchar(150) NOT NULL,
  `email` varchar(75) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `aboutMbr` varchar(2000) NOT NULL DEFAULT 'More about me coming soon. ',
  `isAdmin` tinyint(1) NOT NULL,
  `joinTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `IDperiod` int(2) NOT NULL,
  `periodName` varchar(30) NOT NULL,
  `startPeriod` int(4) NOT NULL,
  `endPeriod` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`IDperiod`, `periodName`, `startPeriod`, `endPeriod`) VALUES
(1, 'Ming Dynasty', 1368, 1644),
(2, 'Elizabethan', 1558, 1603),
(3, 'Jacobean', 1603, 1650),
(4, 'Louie XIV', 1638, 1715),
(5, 'Qing Dynasty', 1645, 1911),
(6, 'Louie XV', 1716, 1774),
(8, 'William and Mary', 1688, 1702),
(9, 'Queen Anne', 1702, 1714),
(10, 'George I', 1714, 1727),
(11, 'George II', 1727, 1760),
(12, 'George III', 1761, 1820),
(13, 'Louie XVI', 1774, 1793),
(15, 'Regency', 1820, 1830),
(16, 'Victorian', 1837, 1901),
(17, 'Art Nouveau', 1890, 1914),
(18, 'Art Deco', 1920, 1940),
(19, 'post-WWII', 1946, 2010),
(20, 'Baroque', 1600, 1750),
(21, 'English Chippendale', 1755, 1780),
(22, 'American Chippendale', 1760, 1800),
(23, 'English Hepplewite', 1780, 1790),
(24, 'American Hepplewhite', 1785, 1810),
(25, 'English Sheraton', 1785, 1810),
(26, 'American Sheraton', 1790, 1815),
(27, 'American William and Mary', 1690, 1720),
(28, 'American Queen Anne', 1720, 1760),
(29, 'Renaissance Revival', 1830, 1880),
(30, 'American Civil War', 1861, 1865),
(31, 'Eastlake', 1875, 1890),
(32, 'Arts and Crafts', 1895, 1915),
(33, 'Hudson Valley', 1680, 1780),
(34, 'Pilgrim Century', 1630, 1710),
(35, 'American Empire', 1825, 1850),
(36, 'American Federal', 1785, 1825),
(37, 'Rococo', 1740, 1790),
(38, 'American Neo-Classical', 1795, 1825),
(39, 'French Empire', 1800, 1815),
(40, 'Chinese Republic', 1912, 1945),
(41, 'Pennsylvania German', 1730, 1850),
(42, '19th century', 1880, 1899),
(43, '1st qtr 20th century', 1900, 1925),
(44, 'c. 2nd qtr 20th century', 1926, 1950),
(45, 'c. 3rd qtr 20th century', 1951, 1975),
(46, 'Centennial Era (1875-1900)', 1875, 1900),
(47, 'c. 3rd qtr 19th century', 1851, 1875),
(48, 'c. 2nd qtr 19th century', 1826, 1850),
(49, 'c. 1st qtr 19th century', 1800, 1825),
(14, 'Reproduction', 1900, 2000),
(50, '4th qtr 20th century', 176, 2000),
(51, 'c. early 18th century', 1700, 1730),
(52, 'c. mid 18th century', 1731, 1775),
(53, 'c. late 18th century', 1776, 1800),
(54, 'Pop Art', 1960, 2010),
(55, 'Contemporary', 1985, 2010),
(56, 'Renaissance', 1500, 1700),
(58, '16th century', 1501, 1600),
(57, '17th century', 1601, 1700),
(59, 'Edo Period', 1603, 1868),
(60, 'late Ming - early Qing', 1580, 1735),
(61, 'mid-Qing', 1735, 1840),
(62, 'late-Qing', 1841, 1911),
(63, 'late 19th - early 20th century', 1875, 1925),
(64, 'Ming Dynasty', 1368, 1644),
(65, 'early Ming', 1368, 1435),
(66, 'mid-Ming', 1436, 1572),
(67, 'late-Ming', 1573, 1644),
(68, 'Qing Dynasty', 1644, 1911),
(69, 'Ming Dynasty', 1368, 1644);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogComments`
--
ALTER TABLE `blogComments`
  ADD PRIMARY KEY (`IDcomment`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`IDblog`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`IDcategory`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`IDcountry`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`IDimg`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`IDitem`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`IDmaterial`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`IDmember`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`IDperiod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogComments`
--
ALTER TABLE `blogComments`
  MODIFY `IDcomment` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `IDblog` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `IDcategory` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `IDcountry` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `IDimg` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `IDitem` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `IDmaterial` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `IDmember` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `IDperiod` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
