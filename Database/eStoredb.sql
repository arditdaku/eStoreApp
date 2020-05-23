CREATE DATABASE  IF NOT EXISTS `eStore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eStore`;
-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: eStore
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Price` double NOT NULL,
  `State` varchar(45) NOT NULL,
  PRIMARY KEY (`OrderID`),
  UNIQUE KEY `OrderID_UNIQUE` (`OrderID`),
  KEY `UserID_idx` (`UserID`),
  KEY `ProductID_idx` (`ProductID`),
  CONSTRAINT `ProductID` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  CONSTRAINT `UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,3,1,'Molla',30,'PAID'),(2,4,2,'1 Kill banane',2.3,'paid'),(3,3,3,'NI PC',3000,'paid'),(4,3,3,'Dell Computer',3000,'PAID'),(5,3,3,'Dell Computer',3000,'PAID'),(6,3,3,'Dell Computer',3000,'PAID'),(7,3,3,'Dell Computer',3000,'PAID'),(8,3,3,'Dell Computer',3000,'PAID');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Description` longtext NOT NULL,
  `Price` double NOT NULL,
  `Stock` int NOT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductID_UNIQUE` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Apple','a fruit',1,399),(2,'Banana','yellow fruit ',2.3,4000),(3,'Dell computer','a dell laoptop',3000,12),(4,'Iphone 12','Apple newest iphone',1200,100),(7,'Gilburt Emmens','cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at',27,7),(8,'Myriam Luno','nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur',42,8),(9,'Camilla Morten','nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur',12,9),(10,'Ivor Attock','nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu',7,10),(11,'Eldin Fontaine','cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna',65,11),(12,'Antoni Brownett','pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse',61,12),(13,'Rriocard Grindrod','donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed',44,13),(14,'Hans Hambric','ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh',24,14),(15,'Briant Frostdyke','orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio',57,15),(16,'Allyn Blagburn','elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at',54,16),(17,'Stanwood Gianelli','vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis',37,17),(18,'Baird Macias','lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc',74,18),(19,'Marchall Tallman','tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis',90,19),(20,'Marrissa Fullilove','rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis',86,20);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'James Bond','james123','james_07@mi6.uk','london mi6 second floor..'),(4,'Donalt Trump','americaisgreat123','king_trump@usa.gov','white house..'),(5,'Vladimir Putin','motherRussia','putin_@russia.gov','Moscov'),(6,'Buce lee','dragonfist123','bruce_dragon@lee.com','chinatown '),(8,'Leora Jiracek','gl64MIFRFmk','ljiracek7@cloudflare.com','95 Sycamore Court'),(9,'Odetta Dmych','mOIHjDP3','odmych8@artisteer.com','6 Menomonie Avenue'),(10,'Bunnie Reggio','l5KTQ58','breggio9@bbc.co.uk','54801 Sunfield Place'),(11,'Lilla Corke','QUN1TqZ','lcorkea@nationalgeographic.com','37835 Nova Terrace'),(12,'Mabelle Burde','lEdKkZnXa3','mburdeb@live.com','88030 Redwing Place'),(13,'Phip Jaggi','3orkxm','pjaggic@ycombinator.com','6 Debra Circle'),(14,'Homerus Eloi','G1eG29pRp','heloid@businesswire.com','0977 Hoard Place'),(15,'Barnett Lowndsborough','ZpDsRPfggpU','blowndsboroughe@flavors.me','1 Warner Court'),(16,'Godard Tuckey','BRzH2c','gtuckeyf@blogtalkradio.com','349 Blue Bill Park Hill'),(17,'Margareta Gamage','A88hyxX','mgamageg@tripod.com','09 Oak Parkway'),(18,'Celinka Pinnigar','NGoxIs','cpinnigarh@netvibes.com','270 Pierstorff Court'),(19,'Rubina Muggeridge','NugBzq','rmuggeridgei@answers.com','245 Bluestem Lane'),(20,'Dolley Rive','EkMbxDZDZg','drivej@hatena.ne.jp','5 Johnson Point'),(21,'Bianka Roft','ndxX4sar','broftk@yahoo.com','89555 Milwaukee Park'),(22,'Thaxter Surphliss','HvKb5Y5IeGi','tsurphlissl@msn.com','5 Anzinger Plaza'),(23,'Hilarius Neggrini','3zNSkXLi','hneggrinim@google.com.br','9679 Little Fleur Street'),(24,'Babbette Witt','m3pDXa','bwittn@japanpost.jp','28 Union Road'),(25,'Bil Scouler','Cb0AVtRiTr','bscoulero@earthlink.net','90959 East Way'),(26,'Durward Jephcote','Vv7Czz','djephcotep@apache.org','943 Kedzie Way'),(27,'Mercy Kemson','hDnzRIv1w','mkemsonq@ucsd.edu','9 Sugar Road'),(28,'Udall Hymans','ofYRU3Nah','uhymansr@gmpg.org','3 Sutherland Place'),(29,'Claudius Fullwood','GKt4KVE4','cfullwoods@naver.com','3 Erie Terrace'),(30,'Latrina Newby','WvUzUgebL1','lnewbyt@princeton.edu','6196 Swallow Drive'),(31,'Jedidiah Emsley','lPOqnR','jemsleyu@wp.com','73714 Sunbrook Lane'),(32,'Sandye Royste','u7VLqMbLs','sroystev@uiuc.edu','2544 Village Point'),(33,'Bernadine Allred','wVLotvO61g1x','ballredw@reuters.com','745 Corscot Crossing'),(34,'Marcelia Filimore','10MasuuzQu94','mfilimorex@xrea.com','68 Kim Center'),(35,'Kendrick Trowbridge','vhfrjwJRIfNt','ktrowbridgey@mlb.com','6831 Utah Lane'),(36,'Ricardo O\'Duane','zbEA4Tvt','roduanez@cargocollective.com','57403 Hazelcrest Drive'),(37,'Eugenio Harniman','NPS87saH','eharniman10@omniture.com','7948 Acker Lane'),(38,'Jeddy Manser','G5dIbpHyi','jmanser11@cnn.com','0634 Maple Wood Crossing'),(39,'Roxine Morgen','8Fu2oRt','rmorgen12@163.com','60810 Truax Parkway'),(40,'Chastity Valler','tbVNOq0ms','cvaller13@hao123.com','73073 Stone Corner Drive'),(41,'Saidee Lissandre','lCyuRBdmai','slissandre14@wsj.com','46847 Dapin Terrace'),(42,'Gino Bielfelt','MTqKM9WQqG','gbielfelt15@wikipedia.org','222 Springview Crossing'),(43,'Carroll Jossel','0ErZ1hWS2O','cjossel16@google.nl','8739 Sunnyside Lane'),(44,'Jere Kretchmer','o620vh','jkretchmer17@surveymonkey.com','2 Bowman Circle'),(45,'Jaynell Inchan','gsLFFx5','jinchan18@moonfruit.com','4550 Clyde Gallagher Drive'),(46,'Marcile Ponte','lSfmiHzAPbQ','mponte19@elpais.com','7 Menomonie Alley'),(47,'Mohandis Bienvenu','KZs6wTAKeJk','mbienvenu1a@cam.ac.uk','64 Stang Street'),(48,'Gwen Shilleto','n8S9uS1LqL','gshilleto1b@google.ru','86 Spenser Pass'),(49,'Breanne Domotor','BmrNe0Gr','bdomotor1c@who.int','2004 Algoma Lane'),(50,'Kristoffer Olanda','Ef4L8f','kolanda1d@arstechnica.com','07 East Court'),(51,'Louisa Cazereau','1grcmuTvMJ','lcazereau1e@amazon.co.uk','36 Katie Point'),(52,'Dianna Curnnokk','Am9Dcb','dcurnnokk1f@nytimes.com','94 Magdeline Center'),(53,'Holly Juggings','ejokiPO','hjuggings1g@ftc.gov','15386 Ridgeway Center'),(54,'Marsha Grass','Crfb1cmvDe','mgrass1h@cisco.com','24 Forest Run Parkway'),(55,'Felecia Verson','PzOdesY','fverson1i@dmoz.org','618 Johnson Parkway'),(56,'Mattie Ecclestone','K9fr21a','mecclestone1j@free.fr','3 Utah Lane'),(57,'Kate Attwill','EpLoKoG8YK','kattwill1k@sina.com.cn','04 Evergreen Crossing'),(58,'Johnnie Matthaus','qs2AQkcFjxH','jmatthaus1l@wordpress.org','5 Harper Terrace'),(59,'Evelyn Westell','e7nSilF2ks','ewestell1m@canalblog.com','54 Hermina Way'),(60,'Minette Stukings','HKtelXgi9M','mstukings1n@aol.com','061 Melvin Plaza'),(61,'Elianora Guilliland','CECuSI06','eguilliland1o@oracle.com','40282 Clarendon Park'),(62,'Birgitta Lehr','brwa1C','blehr1p@sohu.com','0 Lerdahl Court'),(63,'Ellissa Boys','LNGHdaofjncL','eboys1q@marriott.com','27726 Esch Crossing'),(64,'Lefty Droghan','W5AKf1FgUG','ldroghan1r@example.com','60 Kingsford Way'),(65,'Archer Vine','AkEgdkGH','avine1s@diigo.com','325 Esker Pass'),(66,'Gerrie Jessope','NBBso36fy','gjessope1t@cdc.gov','901 Lillian Terrace'),(67,'Austin Stanes','bUKbjXBOgvdR','astanes1u@posterous.com','4315 Stephen Trail'),(68,'Ardelle Stead','WeS9faOoQ','astead1v@jalbum.net','738 Rusk Road'),(69,'Fred Fritter','QTQEa5','ffritter1w@time.com','9964 International Hill'),(70,'Marta Steiner','6Q4wYODn2U','msteiner1x@msu.edu','2 Warner Street'),(71,'Daniela Fidge','1lQO2HdA','dfidge1y@ebay.com','7 Badeau Pass'),(72,'Ruttger Staten','tmlYaRK9I','rstaten1z@bravesites.com','30354 Becker Avenue'),(73,'Neila Olenchenko','MzbPXf8FwntL','nolenchenko20@msu.edu','31561 Continental Way'),(74,'Nedi Somerton','LCXPOyw89b1W','nsomerton21@lycos.com','9 Lakewood Hill'),(75,'Dorine Overthrow','ifuzW6C','doverthrow22@reference.com','3 Bunting Point'),(76,'Zsazsa Inggall','g747t8tytq','zinggall23@g.co','99983 Bunker Hill Avenue'),(77,'Eryn Menloe','bhhGA2SYgv','emenloe24@goo.ne.jp','4228 Warrior Place'),(78,'Fleurette Robion','fm5Vtu','frobion25@wiley.com','266 Anniversary Alley'),(79,'Brittan Coggon','vfMSXLkO','bcoggon26@marketwatch.com','0722 Kedzie Way'),(80,'Garv Rosendale','ZB8oUxVjyj','grosendale27@google.nl','5943 Larry Court'),(81,'Sarina Skoggins','uOu9ZgiZn','sskoggins28@domainmarket.com','0644 7th Parkway'),(82,'Ilse Pierpoint','2f6cyP1','ipierpoint29@tumblr.com','8330 Colorado Drive'),(83,'Jeniece Pople','dRxHTTxlbYuv','jpople2a@blinklist.com','211 Jana Trail'),(84,'Valerie Meads','Pvv4nK','vmeads2b@slideshare.net','04 Buhler Alley'),(85,'Christi Rollings','MXcyUmpv','crollings2c@whitehouse.gov','61234 Almo Circle'),(86,'Conway Iacovone','p9zHrhjtL','ciacovone2d@nps.gov','5 Oakridge Lane'),(87,'Mylo Rudman','einlcFzm3','mrudman2e@nytimes.com','808 Tomscot Circle'),(88,'Malvina Tuddall','tEIh96R8Kq','mtuddall2f@wisc.edu','547 Troy Pass'),(89,'Candra Dusting','LQ03zrI','cdusting2g@comcast.net','383 Orin Circle'),(90,'Deny Dodds','QZ46Hg','ddodds2h@vk.com','396 Reindahl Alley'),(91,'Loella Archanbault','roqVtFWz','larchanbault2i@google.com.hk','1467 Goodland Hill'),(92,'Conchita Yates','qbt6uSWB','cyates2j@so-net.ne.jp','4 Sommers Parkway'),(93,'Josee Warhurst','FcoPfYstO','jwarhurst2k@hostgator.com','308 Chinook Circle'),(94,'Cathrin Peller','E1BdBRp','cpeller2l@sbwire.com','09589 Mendota Circle'),(95,'Wilfred Van Giffen','31l6XFZaNKzj','wvan2m@princeton.edu','21357 Valley Edge Circle'),(96,'Earl Yanez','9DZBNvq','eyanez2n@slashdot.org','624 Killdeer Point'),(97,'Catina Radsdale','l1vt7bUtnYc','cradsdale2o@bloglines.com','5869 Vermont Crossing');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-23  9:58:07
