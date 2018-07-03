-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: census
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `chain`
--

DROP TABLE IF EXISTS `chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chain` (
  `prevHash` varchar(256) NOT NULL,
  `merkleRoot` varchar(256) NOT NULL,
  `trans1` varbinary(512) NOT NULL,
  `trans2` varbinary(512) NOT NULL,
  `trans3` varbinary(512) NOT NULL,
  `trans4` varbinary(512) NOT NULL,
  `trans5` varbinary(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain`
--

LOCK TABLES `chain` WRITE;
/*!40000 ALTER TABLE `chain` DISABLE KEYS */;
INSERT INTO `chain` VALUES ('5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9','cd773614584311e8474bd532db2137baa21b67e827b3af823b9e6eb33dc719a7','n�\�D�\�\�\�\�Mv\�l\�^|�A`� \'�s͕_C\��<;&6@W\�]^���4\"��{��i�(','\00\�j�Y��~���\�\�)��<\�\�-ʂ\��\��d�+\�qbE�\�\�1�6\�\�H�}�#�n��Ծ�\�(�','|C\0E�ջO3C�\�i\�\�\�\�\�9�\�\�G��9\�٠\�DN]N\�A	F�\�\�\'QKC�J^�\��\Z�p�\�o�','Iҽ�>��Y�\�q\�\r;-m7FR\�Dτ\�W�Ȣ�݁��\�q�\�\�3�zJ\�\�]�e\r�\�Ċ �\'\�1�ק\�','�~��l^�c\��Q�\�\�I�L\�h\�K\'R�p�\�\\\�\�X\�gl.!Ϛ�\�!�9�\\9$\�\�Q�<j\�'),('cd773614584311e8474bd532db2137baa21b67e827b3af823b9e6eb33dc719a7','be7d58dd946606a3f020a2536cc2cd51946595524018057b8e33a62858c5c773','8]?{{�N�i=5d\�\�\�\��\�\\>2�Z�P\"\�F+���/`u�\�S�DqC\���\�\�ܧ\��fe��1','7���!]Pc\���H냾�\�pn�\��\\U�G�3�\0z,�\�4A\0��}\�<�W\0�\�������\�\�=',']\��\��EV�H�JI^\�\�J��\�3Ү�sv:\��=�ň i\�\��>l	Z\\��0]��}^�\�}͟�','?�\�\�\�\�yF��OU�`KA[)�B�]1x;�*\�ޛ0a�Q�7�L�\rX\�7�K���_�<�eئZ','W�_\�@\�SATt�\�\�x{�F�Ο��5� 4Y��V\�W�~\Z@�W7\�䅼����\�o�r�c\�'),('be7d58dd946606a3f020a2536cc2cd51946595524018057b8e33a62858c5c773','390c0618b5d643db702386783bac9d4aeeb1eb52c33394e9335796fae194ee00','~*�)���K�d�-Gqv�9�\�\"\�S��=���$\�k\� \Z[\"ZM��^\�\�\�\0�;<̜�QTۃI�4e�','�\rm�,hǳ�\���3�\n�RPY��0�ػVm� �%R+�X�r6\�o|���s-\��z*AG�\\9,e>\�','�:\�G\�\�\�T�t-\�q�Y�֜\�07/b����%�G�\�tc\�D듌;��\�h}\�\�!�\�>\"','%��\�K���H,���b�[|�2��O��T�\�p��Ͱ�i�\��tW\�g+#��Y\�p\�.�X\�\�%7\�w','DX�6��wh\r\�Q\�	?��v�v�f_\��g�\�z��v%\�]\�N\r��?R*\���<�E�\��'),('390c0618b5d643db702386783bac9d4aeeb1eb52c33394e9335796fae194ee00','c5c5fd886a37ba57cf23213cc8a3ff97213d288e07819c7bff6ea73a3c1affb5','z�Vmٝ�\\J�X�m~)��\�\�DG�%:���x<�J�e\�i\�=\�\�n)���bI\n�4)GK_\�{','f@�#\�j*B�/\�;2\Z���t3\�9k�kY̥CHܕ+\�L\�\�ͤ\�\� ���D��\�i����p�','�ҶA\��\�]X\�n\�A\0$�dq@e\�A\�T�<�s\�\�_%yZ��\�4��QQO��C\�\r6zOE>\�=','&#�\�e\"\r\�4\�z\�e��*�&���B�dZq\��-�E�_aK\��\��i=�Pn\�\�\�\�\��,�\�zHE0U�y','��9��G|;��2=\�u\�.(,�4�\�\�)\�)\�\'V]\�L>\\�h�^�\�K!�sۧ/J0L��Od'),('c5c5fd886a37ba57cf23213cc8a3ff97213d288e07819c7bff6ea73a3c1affb5','e11b03c3e2951e82c45fdd635083b140406f2921ae3c6165cdccbb45d4c9fee1','`);�Z�Y}ښ�\nY7J�\�\��\�\�z�\�ܭ5x��VqHu*Qe\� Hʿ���\�Gu\���','m�\�\�i\"\�Z+\�;\�g|�k��\�.�&|B�*H\��¬{�^�8W�l��3Dor}��I�륫��','lh�#�\�n\�\�\��n\�чdI���F��4�u�&t�1��^�\�p�.9���^\"G:�\'\�\�\"2\\�:\�\�\�x','+��n��\�\Zq\r-PᶃR\�\�a�>\�n��5pK��s���|��!\�O\�4d��&�;�+����\�\�R','��Qo�\�\n\�VE�ug�.|�\�Sz�1�]ϝ\�\\D\"�)G$d$s\�\n\��[G\�\���F�̌�J�'),('e11b03c3e2951e82c45fdd635083b140406f2921ae3c6165cdccbb45d4c9fee1','83e97a967aaa0dd7c3dbcc7a7c90fc86df1a95322a1358472ac7af04830124fb','d8���?a��@\�A\��\0�ĔE���|1�\�\�A<þ�/yi@�\�BG\�\�\�>���\�B\��N�i2e\�','Y%\�\�\�X;�\�/\�]	�ĉ��r~6�ዒ\\w��0=\�kÓ���J��\�O\r��������}`\�_{��T�','Dԅ`^&B&\��w_�+����?-uzD6�^\�dUc`\�V\�>\rX���y6����}�b�0����\�q\0','I4®}^�!�\�\�����\�*�*R�,���\�N?e\�=�\��,m�DO�	\�ywp�=�\��d�O�ˊ\Z','%�1�\�Q��/\�MU\�v~7���Q�y\�~�x\��#:�l�E��R*\r�YbdAһV\��R<��N'),('83e97a967aaa0dd7c3dbcc7a7c90fc86df1a95322a1358472ac7af04830124fb','72e3929c052fa8c36650577aea1e86e6db0626f125d7ef16aaba295c4bbca70f','&\�M���9\�	�\\\�d7��[_a��W��aҟ\0E\�B\�b�^�MQ�Hv{Ҵ���\��\�\��','?i&��R\�B	5y�\�\�<BN�\�\\�X�j\�\�Ϩ�<\��U5\�\�u	:H��d�~�m]����8Ժ\�)�','��I�}XWz-�\�Az�//\���C���\0m�C�Ӣ����\��\�M�Rb��\�\Z��B����\�\'','��\�jjў.ߵ�3�\�.\�^u��\�|\�\r��\�vt�\�\�\n)>���Y1\n��w\�uw\�5\"��/\�i��\�\�','e8�\��cr�G�M�1\�֚R:\�%?�$�c�*�ٹR�\r�|�y\�8\�N=\�`���\��#9�\\��)�');
/*!40000 ALTER TABLE `chain` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-03 13:07:53
