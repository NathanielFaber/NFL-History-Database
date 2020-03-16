CREATE DATABASE  IF NOT EXISTS `nflhistorydatabase` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `nflhistorydatabase`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: nflhistorydatabase.mysql.database.azure.com    Database: nflhistorydatabase
-- ------------------------------------------------------
-- Server version	5.6.42.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `C_coachID` int(11) NOT NULL,
  `T_TeamName` varchar(30) NOT NULL,
  `S_year` int(11) NOT NULL,
  PRIMARY KEY (`C_coachID`,`T_TeamName`),
  KEY `C_coachID` (`C_coachID`),
  KEY `T_TeamName` (`T_TeamName`),
  KEY `S_year` (`S_year`),
  CONSTRAINT `coaches_ibfk_1` FOREIGN KEY (`C_coachID`) REFERENCES `coach` (`coachID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coaches_ibfk_2` FOREIGN KEY (`T_TeamName`) REFERENCES `team` (`teamName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coaches_ibfk_3` FOREIGN KEY (`S_year`) REFERENCES `season` (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (416,'Digitube',1900),(502,'Camido',1900),(541,'Tagpad',1900),(690,'Fivespan',1900),(734,'Yombu',1900),(93,'Dablist',1901),(187,'Oyonder',1901),(241,'Wikibox',1901),(327,'Skipfire',1901),(501,'Gigabox',1901),(537,'Edgetag',1901),(545,'Viva',1901),(883,'Riffwire',1901),(976,'Eimbee',1901),(26,'Innotype',1902),(56,'Meezzy',1902),(110,'Wikido',1902),(311,'Gigaclub',1902),(501,'Tagopia',1902),(600,'Brainbox',1902),(727,'LiveZ',1902),(783,'LiveZ',1902),(191,'Bubbletube',1903),(302,'Linklinks',1903),(419,'Meezzy',1903),(548,'Zoomlounge',1903),(623,'Viva',1903),(715,'Meezzy',1903),(758,'LiveZ',1903),(787,'Dabtype',1903),(987,'Riffwire',1903),(5,'Gigabox',1904),(40,'Riffwire',1904),(91,'Buzzster',1904),(256,'Bubbletube',1904),(415,'Dablist',1904),(734,'Skimia',1904),(851,'Riffwire',1904),(984,'Meezzy',1904),(23,'Yombu',1905),(176,'Gigabox',1905),(226,'Meezzy',1905),(285,'Digitube',1905),(395,'Oyoba',1905),(461,'Tagpad',1905),(474,'Dabvine',1905),(619,'Camido',1905),(984,'Quatz',1905),(115,'Wikibox',1906),(300,'Skimia',1906),(335,'Jabbersphere',1906),(432,'Centidel',1906),(662,'Jetpulse',1906),(767,'Voolia',1906),(962,'Buzzster',1906),(970,'Kaymbo',1906),(38,'Rhycero',1907),(221,'Skimia',1907),(375,'Eazzy',1907),(375,'Wikibox',1907),(853,'Oyonder',1907),(861,'Oyoba',1907),(871,'Innotype',1907),(902,'Eimbee',1907),(99,'Realpoint',1908),(105,'Jetpulse',1908),(133,'Jetpulse',1908),(654,'Avavee',1908),(808,'Quatz',1908),(837,'Oyonder',1908),(908,'LiveZ',1908),(96,'Realpoint',1909),(102,'Fivespan',1909),(113,'Wikido',1909),(237,'Jetpulse',1909),(392,'Wikido',1909),(430,'Yombu',1909),(522,'LiveZ',1909),(543,'Realpoint',1909),(694,'Brainbox',1909),(698,'Innotype',1909),(854,'Camido',1909),(858,'LiveZ',1909),(910,'Linklinks',1909),(125,'Brainbox',1910),(224,'Browsetype',1910),(242,'Linklinks',1910),(294,'Bubblebox',1910),(499,'Bubblebox',1910),(589,'Eimbee',1910),(647,'Divape',1910),(648,'Oyonder',1910),(652,'Yombu',1910),(664,'Quatz',1910),(674,'Jetpulse',1910),(946,'Dabtype',1910),(143,'LiveZ',1911),(254,'Jetpulse',1911),(383,'Avavee',1911),(668,'Browsetype',1911),(942,'Buzzster',1911),(954,'Dabvine',1911),(974,'Gigaclub',1911),(298,'Fliptune',1912),(483,'Voolia',1912),(533,'Linklinks',1912),(546,'Dabvine',1912),(601,'Voolia',1912),(954,'Eazzy',1912),(1,'Fliptune',1913),(335,'Tagopia',1913),(394,'Dabtype',1913),(505,'LiveZ',1913),(548,'Eimbee',1913),(576,'Tagopia',1913),(149,'Oyoba',1914),(224,'Oyonder',1914),(384,'Zoomlounge',1914),(525,'Gigabox',1914),(999,'Jabbersphere',1914),(88,'Innotype',1915),(137,'Gigabox',1915),(251,'Jabbersphere',1915),(255,'Rhycero',1915),(285,'Oyonder',1915),(319,'Divape',1915),(461,'Brainbox',1915),(654,'Digitube',1915),(654,'LiveZ',1915),(851,'Bubblebox',1915),(906,'Dabvine',1915),(999,'Realpoint',1915),(188,'Digitube',1916),(236,'Tagpad',1916),(251,'Bubblebox',1916),(362,'Viva',1916),(403,'Avavee',1916),(498,'Eimbee',1916),(502,'Bubbletube',1916),(632,'Meezzy',1916),(3,'Voolia',1917),(142,'Skimia',1917),(236,'Yombu',1917),(247,'Skipfire',1917),(378,'Dabtype',1917),(413,'Rhycero',1917),(571,'Meezzy',1917),(639,'Yombu',1917),(983,'Brainbox',1917),(294,'Dabtype',1918),(303,'Meezzy',1918),(726,'Yombu',1918),(844,'Wikido',1918),(936,'Brainbox',1918),(36,'Camido',1919),(358,'Avavee',1919),(507,'Kaymbo',1919),(515,'Meezzy',1919),(619,'Jayo',1919),(702,'Jayo',1919),(711,'Bubbletube',1919),(726,'Linklinks',1919),(893,'Kaymbo',1919),(907,'Buzzster',1919),(21,'Eazzy',1920),(183,'Realpoint',1920),(349,'Gigabox',1920),(659,'Dabvine',1920),(833,'LiveZ',1920),(911,'Brainbox',1920),(969,'Tagpad',1920),(124,'Vitz',1921),(166,'LiveZ',1921),(306,'Riffwire',1921),(408,'Gigabox',1921),(457,'Divape',1921),(792,'Wikibox',1921),(878,'Oyoba',1921),(977,'Riffwire',1921),(28,'Oyonder',1922),(67,'Oyonder',1922),(180,'Camido',1922),(224,'Centidel',1922),(247,'Realpoint',1922),(625,'Jabbersphere',1922),(631,'Yombu',1922),(689,'Jayo',1922),(958,'Buzzster',1922),(61,'LiveZ',1923),(804,'Thoughtbeat',1923),(932,'Tagpad',1923),(998,'Dabtype',1923),(44,'Camido',1924),(294,'Camido',1924),(360,'Buzzster',1924),(463,'Digitube',1924),(497,'Dablist',1924),(514,'Skimia',1924),(531,'Dabtype',1924),(587,'Tagpad',1924),(685,'Innotype',1924),(688,'Innotype',1924),(200,'Voolia',1925),(365,'Yombu',1925),(530,'Edgetag',1925),(661,'Dabvine',1925),(979,'Wikido',1925),(990,'Edgetag',1925),(125,'Realpoint',1926),(318,'Gigabox',1926),(457,'Tagopia',1926),(502,'Voolia',1926),(905,'Bubblebox',1926),(122,'Voolia',1927),(163,'Yombu',1927),(278,'Voolia',1927),(296,'Gigabox',1927),(444,'Gigabox',1927),(499,'Tagpad',1927),(541,'Rhycero',1927),(565,'Skipfire',1927),(657,'Vitz',1927),(700,'Brainbox',1927),(722,'Divape',1927),(724,'Jayo',1927),(43,'Tagopia',1928),(202,'Tagpad',1928),(282,'Bubblebox',1928),(583,'Eazzy',1928),(834,'Dabtype',1928),(837,'Skipfire',1928),(841,'Oyonder',1928),(8,'Dablist',1929),(88,'Zoomlounge',1929),(270,'Kaymbo',1929),(320,'Digitube',1929),(338,'Avavee',1929),(429,'Jayo',1929),(534,'Voolia',1929),(828,'Gigaclub',1929),(81,'Bubblebox',1930),(424,'Gigaclub',1930),(503,'Yombu',1930),(590,'Jetpulse',1930),(620,'LiveZ',1930),(789,'Viva',1930),(22,'Tagpad',1931),(41,'Realpoint',1931),(334,'Tagopia',1931),(375,'LiveZ',1931),(427,'Quatz',1931),(461,'Eazzy',1931),(577,'Kaymbo',1931),(621,'Bubbletube',1931),(665,'Digitube',1931),(686,'Centidel',1931),(891,'Dabtype',1931),(950,'Jayo',1931),(993,'Edgetag',1931),(3,'LiveZ',1932),(426,'Dabvine',1932),(567,'Dablist',1932),(580,'Oyoba',1932),(584,'LiveZ',1932),(707,'Meezzy',1932),(926,'Jabbersphere',1932),(941,'Vitz',1932),(375,'Vitz',1933),(554,'Tagpad',1933),(675,'Browsetype',1933),(896,'Fivespan',1933),(81,'Jayo',1934),(151,'Centidel',1934),(214,'Wikido',1934),(232,'Skipfire',1934),(537,'Viva',1934),(672,'Bubblebox',1934),(19,'Jayo',1935),(138,'Yombu',1935),(332,'Avavee',1935),(457,'Voolia',1935),(520,'Divape',1935),(591,'Voolia',1935),(639,'Skimia',1935),(738,'Oyonder',1935),(793,'Bubbletube',1935),(840,'Wikibox',1935),(126,'Centidel',1936),(156,'Quatz',1936),(170,'Browsetype',1936),(423,'Buzzster',1936),(564,'Dabtype',1936),(572,'Meezzy',1936),(608,'Bubblebox',1936),(807,'Dabtype',1936),(908,'Riffwire',1936),(920,'Tagopia',1936),(978,'Dabtype',1936),(140,'Rhycero',1937),(240,'Bubbletube',1937),(489,'Browsetype',1937),(516,'Zoomlounge',1937),(682,'Camido',1937),(716,'LiveZ',1937),(941,'Realpoint',1937),(988,'Jayo',1937),(39,'Edgetag',1938),(137,'Oyonder',1938),(167,'Fivespan',1938),(385,'Skimia',1938),(401,'Zoomlounge',1938),(559,'Digitube',1938),(560,'Tagopia',1938),(606,'LiveZ',1938),(661,'Tagopia',1938),(938,'Fliptune',1938),(974,'Jabbersphere',1938),(149,'Riffwire',1939),(161,'Gigabox',1939),(362,'Gigabox',1939),(429,'Avavee',1939),(805,'Wikibox',1939),(870,'Divape',1939),(886,'Gigabox',1939),(38,'Quatz',1940),(63,'Linklinks',1940),(128,'Divape',1940),(244,'Kaymbo',1940),(276,'Edgetag',1940),(294,'Oyonder',1940),(345,'Eimbee',1940),(466,'Eimbee',1940),(688,'Avavee',1940),(764,'Bubblebox',1940),(811,'Gigabox',1940),(825,'Voolia',1940),(845,'Dabvine',1940),(945,'Dabvine',1940),(63,'Wikido',1941),(471,'Digitube',1941),(637,'LiveZ',1941),(641,'Linklinks',1941),(726,'Wikido',1941),(730,'Skimia',1941),(864,'Wikibox',1941),(941,'Oyonder',1941),(955,'Kaymbo',1941),(16,'Voolia',1942),(70,'Brainbox',1942),(229,'Viva',1942),(236,'Skimia',1942),(336,'Yombu',1942),(375,'Jabbersphere',1942),(771,'Innotype',1942),(956,'Yombu',1942),(32,'Gigaclub',1943),(112,'Jayo',1943),(135,'Digitube',1943),(160,'Jayo',1943),(175,'Innotype',1943),(268,'Jetpulse',1943),(327,'Divape',1943),(383,'Edgetag',1943),(439,'Edgetag',1943),(643,'Buzzster',1943),(808,'Innotype',1943),(897,'Centidel',1943),(244,'Tagpad',1944),(297,'Meezzy',1944),(360,'Jetpulse',1944),(377,'Skimia',1944),(880,'Yombu',1944),(972,'Skimia',1944),(29,'LiveZ',1945),(42,'Gigabox',1945),(93,'Skimia',1945),(184,'Quatz',1945),(289,'Rhycero',1945),(434,'Eazzy',1945),(678,'Viva',1945),(745,'Browsetype',1945),(108,'Bubblebox',1946),(222,'Meezzy',1946),(500,'Oyoba',1946),(589,'Yombu',1946),(659,'Realpoint',1946),(705,'Linklinks',1946),(859,'Viva',1946),(79,'Gigabox',1947),(167,'Jayo',1947),(172,'Meezzy',1947),(344,'Tagpad',1947),(845,'Kaymbo',1947),(860,'Bubblebox',1947),(341,'Voolia',1948),(504,'Dablist',1948),(545,'Edgetag',1948),(676,'Realpoint',1948),(753,'Rhycero',1948),(762,'Gigaclub',1948),(41,'Tagopia',1949),(186,'Eazzy',1949),(284,'Jetpulse',1949),(299,'Brainbox',1949),(311,'Fliptune',1949),(591,'Fivespan',1949),(594,'Riffwire',1949),(866,'LiveZ',1949),(881,'Avavee',1949),(924,'Voolia',1949),(70,'Jayo',1950),(356,'Kaymbo',1950),(653,'Bubblebox',1950),(832,'Gigabox',1950),(934,'Meezzy',1950),(7,'Centidel',1951),(62,'Jabbersphere',1951),(152,'Dabtype',1951),(193,'Jayo',1951),(203,'Skimia',1951),(207,'Oyoba',1951),(270,'Dablist',1951),(305,'Thoughtbeat',1951),(500,'Fivespan',1951),(698,'Linklinks',1951),(801,'Quatz',1951),(806,'Tagopia',1951),(830,'Bubbletube',1951),(996,'Meezzy',1951),(6,'Buzzster',1952),(702,'Wikido',1952),(729,'Innotype',1952),(75,'Skimia',1953),(95,'Innotype',1953),(96,'Viva',1953),(191,'Gigabox',1953),(408,'Fivespan',1953),(538,'Bubblebox',1953),(645,'Yombu',1953),(756,'Innotype',1953),(763,'Divape',1953),(965,'Gigaclub',1953),(21,'Camido',1954),(59,'Avavee',1954),(96,'Dabvine',1954),(189,'Skipfire',1954),(225,'Zoomlounge',1954),(312,'Viva',1954),(365,'Gigaclub',1954),(895,'Wikido',1954),(214,'Digitube',1955),(339,'Tagopia',1955),(371,'Gigaclub',1955),(629,'Eazzy',1955),(939,'Gigabox',1955),(149,'Avavee',1956),(371,'Eimbee',1956),(685,'Jayo',1956),(829,'Bubblebox',1956),(923,'Jayo',1956),(947,'Oyonder',1956),(24,'Oyonder',1957),(138,'Tagpad',1957),(144,'Gigabox',1957),(238,'Realpoint',1957),(283,'Avavee',1957),(319,'Meezzy',1957),(353,'Thoughtbeat',1957),(391,'Centidel',1957),(502,'Meezzy',1957),(316,'Brainbox',1958),(371,'Digitube',1958),(384,'Tagopia',1958),(406,'Eazzy',1958),(591,'Oyonder',1958),(701,'Jayo',1958),(32,'Brainbox',1959),(159,'Tagpad',1959),(347,'Riffwire',1959),(387,'Kaymbo',1959),(399,'Tagpad',1959),(512,'Wikibox',1959),(615,'Wikibox',1959),(720,'Eimbee',1959),(734,'Gigabox',1959),(920,'Edgetag',1959),(155,'Yombu',1960),(243,'Skimia',1960),(495,'Dabtype',1960),(975,'Eimbee',1960),(69,'Voolia',1961),(106,'Bubbletube',1961),(413,'Divape',1961),(445,'Divape',1961),(764,'Edgetag',1961),(311,'Yombu',1962),(419,'Gigaclub',1962),(445,'Skipfire',1962),(453,'Gigabox',1962),(455,'Realpoint',1962),(767,'Eimbee',1962),(22,'Realpoint',1963),(109,'Tagopia',1963),(304,'LiveZ',1963),(632,'LiveZ',1963),(763,'Tagpad',1963),(850,'Rhycero',1963),(112,'Vitz',1964),(178,'Edgetag',1964),(242,'Eimbee',1964),(334,'Fliptune',1964),(408,'Buzzster',1964),(427,'Camido',1964),(523,'Gigabox',1964),(542,'Fliptune',1964),(543,'Bubblebox',1964),(571,'Dabvine',1964),(582,'LiveZ',1964),(588,'Centidel',1964),(648,'Dablist',1964),(708,'Eazzy',1964),(788,'Jabbersphere',1964),(849,'Dablist',1964),(153,'Centidel',1965),(171,'Oyoba',1965),(203,'Riffwire',1965),(351,'LiveZ',1965),(406,'Wikido',1965),(473,'Fivespan',1965),(604,'Oyoba',1965),(754,'Realpoint',1965),(882,'Dabvine',1965),(374,'Camido',1966),(509,'Kaymbo',1966),(564,'Browsetype',1966),(674,'Fivespan',1966),(693,'Gigabox',1966),(894,'Centidel',1966),(968,'Innotype',1966),(990,'Centidel',1966),(145,'Linklinks',1967),(286,'Oyonder',1967),(742,'Dabvine',1967),(787,'Wikido',1967),(872,'Jetpulse',1967),(908,'Vitz',1967),(934,'Edgetag',1967),(33,'Meezzy',1968),(116,'Realpoint',1968),(342,'Tagpad',1968),(386,'Gigaclub',1968),(584,'Thoughtbeat',1968),(671,'Yombu',1968),(761,'LiveZ',1968),(60,'Voolia',1969),(191,'Viva',1969),(217,'Eazzy',1969),(399,'Dabtype',1969),(450,'Viva',1969),(561,'Viva',1969),(566,'Oyoba',1969),(640,'Fivespan',1969),(708,'Dabvine',1969),(795,'Tagopia',1969),(889,'Dablist',1969),(909,'Kaymbo',1969),(938,'Vitz',1969),(106,'Zoomlounge',1970),(239,'Kaymbo',1970),(327,'Eazzy',1970),(368,'Tagopia',1970),(418,'LiveZ',1970),(584,'Avavee',1970),(734,'Gigaclub',1970),(793,'Gigabox',1970),(898,'Browsetype',1970),(910,'Wikibox',1970),(164,'Innotype',1971),(193,'Skipfire',1971),(195,'Bubbletube',1971),(221,'Meezzy',1971),(259,'Viva',1971),(273,'Wikido',1971),(383,'Quatz',1971),(482,'Centidel',1971),(763,'LiveZ',1971),(873,'Bubblebox',1971),(3,'Bubbletube',1972),(144,'Oyoba',1972),(221,'Oyoba',1972),(235,'Skipfire',1972),(516,'Eimbee',1972),(546,'Zoomlounge',1972),(565,'Jabbersphere',1972),(616,'Linklinks',1972),(678,'Buzzster',1972),(678,'Realpoint',1972),(936,'Wikibox',1972),(225,'LiveZ',1973),(343,'Fivespan',1973),(349,'Riffwire',1973),(511,'Fivespan',1973),(693,'Skimia',1973),(23,'Kaymbo',1974),(132,'Tagopia',1974),(323,'Skipfire',1974),(325,'Skimia',1974),(535,'Bubbletube',1974),(690,'Browsetype',1974),(697,'Oyoba',1974),(945,'Realpoint',1974),(8,'Skipfire',1975),(18,'Jayo',1975),(144,'Jetpulse',1975),(154,'Bubbletube',1975),(258,'Tagopia',1975),(262,'Jetpulse',1975),(443,'Buzzster',1975),(501,'Rhycero',1975),(592,'Browsetype',1975),(737,'Skipfire',1975),(749,'Eimbee',1975),(810,'Gigaclub',1975),(145,'Viva',1976),(250,'LiveZ',1976),(386,'Divape',1976),(556,'Avavee',1976),(707,'Avavee',1976),(811,'Oyonder',1976),(819,'Bubblebox',1976),(923,'Kaymbo',1976),(994,'Rhycero',1976),(98,'Tagpad',1977),(162,'Yombu',1977),(456,'Bubblebox',1977),(486,'Jayo',1977),(510,'Thoughtbeat',1977),(608,'Viva',1977),(957,'Avavee',1977),(45,'Gigabox',1978),(227,'Browsetype',1978),(264,'Jayo',1978),(393,'Kaymbo',1978),(588,'Wikibox',1978),(679,'Buzzster',1978),(743,'Quatz',1978),(66,'Camido',1979),(171,'LiveZ',1979),(311,'LiveZ',1979),(616,'Digitube',1979),(795,'Camido',1979),(837,'Vitz',1979),(167,'Oyonder',1980),(366,'Bubblebox',1980),(651,'Linklinks',1980),(689,'Buzzster',1980),(792,'Oyonder',1980),(833,'Brainbox',1980),(756,'Viva',1981),(907,'Voolia',1981),(5,'LiveZ',1982),(515,'Eimbee',1982),(596,'Gigabox',1982),(643,'Dabvine',1982),(665,'Gigaclub',1982),(792,'Linklinks',1982),(993,'Yombu',1982),(41,'Viva',1983),(283,'Camido',1983),(335,'Zoomlounge',1983),(338,'Edgetag',1983),(374,'Dabtype',1983),(528,'Browsetype',1983),(790,'LiveZ',1983),(838,'Gigabox',1983),(952,'Quatz',1983),(88,'Oyoba',1984),(137,'Dablist',1984),(478,'Meezzy',1984),(570,'Wikibox',1984),(640,'Wikibox',1984),(685,'Avavee',1984),(746,'Vitz',1984),(760,'Voolia',1984),(829,'Avavee',1984),(932,'Vitz',1984),(15,'Meezzy',1985),(388,'LiveZ',1985),(424,'Riffwire',1985),(599,'Fivespan',1985),(607,'Linklinks',1985),(628,'Gigaclub',1985),(842,'Jetpulse',1985),(902,'Rhycero',1985),(990,'Voolia',1985),(169,'Skipfire',1986),(321,'Dabvine',1986),(351,'Skipfire',1986),(365,'Wikibox',1986),(379,'Dabtype',1986),(836,'Avavee',1986),(21,'Yombu',1987),(81,'Fivespan',1987),(321,'Fliptune',1987),(479,'Wikibox',1987),(683,'Dablist',1987),(743,'Kaymbo',1987),(795,'Gigaclub',1987),(924,'Edgetag',1987),(225,'Wikibox',1988),(239,'Rhycero',1988),(404,'Voolia',1988),(803,'Yombu',1988),(817,'Linklinks',1988),(894,'Zoomlounge',1988),(83,'Thoughtbeat',1989),(240,'Viva',1989),(553,'Meezzy',1989),(617,'Realpoint',1989),(839,'Jetpulse',1989),(880,'Camido',1989),(90,'Skimia',1990),(587,'Edgetag',1990),(725,'Gigabox',1990),(68,'Skipfire',1991),(90,'Yombu',1991),(245,'Eimbee',1991),(501,'LiveZ',1991),(774,'Jetpulse',1991),(950,'Buzzster',1991),(219,'Jayo',1992),(664,'Oyoba',1992),(892,'Yombu',1992),(994,'Jayo',1992),(9,'Vitz',1993),(358,'Oyonder',1993),(490,'Centidel',1993),(656,'Riffwire',1993),(839,'Divape',1993),(983,'Centidel',1993),(37,'Eazzy',1994),(229,'Digitube',1994),(271,'Skimia',1994),(364,'Quatz',1994),(405,'Kaymbo',1994),(850,'Brainbox',1994),(941,'Skipfire',1994),(124,'Oyoba',1995),(276,'Vitz',1995),(345,'Realpoint',1995),(383,'Zoomlounge',1995),(769,'Tagopia',1995),(112,'Dabtype',1996),(180,'Dabtype',1996),(233,'Buzzster',1996),(844,'Zoomlounge',1996),(866,'Innotype',1996),(939,'Jayo',1996),(967,'Tagopia',1996),(213,'Skimia',1997),(370,'Meezzy',1997),(387,'Tagopia',1997),(489,'Eimbee',1997),(510,'Dabvine',1997),(554,'Edgetag',1997),(650,'Kaymbo',1997),(756,'Fliptune',1997),(803,'Centidel',1997),(23,'Jetpulse',1998),(446,'Quatz',1998),(666,'Tagpad',1998),(669,'Dablist',1998),(870,'Thoughtbeat',1998),(942,'Eazzy',1998),(980,'Bubbletube',1998),(35,'Avavee',1999),(180,'Brainbox',1999),(187,'Yombu',1999),(213,'Oyonder',1999),(555,'Avavee',1999),(623,'Buzzster',1999),(627,'Browsetype',1999),(907,'Realpoint',1999),(390,'Jayo',2000),(608,'Jetpulse',2000),(956,'Innotype',2000),(958,'Jetpulse',2000),(983,'Jetpulse',2000),(109,'Wikibox',2001),(332,'Gigabox',2001),(588,'Bubbletube',2001),(734,'Rhycero',2001),(876,'Eazzy',2001),(878,'Bubbletube',2001),(59,'Kaymbo',2002),(175,'Fivespan',2002),(262,'Centidel',2002),(264,'Yombu',2002),(312,'Avavee',2002),(407,'Rhycero',2002),(461,'Fivespan',2002),(670,'Dabtype',2002),(677,'Rhycero',2002),(678,'Skipfire',2002),(685,'Tagpad',2002),(776,'Tagopia',2002),(815,'Bubbletube',2002),(828,'Tagpad',2002),(891,'Skimia',2002),(960,'Browsetype',2002),(214,'Tagpad',2003),(246,'Realpoint',2003),(323,'Wikibox',2003),(566,'Yombu',2003),(606,'Vitz',2003),(675,'Yombu',2003),(759,'Skimia',2003),(824,'Dablist',2003),(44,'Wikido',2004),(152,'Vitz',2004),(227,'Oyonder',2004),(477,'Jabbersphere',2004),(764,'Oyonder',2004),(788,'Digitube',2004),(842,'Rhycero',2004),(958,'Edgetag',2004),(42,'Bubbletube',2005),(130,'Riffwire',2005),(210,'Zoomlounge',2005),(231,'Avavee',2005),(266,'Jetpulse',2005),(477,'LiveZ',2005),(76,'Dablist',2006),(139,'Bubbletube',2006),(234,'Fivespan',2006),(575,'LiveZ',2006),(637,'Centidel',2006),(688,'Wikibox',2006),(801,'Jayo',2006),(862,'Thoughtbeat',2006),(943,'Realpoint',2006),(4,'Camido',2007),(171,'Buzzster',2007),(266,'Gigabox',2007),(298,'Browsetype',2007),(324,'Divape',2007),(500,'Dabvine',2007),(758,'Browsetype',2007),(820,'LiveZ',2007),(860,'Oyonder',2007),(953,'Yombu',2007),(67,'Browsetype',2008),(210,'Oyonder',2008),(278,'Dablist',2008),(302,'Eimbee',2008),(409,'Camido',2008),(535,'Divape',2008),(831,'Thoughtbeat',2008),(81,'Quatz',2009),(284,'Tagopia',2009),(414,'Tagpad',2009),(424,'Zoomlounge',2009),(890,'Eimbee',2009),(24,'Tagpad',2010),(28,'Dablist',2010),(104,'Thoughtbeat',2010),(350,'LiveZ',2010),(445,'Centidel',2010),(550,'Kaymbo',2010),(627,'Fivespan',2010),(734,'Oyoba',2010),(846,'Gigabox',2010),(56,'Realpoint',2011),(415,'Realpoint',2011),(456,'Digitube',2011),(516,'Wikibox',2011),(716,'Oyonder',2011),(946,'Wikibox',2011),(993,'Bubbletube',2011),(996,'Bubblebox',2011),(293,'Browsetype',2012),(366,'Avavee',2012),(459,'Camido',2012),(529,'Fliptune',2012),(618,'Realpoint',2012),(647,'Dablist',2012),(725,'Buzzster',2012),(809,'Fliptune',2012),(892,'Dablist',2012),(892,'Oyonder',2012),(918,'Voolia',2012),(306,'Skimia',2013),(335,'Vitz',2013),(493,'Vitz',2013),(545,'Gigabox',2013),(47,'Dabvine',2014),(56,'Edgetag',2014),(65,'Oyonder',2014),(158,'Jabbersphere',2014),(211,'Buzzster',2014),(226,'Gigabox',2014),(243,'Voolia',2014),(271,'Edgetag',2014),(400,'Fliptune',2014),(562,'Dabtype',2014),(599,'Riffwire',2014),(604,'Dablist',2014),(693,'Innotype',2014),(884,'Fliptune',2014),(476,'Avavee',2015),(587,'Riffwire',2015),(672,'Dablist',2015),(932,'Skipfire',2015),(54,'Skimia',2016),(127,'Oyonder',2016),(765,'Thoughtbeat',2016),(779,'Browsetype',2016),(852,'Eazzy',2016),(139,'Bubblebox',2017),(221,'Gigaclub',2017),(426,'Gigabox',2017),(632,'Fivespan',2017),(912,'Camido',2017),(952,'Thoughtbeat',2017),(178,'Divape',2018),(220,'Tagpad',2018),(252,'Voolia',2018),(276,'LiveZ',2018),(416,'Brainbox',2018),(546,'Innotype',2018),(553,'Viva',2018),(698,'Browsetype',2018),(821,'Camido',2018),(999,'Tagpad',2018),(412,'Jetpulse',2019),(435,'Jayo',2019),(499,'LiveZ',2019),(507,'Dabtype',2019),(665,'Avavee',2019),(684,'LiveZ',2019),(838,'Divape',2019),(863,'Camido',2019),(930,'Camido',2019);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-15 23:49:31