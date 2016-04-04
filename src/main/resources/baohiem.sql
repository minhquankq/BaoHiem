CREATE DATABASE  IF NOT EXISTS `baohiem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `baohiem`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: baohiem
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `dantoc`
--

DROP TABLE IF EXISTS `dantoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dantoc` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dantoc`
--

LOCK TABLES `dantoc` WRITE;
/*!40000 ALTER TABLE `dantoc` DISABLE KEYS */;
INSERT INTO `dantoc` VALUES (1,'Kinh'),(2,'Tày'),(3,'Thái'),(4,'Hoa'),(5,'Khơ-me'),(6,'Mường'),(7,'Nùng'),(8,'Hmông'),(9,'Dao'),(10,'Gia-rai'),(11,'Ngái'),(12,'Ê-đê'),(13,'Ba-na'),(14,'Xơ-đăng'),(15,'Sán Chay'),(16,'Cơ-ho'),(17,'Chăm'),(18,'Sán Dìu'),(19,'Hrê'),(20,'Mnông'),(21,'Ra-glai'),(22,'Xtiêng'),(23,'Bru-Vân Kiều'),(24,'Thổ'),(25,'Giáy'),(26,'Cơ-tu'),(27,'Gié-Triêng'),(28,'Mạ'),(29,'Khơ-mú'),(30,'Co'),(31,'Ta-ôi'),(32,'Chơ-ro'),(33,'Kháng'),(34,'Xinh-mun'),(35,'Hà Nhì'),(36,'Chu-ru'),(37,'Lào'),(38,'La Chi'),(39,'La Ha'),(40,'Phù Lá'),(41,'La Hủ'),(42,'Lự'),(43,'Lô Lô'),(44,'Chứt'),(45,'Mảng'),(46,'Pà Thẻn'),(47,'Cơ Lao'),(48,'Cống'),(49,'Bố Y'),(50,'Si La'),(51,'Pu Péo'),(52,'Brâu'),(53,'Ơ Đu'),(54,'Rơ-măm');
/*!40000 ALTER TABLE `dantoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donvi`
--

DROP TABLE IF EXISTS `donvi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donvi` (
  `id` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donvi`
--

LOCK TABLES `donvi` WRITE;
/*!40000 ALTER TABLE `donvi` DISABLE KEYS */;
INSERT INTO `donvi` VALUES ('AN','e99a18c428cb38d5f260853678922e03','An Ninh','i1snr8ciqjp9gu5lar9njvql9p');
/*!40000 ALTER TABLE `donvi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocsinh`
--

DROP TABLE IF EXISTS `hocsinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hocsinh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `diachi` varchar(255) NOT NULL,
  `gioitinh` bit(1) NOT NULL,
  `holot` varchar(255) NOT NULL,
  `khaisinhso` int(11) NOT NULL,
  `mapb` varchar(255) NOT NULL,
  `mathe` varchar(255) DEFAULT NULL,
  `ngaysinh` date NOT NULL,
  `sodinhdanh` varchar(255) NOT NULL,
  `sokhaisinh` varchar(255) NOT NULL,
  `sudungden` varchar(255) DEFAULT NULL,
  `sudungtu` varchar(255) DEFAULT NULL,
  `ten` varchar(255) NOT NULL,
  `dan_toc_id` bigint(20) DEFAULT NULL,
  `don_vi_id` varchar(255) DEFAULT NULL,
  `huyen_id` bigint(20) DEFAULT NULL,
  `noikcb_id` bigint(20) DEFAULT NULL,
  `quoc_tich_id` bigint(20) DEFAULT NULL,
  `tinh_id` bigint(20) DEFAULT NULL,
  `tinhkcb_id` bigint(20) DEFAULT NULL,
  `xa_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_muv1vys52whg6uyhufsxjk3bt` (`sodinhdanh`),
  KEY `FK_mwxl17tpx73rw3ly1luvsq6eb` (`dan_toc_id`),
  KEY `FK_jio1unvj0kyro1hossq64ht0f` (`don_vi_id`),
  KEY `FK_tb6ydlktp0q4ttq2e57vjqklt` (`huyen_id`),
  KEY `FK_six5jjgkld8wb1mr57499tky1` (`noikcb_id`),
  KEY `FK_9hnnnljp2jpbquyinnktkcuj2` (`quoc_tich_id`),
  KEY `FK_3qepsc3ikl35umvrxw25oh6ho` (`tinh_id`),
  KEY `FK_ouwd11hdvpncfftch6i577irn` (`tinhkcb_id`),
  KEY `FK_ihr10v185qgeulehs65tcypxa` (`xa_id`),
  CONSTRAINT `FK_ihr10v185qgeulehs65tcypxa` FOREIGN KEY (`xa_id`) REFERENCES `xa` (`id`),
  CONSTRAINT `FK_3qepsc3ikl35umvrxw25oh6ho` FOREIGN KEY (`tinh_id`) REFERENCES `tinh` (`id`),
  CONSTRAINT `FK_9hnnnljp2jpbquyinnktkcuj2` FOREIGN KEY (`quoc_tich_id`) REFERENCES `quoctich` (`id`),
  CONSTRAINT `FK_jio1unvj0kyro1hossq64ht0f` FOREIGN KEY (`don_vi_id`) REFERENCES `donvi` (`id`),
  CONSTRAINT `FK_mwxl17tpx73rw3ly1luvsq6eb` FOREIGN KEY (`dan_toc_id`) REFERENCES `dantoc` (`id`),
  CONSTRAINT `FK_ouwd11hdvpncfftch6i577irn` FOREIGN KEY (`tinhkcb_id`) REFERENCES `tinh` (`id`),
  CONSTRAINT `FK_six5jjgkld8wb1mr57499tky1` FOREIGN KEY (`noikcb_id`) REFERENCES `noikcb` (`id`),
  CONSTRAINT `FK_tb6ydlktp0q4ttq2e57vjqklt` FOREIGN KEY (`huyen_id`) REFERENCES `huyen` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocsinh`
--

LOCK TABLES `hocsinh` WRITE;
/*!40000 ALTER TABLE `hocsinh` DISABLE KEYS */;
INSERT INTO `hocsinh` VALUES (null, '827271011213','asdgasd','','asdf',11,'10A1',NULL,'1970-01-01','213',NULL,NULL,'asdf',1,'AN',81907,223,182,94,NULL,8190709),('827271012213','asdgasd','','asdf',12,'10A1',NULL,'1970-01-01','213',NULL,NULL,'asdf',1,'AN',81907,223,182,94,NULL,8190709),('827271012456','123 adfh asdfyasdf asdf','','adsfsdajfg',12,'12S6',NULL,'1970-01-01','456',NULL,NULL,'lhfkdjgf',1,'AN',81907,231,182,94,NULL,8190709),('8272722213','asdgasd','','tai sao',12,'10A1',NULL,'1970-01-01','213',NULL,NULL,'asdf',1,'AN',81907,223,182,94,NULL,8190709),('8272722456','123 adfh asdfyasdf asdf','','nguoi toi yeu',12,'12S6',NULL,'1970-01-01','456',NULL,NULL,'o dau',1,'AN',81907,231,182,94,NULL,8190709),('827351412135','adskfh adjhf','','akjsdfhd',12,'10A1',NULL,'1970-01-01','135',NULL,NULL,'sjdfhjdfh',1,'AN',81915,227,182,94,NULL,8191505),('82736371233','Hoa Long','','Vo Minh',123,'12A2','','1970-01-01','1233','19/02/2015','19/02/2014','Quan1',1,'AN',81915,225,182,94,NULL,8191505),('abc1234','Hoa Long - An Ninh - Chau thanh - Soc Trag','','Vo Minh',123,'123','','1992-02-19','1233','19/02/2015','19/02/2014','Quan',1,'AN',81915,225,182,94,NULL,8191505),('abc12345','Hoa Long','','Vo Minh',123,'123','','1992-02-19','1233','19/02/2015','19/02/2014','A',1,'AN',81915,225,182,94,NULL,8191505),('abc12346','Hoa Long','','Vo Minh',123,'123','','1992-02-19','1233','19/02/2015','19/02/2014','Quan1',1,'AN',81915,225,182,94,NULL,8191505);
/*!40000 ALTER TABLE `hocsinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huyen`
--

DROP TABLE IF EXISTS `huyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huyen` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `matinh` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4m4qk0h3utkjcm6t1gnopaqjc` (`matinh`),
  CONSTRAINT `FK_4m4qk0h3utkjcm6t1gnopaqjc` FOREIGN KEY (`matinh`) REFERENCES `tinh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huyen`
--

LOCK TABLES `huyen` WRITE;
/*!40000 ALTER TABLE `huyen` DISABLE KEYS */;
INSERT INTO `huyen` VALUES (81901,'Thành phố Sóc Trăng',94),(81903,'Huyện Kế Sách',94),(81905,'Huyện Long Phú',94),(81906,'Huyện Cù Lao Dung',94),(81907,'Huyện Mỹ Tú',94),(81909,'Huyện Mỹ Xuyên',94),(81911,'Huyện Thạnh Trị',94),(81912,'Thị Xã Ngã Năm',94),(81913,'Thị Xã Vĩnh Châu',94),(81915,'Huyện Châu Thành',94),(81917,'Huyện Trần Đề',94);
/*!40000 ALTER TABLE `huyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noikcb`
--

DROP TABLE IF EXISTS `noikcb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noikcb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `tinh_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7t91m6wggdbyq92ljkxoqbdn6` (`tinh_id`),
  CONSTRAINT `FK_7t91m6wggdbyq92ljkxoqbdn6` FOREIGN KEY (`tinh_id`) REFERENCES `tinh` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noikcb`
--

LOCK TABLES `noikcb` WRITE;
/*!40000 ALTER TABLE `noikcb` DISABLE KEYS */;
INSERT INTO `noikcb` VALUES (1,'000','TYT xã Vân Khánh Đông',92),(2,'001','TYT xã Vân Khánh Tây',92),(3,'002','Bệnh viện đa khoa TW Cần Thơ',92),(4,'003','Trung tâm Chẩn đoán y khoa TPCT',92),(5,'004','BV 121',92),(6,'005','BV Nhi đồng',92),(7,'006','BV đa khoa Thành phố Cần Thơ',92),(8,'007','Trung tâm y tế Quận Bình Thủy',92),(9,'008','BV đa khoa Quận Cái Răng',92),(10,'009','Bệnh viện đa khoa Quận Ô Môn',92),(11,'010','BV đa khoa huyện Phong Điền',92),(12,'011','BV đa khoa huyện Thới Lai',92),(13,'012','BV đa khoa  Quận Thốt Nốt',92),(14,'013','BV đa khoa huyện Vĩnh Thạnh',92),(15,'014','TYT NT Sông Hậu',92),(16,'015','BV Y học cổ truyền',92),(17,'016','BV Mắt - Răng Hàm Mặt',92),(18,'017','BV Tai Mũi Họng',92),(19,'018','BV Lao và Bệnh phổi',92),(20,'019','Bệnh viện Da liễu',92),(21,'020','Trạm Y tế Phường Cái Khế',92),(22,'021','Trạm Y tế Phường An Hòa',92),(23,'022','Trạm Y tế Phường Thới Bình',92),(24,'023','Trạm Y tế Phường An Nghiệp',92),(25,'024','Trạm Y tế Phường An Cư',92),(26,'025','Trạm Y tế Phường An Hội',92),(27,'026','Trạm Y tế Phường Tân An',92),(28,'027','Trạm Y tế Phường An Lạc',92),(29,'028','Trạm Y tế Phường An Phú',92),(30,'029','Trạm Y tế Phường Xuân Khánh',92),(31,'030','Trạm Y tế Phường Hưng Lợi',92),(32,'031','Trạm Y tế Phường An Bình',92),(33,'032','Trạm Y tế Phường Châu Văn Liêm',92),(34,'033','Trạm Y tế Phường Thới Long',92),(35,'034','Trạm Y tế Phường Thới An',92),(36,'035','Trạm Y tế Phường Phước Thới',92),(37,'036','Trạm Y tế Phường Trường Lạc',92),(38,'037','Trạm Y tế Phường Bình Thủy',92),(39,'038','Trạm Y tế Phường Trà Nóc',92),(40,'039','Trạm y tế phường Thới An Đông',92),(41,'040','Trạm Y tế Phường An Thới',92),(42,'041','Trạm Y tế Phường Long Hòa',92),(43,'042','Trạm Y tế Phường Long Tuyền',92),(44,'043','Trạm Y tế Phường Lê Bình',92),(45,'044','Trạm Y tế Phường Hưng Phú',92),(46,'045','Trạm Y tế Phường Hưng Thạnh',92),(47,'046','Trạm Y tế Phường Ba Láng',92),(48,'047','Trạm Y tế Phường Thường Thạnh',92),(49,'048','Trạm Y tế Phường Phú Thứ',92),(50,'049','Trạm Y tế Phường Tân Phú',92),(51,'050','Trạm Y tế Phường Thốt Nốt',92),(52,'051','Trạm Y tế Phường Thới Thuận',92),(53,'052','Trạm Y tế Phường Tân Lộc',92),(54,'053','Trạm Y tế Phường Trung Nhất',92),(55,'054','Trạm Y tế Phường Trung Kiên',92),(56,'055','Trạm y tế Xã Trung An',92),(57,'056','Trạm y tế Xã Trung Thạnh',92),(58,'057','Trạm Y tế Phường Thuận Hưng',92),(59,'058','Trạm Y tế Thị trấn Thanh An',92),(60,'059','Trạm y tế xã Thạnh Mỹ',92),(61,'060','Trạm y tế xã Vĩnh Trinh',92),(62,'061','TYT xã Thạnh An',92),(63,'062','Trạm y tế xã Thạnh Thắng',92),(64,'063','Trạm y tế xã Thạnh Qưới',92),(65,'064','Trạm y tế xã Thạnh Phú',92),(66,'065','Trạm y tế xã Thạnh Lộc',92),(67,'066','Trạm y tế Xã Trung Hưng',92),(68,'067','Trạm Y tế Thị trấn Thới Lai',92),(69,'068','TYT thị trấn Cờ Đỏ',92),(70,'069','Trạm y tế xã Thới Hưng',92),(71,'070','Trạm y tế xã Thới Thạnh',92),(72,'071','Trạm y tế xã Xuân Thắng',92),(73,'072','Trạm y tế xã Đông Hiệp',92),(74,'073','Trạm y tế xã Thới Đông',92),(75,'074','Trạm y tế xã Đông Bình',92),(76,'075','Trạm y tế xã Đông Thuận',92),(77,'076','TYT xã Thới Lai',92),(78,'077','Trạm y tế xã Địnhj Môn',92),(79,'078','Trạm y tế xã Trường Thành',92),(80,'079','Trạm y tế xã Trường Xuân',92),(81,'080','Trạm y tế xã Trường Xuân A',92),(82,'081','Trạm y tế xã Nhơn ái',92),(83,'082','Trạm y tế xã Giai Xuân',92),(84,'083','Trạm y tế xã Tân Thới',92),(85,'084','Trạm y tế xã Trường Long',92),(86,'085','Trạm y tế xã Mỹ Khánh',92),(87,'086','Trạm y tế xã Nhơn Nghĩa',92),(88,'087','Bệnh viện Tâm thần Cần Thơ',92),(89,'088','Bệnh viện Ung bướu Cần Thơ',92),(90,'089','Bệnh viện đa khoa Tây Đô',92),(91,'090','Bệnh viện đa khoa Hoàn Mỹ Cửu Long',92),(92,'091','TYT xã Trung Thạnh',92),(93,'092','Phòng khám ĐKKV Kinh B',92),(94,'093','Trạm y tế xã Vĩnh Thạnh',92),(95,'094','Trung tâm y tế huyện Cờ Đỏ',92),(96,'095','Trạm y tế Phường An Khánh',92),(97,'096','TYT phường Bùi Hữu Nghĩa',92),(98,'097','TYT phường Trà An',92),(99,'098','Trạm y tế Phường Long Hưng',92),(100,'099','Trạm y tế Phường Thới Hoà',92),(101,'100','Trạn Y tế xã thị trấn Phong Điền',92),(102,'101','Trạm y tế xã Thới Tân',92),(103,'102','Trạm y tế xã Trường Xuân B',92),(104,'103','Trạm y tế xã Trường Thắng',92),(105,'104','Trạm y tế xã Tân thạnh',92),(106,'105','Trạm y tế xã Thới Xuân',92),(107,'106','TYT xã Đông Thắng',92),(108,'107','Trạm y tế Phường Tân Hưng',92),(109,'108','Trạm y tế Phường Thạnh Hoà',92),(110,'109','Trạm y tế Phường Thuận An',92),(111,'110','Trạm y tế xã Thạnh Tiến',92),(112,'111','TYT xã Thị trấn Vĩnh Thạnh',92),(113,'112','Trạm y tế xã Vĩnh Bình',92),(114,'113','Trạm y tế xã Thạnh Lợi',92),(115,'114','Ban Bảo vệ sức khoẻ Thành uỷ',92),(116,'115','Bệnh viện đa khoa Thanh Quang',92),(117,'116','BV Quốc tế Phương Châu',92),(118,'117','Bệnh viện Trường ĐH Y Dược Cần Thơ',92),(119,'118','Phòng khám đa khoa Mêkong Cần Thơ',92),(120,'119','BV Huyết học - Truyền máu TPCT',92),(121,'001','Bệnh viện Phụ sản thành phố Cần Thơ',93),(122,'002','Phòng khám đa khoa Hoàn Hảo',93),(123,'003','Bệnh viện đa khoa tỉnh Hậu Giang',93),(124,'004','Bệnh viện đa khoa huyện Vị Thủy',93),(125,'005','Bệnh viện đa khoa huyện Long Mỹ',93),(126,'006','Bệnh viện đa khoa huyện Phụng Hiệp',93),(127,'007','Bệnh viện đa khoa huyện Châu Thành',93),(128,'008','Trung tâm y tế huyện Châu Thành  A',93),(129,'009','Bệnh viện đa khoa Thành phố Vị Thanh',93),(130,'010','Trung tâm Phòng chống bệnh xã hội',93),(131,'011','TYT phường I',93),(132,'012','TYT phường III',93),(133,'013','TYT phường IV',93),(134,'014','TYT phường V',93),(135,'015','TYT phường VII',93),(136,'016','TYT xã Vị Tân',93),(137,'017','TYT xã Hoả Lựu',93),(138,'018','Trung tâm y tế thị xã Ngã Bảy',93),(139,'019','TYT xã Hoả Tiến',93),(140,'020','TYT Thị trấn Một Ngàn',93),(141,'021','PKKV thành phố Vị Thanh',93),(142,'022','TYT xã Trường Long Tây',93),(143,'023','TYT xã Trường Long A',93),(144,'024','TYT xã Tân Hòa',93),(145,'025','TYT xã Nhơn Nghĩa A',93),(146,'026','TYT xã Thạnh Xuân',93),(147,'027','TYT xã Tân Phú Thạnh',93),(148,'028','TYT Thị trấn Ngã sáu',93),(149,'029','TYT xã Đông Thạnh',93),(150,'030','TYT xã Phú An',93),(151,'031','TYT xã Đông Phú',93),(152,'032','TYT xã Phú Hữu',93),(153,'033','TYT thị trấn Mái Dầm',93),(154,'034','TYT xã Đông Phước',93),(155,'035','TYT xã Đông Phước A',93),(156,'036','TYT Thị trấn Kinh Cùng',93),(157,'037','TYT Thị trấn Cây Dương',93),(158,'038','TYT xã Tân Bình',93),(159,'039','TYT xã Bình Thành',93),(160,'040','TYT xã Thạnh Hòa',93),(161,'041','TYT xã Long Thạnh',93),(162,'042','TYT xã Phụng Hiệp',93),(163,'043','TYT xã Hòa Mỹ',93),(164,'044','TYT xã Hòa An',93),(165,'045','TYT xã Phương Bình',93),(166,'046','TYT xã Hiệp Hưng',93),(167,'047','TYT xã Tân Phước Hưng',93),(168,'048','TYT xã Phương Phú',93),(169,'049','TYT xã Tân Long',93),(170,'050','TYT Thị trấn Nàng Mau',93),(171,'051','TYT xã Vị Trung',93),(172,'052','TYT xã Vị Thủy',93),(173,'053','TYT xã Vị Thắng',93),(174,'054','TYT xã Vĩnh Thuận Tây',93),(175,'055','TYT xã Vĩnh Trung',93),(176,'056','TYT xã Vĩnh Tường',93),(177,'057','TYT xã Vị Đông',93),(178,'058','TYT xã Vị Thanh',93),(179,'059','TYT xã Vị Bình',93),(180,'060','TYT Thị trấn Long Mỹ',93),(181,'061','TYT xã Long Bình',93),(182,'062','TYT xã Long Trị',93),(183,'063','TYT xã Long Phú',93),(184,'064','TYT xã Thuận Hưng',93),(185,'065','TYT xã Vĩnh Thuận Đông',93),(186,'066','TYT xã Vĩnh Viễn',93),(187,'067','TYT xã Lương Tâm',93),(188,'068','TYT xã Xà Phiên',93),(189,'069','TYT phường Ngã Bảy',93),(190,'070','TYT phường Lái Hiếu',93),(191,'071','TYT phường Hiệp Thành',93),(192,'072','TYT xã Hiệp Lợi',93),(193,'073','TYT xã Đại Thành',93),(194,'074','TYT xã Tân Thành',93),(195,'075','PKĐK KV Bảy Ngàn',93),(196,'076','PKĐK KV Thị trấn Ngã Sáu',93),(197,'077','PKĐK KV xã Tân Hoà',93),(198,'078','Phòng khám đa khoa KV Thị trấn Kinh Cùng',93),(199,'079','Phòng khám đa khoa KV xã Tân Phước Hưng',93),(200,'080','PKĐK KV Vĩnh Viễn',93),(201,'081','PKĐK KV xã Vĩnh Tường',93),(202,'082','PKĐK KV Vị Thanh',93),(203,'083','TYT Thị trấn Bảy Ngàn',93),(204,'084','TYT Tân Tiến',93),(205,'085','TYT Thị trấn Rạch Gòi',93),(206,'086','TYT Thị trấn Cái Tắc',93),(207,'087','Trạm y tế xã Tân Phú Thạnh',93),(208,'088','PKĐK KV Trường Long A',93),(209,'089','PKĐK KV Phú Tân',93),(210,'090','TYT xã Phú Tân',93),(211,'091','PKĐK KV Kinh Cùng',93),(212,'092','PKĐK KV Búng Tàu',93),(213,'093','TYT thị trấn Bún Tàu',93),(214,'094','PKĐK KV Trà Lồng',93),(215,'095','TYT thị trấn Trà Lồng',93),(216,'096','TYT xã Tân Phú',93),(217,'097','TYT xã Thuận Hoà',93),(218,'098','TYT xã Vĩnh Viễn A',93),(219,'099','TYT xã Long Trị A',93),(220,'100','TYT xã Lương Nghĩa',93),(221,'101','PKKV xã Vĩnh Viễn',93),(222,'102','Bệnh viện Lao và bệnh Phổi Hậu Giang',93),(223,'001','YTCQ Công ty TNHH Lạc Tỷ II',94),(224,'002','Bệnh viện đa Khoa số 10',94),(225,'003','Bệnh viện đa khoa tỉnh Sóc Trăng',94),(226,'004','Bệnh viện đa khoa huyện Mỹ Xuyên',94),(227,'005','Bệnh viện đa khoa huyện Mỹ Tú',94),(228,'006','Bệnh viện đa khoa huyện Long Phú',94),(229,'007','Bệnh viện đa khoa huyện Kế Sách',94),(230,'008','Bệnh viện đa khoa huyện Thạnh Trị',94),(231,'009','Bệnh viện đa khoa thị xã Vĩnh Châu',94),(232,'010','Bệnh viện đa khoa huyện Cù Lao Dung',94),(233,'011','Bệnh viện Quân dân y tỉnh Sóc Trăng',94),(234,'012','Bệnh viện đa khoa thị xã Ngã Năm',94),(235,'013','TYT Quân Dân y kết Hợp xã Lai Hòa',94),(236,'014','TYT xã Trinh Phú',94),(237,'015','Trung tâm Lao và bệnh phổi',94),(238,'016','TYT Khu tái định cư Hải Ngư',94),(239,'017','TYT QD Y kết Hợp xã Vĩnh Hải',94),(240,'018','TYT thị trấn Châu Thành',94),(241,'019','Ban Bảo vệ CSSK cán bộ tỉnh ủy Sóc Trăng',94),(242,'020','Trung tâm y tế huyện Châu Thành',94),(243,'021','Bệnh viện Đa khoa Hoàng Tuấn',94),(244,'022','Trung tâm y tế huyện Trần Đề',94),(245,'023','TYT thị trấn Trần Đề',94),(246,'024','TYT thị trấn Lịch Hội Thượng',94),(247,'025','TYT thị trấn Hưng Lợi',94),(248,'026','TYT xã Lịch Hội Thượng',94),(249,'057','Trung tâm y tế thị xã Vĩnh Châu',94),(250,'058','Phòng khám đa khoa khu vực xã Mỹ Phước',94),(251,'059','Trung tâm phòng chống bệnh xã hội',94),(252,'060','Bệnh viện 30 tháng 4',94),(253,'061','Phòng khám đa khoa Bác sĩ Hên',94),(254,'062','TYT phường 9',94),(255,'063','TYT phường 1',94),(256,'064','TYT phường 2',94),(257,'065','TYT phường 3',94),(258,'066','TYT phường 4',94),(259,'067','TYT phường 5',94),(260,'068','TYT phường 6',94),(261,'069','TYT phường 7',94),(262,'070','TYT phường 8',94),(263,'072','TYT phường 10',94),(264,'073','TYT thị trấn An Lạc Thôn',94),(265,'074','TYT xã Trinh Phú',94),(266,'075','TYT Thị trấn Kế Sách',94),(267,'076','TYT xã Kế Thành',94),(268,'077','TYT xã Kế An',94),(269,'078','TYT xã An Mỹ',94),(270,'079','TYT xã Ba Trinh',94),(271,'080','TYT xã Xuân Hòa',94),(272,'081','TYT xã An Lạc Tây',94),(273,'083','TYT xã Thới An Hội',94),(274,'084','TYT xã Đại Hải',94),(275,'085','TYT xã Phong Nẫm',94),(276,'086','TYT xã Nhơn Mỹ',94),(277,'087','TYT xã An Hiệp',94),(278,'088','TYT xã An Ninh',94),(279,'089','TYT xã Hưng Phú',94),(280,'090','TYT thị trấn Huỳnh Hữu Nghĩa',94),(281,'091','TYT xã Phú Tân',94),(282,'092','TYT xã Phú Tâm',94),(283,'093','TYT xã Thuận Hòa',94),(284,'094','TYT xã Phú Mỹ',94),(285,'095','TYT xã Thiện Mỹ',94),(286,'096','TYT xã Mỹ Hương',94),(287,'097','TYT xã Hồ Đắc Kiện',94),(288,'098','TYT xã Thuận Hưng',94),(289,'099','TYT xã Mỹ Thuận',94),(290,'100','TYT xã Mỹ Phước',94),(291,'101','TYT xã Mỹ Tú',94),(292,'102','TYT xã Long Hưng',94),(293,'103','TYT xã Thạnh Phú',94),(294,'104','TYT xã Ngọc Tố',94),(295,'105','TYT thị trấn Mỹ Xuyên',94),(296,'106','TYT xã Gia Hòa 1',94),(297,'107','TYT xã Gia Hòa 2',94),(298,'108','TYT xã Hòa Tú 1',94),(299,'109','TYT xã Hòa Tú II',94),(300,'110','TYT xã Tham Đôn',94),(301,'111','TYT xã Tài Văn',94),(302,'112','TYT xã Ngọc Đông',94),(303,'113','TYT xã Viên An',94),(304,'114','TYT xã Viên Bình',94),(305,'115','TYT xã Đại Tâm',94),(306,'116','TYT xã Thạnh Thới Thuận',94),(307,'117','TYT xã Thạnh Thới An',94),(308,'118','TYT xã Thạnh Quới',94),(309,'119','TYT Thị trấn Phú Lộc',94),(310,'120','TYT xã Lâm Kiết',94),(311,'121','TYT xã Vĩnh Thành',94),(312,'122','TYT xã Thạnh Trị',94),(313,'123','TYT xã Tuân Tức',94),(314,'124','TYT xã Thạnh Tân',94),(315,'125','TYT xã Vĩnh Lợi',94),(316,'126','TYT xã Châu Hưng',94),(317,'127','TYT xã Lâm Tân',94),(318,'128','Phòng khám đa khoa khu vực thị trấn Đại Ngãi',94),(319,'129','Phòng khám khu vực Lịch Hội Thượng',94),(320,'130','TYT thị trấn Long Phú',94),(321,'131','TYT xã Long Phú',94),(322,'132','TYT xã Đại Ân 2',94),(323,'133','TYT xã Tân Thạnh',94),(324,'134','TYT xã Trường Khánh',94),(325,'135','TYT xã Châu Khánh',94),(326,'136','TYT xã Tân Hưng',94),(327,'137','TYT xã Phú Hữu',94),(328,'138','TYT xã Song Phụng',94),(329,'139','TYT Xã Trung Bình',94),(330,'140','TYT xã Long Đức',94),(331,'141','TYT xã Hậu Thạnh',94),(332,'142','TYT xã Liêu Tú',94),(333,'143','TYT phường Vĩnh Phước',94),(334,'144','TYT phường 1 - TX Vĩnh Châu',94),(335,'145','TYT phường 2 - TX Vĩnh Châu',94),(336,'146','TYT xã Lạc Hòa',94),(337,'147','TYT xã Vĩnh Hiệp',94),(338,'148','TYT xã Vĩnh Tân',94),(339,'149','TYT xã Vĩnh Hải',94),(340,'150','TYT xã Lai Hòa',94),(341,'152','TYT phường Khánh Hòa',94),(342,'153','TYT xã Hòa Đông',94),(343,'154','TYT thị trấn Cù Lao Dung',94),(344,'155','TYT Quân - Dân y xã An Thạnh 1',94),(345,'156','TYT xã An Thạnh 2',94),(346,'157','TYT xã An Thạnh 3',94),(347,'158','TYT xã Đại Ân 1',94),(348,'159','TYT xã An Thạnh Đông',94),(349,'160','TYT xã An Thạnh Nam',94),(350,'161','TYT xã An Thạnh Tây',94),(351,'162','TYT xã Tân Long',94),(352,'163','TYT Phường 1 - thị xã Ngã Năm',94),(353,'164','TYT xã Mỹ Quới',94),(354,'165','TYT xã Mỹ Bình',94),(355,'166','TYT xã Long Bình',94),(356,'167','TYT Phường 2 - thị xã Ngã Năm',94),(357,'169','TYT xã Vĩnh Quới',94),(358,'001','TYT Phường 3 - thị xã Ngã Năm',95),(359,'002','Trung tâm Chăm sóc sức khỏe sinh sản',95),(360,'003','TYT phường 2',95),(361,'004','Bệnh viện đa khoa tỉnh Bạc Liêu',95),(362,'005','Bệnh viện đa khoa huyện Hòa Bình',95),(363,'006','Bệnh viện đa khoa huyện Giá Rai',95),(364,'007','Bệnh viện đa khoa huyện Hồng Dân',95),(365,'008','Bệnh viện đa khoa huyện Phước Long',95),(366,'009','Bệnh viện đa khoa huyện Đông Hải',95),(367,'010','TYT xã Vĩnh Hưng',95),(368,'011','TYT xã Phong Thạnh Tây',95),(369,'012','TYT xã Định Thành',95),(370,'013','TYT xã Long Điền Tây',95),(371,'014','TYT xã Vĩnh Bình',95),(372,'015','TYT xã Vĩnh Mỹ A',95),(373,'016','TYT xã Vĩnh Hậu',95),(374,'017','TYT xã An Phúc',95),(375,'018','TYT xã Phước Long',95),(376,'019','TYT xã Vĩnh Thanh',95),(377,'020','TYT xã Vĩnh Phú Tây',95),(378,'021','TYT xã Ninh Thạnh Lợi',95),(379,'022','TYT xã Ninh Quới',95),(380,'023','TYT xã Ninh Quới A',95),(381,'024','TYT xã Tân Thạnh',95),(382,'025','TYT xã Phong Tân',95),(383,'026','TYT xã Phong Thạnh',95),(384,'027','TYT xã Tân Phong',95),(385,'028','TYT xã Phong Thạnh Đông',95),(386,'029','TYT xã Phong Thạnh Đông A',95),(387,'030','TYT xã Vĩnh Thịnh',95),(388,'031','TYT xã Long Điền Đông',95),(389,'032','TYT xã Long Điền Đông A',95),(390,'033','TYT xã An Trạch',95),(391,'034','TYT xã Vĩnh Lộc',95),(392,'035','Phòng khám đa khoa Thành Phố Bạc Liêu',95),(393,'036','TYT xã Minh Diệu',95),(394,'037','Bệnh viện đa khoa huyện Vĩnh Lợi',95),(395,'038','TYT xã Hưng Thành',95),(396,'039','TYT xã Hưng Phú',95),(397,'040','TYT xã Hưng Hội',95),(398,'041','TYT xã Vĩnh Mỹ B',95),(399,'042','Trạm Y tế Xã Châu Hưng',95),(400,'043','TYT xã Châu Hưng A',95),(401,'044','TYT xã Châu Thới',95),(402,'045','TYT xã Long Thạnh',95),(403,'046','TYT xã Vĩnh Hưng A',95),(404,'047','TYT phường 3',95),(405,'048','TYT phường 5',95),(406,'049','TYT phường 7',95),(407,'050','TYT phường 1',95),(408,'051','TYT phường 8',95),(409,'052','TYT phường Nhà Mát',95),(410,'053','TYT xã Vĩnh Trạch',95),(411,'054','TYT xã Vĩnh Trạch Đông',95),(412,'055','TYT xã Hiệp Thành',95),(413,'056','TYT thị trấn Ngan Dừa',95),(414,'057','TYT xã Ninh Hòa',95),(415,'058','TYT xã Lộc Ninh',95),(416,'059','TYT xã Vĩnh Lộc A',95),(417,'060','TYT thị trấn Phước Long',95),(418,'061','TYT xã Vĩnh Phú Đông',95),(419,'062','TYT xã Phong Thạnh Tây A',95),(420,'063','TYT xã Phong Thạnh Tây B',95),(421,'064','TYT thị trấn Châu Hưng',95),(422,'065','TYT xã Vĩnh Hậu A',95),(423,'066','TYT thị trấn Giá Rai',95),(424,'067','TYT thị trấn Hộ Phòng',95),(425,'068','TYT xã Phong Thạnh A',95),(426,'069','TYT Thị trấn Gành Hào',95),(427,'070','TYT xã Định Thành A',95),(428,'071','TYT thị trấn Hoà Bình',95),(429,'072','Trạm Y tế Xã Vĩnh Hậu A',95),(430,'073','Ban Bảo vệ chăm sóc sức khỏe cán bộ Tỉnh ủy',95),(431,'074','TYT Phường 2',95),(432,'075','TYT xã An Trạch A',95),(433,'076','TYT Xã Điền Hải',95),(434,'077','TYT xã Ninh Thạnh Lợi A',95),(435,'111','Bệnh viện đa khoa Thanh vũ MEDIC',95);
/*!40000 ALTER TABLE `noikcb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quoctich`
--

DROP TABLE IF EXISTS `quoctich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quoctich` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoctich`
--

LOCK TABLES `quoctich` WRITE;
/*!40000 ALTER TABLE `quoctich` DISABLE KEYS */;
INSERT INTO `quoctich` VALUES (1,'Achentina'),(2,'Acmênia'),(3,'Adecbaigian'),(4,'Ai Cập'),(5,'Ailen'),(6,'Aixơlen'),(7,'Ấn Độ'),(8,'Anbania'),(9,'Anđôra'),(10,'Angiêri'),(11,'Angôla'),(12,'Ăngtigoa và Babuđa'),(13,'Ăngtin thuộc Hà Lan'),(14,'Áo'),(15,'Apganixtan'),(16,'Arập Xêút'),(17,'Ba Lan'),(18,'Bacbađôt'),(19,'Bahama'),(20,'Bănglađet'),(21,'Baranh'),(22,'Bêlarut'),(23,'Bêlixê'),(24,'Bênanh'),(25,'Bỉ'),(26,'Bồ Đào Nha'),(27,'Bôlivia'),(28,'Bôtxoana'),(29,'Bôxnia và Hecxêgôvina'),(30,'Braxin'),(31,'Brunây'),(32,'Bungari'),(33,'Buôckina Phaxô'),(34,'Burunđi'),(35,'Butan'),(36,'Cadăcxtan'),(37,'Camơrun'),(38,'Campuchia'),(39,'Canađa'),(40,'Cap Ve'),(41,'Cata'),(42,'Chilê'),(43,'Côlômbia'),(44,'Cômorô'),(45,'Côngô, CH'),(46,'Côngô, CHDC'),(47,'Côoet'),(48,'Côt Đivoa'),(49,'Côxta Rica'),(50,'Crôaxia'),(51,'CTVQ Arập TN'),(52,'Cuba'),(53,'Cưrơgưxtan'),(54,'Đài Loan'),(55,'Damaica'),(56,'Dămbia'),(57,'Đan Mạch'),(58,'Dimbabuê'),(59,'Đôminica'),(60,'Đominicana'),(61,'Đông Timo'),(62,'Đức'),(63,'Êcuađo'),(64,'En Xanvađo'),(65,'Êritơria'),(66,'Êtiopi'),(67,'Extônia'),(68,'Gabông'),(69,'Gămbia'),(70,'Gana'),(71,'Ghibranta'),(72,'Ghinê'),(73,'Ghinê xích đạo'),(74,'Ghinê-Bitxao'),(75,'Gibuti'),(76,'Gioocđani'),(77,'Goatêmala'),(78,'Grênađa'),(79,'Grơnlen'),(80,'Grudia'),(81,'Guyana'),(82,'Hà Lan'),(83,'Haiti'),(84,'Hàn Quốc'),(85,'Hi Lạp'),(86,'Hoa Kì'),(87,'Hônđurat'),(88,'Hungari'),(89,'Inđônêxia'),(90,'Irắc'),(91,'Iran'),(92,'Italia'),(93,'Ixraen'),(94,'Kênia'),(95,'Kiribati'),(96,'Lào'),(97,'Latvia'),(98,'Lêxôthô'),(99,'LH Anh và Bắc Ailen'),(100,'Libăng'),(101,'Libêria'),(102,'Libi'),(103,'Litva'),(104,'Lixtenxtai'),(105,'Lucxembua'),(106,'Macsan'),(107,'Mađagaxca'),(108,'Malaixia'),(109,'Malauy'),(110,'Mali'),(111,'Manđivơ'),(112,'Manta'),(113,'Marốc'),(114,'Maxêđônia'),(115,'Mayôt'),(116,'Mêhicô'),(117,'Mianma'),(118,'Micrônêdi'),(119,'Môdămbich'),(120,'Mônacô'),(121,'Mônđôva'),(122,'Mông Cổ'),(123,'Môntênêgrô'),(124,'Môritani'),(125,'Môrixơ'),(126,'Na Uy'),(127,'Nam Phi'),(128,'Namibia '),(129,'Nauru'),(130,'Nêpan'),(131,'Nga'),(132,'Nhật Bản'),(133,'Nicaragoa'),(134,'Nigiê'),(135,'Nigiêria'),(136,'Niu Calêđônia'),(137,'Niu Dilen'),(138,'Ôman'),(139,'Pakixtan'),(140,'Palau'),(141,'Palextine'),(142,'Panama'),(143,'Papua Niu Ghinê'),(144,'Paragoay'),(145,'Pêru'),(146,'Phần Lan'),(147,'Pháp'),(148,'Philippin'),(149,'Phitgi'),(150,'Pôlinêxia thuộc Pháp'),(151,'Puectô Ricô'),(152,'Romani'),(153,'Ruanđa'),(154,'Sat'),(155,'Séc'),(156,'Síp'),(157,'Tandania'),(158,'Tatgikixtan'),(159,'Tây Ban Nha'),(160,'Tây Sahara'),(161,'Thái Lan'),(162,'Thổ Nhĩ Kì'),(163,'Thụy Điển'),(164,'Thụy Sĩ'),(165,'Tôgô'),(166,'Tônga'),(167,'Triều Tiên'),(168,'Triniđat và Tôbagô'),(169,'Trung Phi'),(170,'Trung Quốc'),(171,'Tuốcmênixtan'),(172,'Tuvalu'),(173,'Tuynidi'),(174,'Úc'),(175,'Ucraina'),(176,'Udơbêkixtan'),(177,'Uganđa'),(178,'Urugoay'),(179,'Vanuatu'),(180,'Vatican'),(181,'Vênêxuêla'),(182,'Việt Nam'),(183,'Xamoa'),(184,'Xan Marinô'),(185,'Xanta Luxia'),(186,'Xao Tômê và Prinxipê'),(187,'Xâysen'),(188,'Xecbi'),(189,'Xen Vinxen và Grênađin'),(190,'Xênêgan'),(191,'Xenkit và Nêvit'),(192,'Xiêra Lêôn'),(193,'Xingapo'),(194,'Xiri'),(195,'Xlôvakia'),(196,'Xlôvênia'),(197,'Xoa Dilen'),(198,'Xôlômôn'),(199,'Xômalia'),(200,'Xri Lanca'),(201,'Xuđăng'),(202,'Xurinam'),(203,'Yêmen');
/*!40000 ALTER TABLE `quoctich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tinh`
--

DROP TABLE IF EXISTS `tinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tinh` (
  `id` bigint(20) NOT NULL,
  `matinh` bigint(20) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_p5jatl0t5f382pnppx6vyuc65` (`matinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tinh`
--

LOCK TABLES `tinh` WRITE;
/*!40000 ALTER TABLE `tinh` DISABLE KEYS */;
INSERT INTO `tinh` VALUES (1,NULL,'TP. Hà Nội'),(2,NULL,'Hà Giang'),(4,NULL,'Cao Bằng'),(6,NULL,'Bắc Kạn'),(8,NULL,'Tuyên Quang'),(10,NULL,'Lào Cai'),(11,NULL,'Điện Biên'),(12,NULL,'Lai Châu'),(14,NULL,'Sơn La'),(15,NULL,'Yên Bái'),(17,NULL,'Hòa Bình'),(19,NULL,'Thái Nguyên'),(20,NULL,'Lạng Sơn'),(22,NULL,'Quảng Ninh'),(24,NULL,'Bắc Giang'),(25,NULL,'Phú Thọ'),(26,NULL,'Vĩnh Phúc'),(27,NULL,'Bắc Ninh'),(30,NULL,'Hải Dương'),(31,NULL,'TP. Hải Phòng'),(33,NULL,'Hưng Yên'),(34,NULL,'Thái Bình'),(35,NULL,'Hà Nam'),(36,NULL,'Nam Định'),(37,NULL,'Ninh Bình'),(38,NULL,'Thanh Hoá'),(40,NULL,'Nghệ An'),(42,NULL,'Hà Tĩnh'),(44,NULL,'Quảng Bình'),(45,NULL,'Quảng Trị'),(46,NULL,'Thừa Thiên Huế'),(48,NULL,'TP. Đà Nẵng'),(49,NULL,'Quảng Nam'),(51,NULL,'Quảng Ngãi'),(52,NULL,'Bình Định'),(54,NULL,'Phú Yên'),(56,NULL,'Khánh Hòa'),(58,NULL,'Ninh Thuận'),(60,NULL,'Bình Thuận'),(62,NULL,'Kon Tum'),(64,NULL,'Gia Lai'),(66,NULL,'Đăk Lăk'),(67,NULL,'Đăk Nông'),(68,NULL,'Lâm Đồng'),(70,NULL,'Bình Phước'),(72,NULL,'Tây Ninh'),(74,NULL,'Bình Dương'),(75,NULL,'Đồng Nai'),(77,NULL,'Bà Rịa - Vũng Tàu'),(79,NULL,'TP. Hồ Chí Minh'),(80,NULL,'Long An'),(82,NULL,'Tiền Giang'),(83,NULL,'Bến Tre'),(84,NULL,'Trà Vinh'),(86,NULL,'Vĩnh Long'),(87,NULL,'Đồng Tháp'),(89,NULL,'An Giang'),(91,NULL,'Kiên Giang'),(92,815,'TP.Cần Thơ'),(93,816,'Hậu Giang              '),(94,819,'Sóc Trăng'),(95,821,'Bạc Liêu'),(96,NULL,'Cà Mau');
/*!40000 ALTER TABLE `tinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xa`
--

DROP TABLE IF EXISTS `xa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xa` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `huyen_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cbfkq44brk1s5i985tf4we6gu` (`huyen_id`),
  CONSTRAINT `FK_cbfkq44brk1s5i985tf4we6gu` FOREIGN KEY (`huyen_id`) REFERENCES `huyen` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xa`
--

LOCK TABLES `xa` WRITE;
/*!40000 ALTER TABLE `xa` DISABLE KEYS */;
INSERT INTO `xa` VALUES (8190101,'Phường 2',81901),(8190103,'Phường 7',81901),(8190105,'Phường 1',81901),(8190107,'Phường 9',81901),(8190109,'Phường 5',81901),(8190111,'Phường 8',81901),(8190113,'Phường 6',81901),(8190115,'Phường 4',81901),(8190117,'Phường 3',81901),(8190119,'Phường 10',81901),(8190301,'Xã Trinh Phú',81903),(8190303,'Xã Xuân Hòa',81903),(8190305,'Xã Ba Trinh',81903),(8190307,'Xã Kế An',81903),(8190309,'Thị trấn Kế Sách',81903),(8190311,'Thị Trấn An Lạc Thôn',81903),(8190313,'Xã Phong Nẫm',81903),(8190315,'Xã An Lạc Tây',81903),(8190317,'Xã Thới An Hội',81903),(8190319,'Xã Nhơn Mỹ',81903),(8190321,'Xã Kế Thành',81903),(8190323,'Xã Đại Hải',81903),(8190325,'Xã An Mỹ',81903),(8190501,'Xã Tân Hưng',81905),(8190503,'Thị Trấn Đại Ngãi',81905),(8190505,'Xã Trường Khánh',81905),(8190507,'Xã Long Phú',81905),(8190511,'Thị trấn Long Phú',81905),(8190513,'Xã Song Phụng',81905),(8190515,'Xã Hậu Thạnh',81905),(8190517,'Xã Long Đức',81905),(8190519,'Xã Phú Hữu',81905),(8190521,'Xã Châu Khánh',81905),(8190523,'Xã Tân Thạnh',81905),(8190601,'Thị trấn Cù Lao Dung',81906),(8190603,'Xã An Thạnh 1',81906),(8190605,'Xã An Thạnh 2',81906),(8190607,'Xã An Thạnh Tây',81906),(8190609,'Xã An Thạnh Đông',81906),(8190611,'Xã Đại ân 1',81906),(8190613,'Xã An Thạnh 3',81906),(8190615,'Xã An Thạnh Nam',81906),(8190701,'Xã Long Hưng',81907),(8190703,'TT.Huỳnh Hữu Nghĩa',81907),(8190709,'Xã Thuận Hưng',81907),(8190719,'Xã Hưng Phú',81907),(8190721,'Xã Mỹ Hương',81907),(8190723,'Xã Mỹ Tú',81907),(8190727,'Xã Mỹ Phước',81907),(8190729,'Xã Mỹ Thuận',81907),(8190731,'Xã Phú Mỹ',81907),(8190901,'Xã Tham Đôn',81909),(8190903,'Xã Gia Hòa 1',81909),(8190905,'Xã Đại Tâm',81909),(8190907,'Xã Gia Hòa 2',81909),(8190917,'Xã Thạnh Phú',81909),(8190919,'Xã Ngọc Đông',81909),(8190921,'Xã Thạnh Quới',81909),(8190923,'Xã Hòa Tú 1',81909),(8190925,'Xã Ngọc Tố',81909),(8190927,'Xã Hòa Tú II',81909),(8190929,'Thị trấn Mỹ Xuyên',81909),(8191101,'Thị trấn Phú Lộc',81911),(8191103,'Xã Thạnh Trị',81911),(8191105,'Xã Thạnh Tân',81911),(8191107,'Xã Lâm Tân',81911),(8191109,'Xã Lâm Kiết',81911),(8191111,'Xã Tuân Tức',81911),(8191113,'Xã Vĩnh Thành',81911),(8191115,'Xã Vĩnh Lợi',81911),(8191117,'Xã Châu Hưng',81911),(8191119,'Thị Trấn Hưng Lợi',81911),(8191201,'Xã Vĩnh Quới',81912),(8191203,'Xã Mỹ Bình',81912),(8191209,'Xã Tân Long',81912),(8191211,'Xã Long Bình',81912),(8191215,'Xã Mỹ Quới',81912),(8191217,'Phường 1',81912),(8191219,'Phường 2',81912),(8191221,'Phường 3',81912),(8191301,'Xã Lạc Hòa',81913),(8191303,'Xã Hòa Đông',81913),(8191305,'Xã Vĩnh Hải',81913),(8191307,'Xã Vĩnh Tân',81913),(8191311,'Phường Khánh Hòa',81913),(8191313,'Xã Vĩnh Hiệp',81913),(8191317,'Phường Vĩnh Phước',81913),(8191319,'Xã Lai Hòa',81913),(8191321,'Phường 1',81913),(8191323,'Phường 2',81913),(8191501,'Thị trấn Châu Thành',81915),(8191503,'Xã Hồ Đắc Kiện',81915),(8191505,'Xã An Ninh',81915),(8191507,'Xã An Hiệp',81915),(8191509,'Xã Phú Tân',81915),(8191511,'Xã Phú Tâm',81915),(8191513,'Xã Thiện Mỹ',81915),(8191515,'Xã Thuận Hòa',81915),(8191701,'Xã Lịch Hội Thượng',81917),(8191703,'Xã Trung Bình',81917),(8191705,'Xã đại ân 2',81917),(8191707,'Xã Liêu Tú',81917),(8191709,'Xã Thạnh Thới An',81917),(8191711,'Xã Thạnh Thới Thuận',81917),(8191713,'Xã Tài Văn',81917),(8191715,' Xã Viên An',81917),(8191717,'Xã Viên Bình',81917),(8191719,'Thị Trấn Lịch Hội Thượng',81917),(8191721,'Thị Trấn Trần đề',81917);
/*!40000 ALTER TABLE `xa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-12 17:27:34
