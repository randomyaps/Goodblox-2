-- MySQL dump 10.13  Distrib 5.7.43, for Linux (x86_64)
--
-- Host: localhost    Database: goodblox2
-- ------------------------------------------------------
-- Server version	5.7.43-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(1000) NOT NULL DEFAULT '#',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `type` enum('hat','head','face','shirt','pants','tshirt') NOT NULL,
  `fakehead` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `pricebux` bigint(20) NOT NULL DEFAULT '0',
  `pricetix` bigint(20) NOT NULL DEFAULT '0',
  `moderation` enum('pending','declined','accepted') NOT NULL DEFAULT 'pending',
  `creator` int(11) NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'Perfection','The ideal platonic solid. It\'s not for noobs.','head',0,0,5,50,'accepted',1,1722040506,1722040506),(2,'Max Design Pro Shirt','fart','shirt',0,0,0,5,'accepted',2,1722043985,1722043985),(3,'Max Design Pro Pants','fart','pants',0,0,0,5,'accepted',2,1722043998,1722043998),(4,'Red Baseball Cap','This hat isn\'t worn out, it\'s well loved! Colored a bombastic red, with a stylish looking G that leaves no doubt which game you are playing.','hat',0,0,5,50,'accepted',1,1722084685,1722084685),(5,'Check It','I\'m hip. I\'m with it. I\'m a whole new me!','face',0,0,1,10,'accepted',1,1722087309,1722087309),(6,'Max Design Pro Bag','fart','tshirt',0,0,0,5,'accepted',2,1722088057,1722088057),(7,'GoodBlox G','g','tshirt',0,0,0,5,'accepted',2,1722089364,1722089364),(8,'Blockhead','Anyone remember Gumby?','head',1,1,5,50,'accepted',1,1722090714,1722090714),(9,'SpongeBob Bag','','tshirt',0,0,0,5,'accepted',7,1722110515,1722110515),(10,'SpongeBob Shirt for girls','','shirt',0,0,0,5,'accepted',7,1722111231,1722111231),(11,'SpongeBob Pants for girls','','pants',0,0,0,5,'accepted',7,1722111264,1722111264),(12,'Beautiful Hair For Beautiful People','You are all beautiful to me.','hat',0,0,5,50,'accepted',1,1722174638,1722174638),(13,'Clockwork\'s Headphones','Elite vintage headgear from the MADBLOX archives. These are museum-quality replicas of headphones originally made and worn by Clockwork. They are not for noobs...','hat',0,0,5,50,'accepted',1,1722174893,1722174893),(14,'Uh Oh','Perfect for when a meteor is about to hit your house, or it\'s raining acid and you don\'t have an umbrella, or for when you\'re surrounded by flames, or when an army of several thousand armed horsemen is about to crush you, or for when an avalanch of boulders is about to crush you, or for when you\'re facing anything worse than any of those things. Yes, \"Uh Oh\" indeed.','face',0,0,3,30,'accepted',1,1722177045,1722177045),(15,'Blame Nolan','Imported from \"Ego\" on MADBLOX','shirt',0,0,1,5,'accepted',1,1722177399,1722177399),(16,'Minecraft Steve Shirt','Matching pants: https://goodbx.xyz/Item.aspx?ID=17','shirt',0,0,0,15,'accepted',2,1722434076,1722434076),(17,'Minecraft Steve Pants','Matching shirt: https://goodbx.xyz/Item.aspx?ID=16','pants',0,0,0,15,'accepted',2,1722434101,1722434101),(18,'Minecraft Steve Head','','hat',0,0,1,10,'accepted',12,1722441724,1722441724),(19,'Max the Monkey (Max Design Pro)','','hat',0,0,5,50,'accepted',12,1722445494,1722445494),(20,'Sigma Chain','','hat',0,0,5,50,'accepted',12,1722525582,1722525582),(21,'2009 GOODBLOX Visor','','hat',0,0,5,50,'accepted',2,1723054088,1723054088),(22,'2008 GOODBLOX Visor','','hat',0,0,5,50,'accepted',2,1723058393,1723058393),(23,'Kitty Ears','Fart','hat',0,1,0,0,'accepted',2,1723060192,1723060192),(24,':3',':3','face',0,1,0,0,'accepted',1,1723065737,1723065737),(25,'Blings.jpg','','tshirt',0,0,0,0,'accepted',2,1723068663,1723068663),(26,'Asset.png','','tshirt',0,0,0,0,'accepted',2,1723069786,1723069786),(27,'unavail.png','','tshirt',0,0,0,0,'accepted',2,1723122146,1723122146),(28,'unavaildark.png','','tshirt',0,0,0,0,'accepted',2,1723122153,1723122153),(29,'attachment.png','','tshirt',0,0,0,0,'accepted',3,1723123182,1723123182),(30,'3.png','','tshirt',0,0,0,0,'accepted',12,1723123496,1723123496),(31,'Template1.png','','tshirt',0,0,0,0,'accepted',10,1723130653,1723130653),(32,'Untitled.png','','tshirt',0,0,0,0,'accepted',10,1723130737,1723130737),(33,'fastpages-892f9602-fc52-42e6-9e81-2ea8f1477f89.png','','tshirt',0,0,0,0,'accepted',2,1723231466,1723231466),(34,'Template1.png','','shirt',0,0,0,0,'accepted',2,1723393667,1723393667),(35,'image.png','','shirt',0,0,0,0,'accepted',14,1723394100,1723394100),(36,'Template2.png','','pants',0,0,0,0,'accepted',2,1723394192,1723394192),(37,'darkseed.png','','pants',0,0,0,0,'accepted',14,1723394252,1723394252),(38,'2302285.png','','shirt',0,0,0,0,'accepted',9,1723395873,1723395873),(39,'jeans.png','','pants',0,0,0,0,'declined',9,1723396346,1723396346),(40,'Png.png','','pants',0,0,0,0,'declined',11,1723397417,1723397417),(41,'Blue and Black Motorcycle Shirt','','shirt',0,1,0,0,'accepted',1,1723399958,1723399958),(42,'Dark Green Jeans','','pants',0,1,0,0,'accepted',1,1723400105,1723400105),(43,'Pal Hair','Yeah buddy!  Pal hair for the win.','hat',0,1,0,0,'accepted',1,1723400278,1723400278),(44,'Old Roblox Jacket.png','','shirt',0,0,0,0,'declined',10,1723406743,1723406743),(45,'Png.png','','shirt',0,0,0,0,'declined',9,1723407799,1723407799),(46,'Png.png','','pants',0,0,0,0,'declined',9,1723408038,1723408038),(47,'roblox-shirt-9.png','','shirt',0,0,0,0,'accepted',10,1723408408,1723408408),(48,'Man Face','','face',0,1,0,0,'accepted',1,1723463327,1723463327),(49,'Smile','','face',0,1,0,0,'accepted',1,1723463681,1723463681),(50,'2008 Face','So retro','face',0,1,0,0,'accepted',1,1723467007,1723467007),(51,'2009 Virtual Bloxcon Shirt.png','','shirt',0,0,0,0,'accepted',2,1723468113,1723468113),(52,'goodblox_logo.png','','tshirt',0,0,0,0,'accepted',10,1723478524,1723478524),(53,'Test Upload','fartt','hat',0,1,9,6,'declined',2,1723489637,1723489637),(54,'pocket of tix.png','','tshirt',0,0,0,0,'accepted',14,1723564476,1723564476),(55,'image.png','','tshirt',0,0,0,0,'accepted',2,1723653071,1723653071),(56,'goodblox2summerdiscord.png','','tshirt',0,0,0,0,'accepted',2,1723674153,1723674153),(57,'image.png','','shirt',0,0,0,0,'accepted',14,1723719957,1723719957),(58,'Png.png','','shirt',0,0,0,0,'declined',9,1723835697,1723835697),(59,'Png.png','','shirt',0,0,0,0,'declined',9,1723837665,1723837665),(60,'Png.png','','shirt',0,0,0,0,'declined',9,1723837770,1723837770),(61,'Png.png','','pants',0,0,0,0,'declined',9,1723837853,1723837853),(62,'floppa.png','','tshirt',0,0,0,0,'accepted',18,1723914914,1723914914),(63,'bombastic.png','','shirt',0,0,0,0,'accepted',18,1723985513,1723985513),(64,'Template.png','','pants',0,0,0,0,'accepted',18,1723985551,1723985551),(65,'bombasticfixed.png','','shirt',0,0,0,0,'accepted',18,1723988076,1723988076),(66,'pants.png','','pants',0,0,0,0,'accepted',18,1723988733,1723988733),(67,'jacket2.png','','shirt',0,0,0,0,'accepted',18,1724074336,1724074336),(68,'53 sin título_20240812205925.png','','shirt',0,0,0,0,'accepted',17,1724074701,1724074701),(69,'8412.png','','shirt',0,0,0,0,'accepted',18,1724274222,1724274222),(70,'Template1.png','','shirt',0,0,0,0,'accepted',20,1724437049,1724437049),(71,'gbbanner.png','','shirt',0,0,0,0,'declined',2,1724440300,1724440300),(72,'guestest.png','','shirt',0,0,0,0,'accepted',18,1724524690,1724524690),(73,'guestest.png','','shirt',0,0,0,0,'accepted',18,1724524779,1724524779),(74,'FlameJacket.png','','shirt',0,0,0,0,'accepted',11,1724711917,1724711917),(75,'1UP.png','','tshirt',0,0,0,0,'accepted',11,1724719359,1724719359),(76,'8780501878.png','','shirt',0,0,0,0,'accepted',14,1724760425,1724760425),(77,'BlueFlameJacket.png','','shirt',0,0,0,0,'accepted',11,1724806339,1724806339),(78,'Summertime2009RRRHoodie.png','','shirt',0,0,0,0,'accepted',11,1724806352,1724806352),(79,'2006 Logo.png','','tshirt',0,0,0,0,'accepted',11,1724806379,1724806379),(80,'PlaystaionShirt.png','','shirt',0,0,0,0,'accepted',11,1724849770,1724849770),(81,'BattlePantsOfAwesomeness.png','','pants',0,0,0,0,'accepted',11,1724849787,1724849787),(82,'BombasticSuit.png','','shirt',0,0,0,0,'accepted',11,1724849829,1724849829),(83,'PwnageRobes.png','','pants',0,0,0,0,'declined',11,1724849877,1724849877),(84,'3475840.png','','shirt',0,0,0,0,'accepted',22,1724859785,1724859785),(85,'2880123.png','','pants',0,0,0,0,'accepted',22,1724862604,1724862604),(86,'sebiloYellsAtCloud.jpg','','tshirt',0,0,0,0,'accepted',2,1724889222,1724889222),(87,'CatObsessionSeal.png','','shirt',0,0,0,0,'accepted',11,1724889683,1724889683),(88,'CatObsessionSeal.png','','tshirt',0,0,0,0,'accepted',11,1724889704,1724889704),(89,'Wii.png','','shirt',0,0,0,0,'accepted',11,1724889854,1724889854),(90,'BlueStanfordHoodie.png','','shirt',0,0,0,0,'accepted',11,1724977140,1724977140),(91,'1705361745.png','','shirt',0,0,0,0,'accepted',11,1725067077,1725067077),(92,'EpicFaceHoodie.png','','shirt',0,0,0,0,'accepted',11,1725067127,1725067127),(93,'StanfordHoodie.png','','shirt',0,0,0,0,'accepted',11,1725067179,1725067179),(94,'jjj.png','','shirt',0,0,0,0,'accepted',18,1725114835,1725114835);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `global`
--

DROP TABLE IF EXISTS `global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `maintenanceBypassKey` varchar(1000) NOT NULL,
  `antiskid` int(11) NOT NULL DEFAULT '0',
  `registerEnabled` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global`
--

LOCK TABLES `global` WRITE;
/*!40000 ALTER TABLE `global` DISABLE KEYS */;
INSERT INTO `global` VALUES (1,0,'skibidirizzlers',0,1);
/*!40000 ALTER TABLE `global` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ips`
--

DROP TABLE IF EXISTS `ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(1000) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `creator` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keys`
--

--
-- Table structure for table `owneditems`
--

DROP TABLE IF EXISTS `owneditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owneditems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `item` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owneditems`
--

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessKey` varchar(1000) NOT NULL,
  `userId` int(11) NOT NULL,
  `ip` varchar(1000) NOT NULL,
  `userAgent` varchar(1000) NOT NULL,
  `lastonline` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `goodbux` bigint(20) NOT NULL DEFAULT '0',
  `tickets` bigint(20) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `moderator` int(11) NOT NULL DEFAULT '0',
  `catalogcreator` int(11) NOT NULL DEFAULT '0',
  `betatester` int(11) NOT NULL DEFAULT '0',
  `lastonline` int(11) NOT NULL DEFAULT '0',
  `age` enum('under13','13over') NOT NULL DEFAULT '13over',
  `blurb` varchar(1000) NOT NULL,
  `lastrender` int(11) NOT NULL DEFAULT '0',
  `bodyColor-head` varchar(6) NOT NULL DEFAULT 'F5CD2F',
  `bodyColor-rightarm` varchar(6) NOT NULL DEFAULT 'F5CD2F',
  `bodyColor-torso` varchar(6) NOT NULL DEFAULT 'C4281B',
  `bodyColor-leftarm` varchar(6) NOT NULL DEFAULT 'F5CD2F',
  `bodyColor-rightleg` varchar(6) NOT NULL DEFAULT '4B974A',
  `bodyColor-leftleg` varchar(6) NOT NULL DEFAULT '4B974A',
  `poisoned` int(11) NOT NULL DEFAULT '0',
  `ipbanned` int(11) NOT NULL DEFAULT '0',
  `authtoken` varchar(1000) DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `banreason` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `wearing`
--

DROP TABLE IF EXISTS `wearing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wearing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `item` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'goodblox2'
--

--
-- Dumping routines for database 'goodblox2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-08  0:16:46
