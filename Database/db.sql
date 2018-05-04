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

insert  into `aareg`(`aid`,`name`,`uname`,`pass`,`email`,`mno`,`apk`,`ask`,`certificate`) values ('486','sona','authority1','authority1','authority1@gmail.com','9052830803','0��0�,*�H�80���\0�S�u)R�J�.�����R<�D\0�?��Q&iE]@\"Q�Y=�X�����0�˛Ulׁ;�4o�f`�k�P�����{\"�O�������;W�ƨ�������5TZ�2�u�+a�*��\"��H�\0�`P�#̲������X���\0�᠅֛=�˼�\\6�W�y����:��WL=�gQYW���YO�q���Iq#�L(��	2�Ȧ�<z�T|�(࣮+��u�n��!5b��bz$;̤�Q������Z���f^�{U%dL;��I*��\0��\0�k\Z�t!�\n1�6&z��iV�v���L�qq���$H#,Ӥ�ft�O�}�+m�~uI�٢O�8��^�٠�rB�Ѥ�7�Վ���KX��s���tr���\"��8�|�����MIS��q/��<��\r','0�K\00�,*�H�80���\0�S�u)R�J�.�����R<�D\0�?��Q&iE]@\"Q�Y=�X�����0�˛Ulׁ;�4o�f`�k�P�����{\"�O�������;W�ƨ�������5TZ�2�u�+a�*��\"��H�\0�`P�#̲������X���\0�᠅֛=�˼�\\6�W�y����:��WL=�gQYW���YO�q���Iq#�L(��	2�Ȧ�<z�T|�(࣮+��u�n��!5b��bz$;̤�Q������Z���f^�{U%dL;��I*~ڼ���f֫�M\r���<�','Active'),('317','bob','authority2','authority2','authority2@gmail.com','9985714374','0��0�,*�H�80���\0�S�u)R�J�.�����R<�D\0�?��Q&iE]@\"Q�Y=�X�����0�˛Ulׁ;�4o�f`�k�P�����{\"�O�������;W�ƨ�������5TZ�2�u�+a�*��\"��H�\0�`P�#̲������X���\0�᠅֛=�˼�\\6�W�y����:��WL=�gQYW���YO�q���Iq#�L(��	2�Ȧ�<z�T|�(࣮+��u�n��!5b��bz$;̤�Q������Z���f^�{U%dL;��I*��\0��i�Tf)�8{���zd��}������3Ϊ9� ��296��[V�:R@@�ҷ 6z�L��Ϩ`����;��$0�;	Э���z��,�����V��LX*$�	̀t,V,{!�{��L��M�.�iF�oJ��','0�K\00�,*�H�80���\0�S�u)R�J�.�����R<�D\0�?��Q&iE]@\"Q�Y=�X�����0�˛Ulׁ;�4o�f`�k�P�����{\"�O�������;W�ƨ�������5TZ�2�u�+a�*��\"��H�\0�`P�#̲������X���\0�᠅֛=�˼�\\6�W�y����:��WL=�gQYW���YO�q���Iq#�L(��	2�Ȧ�<z�T|�(࣮+��u�n��!5b��bz$;̤�Q������Z���f^�{U%dL;��I*\'3�t��w+�*�D�4ɒ��','Active');

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

insert  into `audit`(`uid`,`aid`,`sj`,`ic`,`ts`,`sts`) values ('99475','22','MCA, CSE, 2, Student','0,H՞;8F��.34}Q$Mb�O]��\0�>�u�2͔GY�&�=�','2017/10/02 15:55:57','finish'),('66001','317','MCA, CSE, 4, Student','0-:�;��[�R��)OŨ�@�\0���Jp_z*\\h��~^]��','2017/10/02 15:53:34','finish');

/*Table structure for table `cakeys` */

DROP TABLE IF EXISTS `cakeys`;

CREATE TABLE `cakeys` (
  `cask` blob,
  `cavk` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cakeys` */

insert  into `cakeys`(`cask`,`cavk`) values ('0�L\00�,*�H�80���\0�S�u)R�J�.�����R<�D\0�?��Q&iE]@\"Q�Y=�X�����0�˛Ulׁ;�4o�f`�k�P�����{\"�O�������;W�ƨ�������5TZ�2�u�+a�*��\"��H�\0�`P�#̲������X���\0�᠅֛=�˼�\\6�W�y����:��WL=�gQYW���YO�q���Iq#�L(��	2�Ȧ�<z�T|�(࣮+��u�n��!5b��bz$;̤�Q������Z���f^�{U%dL;��I*\0�#@���+�Vo�\"�y�\\�u:','0��0�,*�H�80���\0�S�u)R�J�.�����R<�D\0�?��Q&iE]@\"Q�Y=�X�����0�˛Ulׁ;�4o�f`�k�P�����{\"�O�������;W�ƨ�������5TZ�2�u�+a�*��\"��H�\0�`P�#̲������X���\0�᠅֛=�˼�\\6�W�y����:��WL=�gQYW���YO�q���Iq#�L(��	2�Ȧ�<z�T|�(࣮+��u�n��!5b��bz$;̤�Q������Z���f^�{U%dL;��I*��\0��\0�S��I�\r��$1������W�a���n���o}J��v�3�R�O������r;����ʫ_��kw�\nǊ��RJM��b��3���(�����>$yܺG��R:��IhZn����ݿk�Ҫ|�Q��h=s');

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

insert  into `cloudserver`(`fid`,`fname`,`filedata`,`access`,`pkey`,`aeskey`,`owner`) values (1,'CT_Address.txt','��*����J�\r\Z�^^/w^�:^s�x@\\�j�C��S:���wي}y���%Ȧ�ް��[��W�?�6�4||��$�g�D��(R�<w���O��9p��A��`��W���ë����\n{��T>C\'���J���Е�xFĬ�F�I��[T����a����w��*�5�n���y(y{��+cZ�ד��hO��h-�\\\'�%Ls��\'N�?/���.[�̢\'C��{��H7���D�E^���j��.*��껣�[�T��V�\\��C�N\"��u�T���9���\"�����*}��y-r��#���h�:s�����\n7�pr`vi���q�o��}\rh��\0pt�K6dTF�陏s��K�&l���,GQ\\���!�B���ҝ�� �P�Wn,�H���s�e���2NH�ߵ��?','c=\'MCA\'&&b=\'CSE\'&&y=\'4\'&&j=\'Student\'','677679166222993590738271581991793957551846718326','ê–®}Ïó?¾B5}£¡*RZ','swamy');

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

insert  into `trace`(`uid`,`aid`,`sj`,`ic`) values ('67826','22','MTECH,ME,1,Student','0,k��k.�e�L�-@��p�+g	�a[p�\"���.�\n�`');

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

insert  into `uregister`(`uid`,`name`,`unm`,`pwd`,`gen`,`email`,`mno`,`course`,`branch`,`year`,`job`,`sk`,`certificate`) values (66001,'sajid','sajid','sajid','Male','sajid24X7@gmail.com','9985714374','MCA','CSE','4','Student','499297085172985297031295341365760619774684727935','0,ek�	��Zj�%>VS�\"^�h(�mܘ��Uޔ���'),(99475,'ali','ali','ali','Male','aliincloudtechnologies@gmail.com','8121953811','MCA','CSE','2','Student','1368532442001919629214269730903329625777015433','0,�cN��cEu9��xUvN~��AM�ڬ�!Џ3Gb|]�ʣ�b�');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
