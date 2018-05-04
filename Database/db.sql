/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.5.30 : Database - raac
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`raac` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `raac`;

/*Table structure for table `aareg` */

DROP TABLE IF EXISTS `aareg`;

CREATE TABLE `aareg` (
  `aid` varchar(1000) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `pass` varchar(190) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mno` varchar(100) DEFAULT NULL,
  `apk` blob,
  `ask` blob,
  `certificate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aareg` */

insert  into `aareg`(`aid`,`name`,`uname`,`pass`,`email`,`mno`,`apk`,`ask`,`certificate`) values ('486','sona','authority1','authority1','authority1@gmail.com','9052830803','0Ç∏0Ç,*ÜHŒ80ÇÅÅ\0˝SÅu)RﬂJú.Ï‰Áˆ∑R<ÔD\0√?Ä∂Q&iE]@\"Q˚Y=çX˙ø≈ı∫0ˆÀõUl◊Å;Ä4oÚf`∑kôP•§üüË{\"¬Oª©◊˛∑∆¯;WÁ∆®¶˚Éˆ”≈√5TZë2ˆuÛÆ+a◊*ÔÚ\"ù—H«\0ó`Pè#Ã≤íπÇ¢ÎÑXıÅÅ\0˜·†Ö÷õ=ﬁÀº´\\6∏WπyîØª˙:ÍÇ˘WL=ÇgQYWé∫‘YOÊqÅÄ¥Iq#ËL(∑œ	2å»¶·<zãT|ç(‡£Æ+≥¶uën£˙!5bÒ˚bz$;Ã§Òæ®Qêâ®Éﬂ·ZÂüíãf^Ä{U%dL;˛œI*ÅÖ\0ÅÅ\0Øk\Z∞t!¢\n1Ó6&zµâiVˇv¡˜æL¯qq‚ÚÀ$H#,”§àft∂O´}€+mõ~uI˛Ÿ¢O˘8—Â†^˘Ÿ†’rBß—§Ü7˝’éôÙÿKXÚ°ÀsÖ≤—trí◊‰\" 8«|É¸¡˚˘MISª‡q/Éã<≥ú\r','0ÇK\00Ç,*ÜHŒ80ÇÅÅ\0˝SÅu)RﬂJú.Ï‰Áˆ∑R<ÔD\0√?Ä∂Q&iE]@\"Q˚Y=çX˙ø≈ı∫0ˆÀõUl◊Å;Ä4oÚf`∑kôP•§üüË{\"¬Oª©◊˛∑∆¯;WÁ∆®¶˚Éˆ”≈√5TZë2ˆuÛÆ+a◊*ÔÚ\"ù—H«\0ó`Pè#Ã≤íπÇ¢ÎÑXıÅÅ\0˜·†Ö÷õ=ﬁÀº´\\6∏WπyîØª˙:ÍÇ˘WL=ÇgQYWé∫‘YOÊqÅÄ¥Iq#ËL(∑œ	2å»¶·<zãT|ç(‡£Æ+≥¶uën£˙!5bÒ˚bz$;Ã§Òæ®Qêâ®Éﬂ·ZÂüíãf^Ä{U%dL;˛œI*~⁄ºïÒÓf÷´çM\r∞‡ê<ù','Active'),('317','bob','authority2','authority2','authority2@gmail.com','9985714374','0Ç∑0Ç,*ÜHŒ80ÇÅÅ\0˝SÅu)RﬂJú.Ï‰Áˆ∑R<ÔD\0√?Ä∂Q&iE]@\"Q˚Y=çX˙ø≈ı∫0ˆÀõUl◊Å;Ä4oÚf`∑kôP•§üüË{\"¬Oª©◊˛∑∆¯;WÁ∆®¶˚Éˆ”≈√5TZë2ˆuÛÆ+a◊*ÔÚ\"ù—H«\0ó`Pè#Ã≤íπÇ¢ÎÑXıÅÅ\0˜·†Ö÷õ=ﬁÀº´\\6∏WπyîØª˙:ÍÇ˘WL=ÇgQYWé∫‘YOÊqÅÄ¥Iq#ËL(∑œ	2å»¶·<zãT|ç(‡£Æ+≥¶uën£˙!5bÒ˚bz$;Ã§Òæ®Qêâ®Éﬂ·ZÂüíãf^Ä{U%dL;˛œI*ÅÑ\0ÅÄi¡Tf)à8{Ø¶îzdàœ}âøó‡ëÿ3Œ™9Ñ ”¿296”ÿ[Vê:R@@¸“∑ 6zŒL¿Áœ®`´óø—;ê¢$0∂;	–≠»ˇ„Øz‘Ù,Å∆Ò≤‚˙V≠¯LX*$¨	ÃÄt,V,{!Ü{µ“L†âMæ.üiFüoJ©Á','0ÇK\00Ç,*ÜHŒ80ÇÅÅ\0˝SÅu)RﬂJú.Ï‰Áˆ∑R<ÔD\0√?Ä∂Q&iE]@\"Q˚Y=çX˙ø≈ı∫0ˆÀõUl◊Å;Ä4oÚf`∑kôP•§üüË{\"¬Oª©◊˛∑∆¯;WÁ∆®¶˚Éˆ”≈√5TZë2ˆuÛÆ+a◊*ÔÚ\"ù—H«\0ó`Pè#Ã≤íπÇ¢ÎÑXıÅÅ\0˜·†Ö÷õ=ﬁÀº´\\6∏WπyîØª˙:ÍÇ˘WL=ÇgQYWé∫‘YOÊqÅÄ¥Iq#ËL(∑œ	2å»¶·<zãT|ç(‡£Æ+≥¶uën£˙!5bÒ˚bz$;Ã§Òæ®Qêâ®Éﬂ·ZÂüíãf^Ä{U%dL;˛œI*\'3Àt∆˛w+¨*∞Dû4…íÕﬂ','Active');

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `uid` varchar(1000) DEFAULT NULL,
  `aid` varchar(1000) DEFAULT NULL,
  `sj` varchar(4000) DEFAULT NULL,
  `ic` blob,
  `ts` varchar(1000) DEFAULT NULL,
  `sts` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audit` */

insert  into `audit`(`uid`,`aid`,`sj`,`ic`,`ts`,`sts`) values ('99475','22','MCA, CSE, 2, Student','0,H’û;8FÛñ√.34}Q$MbŒO]™ä\0ﬂ>…uœ2ÕîGYÆ&˛=ë','2017/10/02 15:55:57','finish'),('66001','317','MCA, CSE, 4, Student','0-:ﬂ;≠Ω[ÈRú˘)O≈®º@Ìó\0ï≤ÔJp_z*\\h£Ï~^]‡ä','2017/10/02 15:53:34','finish');

/*Table structure for table `cakeys` */

DROP TABLE IF EXISTS `cakeys`;

CREATE TABLE `cakeys` (
  `cask` blob,
  `cavk` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cakeys` */

insert  into `cakeys`(`cask`,`cavk`) values ('0ÇL\00Ç,*ÜHŒ80ÇÅÅ\0˝SÅu)RﬂJú.Ï‰Áˆ∑R<ÔD\0√?Ä∂Q&iE]@\"Q˚Y=çX˙ø≈ı∫0ˆÀõUl◊Å;Ä4oÚf`∑kôP•§üüË{\"¬Oª©◊˛∑∆¯;WÁ∆®¶˚Éˆ”≈√5TZë2ˆuÛÆ+a◊*ÔÚ\"ù—H«\0ó`Pè#Ã≤íπÇ¢ÎÑXıÅÅ\0˜·†Ö÷õ=ﬁÀº´\\6∏WπyîØª˙:ÍÇ˘WL=ÇgQYWé∫‘YOÊqÅÄ¥Iq#ËL(∑œ	2å»¶·<zãT|ç(‡£Æ+≥¶uën£˙!5bÒ˚bz$;Ã§Òæ®Qêâ®Éﬂ·ZÂüíãf^Ä{U%dL;˛œI*\0î#@ã•È+„Vo‡\"‹yç\\¢u:','0Ç∏0Ç,*ÜHŒ80ÇÅÅ\0˝SÅu)RﬂJú.Ï‰Áˆ∑R<ÔD\0√?Ä∂Q&iE]@\"Q˚Y=çX˙ø≈ı∫0ˆÀõUl◊Å;Ä4oÚf`∑kôP•§üüË{\"¬Oª©◊˛∑∆¯;WÁ∆®¶˚Éˆ”≈√5TZë2ˆuÛÆ+a◊*ÔÚ\"ù—H«\0ó`Pè#Ã≤íπÇ¢ÎÑXıÅÅ\0˜·†Ö÷õ=ﬁÀº´\\6∏WπyîØª˙:ÍÇ˘WL=ÇgQYWé∫‘YOÊqÅÄ¥Iq#ËL(∑œ	2å»¶·<zãT|ç(‡£Æ+≥¶uën£˙!5bÒ˚bz$;Ã§Òæ®Qêâ®Éﬂ·ZÂüíãf^Ä{U%dL;˛œI*ÅÖ\0ÅÅ\0ñSãÆIÃ\rˆŸ$1øﬁÊˆ≈ÁW•aóè†nÇ®o}Jà•vˇ3ﬂR—O˘˙¿©Ò¯r;á•·— ´_ñ–kw±\n«äê˘RJM–⁄b¨ú3˚ãÅ(‹›˜ﬂˇ>$y‹∫G≤≈R:ïÙIhZnó‰À ›øk°“™|ÊQ¬ƒh=s');

/*Table structure for table `cloudserver` */

DROP TABLE IF EXISTS `cloudserver`;

CREATE TABLE `cloudserver` (
  `fid` int(100) DEFAULT NULL,
  `fname` varchar(1000) DEFAULT NULL,
  `filedata` blob,
  `access` varchar(1000) DEFAULT NULL,
  `pkey` varchar(1000) DEFAULT NULL,
  `aeskey` varchar(1000) DEFAULT NULL,
  `owner` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloudserver` */

insert  into `cloudserver`(`fid`,`fname`,`filedata`,`access`,`pkey`,`aeskey`,`owner`) values (1,'CT_Address.txt','é—*◊Û¸ÕJË\r\Zå^^/w^ë:^súx@\\≠jòCÛﬁS:ù‚®ÓäwŸä}yêöá%»¶Ùﬁ∞ß©[•ﬁW¨?ë6‡4||Õ¨$Òg¥DÂÔ(R˙<w‘Âè O≤æ9püóAÕÊ`ÄüWÑè‘√´Ä˝§ƒ\n{ºûT>C\'áŒ‚JÑÙâ»–ïÉxFƒ¨ºF·IµÄ[TÏÙöÄaÂ“ÙwÑä*Ä5˜n™Ç y(y{Áì+cZõ◊ìå“hOÚÉÂh-Ÿ\\\'’%Ls–¸\'Nç?/öó«.[⁄Ã¢\'C¯ˆ{Å§H7ßß≤DøE^¿¯æjû¬.*∂˘Íª£É[ïTí≈V‰\\ûÂ≠C§N\"±˛u˝T≤√‹9é≤é\"Ï¢¸¡“Ç*}Ó˜y-r÷Ê#Ó˚ºh€:s´Æ◊˛†\n7Úpr`viÅÉ‰q˘oÛÔ}\rhä¯\0ptπK6dTF—ÈôèsÂ·K˙&lú¶»,GQ\\˜¢Ø!»Bâö‘“ù÷˙ ≠PäWn,⁄H´œÒÜsóe·Ïπæ2NHéﬂµ ›?','c=\'MCA\'&&b=\'CSE\'&&y=\'4\'&&j=\'Student\'','677679166222993590738271581991793957551846718326','√™‚Äì¬Æ}√è√≥?¬æB5}¬£¬°*RZ','swamy');

/*Table structure for table `oregister` */

DROP TABLE IF EXISTS `oregister`;

CREATE TABLE `oregister` (
  `name` varchar(500) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `pass` varchar(190) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mno` varchar(100) DEFAULT NULL,
  `sts` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oregister` */

insert  into `oregister`(`name`,`uname`,`pass`,`email`,`mno`,`sts`) values ('swamy','swamy','swamy','swamy@gmail.com','8599221105','Active');

/*Table structure for table `reqsk` */

DROP TABLE IF EXISTS `reqsk`;

CREATE TABLE `reqsk` (
  `certuid` varchar(1000) DEFAULT NULL,
  `unm` varchar(1000) DEFAULT NULL,
  `aai` varchar(1000) DEFAULT NULL,
  `sts` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reqsk` */

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `uid` varchar(100) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`uid`,`status`) values ('ali','finish');

/*Table structure for table `request1` */

DROP TABLE IF EXISTS `request1`;

CREATE TABLE `request1` (
  `aid` varchar(100) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request1` */

insert  into `request1`(`aid`,`status`) values ('22','finish');

/*Table structure for table `setup` */

DROP TABLE IF EXISTS `setup`;

CREATE TABLE `setup` (
  `PK` varchar(5000) DEFAULT NULL,
  `MSK` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `setup` */

insert  into `setup`(`PK`,`MSK`) values ('677679166222993590738271581991793957551846718326','533443983509294884909670926609587185612233539661');

/*Table structure for table `temps` */

DROP TABLE IF EXISTS `temps`;

CREATE TABLE `temps` (
  `c` varchar(1000) DEFAULT NULL,
  `b` varchar(1000) DEFAULT NULL,
  `y` varchar(2000) DEFAULT NULL,
  `j` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temps` */

insert  into `temps`(`c`,`b`,`y`,`j`) values ('null','null','null','null');

/*Table structure for table `trace` */

DROP TABLE IF EXISTS `trace`;

CREATE TABLE `trace` (
  `uid` varchar(1000) DEFAULT NULL,
  `aid` varchar(1000) DEFAULT NULL,
  `sj` varchar(4000) DEFAULT NULL,
  `ic` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trace` */

insert  into `trace`(`uid`,`aid`,`sj`,`ic`) values ('67826','22','MTECH,ME,1,Student','0,kô˜k.„e¢Lÿ-@∑Ÿp‚Ω+g	ºa[pÖ\"¢©±.«\n˛`');

/*Table structure for table `uregister` */

DROP TABLE IF EXISTS `uregister`;

CREATE TABLE `uregister` (
  `uid` int(100) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `unm` varchar(1000) DEFAULT NULL,
  `pwd` varchar(1000) DEFAULT NULL,
  `gen` varchar(500) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `mno` varchar(200) DEFAULT NULL,
  `course` varchar(1000) DEFAULT NULL,
  `branch` varchar(500) DEFAULT NULL,
  `year` varchar(1000) DEFAULT NULL,
  `job` varchar(500) DEFAULT NULL,
  `sk` varchar(5000) DEFAULT NULL,
  `certificate` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `uregister` */

insert  into `uregister`(`uid`,`name`,`unm`,`pwd`,`gen`,`email`,`mno`,`course`,`branch`,`year`,`job`,`sk`,`certificate`) values (66001,'sajid','sajid','sajid','Male','sajid24X7@gmail.com','9985714374','MCA','CSE','4','Student','499297085172985297031295341365760619774684727935','0,ekÎ	€˙ZjÂ%>VSö\"^èh(’m‹òß¢Uﬁî∫ı–'),(99475,'ali','ali','ali','Male','aliincloudtechnologies@gmail.com','8121953811','MCA','CSE','2','Student','1368532442001919629214269730903329625777015433','0,¡cN©œcEu9≈‚xUvN~¯≥AMñ⁄¨ª!–è3Gb|]Í £∫b‰');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
