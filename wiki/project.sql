

--
-- Table structure for table `navy_projects`
--

CREATE TABLE IF NOT EXISTS `navy_projects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
);

CREATE TABLE IF NOT EXISTS `navy_projects_element` (
  `ID` int(11) unsigned NOT NULL auto_increment,
  `DATE_CREATE` datetime DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT `Y`,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreman_ID` int(5) NOT NULL auto_increment,
  PRIMARY KEY (`ID`),
);

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(18) NOT NULL auto_increment,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
);

CREATE TABLE IF NOT EXISTS `foreman` (
  `ID` int(5) NOT NULL auto_increment,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
);

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(5) unsigned NOT NULL auto_increment,

);
