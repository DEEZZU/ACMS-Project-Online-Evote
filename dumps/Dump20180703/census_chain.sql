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
INSERT INTO `chain` VALUES ('5feceb66ffc86f38d952786c6d696c79c2dbc239dd4e91b46729d73a27fb57e9','cd773614584311e8474bd532db2137baa21b67e827b3af823b9e6eb33dc719a7','n¸\ŞD÷\ê\É\Ö\ÃMv\Ñl\×^|¶A`¢ \'¨sÍ•_C\Ş«<;&6@W\äŠ]^µ»·4\"…{‹­iñ(','\00\ÃjŒY¶¿~š°”\Ó\æ)¹·<\Ì\é-Ê‚\ä§\àšd+\ÙqbE¹\Ü\ã1»6\ç\ÅH›}‹#ğn¯ Ô¾\Ú(ò','|C\0E«Õ»O3CŸ\Øi\Ä\Ô\ï¹\Ú\Ú9û\ï\ÊG“š9\İÙ \ÌDN]N\ĞA	F\Ò\è\'QKC«J^\æù\Z¨pŠ\Ço ','IÒ½ô>¤½Y‹\áq\Ä\r;-m7FR\ç¦DÏ„\ÜW¶È¢Áİ‰¥\Õq†\á\ß3üzJ\Æ\â]Ÿe\rı\ÕÄŠ ±\'\Ø1©×§\ß','~øƒl^öc\Ú°Q«\Ó\ÓI÷L\è´h\ÖK\'R¶p¶\Ğ\\\ë\äX\àgl.!Ïš˜\æ! 9«\\9$\Ì\àQ¿<j\Ø'),('cd773614584311e8474bd532db2137baa21b67e827b3af823b9e6eb33dc719a7','be7d58dd946606a3f020a2536cc2cd51946595524018057b8e33a62858c5c773','8]?{{½N´i=5d\á\Ù\ã¯\ÆÀ\î\\>2Z‚P\"\ä‡F+±÷•/`uğ\ÑSœDqC\çÿ£\Ñ\èÜ§\ÂÀfe„‘1','7Œšı!]Pc\Õù®Hëƒ¾ñ\Õpn—\æò\\UùG3­\0z,“\Ñ4A\0…ğ}\ç<óW\0˜\Òõ˜®®¥ö\Å\Ã=',']\ëı\Ú¶EV–HôJI^\Ü\ÅJ‘º\ç¦3Ò®“sv:\Äğ=­Åˆ i\ç\î¶ö>l	Z\\´ö0]€ø}^™\Ì}ÍŸ˜','?½\é\Ã\â\ÆyF´ÁOU—`KA[)›B…]1x;ˆ*\ŞŞ›0a°Qº7‰Lˆ\rX\Â7µKş¥ö_¸<¦eØ¦Z','Wˆ_\Ù@\ØSATt£\î\Åx{FœÎŸÿº5€ 4Y·V\ÖWº~\Z@¬W7\Ùä…¼ü¨Œ™\Öo‚rªc\á'),('be7d58dd946606a3f020a2536cc2cd51946595524018057b8e33a62858c5c773','390c0618b5d643db702386783bac9d4aeeb1eb52c33394e9335796fae194ee00','~*)ø–ŒK“d¢-Gqv•9–\Ğ\"\ÉSü•=„˜™$\×k\È \Z[\"ZM˜¯^\Ü\×\Ò\0¸;<ÌœµQTÛƒI4eš','\rm£,hÇ³„\Şı²3ş\nˆRPYˆ»0 Ø»Vmü ™%R+ôX•r6\×o|¾Œÿs-\Î€z*AG\\9,e>\Ñ',':\ÎG\Ö\Í\ÉT¤t-\ÅqŸY¾Öœ\Ì07/bóœÀ–%§G\Ötc\îDë“Œ;±ñ\Ñh}\ç‹\ç‹!\é>\"','%£ô\åK©õ«H,³şñb‡[|¥2¸÷O³üT›\ïp¾¹Í°i˜\Â¯tW\Íg+#øY\ãp\Ú.X\â\æ%7\Ñw','DXõ6°¶wh\r\áQ\í	?¡øv†vf_\Ş—g«\Ôz°®v%\ã]\ÅN\r—œ?R*\ê³¹<§E˜\Òñ'),('390c0618b5d643db702386783bac9d4aeeb1eb52c33394e9335796fae194ee00','c5c5fd886a37ba57cf23213cc8a3ff97213d288e07819c7bff6ea73a3c1affb5','z­VmÙ¯\\J‚X’m~)ş±\î©\ÖDG°%:¢“Áx<³J«e\Ûi\ì=\ç¤\Şn)„…¸bI\n4)GK_\Ç{','f@ƒ#\İj*B€/\Ô;2\Z¬¤üt3\î9kŸkYÌ¥CHÜ•+\ÖL\ï\ÔÍ¤\Ë\ç ”÷—DŸ‹\ßi¨ŸµópŒ','Ò¶A\àû\Í]X\çn\ÓA\0$ùdq@e\îA\ÖTñ<³s\è\Ş_%ïœ‹yZ£•\Ö4²¾QQOŠ¨C\Ğ\r6zOE>\Ô=','&#¹\Äe\"\r\î4\Íz\Ëeñ´*º&†”ªBşdZq\Óÿ-ƒEƒ_aK\ãı\Éşi=©Pn\É\á\ç\Ø\Âõ,¨\ÚzHE0U“y','‰9’¦G|;”š2=\í‹u\ï†.(,¼4·\æ\ß)\Û)\Û\'V]\ÅL>\\³hô^¬\ÖK!şsÛ§/J0LœOd'),('c5c5fd886a37ba57cf23213cc8a3ff97213d288e07819c7bff6ea73a3c1affb5','e11b03c3e2951e82c45fdd635083b140406f2921ae3c6165cdccbb45d4c9fee1','`);ÀZ´Y}Úš†\nY7J\í\ïş\ì\Äz\áÜ­5xõƒVqHu*Qe\Ğ HÊ¿Œ¦¡\é°Gu\İó°','m\è\Ñi\"\ÜZ+\Ù;\åg|÷k÷´\É.­&|B¹*H\ÃüÂ¬{«^¸8W¸l¸²3Dor}ıùIñë¥«¬€','lhö#\ìn\ã\Ø\ãún\ÌÑ‡dI°şšF®˜4Àuª&tŸ1¬ğ^¶\Úp“.9˜½^\"G:³\'\í\Ì\"2\\ú:\Ş\Ñ\Ãx','+½nùò\Ò\Zq\r-Pá¶ƒR\ß\Õa½>\àn¥•5pK s»À—|Œ!\åO\î4d¹ñ&ú;®+ö›¼Œ\Ú\ÏR','•®QoÀ\Ç\n\ŞVE¬ugº.|ı\ÉSz³1ª]Ï\á\\D\"Œ)G$d$s\Ô\n\ÒŠ[G\Ä\ïûó¯ªF„ÌŒJª'),('e11b03c3e2951e82c45fdd635083b140406f2921ae3c6165cdccbb45d4c9fee1','83e97a967aaa0dd7c3dbcc7a7c90fc86df1a95322a1358472ac7af04830124fb','d8…üı?a•¬@\×A\çõ\0¤Ä”E¡ÿ©|1®\ä\ÇA<Ã¾÷/yi@¼\ÖBG\á\Ô\Ã>›À¢\áB\İòNºi2e\ï','Y%\ë\Ï\ìX;–\Ì/\Ê]	†Ä‰‚r~6˜á‹’\\w†¥0=\ÏkÃ“‡ô¢J¢ \ÛO\r ”´˜¹ˆ‹¯}`\Ô_{“˜Tğ','DÔ…`^&B&\áıw_†+‰‹ˆ?-uzD6€^\ÜdUc`\ØV\İ>\rX“œ…y6½öƒ¾}¶b”0—û‡¬\íq\0','I4Â®}^!ü\ê\ß÷µ«÷\ï—*±*Ró¾,»Š¦\äN?e\Ø=\à‚,m²DO„	\éywp€=ş\İ‚dOöËŠ\Z','%ƒ1\ëQ¶ş/\ÍMU\Îv~7¢±Qˆy\á~…x\äû#:®l»E¾ŸR*\r®YbdAÒ»V\ïıR<ş‰N'),('83e97a967aaa0dd7c3dbcc7a7c90fc86df1a95322a1358472ac7af04830124fb','72e3929c052fa8c36650577aea1e86e6db0626f125d7ef16aaba295c4bbca70f','&\ëM¢öˆ9\Û	\\\ìšd7°[_aŒ˜W®ºaÒŸ\0E\âB\Übü^õMQHv{Ò´Ÿ´š\Ğô\Ó\Úü','?i&úR\âB	5yª\Å\Ô<BN¸\ï\\„X’j\Ù\äÏ¨ò<\ÊÀU5\ã\Ùu	:Hd±~®m]˜™’¯8Ôº\é)†','úI„}XWz-º\êAzü//\á ­¾Còüı\0m·CªÓ¢¥±¶\Ó \ÌMƒRb¡ö\Ã\Z±¥Bº¸Ÿš\â\'','™ö\ÈjjÑ.ßµû3ñ\Ô.\Ş^u¾ÿ\Ü|\È\r·\Ğvt…\Í\Û\n)>†¿Y1\n›õw\ïuw\ï5\"ª™/\âi‘‰\Ã\ã¦','e8“\Úşcr¢GœMó1\ÙÖšR:\Ô%?Ÿ$¥cƒ*ˆÙ¹R‡\r·|úy\è©8\ÂN=\í`½ó\à†#9­\\ƒ)»');
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
