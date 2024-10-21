-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mercado
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Higiene pessoal'),(2,'Limpeza'),(3,'Cama, mesa e banho'),(4,'Frios e laticínios'),(5,'Carnes');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (2,'Avenida Paulista','Centro',456,'São Paulo',2),(3,'Rua da Consolação','República',789,'São Paulo',3),(4,'Avenida Atlântica','Copacabana',101,'Rio de Janeiro',4);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Escova dental',2.00,1),(2,'Creme dental',3.19,1),(3,'Presunto',5.49,4),(4,'Lençol 180 fios',94.38,3),(5,'Desinfetante',7.69,2);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,'2021-01-23'),(2,'2021-11-04'),(3,'2021-07-07'),(4,'2021-07-08'),(5,'2021-07-09'),(6,'2021-07-10');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendas_has_produto`
--

LOCK TABLES `vendas_has_produto` WRITE;
/*!40000 ALTER TABLE `vendas_has_produto` DISABLE KEYS */;
INSERT INTO `vendas_has_produto` VALUES (1,1,5),(1,2,2),(1,4,6),(2,1,2),(3,1,4),(3,4,1),(4,1,3),(4,2,2),(5,4,4),(6,2,1);
/*!40000 ALTER TABLE `vendas_has_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (2,'Maria Oliveira',2700,'1990-08-20'),(3,'Carlos Pereira',4000,'1980-11-30'),(4,'Ana Costa',3500,'1995-02-25'),(5,'Silvao Damassa',1500,'1950-02-12');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendedores_desligados`
--

LOCK TABLES `vendedores_desligados` WRITE;
/*!40000 ALTER TABLE `vendedores_desligados` DISABLE KEYS */;
INSERT INTO `vendedores_desligados` VALUES (1,'João Silva',3000,'1985-05-15','2024-10-15 21:23:45');
/*!40000 ALTER TABLE `vendedores_desligados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 19:10:15
