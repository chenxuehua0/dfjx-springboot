/*
Navicat MySQL Data Transfer

Source Server         : 192.168.137.130
Source Server Version : 50635
Source Host           : 192.168.137.130:3306
Source Database       : etldb

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2018-08-13 20:37:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `datacalendar`
-- ----------------------------
DROP TABLE IF EXISTS `datacalendar`;
CREATE TABLE `datacalendar` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `CalendarYear` int(11) NOT NULL,
  `SeqNum` int(11) NOT NULL,
  `CalendarMonth` int(11) NOT NULL,
  `CalendarDay` int(11) NOT NULL,
  `CheckFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`CalendarYear`,`CalendarMonth`,`CalendarDay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datacalendar
-- ----------------------------

-- ----------------------------
-- Table structure for `datacalendaryear`
-- ----------------------------
DROP TABLE IF EXISTS `datacalendaryear`;
CREATE TABLE `datacalendaryear` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `CalendarYear` int(11) NOT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`CalendarYear`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datacalendaryear
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_event`
-- ----------------------------
DROP TABLE IF EXISTS `etl_event`;
CREATE TABLE `etl_event` (
  `EventID` varchar(30) NOT NULL,
  `ETL_Server` varchar(10) NOT NULL,
  `EventStatus` char(1) NOT NULL,
  `Severity` char(1) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `LogTime` char(19) NOT NULL,
  `CloseTime` char(19) DEFAULT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_event
-- ----------------------------
INSERT INTO `etl_event` VALUES ('20180705151551SLV0', 'etl1', 'O', 'H', '[SDT], [TEST1] invoke job script test10100.sh failed', '2018-07-05 15:15:51', null);
INSERT INTO `etl_event` VALUES ('20180705151851SLV0', 'etl1', 'O', 'H', '[SDT], [TEST1] invoke job script test10100.sh failed', '2018-07-05 15:18:51', null);
INSERT INTO `etl_event` VALUES ('20180719171901SLV0', 'etl1', 'O', 'H', '[SDT], [TEST1] invoke job script test10100.sh failed', '2018-07-19 17:19:01', null);
INSERT INTO `etl_event` VALUES ('20180719231341SLV0', 'etl1', 'O', 'H', '[SDT], [TEST1] invoke job script test10100.sh failed', '2018-07-19 23:13:41', null);
INSERT INTO `etl_event` VALUES ('20180720102148RCV0', 'etl1', 'O', 'M', '[SDT], [TEST2] has received a control file, whose txdate is less then the current txdate', '2018-07-20 10:21:48', null);
INSERT INTO `etl_event` VALUES ('20180720175304RCV1', 'etl1', 'O', 'M', '[SDT], [TEST1] has received a control file, whose txdate is less then the current txdate', '2018-07-20 17:53:04', null);
INSERT INTO `etl_event` VALUES ('20180726100059MAS0', 'etl1', 'O', 'L', '[SDT], [TEST2] Dependent job [SDT, TEST1] does not finish yet, wait for next time!', '2018-07-26 10:00:59', null);
INSERT INTO `etl_event` VALUES ('20180726214916RCV2', 'etl1', 'O', 'M', '[SDT], [TEST1] has received a control file, whose txdate is less then the current txdate', '2018-07-26 21:49:16', null);
INSERT INTO `etl_event` VALUES ('20180726223456RCV3', 'etl1', 'O', 'M', '[SDT], [TEST1] has received a control file, whose txdate is less then the current txdate', '2018-07-26 22:34:56', null);
INSERT INTO `etl_event` VALUES ('20180726223847RCV4', 'etl1', 'O', 'M', '[SDT], [TEST1] has received a control file, whose txdate is less then the current txdate', '2018-07-26 22:38:47', null);
INSERT INTO `etl_event` VALUES ('20180726223917RCV5', 'etl1', 'O', 'M', '[SDT], [TEST1] has received a control file, whose txdate is less then the current txdate', '2018-07-26 22:39:17', null);
INSERT INTO `etl_event` VALUES ('20180730182958RCV6', 'etl1', 'O', 'L', 'Unknown control file dir.CSUM_LWQ20180725', '2018-07-30 18:29:58', null);
INSERT INTO `etl_event` VALUES ('20180730183058RCV7', 'etl1', 'O', 'L', 'Unknown control file dir.TEST120180725', '2018-07-30 18:30:58', null);
INSERT INTO `etl_event` VALUES ('20180801171205RCV8', 'etl1', 'O', 'M', '[SDT], [TEST1] has received a control file, whose txdate is less then the current txdate', '2018-08-01 17:12:05', null);
INSERT INTO `etl_event` VALUES ('20180807105917MAS1', 'etl1', 'O', 'L', '[CSM], [CSUM_LWQ] Dependent job [PDT, LWQ2] does not finish yet, wait for next time!', '2018-08-07 10:59:17', null);
INSERT INTO `etl_event` VALUES ('20180807110918SLV0', 'etl1', 'O', 'H', '[SDT], [LWQ1] invoke job script lwq10100.sh failed', '2018-08-07 11:09:18', null);
INSERT INTO `etl_event` VALUES ('20180807120030MAS2', 'etl1', 'O', 'L', '[CSM], [CSUM_LWQ] Dependent job [PDT, LWQ2] does not finish yet, wait for next time!', '2018-08-07 12:00:30', null);
INSERT INTO `etl_event` VALUES ('20180809112529MAS3', 'etl1', 'O', 'L', '[CSM], [CSUM_LWQ] Dependent job [PDT, LWQ2] does not finish yet, wait for next time!', '2018-08-09 11:25:29', null);
INSERT INTO `etl_event` VALUES ('20180809113017RCV9', 'etl1', 'O', 'M', '[DQC], [AAAAAAA] has received a control file, whose txdate is less then the current txdate', '2018-08-09 11:30:17', null);
INSERT INTO `etl_event` VALUES ('20180809113058RCV0', 'etl1', 'O', 'M', '[CSM], [CSUM_LWQ] still in <Pending> but has received another file dir.CSUM_LWQ20180725', '2018-08-09 11:30:58', null);
INSERT INTO `etl_event` VALUES ('20180809113138RCV1', 'etl1', 'O', 'M', '[DQC], [AAAAAAA] has received a control file, whose txdate is less then the current txdate', '2018-08-09 11:31:38', null);
INSERT INTO `etl_event` VALUES ('20180809113250MAS4', 'etl1', 'O', 'H', '[DQC], [AAAAAAA] Can not find the mapping job path, wait for next time!', '2018-08-09 11:32:50', null);
INSERT INTO `etl_event` VALUES ('20180809113912MAS5', 'etl1', 'O', 'M', '[DQC], [AAAAAAA] is Ready but has received another file DQC_AAAAAAA_20180725.dir', '2018-08-09 11:39:12', null);
INSERT INTO `etl_event` VALUES ('20180809114122MAS6', 'etl1', 'O', 'H', '[DQC], [AAAAAAA] Can not find the mapping job path, wait for next time!', '2018-08-09 11:41:22', null);
INSERT INTO `etl_event` VALUES ('20180809114343SLV0', 'etl1', 'O', 'H', '[DQC], [AAAAAAA] no any job script exiting', '2018-08-09 11:43:43', null);
INSERT INTO `etl_event` VALUES ('20180809143955RCV0', 'etl1', 'O', 'M', '[CSM], [CSUM_LWQ] still in <Pending> but has received another file dir.CSUM_LWQ20180725', '2018-08-09 14:39:55', null);
INSERT INTO `etl_event` VALUES ('20180809143956MAS0', 'etl1', 'O', 'L', '[CSM], [CSUM_LWQ] Dependent job [PDT, LWQ2] does not finish yet, wait for next time!', '2018-08-09 14:39:56', null);
INSERT INTO `etl_event` VALUES ('20180809144717SLV0', 'etl1', 'O', 'H', '[DQC], [AAAAAAA] no any job script exiting', '2018-08-09 14:47:17', null);
INSERT INTO `etl_event` VALUES ('20180809145148RCV1', 'etl1', 'O', 'M', '[DQC], [AAAAAAA] still in <Failed> but has received another file dir.AAAAAAA20180725', '2018-08-09 14:51:48', null);
INSERT INTO `etl_event` VALUES ('20180809145247SLV0', 'etl1', 'O', 'H', '[DQC], [AAAAAAA] no any job script exiting', '2018-08-09 14:52:47', null);
INSERT INTO `etl_event` VALUES ('20180809153438RCV2', 'etl1', 'O', 'L', 'Unknown control file dir.AAAAAA20180725', '2018-08-09 15:34:38', null);
INSERT INTO `etl_event` VALUES ('20180810081340MAS1', 'etl1', 'O', 'L', '[CSM], [CSUM_LWQ] Dependent job [PDT, LWQ2] does not finish yet, wait for next time!', '2018-08-10 08:13:40', null);
INSERT INTO `etl_event` VALUES ('20180810111430MAS2', 'etl1', 'O', 'L', '[SDT], [TEST3] Dependent job [SDT, TEST1] does not finish yet, wait for next time!', '2018-08-10 11:14:30', null);
INSERT INTO `etl_event` VALUES ('20180810111446RCV3', 'etl1', 'O', 'M', '[SDT], [TEST3] still in <Pending> but has received another file dir.TEST320180809', '2018-08-10 11:14:46', null);
INSERT INTO `etl_event` VALUES ('20180810111610MAS3', 'etl1', 'O', 'L', '[SDT], [TEST1] has dependant job running, wait for next time!', '2018-08-10 11:16:10', null);
INSERT INTO `etl_event` VALUES ('20180810111621MAS4', 'etl1', 'O', 'L', '[SDT], [TEST3] Dependent job [SDT, TEST1] does not finish yet, wait for next time!', '2018-08-10 11:16:21', null);
INSERT INTO `etl_event` VALUES ('20180810111621MAS5', 'etl1', 'O', 'L', '[PDT], [PDT_PROGRAME] Dependent job [SDT, TEST3] does not finish yet, wait for next time!', '2018-08-10 11:16:21', null);
INSERT INTO `etl_event` VALUES ('20180810111636RCV4', 'etl1', 'O', 'M', '[SDT], [TEST3] still in <Pending> but has received another file dir.TEST320180809', '2018-08-10 11:16:36', null);
INSERT INTO `etl_event` VALUES ('20180810111656RCV5', 'etl1', 'O', 'M', '[PDT], [PDT_PROGRAME] still in <Pending> but has received another file dir.PDT_PROGRAME20180809', '2018-08-10 11:16:56', null);
INSERT INTO `etl_event` VALUES ('20180810111736RCV6', 'etl1', 'O', 'M', '[CSM], [CSUM_LWQ] still in <Pending> but has received another file dir.CSUM_LWQ20180809', '2018-08-10 11:17:36', null);
INSERT INTO `etl_event` VALUES ('20180811124126MAS6', 'etl1', 'O', 'L', '[CSM], [CSUM_LWQ] Dependent job [PDT, LWQ2] does not finish yet, wait for next time!', '2018-08-11 12:41:26', null);
INSERT INTO `etl_event` VALUES ('20180811134912RCV7', 'etl1', 'O', 'M', '[CSM], [CSUM_LWQ] still in <Pending> but has received another file dir.CSUM_LWQ20180810', '2018-08-11 13:49:12', null);
INSERT INTO `etl_event` VALUES ('20180812221031MAS7', 'etl1', 'O', 'L', '[CSM], [CSUM_LWQ] Dependent job [PDT, LWQ2] does not finish yet, wait for next time!', '2018-08-12 22:10:31', null);
INSERT INTO `etl_event` VALUES ('20180813175341MAS8', 'etl1', 'O', 'L', '[DQC], [BBBB] The current hour does not match the job time window, wait for next time!', '2018-08-13 17:53:41', null);
INSERT INTO `etl_event` VALUES ('20180813175712MAS9', 'etl1', 'O', 'H', '[DQC], [BBBB] Can not find the mapping job path, wait for next time!', '2018-08-13 17:57:12', null);
INSERT INTO `etl_event` VALUES ('20180813180023SLV0', 'etl1', 'O', 'H', '[DQC], [BBBB] no any job script exiting', '2018-08-13 18:00:23', null);
INSERT INTO `etl_event` VALUES ('20180813180203SLV0', 'etl1', 'O', 'H', '[DQC], [BBBB] no any job script exiting', '2018-08-13 18:02:03', null);
INSERT INTO `etl_event` VALUES ('20180813180533SLV0', 'etl1', 'O', 'H', '[DQC], [BBBB] no any job script exiting', '2018-08-13 18:05:33', null);
INSERT INTO `etl_event` VALUES ('20180813180814SLV0', 'etl1', 'O', 'H', '[DQC], [BBBB] invoke job script bbbb0100.sh failed', '2018-08-13 18:08:14', null);

-- ----------------------------
-- Table structure for `etl_job`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job`;
CREATE TABLE `etl_job` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `ETL_Server` varchar(10) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Frequency` varchar(30) DEFAULT NULL,
  `JobType` char(1) DEFAULT NULL,
  `Enable` char(1) DEFAULT NULL,
  `Last_StartTime` char(19) DEFAULT NULL,
  `Last_EndTime` char(19) DEFAULT NULL,
  `Last_JobStatus` varchar(20) DEFAULT NULL,
  `Last_TXDate` date DEFAULT NULL,
  `Last_FileCnt` int(11) DEFAULT NULL,
  `Last_CubeStatus` char(20) DEFAULT NULL,
  `CubeFlag` char(1) DEFAULT NULL,
  `CheckFlag` char(1) DEFAULT NULL,
  `AutoOff` char(1) DEFAULT NULL,
  `CheckCalendar` char(1) DEFAULT NULL,
  `CalendarBU` varchar(15) DEFAULT NULL,
  `RunningScript` varchar(50) DEFAULT NULL,
  `JobSessionID` int(11) DEFAULT NULL,
  `ExpectedRecord` int(11) DEFAULT NULL,
  `CheckLastStatus` char(1) DEFAULT NULL,
  `TimeTrigger` char(1) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ETL_System` (`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job
-- ----------------------------
INSERT INTO `etl_job` VALUES ('23', 'SDT', 'TEST1', 'etl1', '测试程序1', '0', 'D', '1', '2018-08-12 22:09:31', '2018-08-12 22:09:41', 'Done', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'test10100.sh', '30', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('24', 'SDT', 'TEST2', 'etl1', '测试程序2', '0', 'D', '1', '2018-08-12 22:09:51', '2018-08-12 22:10:01', 'Done', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'test20100.sh', '31', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('25', 'SDT', 'TEST3', 'etl1', '测试程序3', '0', 'D', '1', '2018-08-12 22:09:51', '2018-08-12 22:10:01', 'Done', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'test30100.sh', '34', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('26', 'PDT', 'PDT_PROGRAME', 'etl1', '测试程序4', '0', 'D', '1', '2018-08-12 22:10:11', '2018-08-12 22:10:21', 'Done', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'pdt_programe0100.sh', '32', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('27', 'CSM', 'CSUM_LWQ', 'etl1', '测试程序5', '0', 'D', '1', '2018-08-12 22:10:29', null, 'Pending', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'csum_lwq0100.sh', '18', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('28', 'SDT', 'LWQ1', 'etl1', 'LWQ程序1', '0', 'D', '1', '2018-08-12 21:21:50', '2018-08-12 21:22:01', 'Done', '2018-08-10', '0', null, 'N', 'Y', 'N', 'N', null, 'lwq10100.sh', '5', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('29', 'PDT', 'LWQ2', 'etl1', 'LWQ程序2', '0', 'D', '1', '2018-08-12 21:22:11', '2018-08-12 21:22:21', 'Done', '2018-08-10', '0', null, 'N', 'Y', 'N', 'N', null, 'lwq20100.sh', '5', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('30', 'DQC', 'AAAAAAA', 'etl1', '测试作业', '0', 'D', '1', '2018-08-12 22:09:51', '2018-08-12 22:10:01', 'Done', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'aaaaaaa0100.sh', '13', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('32', 'DQC', 'BBBB', 'etl1', 'BBBB', '0', 'D', '1', '2018-08-13 18:10:24', '2018-08-13 18:10:34', 'Done', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'bbbb0100.sh', '5', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('33', 'DQC', 'CCCC', 'etl1', 'ccccc', '0', 'D', '1', '2018-08-13 20:36:18', '2018-08-13 20:36:28', 'Done', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'cccc0100.sh', '1', '0', 'Y', 'N', '0');
INSERT INTO `etl_job` VALUES ('34', 'DQC', 'DDDD', 'etl1', 'dddd', '0', 'D', '1', '2018-08-13 20:29:07', '2018-08-13 20:29:17', 'Done', '2018-08-11', '0', null, 'N', 'Y', 'N', 'N', null, 'dddd0100.sh', '1', '0', 'Y', 'N', '0');

-- ----------------------------
-- Table structure for `etl_job_bak`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_bak`;
CREATE TABLE `etl_job_bak` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `ETL_Server` varchar(10) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Frequency` varchar(30) DEFAULT NULL,
  `JobType` char(1) DEFAULT NULL,
  `Enable` char(1) DEFAULT NULL,
  `Last_StartTime` char(19) DEFAULT NULL,
  `Last_EndTime` char(19) DEFAULT NULL,
  `Last_JobStatus` varchar(20) DEFAULT NULL,
  `Last_TXDate` date DEFAULT NULL,
  `Last_FileCnt` int(11) DEFAULT NULL,
  `Last_CubeStatus` char(20) DEFAULT NULL,
  `CubeFlag` char(1) DEFAULT NULL,
  `CheckFlag` char(1) DEFAULT NULL,
  `AutoOff` char(1) DEFAULT NULL,
  `CheckCalendar` char(1) DEFAULT NULL,
  `CalendarBU` varchar(15) DEFAULT NULL,
  `RunningScript` varchar(50) DEFAULT NULL,
  `JobSessionID` int(11) DEFAULT NULL,
  `ExpectedRecord` int(11) DEFAULT NULL,
  `CheckLastStatus` char(1) DEFAULT NULL,
  `TimeTrigger` char(1) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_bak
-- ----------------------------
INSERT INTO `etl_job_bak` VALUES ('SDT', 'TEST1', 'etl1', '测试程序1', '0', 'D', '1', '2018-07-23 11:08:11', '2018-07-23 11:08:11', 'Done', '2018-07-16', '0', null, 'N', null, 'N', 'N', null, 'test10100.sh', '16', '0', 'Y', 'N', '0');
INSERT INTO `etl_job_bak` VALUES ('SDT', 'TEST2', 'etl1', '测试程序2', '0', 'D', '1', '2018-07-23 11:07:21', '2018-07-23 11:07:21', 'Done', '2018-07-16', '0', null, 'N', null, 'N', 'N', null, 'test20100.sh', '9', '0', 'Y', 'N', '0');
INSERT INTO `etl_job_bak` VALUES ('SDT', 'TEST3', 'etl1', '测试程序3', '0', 'D', '1', '2018-07-23 17:45:35', '2018-07-23 17:45:35', 'Ready', '2018-07-24', '0', null, 'N', 'Y', 'N', 'N', null, 'test30100.sh', '1', '0', 'Y', 'N', '0');

-- ----------------------------
-- Table structure for `etl_job_concurrent`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_concurrent`;
CREATE TABLE `etl_job_concurrent` (
  `ConcurrentName` varchar(50) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Concurrent` int(11) NOT NULL,
  PRIMARY KEY (`ConcurrentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_concurrent
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_job_concurrentchild`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_concurrentchild`;
CREATE TABLE `etl_job_concurrentchild` (
  `ConcurrentName` varchar(50) NOT NULL,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Enable` char(1) NOT NULL,
  PRIMARY KEY (`ConcurrentName`,`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_concurrentchild
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_job_dependency`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_dependency`;
CREATE TABLE `etl_job_dependency` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Dependency_System` char(3) NOT NULL,
  `Dependency_Job` varchar(80) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Enable` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ETL_System` (`ETL_System`,`ETL_Job`,`Dependency_System`,`Dependency_Job`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_dependency
-- ----------------------------
INSERT INTO `etl_job_dependency` VALUES ('22', 'PDT', 'LWQ2', 'SDT', 'LWQ1', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('23', 'PDT', 'PDT_PROGRAME', 'SDT', 'TEST3', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('24', 'SDT', 'TEST2', 'SDT', 'TEST1', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('25', 'SDT', 'TEST3', 'SDT', 'TEST1', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('33', 'CSM', 'CSUM_LWQ', 'PDT', 'PDT_PROGRAME', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('34', 'CSM', 'CSUM_LWQ', 'PDT', 'LWQ2', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('35', 'DQC', 'AAAAAAA', 'SDT', 'TEST1', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('37', 'DQC', 'BBBB', 'SDT', 'TEST1', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('40', 'DQC', 'CCC', 'SDT', 'TEST1', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('41', 'DQC', 'DDDD', 'SDT', 'TEST1', null, '1');
INSERT INTO `etl_job_dependency` VALUES ('42', 'DQC', 'CCCC', 'SDT', 'TEST1', null, '1');

-- ----------------------------
-- Table structure for `etl_job_dependency_bak`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_dependency_bak`;
CREATE TABLE `etl_job_dependency_bak` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Dependency_System` char(3) NOT NULL,
  `Dependency_Job` varchar(80) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Enable` char(1) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`Dependency_System`,`Dependency_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_dependency_bak
-- ----------------------------
INSERT INTO `etl_job_dependency_bak` VALUES ('CSM', 'CSUM_LWQ', 'PDT', 'PDT_PROGRAME', null, '1');
INSERT INTO `etl_job_dependency_bak` VALUES ('PDT', 'PDT_PROGRAME', 'SDT', 'TEST3', null, '1');
INSERT INTO `etl_job_dependency_bak` VALUES ('SDT', 'TEST2', 'SDT', 'TEST1', null, '1');
INSERT INTO `etl_job_dependency_bak` VALUES ('SDT', 'TEST3', 'SDT', 'TEST1', null, '1');

-- ----------------------------
-- Table structure for `etl_job_group`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_group`;
CREATE TABLE `etl_job_group` (
  `GroupName` varchar(50) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `ETL_System` char(3) DEFAULT NULL,
  `ETL_Job` varchar(80) DEFAULT NULL,
  `AutoOnChild` char(1) DEFAULT NULL,
  PRIMARY KEY (`GroupName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_group
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_job_groupchild`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_groupchild`;
CREATE TABLE `etl_job_groupchild` (
  `GroupName` varchar(50) NOT NULL,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Enable` char(1) DEFAULT NULL,
  `CheckFlag` char(1) DEFAULT NULL,
  `TXDate` date DEFAULT NULL,
  `TurnOnFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`GroupName`,`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_groupchild
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_log`;
CREATE TABLE `etl_job_log` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `JobSessionID` int(11) NOT NULL,
  `JobStepID` char(4) NOT NULL,
  `ScriptFile` varchar(50) NOT NULL,
  `TXDate` date NOT NULL,
  `StartTime` char(19) DEFAULT NULL,
  `EndTime` char(19) DEFAULT NULL,
  `ReturnCode` int(11) DEFAULT NULL,
  `Seconds` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ETL_System` (`ETL_System`,`ETL_Job`,`JobSessionID`,`JobStepID`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_log
-- ----------------------------
INSERT INTO `etl_job_log` VALUES ('103', 'SDT', 'LWQ1', '0', '0100', 'lwq10100.sh', '2018-07-25', '2018-08-07 11:09:18', '2018-08-07 11:09:18', '126', null);
INSERT INTO `etl_job_log` VALUES ('104', 'SDT', 'LWQ1', '1', '0100', 'lwq10100.sh', '2018-07-25', '2018-08-07 11:15:09', '2018-08-07 11:15:19', '0', null);
INSERT INTO `etl_job_log` VALUES ('105', 'PDT', 'LWQ2', '0', '0100', 'lwq20100.sh', '2018-07-25', '2018-08-07 11:15:29', '2018-08-07 11:15:39', '0', null);
INSERT INTO `etl_job_log` VALUES ('106', 'CSM', 'CSUM_LWQ', '6', '0100', 'csum_lwq0100.sh', '2018-07-25', '2018-08-07 11:15:49', '2018-08-07 11:15:59', '0', null);
INSERT INTO `etl_job_log` VALUES ('107', 'SDT', 'TEST1', '16', '0100', 'test10100.sh', '2018-07-25', '2018-08-07 11:54:49', '2018-08-07 11:54:59', '0', null);
INSERT INTO `etl_job_log` VALUES ('108', 'SDT', 'TEST3', '18', '0100', 'test30100.sh', '2018-07-25', '2018-08-07 11:55:09', '2018-08-07 11:55:19', '0', null);
INSERT INTO `etl_job_log` VALUES ('109', 'SDT', 'TEST2', '17', '0100', 'test20100.sh', '2018-07-25', '2018-08-07 11:55:09', '2018-08-07 11:55:19', '0', null);
INSERT INTO `etl_job_log` VALUES ('110', 'PDT', 'PDT_PROGRAME', '17', '0100', 'pdt_programe0100.sh', '2018-07-25', '2018-08-07 11:55:29', '2018-08-07 11:55:39', '0', null);
INSERT INTO `etl_job_log` VALUES ('111', 'CSM', 'CSUM_LWQ', '7', '0100', 'csum_lwq0100.sh', '2018-07-25', '2018-08-07 11:55:49', '2018-08-07 11:56:00', '0', null);
INSERT INTO `etl_job_log` VALUES ('112', 'SDT', 'TEST1', '17', '0100', 'test10100.sh', '2018-07-25', '2018-08-07 11:59:30', '2018-08-07 11:59:40', '0', null);
INSERT INTO `etl_job_log` VALUES ('113', 'SDT', 'TEST3', '19', '0100', 'test30100.sh', '2018-07-25', '2018-08-07 11:59:50', '2018-08-07 12:00:00', '0', null);
INSERT INTO `etl_job_log` VALUES ('114', 'SDT', 'TEST2', '18', '0100', 'test20100.sh', '2018-07-25', '2018-08-07 11:59:50', '2018-08-07 12:00:00', '0', null);
INSERT INTO `etl_job_log` VALUES ('115', 'PDT', 'PDT_PROGRAME', '18', '0100', 'pdt_programe0100.sh', '2018-07-25', '2018-08-07 12:00:10', '2018-08-07 12:00:20', '0', null);
INSERT INTO `etl_job_log` VALUES ('116', 'SDT', 'LWQ1', '2', '0100', 'lwq10100.sh', '2018-07-25', '2018-08-08 08:46:21', '2018-08-08 08:46:31', '0', null);
INSERT INTO `etl_job_log` VALUES ('117', 'PDT', 'LWQ2', '1', '0100', 'lwq20100.sh', '2018-07-25', '2018-08-08 08:46:41', '2018-08-08 08:46:51', '0', null);
INSERT INTO `etl_job_log` VALUES ('118', 'CSM', 'CSUM_LWQ', '8', '0100', 'csum_lwq0100.sh', '2018-07-25', '2018-08-08 08:47:01', '2018-08-08 08:47:11', '0', null);
INSERT INTO `etl_job_log` VALUES ('119', 'SDT', 'TEST1', '18', '0100', 'test10100.sh', '2018-07-25', '2018-08-09 11:21:48', '2018-08-09 11:21:58', '0', null);
INSERT INTO `etl_job_log` VALUES ('120', 'SDT', 'TEST3', '20', '0100', 'test30100.sh', '2018-07-25', '2018-08-09 11:22:08', '2018-08-09 11:22:18', '0', null);
INSERT INTO `etl_job_log` VALUES ('121', 'SDT', 'TEST2', '19', '0100', 'test20100.sh', '2018-07-25', '2018-08-09 11:22:08', '2018-08-09 11:22:18', '0', null);
INSERT INTO `etl_job_log` VALUES ('122', 'PDT', 'PDT_PROGRAME', '19', '0100', 'pdt_programe0100.sh', '2018-07-25', '2018-08-09 11:22:28', '2018-08-09 11:22:38', '0', null);
INSERT INTO `etl_job_log` VALUES ('123', 'CSM', 'CSUM_LWQ', '9', '0100', 'csum_lwq0100.sh', '2018-07-25', '2018-08-09 11:22:48', '2018-08-09 11:22:58', '0', null);
INSERT INTO `etl_job_log` VALUES ('124', 'SDT', 'TEST1', '19', '0100', 'test10100.sh', '2018-07-25', '2018-08-09 11:24:28', '2018-08-09 11:24:38', '0', null);
INSERT INTO `etl_job_log` VALUES ('125', 'SDT', 'TEST3', '21', '0100', 'test30100.sh', '2018-07-25', '2018-08-09 11:24:49', '2018-08-09 11:24:59', '0', null);
INSERT INTO `etl_job_log` VALUES ('126', 'SDT', 'TEST2', '20', '0100', 'test20100.sh', '2018-07-25', '2018-08-09 11:24:49', '2018-08-09 11:24:59', '0', null);
INSERT INTO `etl_job_log` VALUES ('127', 'PDT', 'PDT_PROGRAME', '20', '0100', 'pdt_programe0100.sh', '2018-07-25', '2018-08-09 11:25:09', '2018-08-09 11:25:19', '0', null);
INSERT INTO `etl_job_log` VALUES ('128', 'SDT', 'TEST1', '20', '0100', 'test10100.sh', '2018-07-25', '2018-08-09 11:30:00', '2018-08-09 11:30:10', '0', null);
INSERT INTO `etl_job_log` VALUES ('129', 'SDT', 'TEST3', '22', '0100', 'test30100.sh', '2018-07-25', '2018-08-09 11:30:20', '2018-08-09 11:30:30', '0', null);
INSERT INTO `etl_job_log` VALUES ('130', 'SDT', 'TEST2', '21', '0100', 'test20100.sh', '2018-07-25', '2018-08-09 11:30:20', '2018-08-09 11:30:30', '0', null);
INSERT INTO `etl_job_log` VALUES ('131', 'PDT', 'PDT_PROGRAME', '21', '0100', 'pdt_programe0100.sh', '2018-07-25', '2018-08-09 11:30:40', '2018-08-09 11:30:50', '0', null);
INSERT INTO `etl_job_log` VALUES ('132', 'PDT', 'LWQ2', '2', '0100', 'lwq20100.sh', '2018-07-25', '2018-08-09 14:39:56', '2018-08-09 14:40:06', '0', null);
INSERT INTO `etl_job_log` VALUES ('133', 'CSM', 'CSUM_LWQ', '10', '0100', 'csum_lwq0100.sh', '2018-07-25', '2018-08-09 14:40:16', '2018-08-09 14:40:26', '0', null);
INSERT INTO `etl_job_log` VALUES ('134', 'CSM', 'CSUM_LWQ', '11', '0100', 'csum_lwq0100.sh', '2018-07-25', '2018-08-09 14:40:37', '2018-08-09 14:40:47', '0', null);
INSERT INTO `etl_job_log` VALUES ('135', 'DQC', 'AAAAAAA', '3', '0100', 'aaaaaaa0100.sh', '2018-07-25', '2018-08-09 15:39:07', '2018-08-09 15:39:17', '0', null);
INSERT INTO `etl_job_log` VALUES ('136', 'SDT', 'TEST1', '21', '0100', 'test10100.sh', '2018-07-25', '2018-08-09 15:51:07', '2018-08-09 15:51:17', '0', null);
INSERT INTO `etl_job_log` VALUES ('137', 'SDT', 'TEST3', '23', '0100', 'test30100.sh', '2018-07-25', '2018-08-09 15:51:27', '2018-08-09 15:51:37', '0', null);
INSERT INTO `etl_job_log` VALUES ('138', 'SDT', 'TEST2', '22', '0100', 'test20100.sh', '2018-07-25', '2018-08-09 15:51:27', '2018-08-09 15:51:37', '0', null);
INSERT INTO `etl_job_log` VALUES ('139', 'DQC', 'AAAAAAA', '4', '0100', 'aaaaaaa0100.sh', '2018-07-25', '2018-08-09 15:51:27', '2018-08-09 15:51:37', '0', null);
INSERT INTO `etl_job_log` VALUES ('140', 'PDT', 'PDT_PROGRAME', '22', '0100', 'pdt_programe0100.sh', '2018-07-25', '2018-08-09 15:51:48', '2018-08-09 15:51:58', '0', null);
INSERT INTO `etl_job_log` VALUES ('141', 'CSM', 'CSUM_LWQ', '12', '0100', 'csum_lwq0100.sh', '2018-07-25', '2018-08-09 15:52:08', '2018-08-09 15:52:18', '0', null);
INSERT INTO `etl_job_log` VALUES ('142', 'SDT', 'TEST1', '22', '0100', 'test10100.sh', '2018-07-26', '2018-08-10 08:12:40', '2018-08-10 08:12:50', '0', null);
INSERT INTO `etl_job_log` VALUES ('143', 'DQC', 'AAAAAAA', '5', '0100', 'aaaaaaa0100.sh', '2018-07-26', '2018-08-10 08:13:00', '2018-08-10 08:13:10', '0', null);
INSERT INTO `etl_job_log` VALUES ('144', 'SDT', 'TEST3', '24', '0100', 'test30100.sh', '2018-07-26', '2018-08-10 08:13:00', '2018-08-10 08:13:10', '0', null);
INSERT INTO `etl_job_log` VALUES ('145', 'SDT', 'TEST2', '23', '0100', 'test20100.sh', '2018-07-26', '2018-08-10 08:13:00', '2018-08-10 08:13:10', '0', null);
INSERT INTO `etl_job_log` VALUES ('146', 'PDT', 'PDT_PROGRAME', '23', '0100', 'pdt_programe0100.sh', '2018-07-26', '2018-08-10 08:13:20', '2018-08-10 08:13:30', '0', null);
INSERT INTO `etl_job_log` VALUES ('147', 'SDT', 'TEST1', '23', '0100', 'test10100.sh', '2018-08-09', '2018-08-10 11:15:40', '2018-08-10 11:15:50', '0', null);
INSERT INTO `etl_job_log` VALUES ('148', 'SDT', 'TEST3', '25', '0100', 'test30100.sh', '2018-08-09', '2018-08-10 11:16:00', '2018-08-10 11:16:11', '0', null);
INSERT INTO `etl_job_log` VALUES ('149', 'DQC', 'AAAAAAA', '6', '0100', 'aaaaaaa0100.sh', '2018-08-09', '2018-08-10 11:16:01', '2018-08-10 11:16:11', '0', null);
INSERT INTO `etl_job_log` VALUES ('150', 'SDT', 'TEST2', '24', '0100', 'test20100.sh', '2018-08-09', '2018-08-10 11:16:01', '2018-08-10 11:16:11', '0', null);
INSERT INTO `etl_job_log` VALUES ('151', 'SDT', 'TEST1', '24', '0100', 'test10100.sh', '2018-08-09', '2018-08-10 11:16:21', '2018-08-10 11:16:31', '0', null);
INSERT INTO `etl_job_log` VALUES ('152', 'SDT', 'TEST2', '25', '0100', 'test20100.sh', '2018-08-09', '2018-08-10 11:16:41', '2018-08-10 11:16:51', '0', null);
INSERT INTO `etl_job_log` VALUES ('153', 'SDT', 'TEST3', '26', '0100', 'test30100.sh', '2018-08-09', '2018-08-10 11:16:41', '2018-08-10 11:16:51', '0', null);
INSERT INTO `etl_job_log` VALUES ('154', 'DQC', 'AAAAAAA', '7', '0100', 'aaaaaaa0100.sh', '2018-08-09', '2018-08-10 11:16:41', '2018-08-10 11:16:51', '0', null);
INSERT INTO `etl_job_log` VALUES ('155', 'SDT', 'TEST3', '27', '0100', 'test30100.sh', '2018-08-09', '2018-08-10 11:17:01', '2018-08-10 11:17:11', '0', null);
INSERT INTO `etl_job_log` VALUES ('156', 'PDT', 'PDT_PROGRAME', '24', '0100', 'pdt_programe0100.sh', '2018-08-09', '2018-08-10 11:17:21', '2018-08-10 11:17:31', '0', null);
INSERT INTO `etl_job_log` VALUES ('157', 'PDT', 'PDT_PROGRAME', '25', '0100', 'pdt_programe0100.sh', '2018-08-09', '2018-08-10 11:17:41', '2018-08-10 11:17:51', '0', null);
INSERT INTO `etl_job_log` VALUES ('158', 'SDT', 'TEST1', '25', '0100', 'test10100.sh', '2018-08-09', '2018-08-10 14:20:51', '2018-08-10 14:21:01', '0', null);
INSERT INTO `etl_job_log` VALUES ('159', 'SDT', 'TEST3', '28', '0100', 'test30100.sh', '2018-08-09', '2018-08-10 14:21:11', '2018-08-10 14:21:21', '0', null);
INSERT INTO `etl_job_log` VALUES ('160', 'DQC', 'AAAAAAA', '8', '0100', 'aaaaaaa0100.sh', '2018-08-09', '2018-08-10 14:21:11', '2018-08-10 14:21:21', '0', null);
INSERT INTO `etl_job_log` VALUES ('161', 'SDT', 'TEST2', '26', '0100', 'test20100.sh', '2018-08-09', '2018-08-10 14:21:12', '2018-08-10 14:21:22', '0', null);
INSERT INTO `etl_job_log` VALUES ('162', 'PDT', 'PDT_PROGRAME', '26', '0100', 'pdt_programe0100.sh', '2018-08-09', '2018-08-10 14:21:31', '2018-08-10 14:21:41', '0', null);
INSERT INTO `etl_job_log` VALUES ('163', 'SDT', 'LWQ1', '3', '0100', 'lwq10100.sh', '2018-08-09', '2018-08-10 14:22:11', '2018-08-10 14:22:21', '0', null);
INSERT INTO `etl_job_log` VALUES ('164', 'PDT', 'LWQ2', '3', '0100', 'lwq20100.sh', '2018-08-09', '2018-08-10 14:22:31', '2018-08-10 14:22:41', '0', null);
INSERT INTO `etl_job_log` VALUES ('165', 'CSM', 'CSUM_LWQ', '13', '0100', 'csum_lwq0100.sh', '2018-07-26', '2018-08-10 14:22:51', '2018-08-10 14:23:01', '0', null);
INSERT INTO `etl_job_log` VALUES ('166', 'CSM', 'CSUM_LWQ', '14', '0100', 'csum_lwq0100.sh', '2018-08-09', '2018-08-10 14:23:11', '2018-08-10 14:23:21', '0', null);
INSERT INTO `etl_job_log` VALUES ('167', 'SDT', 'TEST3', '29', '0100', 'test30100.sh', '2018-08-09', '2018-08-10 14:42:11', '2018-08-10 14:42:21', '0', null);
INSERT INTO `etl_job_log` VALUES ('168', 'PDT', 'PDT_PROGRAME', '27', '0100', 'pdt_programe0100.sh', '2018-08-09', '2018-08-10 14:42:31', '2018-08-10 14:42:41', '0', null);
INSERT INTO `etl_job_log` VALUES ('169', 'CSM', 'CSUM_LWQ', '15', '0100', 'csum_lwq0100.sh', '2018-08-09', '2018-08-10 14:42:51', '2018-08-10 14:43:01', '0', null);
INSERT INTO `etl_job_log` VALUES ('170', 'SDT', 'TEST1', '26', '0100', 'test10100.sh', '2018-08-10', '2018-08-11 12:40:26', '2018-08-11 12:40:36', '0', null);
INSERT INTO `etl_job_log` VALUES ('171', 'SDT', 'TEST3', '30', '0100', 'test30100.sh', '2018-08-10', '2018-08-11 12:40:46', '2018-08-11 12:40:56', '0', null);
INSERT INTO `etl_job_log` VALUES ('172', 'SDT', 'TEST2', '27', '0100', 'test20100.sh', '2018-08-10', '2018-08-11 12:40:46', '2018-08-11 12:40:56', '0', null);
INSERT INTO `etl_job_log` VALUES ('173', 'DQC', 'AAAAAAA', '9', '0100', 'aaaaaaa0100.sh', '2018-08-10', '2018-08-11 12:40:46', '2018-08-11 12:40:56', '0', null);
INSERT INTO `etl_job_log` VALUES ('174', 'PDT', 'PDT_PROGRAME', '28', '0100', 'pdt_programe0100.sh', '2018-08-10', '2018-08-11 12:41:06', '2018-08-11 12:41:16', '0', null);
INSERT INTO `etl_job_log` VALUES ('175', 'SDT', 'TEST1', '27', '0100', 'test10100.sh', '2018-08-10', '2018-08-11 13:48:13', '2018-08-11 13:48:23', '0', null);
INSERT INTO `etl_job_log` VALUES ('176', 'SDT', 'TEST2', '28', '0100', 'test20100.sh', '2018-08-10', '2018-08-11 13:48:33', '2018-08-11 13:48:43', '0', null);
INSERT INTO `etl_job_log` VALUES ('177', 'SDT', 'TEST3', '31', '0100', 'test30100.sh', '2018-08-10', '2018-08-11 13:48:33', '2018-08-11 13:48:43', '0', null);
INSERT INTO `etl_job_log` VALUES ('178', 'DQC', 'AAAAAAA', '10', '0100', 'aaaaaaa0100.sh', '2018-08-10', '2018-08-11 13:48:33', '2018-08-11 13:48:43', '0', null);
INSERT INTO `etl_job_log` VALUES ('179', 'PDT', 'PDT_PROGRAME', '29', '0100', 'pdt_programe0100.sh', '2018-08-10', '2018-08-11 13:48:53', '2018-08-11 13:49:03', '0', null);
INSERT INTO `etl_job_log` VALUES ('180', 'SDT', 'TEST1', '28', '0100', 'test10100.sh', '2018-08-10', '2018-08-11 13:52:03', '2018-08-11 13:52:13', '0', null);
INSERT INTO `etl_job_log` VALUES ('181', 'SDT', 'TEST3', '32', '0100', 'test30100.sh', '2018-08-10', '2018-08-11 13:52:23', '2018-08-11 13:52:33', '0', null);
INSERT INTO `etl_job_log` VALUES ('182', 'SDT', 'TEST2', '29', '0100', 'test20100.sh', '2018-08-10', '2018-08-11 13:52:23', '2018-08-11 13:52:33', '0', null);
INSERT INTO `etl_job_log` VALUES ('183', 'DQC', 'AAAAAAA', '11', '0100', 'aaaaaaa0100.sh', '2018-08-10', '2018-08-11 13:52:23', '2018-08-11 13:52:33', '0', null);
INSERT INTO `etl_job_log` VALUES ('184', 'PDT', 'PDT_PROGRAME', '30', '0100', 'pdt_programe0100.sh', '2018-08-10', '2018-08-11 13:52:43', '2018-08-11 13:52:53', '0', null);
INSERT INTO `etl_job_log` VALUES ('185', 'SDT', 'LWQ1', '4', '0100', 'lwq10100.sh', '2018-08-10', '2018-08-12 21:21:50', '2018-08-12 21:22:01', '0', null);
INSERT INTO `etl_job_log` VALUES ('186', 'PDT', 'LWQ2', '4', '0100', 'lwq20100.sh', '2018-08-10', '2018-08-12 21:22:11', '2018-08-12 21:22:21', '0', null);
INSERT INTO `etl_job_log` VALUES ('187', 'CSM', 'CSUM_LWQ', '16', '0100', 'csum_lwq0100.sh', '2018-08-10', '2018-08-12 21:22:31', '2018-08-12 21:22:41', '0', null);
INSERT INTO `etl_job_log` VALUES ('188', 'CSM', 'CSUM_LWQ', '17', '0100', 'csum_lwq0100.sh', '2018-08-10', '2018-08-12 21:22:51', '2018-08-12 21:23:01', '0', null);
INSERT INTO `etl_job_log` VALUES ('189', 'SDT', 'TEST1', '29', '0100', 'test10100.sh', '2018-08-11', '2018-08-12 22:09:31', '2018-08-12 22:09:41', '0', null);
INSERT INTO `etl_job_log` VALUES ('190', 'DQC', 'AAAAAAA', '12', '0100', 'aaaaaaa0100.sh', '2018-08-11', '2018-08-12 22:09:51', '2018-08-12 22:10:01', '0', null);
INSERT INTO `etl_job_log` VALUES ('191', 'SDT', 'TEST3', '33', '0100', 'test30100.sh', '2018-08-11', '2018-08-12 22:09:51', '2018-08-12 22:10:01', '0', null);
INSERT INTO `etl_job_log` VALUES ('192', 'SDT', 'TEST2', '30', '0100', 'test20100.sh', '2018-08-11', '2018-08-12 22:09:51', '2018-08-12 22:10:01', '0', null);
INSERT INTO `etl_job_log` VALUES ('193', 'PDT', 'PDT_PROGRAME', '31', '0100', 'pdt_programe0100.sh', '2018-08-11', '2018-08-12 22:10:11', '2018-08-12 22:10:21', '0', null);
INSERT INTO `etl_job_log` VALUES ('194', 'DQC', 'BBBB', '3', '0100', 'bbbb0100.sh', '2018-08-11', '2018-08-13 18:08:14', '2018-08-13 18:08:14', '1', null);
INSERT INTO `etl_job_log` VALUES ('195', 'DQC', 'BBBB', '4', '0100', 'bbbb0100.sh', '2018-08-11', '2018-08-13 18:10:24', '2018-08-13 18:10:34', '0', null);
INSERT INTO `etl_job_log` VALUES ('196', 'DQC', 'DDDD', '0', '0100', 'dddd0100.sh', '2018-08-11', '2018-08-13 20:29:07', '2018-08-13 20:29:17', '0', null);
INSERT INTO `etl_job_log` VALUES ('197', 'DQC', 'CCCC', '0', '0100', 'cccc0100.sh', '2018-08-11', '2018-08-13 20:36:18', '2018-08-13 20:36:28', '0', null);

-- ----------------------------
-- Table structure for `etl_job_log_bak`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_log_bak`;
CREATE TABLE `etl_job_log_bak` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `JobSessionID` int(11) NOT NULL,
  `JobStepID` char(4) NOT NULL,
  `ScriptFile` varchar(50) NOT NULL,
  `TXDate` date NOT NULL,
  `StartTime` char(19) DEFAULT NULL,
  `EndTime` char(19) DEFAULT NULL,
  `ReturnCode` int(11) DEFAULT NULL,
  `Seconds` int(11) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`JobSessionID`,`JobStepID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_log_bak
-- ----------------------------
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '0', '0100', 'test10100.sh', '2018-07-24', '2018-07-25 11:36:15', '2018-07-25 11:36:15', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '6', '0100', 'test10100.sh', '2018-07-18', '2018-07-19 17:07:51', '2018-07-19 17:07:51', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '7', '0100', 'test10100.sh', '2018-07-18', '2018-07-19 17:09:31', '2018-07-19 17:09:31', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '8', '0100', 'test10100.sh', '2018-07-18', '2018-07-19 17:19:01', '2018-07-19 17:19:01', '127', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '9', '0100', 'test10100.sh', '2018-07-18', '2018-07-19 23:13:41', '2018-07-19 23:13:41', '127', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '10', '0100', 'test10100.sh', '2018-07-18', '2018-07-19 23:15:21', '2018-07-19 23:15:21', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '11', '0100', 'test10100.sh', '2018-07-15', '2018-07-20 10:21:43', '2018-07-20 10:21:43', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '12', '0100', 'test10100.sh', '2018-07-15', '2018-07-20 10:27:53', '2018-07-20 10:27:53', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '13', '0100', 'test10100.sh', '2018-07-16', '2018-07-20 17:53:27', '2018-07-20 17:53:27', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '14', '0100', 'test10100.sh', '2018-07-16', '2018-07-23 11:07:11', '2018-07-23 11:07:11', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST1', '15', '0100', 'test10100.sh', '2018-07-16', '2018-07-23 11:08:11', '2018-07-23 11:08:11', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST2', '0', '0100', 'test20100.sh', '2018-07-24', '2018-07-25 11:36:26', '2018-07-25 11:36:26', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST2', '3', '0100', 'test20100.sh', '2018-07-18', '2018-07-19 17:08:01', '2018-07-19 17:08:01', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST2', '4', '0100', 'test20100.sh', '2018-07-18', '2018-07-19 17:09:41', '2018-07-19 17:09:41', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST2', '5', '0100', 'test20100.sh', '2018-07-18', '2018-07-19 23:15:31', '2018-07-19 23:15:31', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST2', '6', '0100', 'test20100.sh', '2018-07-15', '2018-07-20 10:28:03', '2018-07-20 10:28:03', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST2', '7', '0100', 'test20100.sh', '2018-07-16', '2018-07-20 17:53:37', '2018-07-20 17:53:37', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST2', '8', '0100', 'test20100.sh', '2018-07-16', '2018-07-23 11:07:21', '2018-07-23 11:07:21', '0', null);
INSERT INTO `etl_job_log_bak` VALUES ('SDT', 'TEST3', '0', '0100', 'test30100.sh', '2018-07-16', '2018-07-23 17:45:35', '2018-07-25 11:36:26', '0', null);

-- ----------------------------
-- Table structure for `etl_job_queue`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_queue`;
CREATE TABLE `etl_job_queue` (
  `ETL_Server` varchar(10) NOT NULL,
  `SeqID` int(11) DEFAULT NULL,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `TXDate` date NOT NULL,
  `RequestTime` varchar(19) NOT NULL,
  PRIMARY KEY (`ETL_Server`,`ETL_System`,`ETL_Job`,`RequestTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_queue
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_job_source`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_source`;
CREATE TABLE `etl_job_source` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Source` varchar(80) NOT NULL,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Conv_File_Head` varchar(80) NOT NULL,
  `AutoFilter` char(1) DEFAULT NULL,
  `Alert` char(1) DEFAULT NULL,
  `BeforeHour` int(11) DEFAULT NULL,
  `BeforeMin` int(11) DEFAULT NULL,
  `OffsetDay` int(11) DEFAULT NULL,
  `LastCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Source` (`Source`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_source
-- ----------------------------
INSERT INTO `etl_job_source` VALUES ('15', 'TEST1', 'SDT', 'TEST1', 'TEST1', '0', '0', '0', '0', '0', '12');
INSERT INTO `etl_job_source` VALUES ('16', 'TEST2', 'SDT', 'TEST2', 'TEST2', '0', '0', '0', '0', '0', '12');
INSERT INTO `etl_job_source` VALUES ('17', 'TEST3', 'SDT', 'TEST3', 'TEST3', '0', '0', '0', '0', '0', '12');
INSERT INTO `etl_job_source` VALUES ('18', 'PDT_PROGRAME', 'PDT', 'PDT_PROGRAME', 'PDT_PROGRAME', '0', '0', '0', '0', '0', '12');
INSERT INTO `etl_job_source` VALUES ('20', 'LWQ1', 'SDT', 'LWQ1', 'LWQ1', '0', '0', '0', '0', '0', '12');
INSERT INTO `etl_job_source` VALUES ('21', 'LWQ2', 'PDT', 'LWQ2', 'LWQ2', '0', '0', '0', '0', '0', '12');
INSERT INTO `etl_job_source` VALUES ('23', 'CSUM_LWQ', 'CSM', 'CSUM_LWQ', 'CSUM_LWQ', '0', '0', '0', '0', '0', '12');
INSERT INTO `etl_job_source` VALUES ('24', 'AAAAAAA', 'DQC', 'AAAAAAA', 'AAAAAAA', '0', '0', '0', '0', '0', '12');
INSERT INTO `etl_job_source` VALUES ('25', 'BBBB', 'DQC', 'BBBB', 'BBBB', '0', '0', '0', '0', '0', '13');
INSERT INTO `etl_job_source` VALUES ('28', 'CCC', 'DQC', 'CCC', 'CCC', '0', '0', '0', '0', '0', null);
INSERT INTO `etl_job_source` VALUES ('29', 'DDDD', 'DQC', 'DDDD', 'DDDD', '0', '0', '0', '0', '0', '13');
INSERT INTO `etl_job_source` VALUES ('30', 'CCCC', 'DQC', 'CCCC', 'CCCC', '0', '0', '0', '0', '0', '13');

-- ----------------------------
-- Table structure for `etl_job_source_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_source_tmp`;
CREATE TABLE `etl_job_source_tmp` (
  `Source` varchar(80) NOT NULL,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Conv_File_Head` varchar(80) NOT NULL,
  `AutoFilter` char(1) DEFAULT NULL,
  `Alert` char(1) DEFAULT NULL,
  `BeforeHour` int(11) DEFAULT NULL,
  `BeforeMin` int(11) DEFAULT NULL,
  `OffsetDay` int(11) DEFAULT NULL,
  `LastCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_source_tmp
-- ----------------------------
INSERT INTO `etl_job_source_tmp` VALUES ('CSUM_LWQ', 'CSM', 'CSUM_LWQ', 'CSUM_LWQ', '0', '0', '0', '0', '0', '30');
INSERT INTO `etl_job_source_tmp` VALUES ('LWQ1', 'SDT', 'LWQ1', 'LWQ1', '0', '0', '0', '0', '0', null);
INSERT INTO `etl_job_source_tmp` VALUES ('LWQ2', 'PDT', 'LWQ2', 'LWQ2', '0', '0', '0', '0', '0', null);
INSERT INTO `etl_job_source_tmp` VALUES ('PDT_PROGRAME', 'PDT', 'PDT_PROGRAME', 'PDT_PROGRAME', '0', '0', '0', '0', '0', '30');
INSERT INTO `etl_job_source_tmp` VALUES ('TEST1', 'SDT', 'TEST1', 'TEST1', '0', '0', '0', '0', '0', '30');
INSERT INTO `etl_job_source_tmp` VALUES ('TEST2', 'SDT', 'TEST2', 'TEST2', '0', '0', '0', '0', '0', '30');
INSERT INTO `etl_job_source_tmp` VALUES ('TEST3', 'SDT', 'TEST3', 'TEST3', '0', '0', '0', '0', '0', '30');

-- ----------------------------
-- Table structure for `etl_job_status`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_status`;
CREATE TABLE `etl_job_status` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `JobSessionID` int(11) NOT NULL,
  `TXDate` date NOT NULL,
  `StartTime` char(19) DEFAULT NULL,
  `EndTime` char(19) DEFAULT NULL,
  `JobStatus` varchar(20) DEFAULT NULL,
  `FileCnt` int(11) DEFAULT NULL,
  `CubeStatus` varchar(20) DEFAULT NULL,
  `ExpectedRecord` int(11) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`JobSessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_status
-- ----------------------------
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '6', '2018-07-25', '2018-08-07 11:15:49', '2018-08-07 11:15:59', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '7', '2018-07-25', '2018-08-07 11:55:49', '2018-08-07 11:56:00', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '8', '2018-07-25', '2018-08-08 08:47:01', '2018-08-08 08:47:11', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '9', '2018-07-25', '2018-08-09 11:22:48', '2018-08-09 11:22:58', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '10', '2018-07-25', '2018-08-09 14:40:16', '2018-08-09 14:40:26', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '11', '2018-07-25', '2018-08-09 14:40:37', '2018-08-09 14:40:47', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '12', '2018-07-25', '2018-08-09 15:52:08', '2018-08-09 15:52:18', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '13', '2018-07-26', '2018-08-10 14:22:51', '2018-08-10 14:23:01', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '14', '2018-08-09', '2018-08-10 14:23:11', '2018-08-10 14:23:21', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '15', '2018-08-09', '2018-08-10 14:42:51', '2018-08-10 14:43:01', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '16', '2018-08-10', '2018-08-12 21:22:31', '2018-08-12 21:22:41', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('CSM', 'CSUM_LWQ', '17', '2018-08-10', '2018-08-12 21:22:51', '2018-08-12 21:23:01', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '3', '2018-07-25', '2018-08-09 15:39:07', '2018-08-09 15:39:17', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '4', '2018-07-25', '2018-08-09 15:51:27', '2018-08-09 15:51:37', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '5', '2018-07-26', '2018-08-10 08:13:00', '2018-08-10 08:13:10', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '6', '2018-08-09', '2018-08-10 11:16:01', '2018-08-10 11:16:11', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '7', '2018-08-09', '2018-08-10 11:16:41', '2018-08-10 11:16:51', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '8', '2018-08-09', '2018-08-10 14:21:11', '2018-08-10 14:21:21', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '9', '2018-08-10', '2018-08-11 12:40:46', '2018-08-11 12:40:56', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '10', '2018-08-10', '2018-08-11 13:48:33', '2018-08-11 13:48:43', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '11', '2018-08-10', '2018-08-11 13:52:23', '2018-08-11 13:52:33', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'AAAAAAA', '12', '2018-08-11', '2018-08-12 22:09:51', '2018-08-12 22:10:01', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'BBBB', '3', '2018-08-11', '2018-08-13 18:08:14', '2018-08-13 18:08:14', 'Failed', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'BBBB', '4', '2018-08-11', '2018-08-13 18:10:24', '2018-08-13 18:10:34', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'CCCC', '0', '2018-08-11', '2018-08-13 20:36:18', '2018-08-13 20:36:28', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('DQC', 'DDDD', '0', '2018-08-11', '2018-08-13 20:29:07', '2018-08-13 20:29:17', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'LWQ2', '0', '2018-07-25', '2018-08-07 11:15:29', '2018-08-07 11:15:39', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'LWQ2', '1', '2018-07-25', '2018-08-08 08:46:41', '2018-08-08 08:46:51', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'LWQ2', '2', '2018-07-25', '2018-08-09 14:39:56', '2018-08-09 14:40:06', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'LWQ2', '3', '2018-08-09', '2018-08-10 14:22:31', '2018-08-10 14:22:41', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'LWQ2', '4', '2018-08-10', '2018-08-12 21:22:11', '2018-08-12 21:22:21', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '17', '2018-07-25', '2018-08-07 11:55:29', '2018-08-07 11:55:39', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '18', '2018-07-25', '2018-08-07 12:00:10', '2018-08-07 12:00:20', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '19', '2018-07-25', '2018-08-09 11:22:28', '2018-08-09 11:22:38', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '20', '2018-07-25', '2018-08-09 11:25:09', '2018-08-09 11:25:19', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '21', '2018-07-25', '2018-08-09 11:30:40', '2018-08-09 11:30:50', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '22', '2018-07-25', '2018-08-09 15:51:48', '2018-08-09 15:51:58', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '23', '2018-07-26', '2018-08-10 08:13:20', '2018-08-10 08:13:30', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '24', '2018-08-09', '2018-08-10 11:17:21', '2018-08-10 11:17:31', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '25', '2018-08-09', '2018-08-10 11:17:41', '2018-08-10 11:17:51', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '26', '2018-08-09', '2018-08-10 14:21:31', '2018-08-10 14:21:41', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '27', '2018-08-09', '2018-08-10 14:42:31', '2018-08-10 14:42:41', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '28', '2018-08-10', '2018-08-11 12:41:06', '2018-08-11 12:41:16', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '29', '2018-08-10', '2018-08-11 13:48:53', '2018-08-11 13:49:03', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '30', '2018-08-10', '2018-08-11 13:52:43', '2018-08-11 13:52:53', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('PDT', 'PDT_PROGRAME', '31', '2018-08-11', '2018-08-12 22:10:11', '2018-08-12 22:10:21', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'LWQ1', '0', '2018-07-25', '2018-08-07 11:09:18', '2018-08-07 11:09:18', 'Failed', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'LWQ1', '1', '2018-07-25', '2018-08-07 11:15:09', '2018-08-07 11:15:19', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'LWQ1', '2', '2018-07-25', '2018-08-08 08:46:21', '2018-08-08 08:46:31', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'LWQ1', '3', '2018-08-09', '2018-08-10 14:22:11', '2018-08-10 14:22:21', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'LWQ1', '4', '2018-08-10', '2018-08-12 21:21:50', '2018-08-12 21:22:01', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '16', '2018-07-25', '2018-08-07 11:54:49', '2018-08-07 11:54:59', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '17', '2018-07-25', '2018-08-07 11:59:30', '2018-08-07 11:59:40', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '18', '2018-07-25', '2018-08-09 11:21:48', '2018-08-09 11:21:58', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '19', '2018-07-25', '2018-08-09 11:24:28', '2018-08-09 11:24:39', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '20', '2018-07-25', '2018-08-09 11:30:00', '2018-08-09 11:30:10', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '21', '2018-07-25', '2018-08-09 15:51:07', '2018-08-09 15:51:17', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '22', '2018-07-26', '2018-08-10 08:12:40', '2018-08-10 08:12:50', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '23', '2018-08-09', '2018-08-10 11:15:40', '2018-08-10 11:15:50', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '24', '2018-08-09', '2018-08-10 11:16:21', '2018-08-10 11:16:31', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '25', '2018-08-09', '2018-08-10 14:20:51', '2018-08-10 14:21:01', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '26', '2018-08-10', '2018-08-11 12:40:26', '2018-08-11 12:40:36', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '27', '2018-08-10', '2018-08-11 13:48:13', '2018-08-11 13:48:23', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '28', '2018-08-10', '2018-08-11 13:52:03', '2018-08-11 13:52:13', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST1', '29', '2018-08-11', '2018-08-12 22:09:31', '2018-08-12 22:09:41', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '17', '2018-07-25', '2018-08-07 11:55:09', '2018-08-07 11:55:19', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '18', '2018-07-25', '2018-08-07 11:59:50', '2018-08-07 12:00:00', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '19', '2018-07-25', '2018-08-09 11:22:08', '2018-08-09 11:22:18', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '20', '2018-07-25', '2018-08-09 11:24:49', '2018-08-09 11:24:59', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '21', '2018-07-25', '2018-08-09 11:30:20', '2018-08-09 11:30:30', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '22', '2018-07-25', '2018-08-09 15:51:27', '2018-08-09 15:51:37', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '23', '2018-07-26', '2018-08-10 08:13:00', '2018-08-10 08:13:10', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '24', '2018-08-09', '2018-08-10 11:16:01', '2018-08-10 11:16:11', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '25', '2018-08-09', '2018-08-10 11:16:41', '2018-08-10 11:16:51', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '26', '2018-08-09', '2018-08-10 14:21:12', '2018-08-10 14:21:22', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '27', '2018-08-10', '2018-08-11 12:40:46', '2018-08-11 12:40:56', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '28', '2018-08-10', '2018-08-11 13:48:33', '2018-08-11 13:48:43', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '29', '2018-08-10', '2018-08-11 13:52:23', '2018-08-11 13:52:33', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST2', '30', '2018-08-11', '2018-08-12 22:09:51', '2018-08-12 22:10:01', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '18', '2018-07-25', '2018-08-07 11:55:09', '2018-08-07 11:55:19', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '19', '2018-07-25', '2018-08-07 11:59:50', '2018-08-07 12:00:00', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '20', '2018-07-25', '2018-08-09 11:22:08', '2018-08-09 11:22:18', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '21', '2018-07-25', '2018-08-09 11:24:49', '2018-08-09 11:24:59', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '22', '2018-07-25', '2018-08-09 11:30:20', '2018-08-09 11:30:30', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '23', '2018-07-25', '2018-08-09 15:51:27', '2018-08-09 15:51:37', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '24', '2018-07-26', '2018-08-10 08:13:00', '2018-08-10 08:13:10', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '25', '2018-08-09', '2018-08-10 11:16:00', '2018-08-10 11:16:11', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '26', '2018-08-09', '2018-08-10 11:16:41', '2018-08-10 11:16:51', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '27', '2018-08-09', '2018-08-10 11:17:01', '2018-08-10 11:17:11', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '28', '2018-08-09', '2018-08-10 14:21:11', '2018-08-10 14:21:21', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '29', '2018-08-09', '2018-08-10 14:42:11', '2018-08-10 14:42:21', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '30', '2018-08-10', '2018-08-11 12:40:46', '2018-08-11 12:40:56', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '31', '2018-08-10', '2018-08-11 13:48:33', '2018-08-11 13:48:43', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '32', '2018-08-10', '2018-08-11 13:52:23', '2018-08-11 13:52:33', 'Done', '0', null, '0');
INSERT INTO `etl_job_status` VALUES ('SDT', 'TEST3', '33', '2018-08-11', '2018-08-12 22:09:51', '2018-08-12 22:10:01', 'Done', '0', null, '0');

-- ----------------------------
-- Table structure for `etl_job_status_type`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_status_type`;
CREATE TABLE `etl_job_status_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(50) NOT NULL,
  `STATUS_DESC` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `STATUS` (`STATUS`),
  UNIQUE KEY `STATUS_DESC` (`STATUS_DESC`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_status_type
-- ----------------------------
INSERT INTO `etl_job_status_type` VALUES ('1', 'Ready', '准备执行');
INSERT INTO `etl_job_status_type` VALUES ('2', 'Pending', '即将执行');
INSERT INTO `etl_job_status_type` VALUES ('3', 'Running', '正在执行');
INSERT INTO `etl_job_status_type` VALUES ('4', 'Done', '执行成功');
INSERT INTO `etl_job_status_type` VALUES ('5', 'Failed', '执行失败');

-- ----------------------------
-- Table structure for `etl_job_step`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_step`;
CREATE TABLE `etl_job_step` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `JobStepID` char(4) NOT NULL,
  `ScriptID` int(11) NOT NULL,
  `ScriptFile` varchar(100) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Enable` char(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ETL_System` (`ETL_System`,`ETL_Job`,`JobStepID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_step
-- ----------------------------
INSERT INTO `etl_job_step` VALUES ('15', 'SDT', 'TEST1', '0100', '1', 'test10100.sh', '', '1');
INSERT INTO `etl_job_step` VALUES ('16', 'SDT', 'TEST2', '0100', '1', 'test20100.sh', '', '1');
INSERT INTO `etl_job_step` VALUES ('17', 'SDT', 'TEST3', '0100', '1', 'test30100.sh', '', '1');
INSERT INTO `etl_job_step` VALUES ('18', 'PDT', 'PDT_PROGRAME', '0100', '1', 'pdt_programe0100.sh', '', '1');
INSERT INTO `etl_job_step` VALUES ('20', 'SDT', 'LWQ1', '0100', '1', 'lwq10100.sh', '', '1');
INSERT INTO `etl_job_step` VALUES ('21', 'PDT', 'LWQ2', '0100', '1', 'lwq20100.sh', '', '1');
INSERT INTO `etl_job_step` VALUES ('23', 'CSM', 'CSUM_LWQ', '0100', '1', 'csum_lwq0100.sh', null, '1');
INSERT INTO `etl_job_step` VALUES ('24', 'DQC', 'AAAAAAA', '0100', '1', 'aaaaaaa0100.sh', null, '1');
INSERT INTO `etl_job_step` VALUES ('25', 'DQC', 'BBBB', '0100', '1', 'bbbb0100.sh', null, '1');
INSERT INTO `etl_job_step` VALUES ('28', 'DQC', 'CCC', '0100', '1', 'ccc0100.sh', null, '1');
INSERT INTO `etl_job_step` VALUES ('29', 'DQC', 'DDDD', '0100', '1', 'dddd0100.sh', null, '1');
INSERT INTO `etl_job_step` VALUES ('30', 'DQC', 'CCCC', '0100', '1', 'cccc0100.sh', null, '1');

-- ----------------------------
-- Table structure for `etl_job_step_bak`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_step_bak`;
CREATE TABLE `etl_job_step_bak` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `JobStepID` char(4) NOT NULL,
  `ScriptID` int(11) NOT NULL,
  `ScriptFile` varchar(100) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Enable` char(1) NOT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`JobStepID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_step_bak
-- ----------------------------
INSERT INTO `etl_job_step_bak` VALUES ('CSM', 'CSUM_LWQ', '0100', '1', 'csum_lwq0100.sh', '', '1');
INSERT INTO `etl_job_step_bak` VALUES ('PDT', 'LWQ2', '0100', '1', 'lwq20100.sh', '', '1');
INSERT INTO `etl_job_step_bak` VALUES ('PDT', 'PDT_PROGRAME', '0100', '1', 'pdt_programe0100.sh', '', '1');
INSERT INTO `etl_job_step_bak` VALUES ('SDT', 'LWQ1', '0100', '1', 'lwq10100.sh', '', '1');
INSERT INTO `etl_job_step_bak` VALUES ('SDT', 'TEST1', '0100', '1', 'test10100.sh', '', '1');
INSERT INTO `etl_job_step_bak` VALUES ('SDT', 'TEST2', '0100', '1', 'test20100.sh', '', '1');
INSERT INTO `etl_job_step_bak` VALUES ('SDT', 'TEST3', '0100', '1', 'test30100.sh', '', '1');

-- ----------------------------
-- Table structure for `etl_job_stream`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_stream`;
CREATE TABLE `etl_job_stream` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Stream_System` char(3) NOT NULL,
  `Stream_Job` varchar(80) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Enable` char(1) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`Stream_System`,`Stream_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_stream
-- ----------------------------
INSERT INTO `etl_job_stream` VALUES ('PDT', 'PDT_PROGRAME', 'CSM', 'CSUM_LWQ', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'LWQ1', 'PDT', 'LWQ2', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'TEST1', 'DQC', 'AAAAAAA', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'TEST1', 'DQC', 'BBBB', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'TEST1', 'DQC', 'CCC', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'TEST1', 'DQC', 'CCCC', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'TEST1', 'DQC', 'DDDD', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'TEST1', 'SDT', 'TEST2', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'TEST1', 'SDT', 'TEST3', null, '1');
INSERT INTO `etl_job_stream` VALUES ('SDT', 'TEST3', 'PDT', 'PDT_PROGRAME', null, '1');

-- ----------------------------
-- Table structure for `etl_job_timewindow`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_timewindow`;
CREATE TABLE `etl_job_timewindow` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Allow` char(1) DEFAULT NULL,
  `BeginHour` int(11) DEFAULT NULL,
  `EndHour` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ETL_System` (`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_timewindow
-- ----------------------------
INSERT INTO `etl_job_timewindow` VALUES ('1', 'CSM', 'CSUM_LWQ', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('2', 'PDT', 'LWQ2', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('3', 'PDT', 'PDT_PROGRAME', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('4', 'SDT', 'LWQ1', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('5', 'SDT', 'TEST1', 'Y', '1', '23');
INSERT INTO `etl_job_timewindow` VALUES ('6', 'SDT', 'TEST2', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('7', 'SDT', 'TEST3', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('8', 'DQC', 'AAAAAAA', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('9', 'DQC', 'BBBB', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('12', 'DQC', 'CCC', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('13', 'DQC', 'DDDD', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow` VALUES ('14', 'DQC', 'CCCC', 'Y', '0', '23');

-- ----------------------------
-- Table structure for `etl_job_timewindow_bak`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_timewindow_bak`;
CREATE TABLE `etl_job_timewindow_bak` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Allow` char(1) DEFAULT NULL,
  `BeginHour` int(11) DEFAULT NULL,
  `EndHour` int(11) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_timewindow_bak
-- ----------------------------
INSERT INTO `etl_job_timewindow_bak` VALUES ('CSM', 'CSUM_LWQ', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow_bak` VALUES ('PDT', 'LWQ2', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow_bak` VALUES ('PDT', 'PDT_PROGRAME', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow_bak` VALUES ('SDT', 'LWQ1', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow_bak` VALUES ('SDT', 'TEST1', 'Y', '1', '23');
INSERT INTO `etl_job_timewindow_bak` VALUES ('SDT', 'TEST2', 'Y', '0', '23');
INSERT INTO `etl_job_timewindow_bak` VALUES ('SDT', 'TEST3', 'Y', '0', '23');

-- ----------------------------
-- Table structure for `etl_job_trace`
-- ----------------------------
DROP TABLE IF EXISTS `etl_job_trace`;
CREATE TABLE `etl_job_trace` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `TXDate` date NOT NULL,
  `JobStatus` varchar(20) DEFAULT NULL,
  `StartTime` char(19) DEFAULT NULL,
  `EndTime` char(19) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`TXDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_job_trace
-- ----------------------------
INSERT INTO `etl_job_trace` VALUES ('CSM', 'CSUM_LWQ', '2018-07-25', 'Done', '2018-08-07 11:15:49', '2018-08-09 15:52:18');
INSERT INTO `etl_job_trace` VALUES ('CSM', 'CSUM_LWQ', '2018-07-26', 'Done', '2018-08-10 14:22:51', '2018-08-10 14:23:01');
INSERT INTO `etl_job_trace` VALUES ('CSM', 'CSUM_LWQ', '2018-08-09', 'Done', '2018-08-10 14:23:11', '2018-08-10 14:43:01');
INSERT INTO `etl_job_trace` VALUES ('CSM', 'CSUM_LWQ', '2018-08-10', 'Done', '2018-08-12 21:22:31', '2018-08-12 21:23:01');
INSERT INTO `etl_job_trace` VALUES ('DQC', 'AAAAAAA', '2018-07-25', 'Done', '2018-08-09 15:39:07', '2018-08-09 15:51:37');
INSERT INTO `etl_job_trace` VALUES ('DQC', 'AAAAAAA', '2018-07-26', 'Done', '2018-08-10 08:13:00', '2018-08-10 08:13:10');
INSERT INTO `etl_job_trace` VALUES ('DQC', 'AAAAAAA', '2018-08-09', 'Done', '2018-08-10 11:16:01', '2018-08-10 14:21:21');
INSERT INTO `etl_job_trace` VALUES ('DQC', 'AAAAAAA', '2018-08-10', 'Done', '2018-08-11 12:40:46', '2018-08-11 13:52:33');
INSERT INTO `etl_job_trace` VALUES ('DQC', 'AAAAAAA', '2018-08-11', 'Done', '2018-08-12 22:09:51', '2018-08-12 22:10:01');
INSERT INTO `etl_job_trace` VALUES ('DQC', 'BBBB', '2018-08-11', 'Done', '2018-08-13 18:08:14', '2018-08-13 18:10:34');
INSERT INTO `etl_job_trace` VALUES ('DQC', 'CCCC', '2018-08-11', 'Done', '2018-08-13 20:36:18', '2018-08-13 20:36:28');
INSERT INTO `etl_job_trace` VALUES ('DQC', 'DDDD', '2018-08-11', 'Done', '2018-08-13 20:29:07', '2018-08-13 20:29:17');
INSERT INTO `etl_job_trace` VALUES ('PDT', 'LWQ2', '2018-07-25', 'Done', '2018-08-07 11:15:29', '2018-08-09 14:40:06');
INSERT INTO `etl_job_trace` VALUES ('PDT', 'LWQ2', '2018-08-09', 'Done', '2018-08-10 14:22:31', '2018-08-10 14:22:41');
INSERT INTO `etl_job_trace` VALUES ('PDT', 'LWQ2', '2018-08-10', 'Done', '2018-08-12 21:22:11', '2018-08-12 21:22:21');
INSERT INTO `etl_job_trace` VALUES ('PDT', 'PDT_PROGRAME', '2018-07-25', 'Done', '2018-08-07 11:55:29', '2018-08-09 15:51:58');
INSERT INTO `etl_job_trace` VALUES ('PDT', 'PDT_PROGRAME', '2018-07-26', 'Done', '2018-08-10 08:13:20', '2018-08-10 08:13:30');
INSERT INTO `etl_job_trace` VALUES ('PDT', 'PDT_PROGRAME', '2018-08-09', 'Done', '2018-08-10 11:17:21', '2018-08-10 14:42:41');
INSERT INTO `etl_job_trace` VALUES ('PDT', 'PDT_PROGRAME', '2018-08-10', 'Done', '2018-08-11 12:41:06', '2018-08-11 13:52:53');
INSERT INTO `etl_job_trace` VALUES ('PDT', 'PDT_PROGRAME', '2018-08-11', 'Done', '2018-08-12 22:10:11', '2018-08-12 22:10:21');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'LWQ1', '2018-07-25', 'Done', '2018-08-07 11:09:18', '2018-08-08 08:46:31');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'LWQ1', '2018-08-09', 'Done', '2018-08-10 14:22:11', '2018-08-10 14:22:21');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'LWQ1', '2018-08-10', 'Done', '2018-08-12 21:21:50', '2018-08-12 21:22:01');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST1', '2018-07-25', 'Done', '2018-08-07 11:54:49', '2018-08-09 15:51:17');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST1', '2018-07-26', 'Done', '2018-08-10 08:12:40', '2018-08-10 08:12:50');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST1', '2018-08-09', 'Done', '2018-08-10 11:15:40', '2018-08-10 14:21:01');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST1', '2018-08-10', 'Done', '2018-08-11 12:40:26', '2018-08-11 13:52:13');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST1', '2018-08-11', 'Done', '2018-08-12 22:09:31', '2018-08-12 22:09:41');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST2', '2018-07-25', 'Done', '2018-08-07 11:55:09', '2018-08-09 15:51:37');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST2', '2018-07-26', 'Done', '2018-08-10 08:13:00', '2018-08-10 08:13:10');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST2', '2018-08-09', 'Done', '2018-08-10 11:16:01', '2018-08-10 14:21:22');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST2', '2018-08-10', 'Done', '2018-08-11 12:40:46', '2018-08-11 13:52:33');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST2', '2018-08-11', 'Done', '2018-08-12 22:09:51', '2018-08-12 22:10:01');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST3', '2018-07-25', 'Done', '2018-08-07 11:55:09', '2018-08-09 15:51:37');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST3', '2018-07-26', 'Done', '2018-08-10 08:13:00', '2018-08-10 08:13:10');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST3', '2018-08-09', 'Done', '2018-08-10 11:16:00', '2018-08-10 14:42:21');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST3', '2018-08-10', 'Done', '2018-08-11 12:40:46', '2018-08-11 13:52:33');
INSERT INTO `etl_job_trace` VALUES ('SDT', 'TEST3', '2018-08-11', 'Done', '2018-08-12 22:09:51', '2018-08-12 22:10:01');

-- ----------------------------
-- Table structure for `etl_received_file`
-- ----------------------------
DROP TABLE IF EXISTS `etl_received_file`;
CREATE TABLE `etl_received_file` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `ReceivedFile` varchar(100) NOT NULL,
  `JobSessionID` int(11) NOT NULL,
  `FileSize` decimal(18,0) DEFAULT NULL,
  `ExpectedRecord` int(11) DEFAULT NULL,
  `ArrivalTime` char(19) DEFAULT NULL,
  `ReceivedTime` char(19) DEFAULT NULL,
  `Location` varchar(128) DEFAULT NULL,
  `Status` char(1) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`ReceivedFile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_received_file
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_relatedjob`
-- ----------------------------
DROP TABLE IF EXISTS `etl_relatedjob`;
CREATE TABLE `etl_relatedjob` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `RelatedSystem` char(3) NOT NULL,
  `RelatedJob` varchar(80) NOT NULL,
  `CheckMode` char(1) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Enable` char(1) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`RelatedSystem`,`RelatedJob`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_relatedjob
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_script`
-- ----------------------------
DROP TABLE IF EXISTS `etl_script`;
CREATE TABLE `etl_script` (
  `ScriptID` int(11) NOT NULL AUTO_INCREMENT,
  `ETL_Server` varchar(10) DEFAULT NULL,
  `FilePath` varchar(50) NOT NULL,
  `FileName` varchar(50) NOT NULL,
  `ScriptType` varchar(10) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ScriptID`),
  UNIQUE KEY `ETL_Server` (`ETL_Server`,`FilePath`,`FileName`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_script
-- ----------------------------
INSERT INTO `etl_script` VALUES ('1', 'etl1', '/app', 'test1.sh', 'sh', '测试调度程序1');
INSERT INTO `etl_script` VALUES ('12', 'etl1', '/app', 'a.py', 'py', '111');

-- ----------------------------
-- Table structure for `etl_server`
-- ----------------------------
DROP TABLE IF EXISTS `etl_server`;
CREATE TABLE `etl_server` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `ETL_Server` varchar(10) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `IPAddress` varchar(15) DEFAULT NULL,
  `AgentPort` int(11) DEFAULT NULL,
  `LiveCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ETL_Server` (`ETL_Server`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_server
-- ----------------------------
INSERT INTO `etl_server` VALUES ('1', 'etl1', '调度服务器', '192.168.137.130', '6346', '1');
INSERT INTO `etl_server` VALUES ('2', 'etl2', '测试服务器3', '192.168.100.101', '8888', '0');

-- ----------------------------
-- Table structure for `etl_server_bak`
-- ----------------------------
DROP TABLE IF EXISTS `etl_server_bak`;
CREATE TABLE `etl_server_bak` (
  `ETL_Server` varchar(10) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `IPAddress` varchar(15) DEFAULT NULL,
  `AgentPort` int(11) DEFAULT NULL,
  `LiveCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`ETL_Server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_server_bak
-- ----------------------------
INSERT INTO `etl_server_bak` VALUES ('etl1', '调度服务器', '192.168.137.130', '6346', '0');
INSERT INTO `etl_server_bak` VALUES ('etl2', '测试服务器3', '192.168.100.101', '8888', '1');
INSERT INTO `etl_server_bak` VALUES ('etl3', '测试服务器3', '192.168.100.103', '888888888', '1');

-- ----------------------------
-- Table structure for `etl_sys`
-- ----------------------------
DROP TABLE IF EXISTS `etl_sys`;
CREATE TABLE `etl_sys` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ETL_System` char(3) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `DataKeepPeriod` int(11) DEFAULT NULL,
  `LogKeepPeriod` int(11) DEFAULT NULL,
  `RecordKeepPeriod` int(11) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Concurrent` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ETL_System` (`ETL_System`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_sys
-- ----------------------------
INSERT INTO `etl_sys` VALUES ('17', 'SDT', '贴源区数据库', '10', '10', '10', '10', '10');
INSERT INTO `etl_sys` VALUES ('18', 'PDT', '基础区数据库', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys` VALUES ('19', 'CSM', '汇总区数据库', '10', '10', '10', '30', '10');
INSERT INTO `etl_sys` VALUES ('20', 'DQC', '数据质量模板', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys` VALUES ('21', 'HTM', '汇总层数据汇入mysql', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys` VALUES ('22', 'MTR', '标签库脚本', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys` VALUES ('23', 'CHS', 'sdata数据拉链', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys` VALUES ('24', 'MCK', '数据质量检查', '10', '10', '10', '20', '10');

-- ----------------------------
-- Table structure for `etl_sys_bak`
-- ----------------------------
DROP TABLE IF EXISTS `etl_sys_bak`;
CREATE TABLE `etl_sys_bak` (
  `ETL_System` char(3) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `DataKeepPeriod` int(11) DEFAULT NULL,
  `LogKeepPeriod` int(11) DEFAULT NULL,
  `RecordKeepPeriod` int(11) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Concurrent` int(11) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_sys_bak
-- ----------------------------
INSERT INTO `etl_sys_bak` VALUES ('CHS', 'sdata数据拉链', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys_bak` VALUES ('CSM', '汇总区数据库', '10', '10', '10', '30', '10');
INSERT INTO `etl_sys_bak` VALUES ('DQC', '数据质量模板', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys_bak` VALUES ('HTM', '汇总层数据汇入mysql', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys_bak` VALUES ('MCK', '数据质量检查', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys_bak` VALUES ('MTR', '标签库脚本', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys_bak` VALUES ('PDT', '基础区数据库', '10', '10', '10', '20', '10');
INSERT INTO `etl_sys_bak` VALUES ('SDT', '贴源区数据库', '10', '10', '10', '10', '10');

-- ----------------------------
-- Table structure for `etl_timetrigger`
-- ----------------------------
DROP TABLE IF EXISTS `etl_timetrigger`;
CREATE TABLE `etl_timetrigger` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `TriggerType` char(1) DEFAULT NULL,
  `StartHour` int(11) DEFAULT NULL,
  `StartMin` int(11) DEFAULT NULL,
  `OffsetDay` int(11) DEFAULT NULL,
  `LastRunDate` int(11) DEFAULT NULL,
  `LastRunTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_timetrigger
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_timetrigger_calendar`
-- ----------------------------
DROP TABLE IF EXISTS `etl_timetrigger_calendar`;
CREATE TABLE `etl_timetrigger_calendar` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Seq` int(11) NOT NULL,
  `YearNum` int(11) DEFAULT NULL,
  `MonthNum` int(11) DEFAULT NULL,
  `DayNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`,`Seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_timetrigger_calendar
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_timetrigger_monthly`
-- ----------------------------
DROP TABLE IF EXISTS `etl_timetrigger_monthly`;
CREATE TABLE `etl_timetrigger_monthly` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Timing` char(31) NOT NULL,
  `EndOfMonth` char(1) NOT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_timetrigger_monthly
-- ----------------------------

-- ----------------------------
-- Table structure for `etl_timetrigger_weekly`
-- ----------------------------
DROP TABLE IF EXISTS `etl_timetrigger_weekly`;
CREATE TABLE `etl_timetrigger_weekly` (
  `ETL_System` char(3) NOT NULL,
  `ETL_Job` varchar(80) NOT NULL,
  `Timing` char(7) NOT NULL,
  PRIMARY KEY (`ETL_System`,`ETL_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etl_timetrigger_weekly
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', null, 'io.dfjx.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002C696F2E64666A782E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000464666A7874000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', null, 'io.dfjx.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002C696F2E64666A782E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler', 'centos11534163129991', '1534163856124', '15000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1534165200000', '1534163400000', '5', 'WAITING', 'CRON', '1532351965000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002C696F2E64666A782E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000464666A7874000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', 'TASK_2', 'DEFAULT', null, '1532352600000', '-1', '5', 'PAUSED', 'CRON', '1532351965000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002C696F2E64666A782E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800);

-- ----------------------------
-- Table structure for `schedule_job`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'testTask', 'test', 'dfjx', '0 0/30 * * * ?', '0', '有参数测试', '2016-12-01 23:16:46');
INSERT INTO `schedule_job` VALUES ('2', 'testTask', 'test2', null, '0 0/30 * * * ?', '1', '无参数测试', '2016-12-03 14:55:56');

-- ----------------------------
-- Table structure for `schedule_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=621 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('1', '1', 'testTask', 'test', 'dfjx', '0', null, '1027', '2018-07-23 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('2', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-23 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('3', '1', 'testTask', 'test', 'dfjx', '0', null, '1039', '2018-07-23 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('4', '1', 'testTask', 'test', 'dfjx', '0', null, '1025', '2018-07-23 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('5', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-07-23 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('6', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-24 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('7', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-24 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('8', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-24 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('9', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-24 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('10', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-07-24 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('11', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-24 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('12', '1', 'testTask', 'test', 'dfjx', '0', null, '1020', '2018-07-24 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('13', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-24 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('14', '1', 'testTask', 'test', 'dfjx', '0', null, '1023', '2018-07-24 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('15', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-24 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('16', '1', 'testTask', 'test', 'dfjx', '0', null, '1022', '2018-07-24 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('17', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-24 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('18', '1', 'testTask', 'test', 'dfjx', '0', null, '1029', '2018-07-24 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('19', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-24 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('20', '1', 'testTask', 'test', 'dfjx', '0', null, '1025', '2018-07-24 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('21', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-24 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('22', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-07-24 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('23', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-07-24 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('24', '1', 'testTask', 'test', 'dfjx', '0', null, '1027', '2018-07-24 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('25', '1', 'testTask', 'test', 'dfjx', '0', null, '1020', '2018-07-24 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('26', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-24 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('27', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-24 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('28', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-24 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('29', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-24 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('30', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-24 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('31', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-24 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('32', '1', 'testTask', 'test', 'dfjx', '0', null, '1025', '2018-07-24 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('33', '1', 'testTask', 'test', 'dfjx', '0', null, '1036', '2018-07-24 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('34', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-24 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('35', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-24 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('36', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-24 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('37', '1', 'testTask', 'test', 'dfjx', '0', null, '1027', '2018-07-25 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('38', '1', 'testTask', 'test', 'dfjx', '0', null, '1035', '2018-07-25 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('39', '1', 'testTask', 'test', 'dfjx', '0', null, '1032', '2018-07-25 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('40', '1', 'testTask', 'test', 'dfjx', '0', null, '1037', '2018-07-25 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('41', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-25 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('42', '1', 'testTask', 'test', 'dfjx', '0', null, '1034', '2018-07-25 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('43', '1', 'testTask', 'test', 'dfjx', '0', null, '1027', '2018-07-25 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('44', '1', 'testTask', 'test', 'dfjx', '0', null, '1024', '2018-07-25 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('45', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-25 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('46', '1', 'testTask', 'test', 'dfjx', '0', null, '1036', '2018-07-25 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('47', '1', 'testTask', 'test', 'dfjx', '0', null, '1026', '2018-07-25 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('48', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-25 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('49', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-25 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('50', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-25 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('51', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-25 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('52', '1', 'testTask', 'test', 'dfjx', '0', null, '1020', '2018-07-25 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('53', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-25 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('54', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-07-25 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('55', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-25 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('56', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-25 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('57', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-25 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('58', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-25 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('59', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-25 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('60', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-25 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('61', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-25 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('62', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-25 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('63', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-25 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('64', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-25 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('65', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-25 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('66', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-25 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('67', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-25 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('68', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-26 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('69', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-26 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('70', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-26 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('71', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-26 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('72', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-26 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('73', '1', 'testTask', 'test', 'dfjx', '0', null, '1033', '2018-07-26 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('74', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-26 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('75', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-26 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('76', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-26 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('77', '1', 'testTask', 'test', 'dfjx', '0', null, '1044', '2018-07-26 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('78', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-26 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('79', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-26 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('80', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-26 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('81', '1', 'testTask', 'test', 'dfjx', '0', null, '1019', '2018-07-26 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('82', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-26 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('83', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-26 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('84', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-07-26 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('85', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-26 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('86', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-26 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('87', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-26 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('88', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-26 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('89', '1', 'testTask', 'test', 'dfjx', '0', null, '1063', '2018-07-26 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('90', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-26 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('91', '1', 'testTask', 'test', 'dfjx', '0', null, '1047', '2018-07-26 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('92', '1', 'testTask', 'test', 'dfjx', '0', null, '1053', '2018-07-26 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('93', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-07-26 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('94', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-07-26 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('95', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-07-26 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('96', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-26 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('97', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-07-26 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('98', '1', 'testTask', 'test', 'dfjx', '0', null, '1031', '2018-07-26 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('99', '1', 'testTask', 'test', 'dfjx', '0', null, '1039', '2018-07-27 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('100', '1', 'testTask', 'test', 'dfjx', '0', null, '1055', '2018-07-27 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('101', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-27 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('102', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-27 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('103', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-27 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('104', '1', 'testTask', 'test', 'dfjx', '0', null, '1003', '2018-07-27 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('105', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-27 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('106', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-27 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('107', '1', 'testTask', 'test', 'dfjx', '0', null, '1051', '2018-07-27 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('108', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-27 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('109', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-07-27 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('110', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-27 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('111', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-27 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('112', '1', 'testTask', 'test', 'dfjx', '0', null, '1028', '2018-07-27 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('113', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-27 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('114', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-07-27 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('115', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-27 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('116', '1', 'testTask', 'test', 'dfjx', '0', null, '1047', '2018-07-27 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('117', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-27 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('118', '1', 'testTask', 'test', 'dfjx', '0', null, '1040', '2018-07-27 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('119', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-27 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('120', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-27 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('121', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-07-27 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('122', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-27 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('123', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-27 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('124', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-27 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('125', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-27 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('126', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-27 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('127', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-27 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('128', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-27 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('129', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-27 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('130', '1', 'testTask', 'test', 'dfjx', '0', null, '1032', '2018-07-28 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('131', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-28 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('132', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-28 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('133', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-28 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('134', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-28 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('135', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-07-28 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('136', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-28 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('137', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-28 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('138', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-28 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('139', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-07-28 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('140', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-07-28 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('141', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-28 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('142', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-28 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('143', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-07-28 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('144', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-28 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('145', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-28 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('146', '1', 'testTask', 'test', 'dfjx', '0', null, '1040', '2018-07-28 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('147', '1', 'testTask', 'test', 'dfjx', '0', null, '1044', '2018-07-28 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('148', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-28 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('149', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-28 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('150', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-28 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('151', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-28 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('152', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-28 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('153', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-07-28 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('154', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-28 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('155', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-07-28 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('156', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-07-28 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('157', '1', 'testTask', 'test', 'dfjx', '0', null, '1022', '2018-07-28 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('158', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-28 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('159', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-28 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('160', '1', 'testTask', 'test', 'dfjx', '0', null, '1063', '2018-07-28 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('161', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-07-28 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('162', '1', 'testTask', 'test', 'dfjx', '0', null, '1055', '2018-07-28 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('163', '1', 'testTask', 'test', 'dfjx', '0', null, '1054', '2018-07-28 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('164', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-28 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('165', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-07-28 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('166', '1', 'testTask', 'test', 'dfjx', '0', null, '1020', '2018-07-28 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('167', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-07-28 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('168', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-28 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('169', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-28 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('170', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-28 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('171', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-07-28 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('172', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-07-28 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('173', '1', 'testTask', 'test', 'dfjx', '0', null, '1055', '2018-07-28 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('174', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-28 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('175', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-28 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('176', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-28 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('177', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-28 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('178', '1', 'testTask', 'test', 'dfjx', '0', null, '1029', '2018-07-29 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('179', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-07-29 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('180', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-29 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('181', '1', 'testTask', 'test', 'dfjx', '0', null, '1045', '2018-07-29 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('182', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-29 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('183', '1', 'testTask', 'test', 'dfjx', '0', null, '1019', '2018-07-29 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('184', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-29 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('185', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-29 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('186', '1', 'testTask', 'test', 'dfjx', '0', null, '1059', '2018-07-29 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('187', '1', 'testTask', 'test', 'dfjx', '0', null, '1044', '2018-07-29 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('188', '1', 'testTask', 'test', 'dfjx', '0', null, '1037', '2018-07-29 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('189', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-29 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('190', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-29 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('191', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-29 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('192', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-29 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('193', '1', 'testTask', 'test', 'dfjx', '0', null, '1036', '2018-07-29 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('194', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-29 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('195', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-29 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('196', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-29 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('197', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-29 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('198', '1', 'testTask', 'test', 'dfjx', '0', null, '1036', '2018-07-29 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('199', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-07-29 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('200', '1', 'testTask', 'test', 'dfjx', '0', null, '1047', '2018-07-29 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('201', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-29 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('202', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-29 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('203', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-29 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('204', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-29 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('205', '1', 'testTask', 'test', 'dfjx', '0', null, '1030', '2018-07-29 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('206', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-29 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('207', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-29 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('208', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-29 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('209', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-30 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('210', '1', 'testTask', 'test', 'dfjx', '0', null, '1061', '2018-07-30 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('211', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-30 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('212', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-30 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('213', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-07-30 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('214', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-30 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('215', '1', 'testTask', 'test', 'dfjx', '0', null, '1037', '2018-07-30 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('216', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-30 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('217', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-07-30 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('218', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-07-30 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('219', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-30 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('220', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-30 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('221', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-30 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('222', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-30 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('223', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-07-30 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('224', '1', 'testTask', 'test', 'dfjx', '0', null, '1057', '2018-07-31 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('225', '1', 'testTask', 'test', 'dfjx', '0', null, '1058', '2018-07-31 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('226', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-31 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('227', '1', 'testTask', 'test', 'dfjx', '0', null, '1114', '2018-07-31 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('228', '1', 'testTask', 'test', 'dfjx', '0', null, '1079', '2018-07-31 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('229', '1', 'testTask', 'test', 'dfjx', '0', null, '1020', '2018-07-31 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('230', '1', 'testTask', 'test', 'dfjx', '0', null, '1029', '2018-07-31 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('231', '1', 'testTask', 'test', 'dfjx', '0', null, '1032', '2018-07-31 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('232', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-07-31 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('233', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-31 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('234', '1', 'testTask', 'test', 'dfjx', '0', null, '1039', '2018-07-31 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('235', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-07-31 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('236', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-07-31 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('237', '1', 'testTask', 'test', 'dfjx', '0', null, '1043', '2018-07-31 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('238', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-07-31 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('239', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-07-31 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('240', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-07-31 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('241', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-07-31 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('242', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-07-31 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('243', '1', 'testTask', 'test', 'dfjx', '0', null, '1020', '2018-07-31 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('244', '1', 'testTask', 'test', 'dfjx', '0', null, '1037', '2018-07-31 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('245', '1', 'testTask', 'test', 'dfjx', '0', null, '1075', '2018-08-01 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('246', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-01 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('247', '1', 'testTask', 'test', 'dfjx', '0', null, '1042', '2018-08-01 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('248', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-08-01 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('249', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-01 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('250', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-01 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('251', '1', 'testTask', 'test', 'dfjx', '0', null, '1026', '2018-08-01 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('252', '1', 'testTask', 'test', 'dfjx', '0', null, '1039', '2018-08-01 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('253', '1', 'testTask', 'test', 'dfjx', '0', null, '1036', '2018-08-01 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('254', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-01 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('255', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-01 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('256', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-01 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('257', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-01 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('258', '1', 'testTask', 'test', 'dfjx', '0', null, '1044', '2018-08-01 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('259', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-01 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('260', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-01 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('261', '1', 'testTask', 'test', 'dfjx', '0', null, '1034', '2018-08-01 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('262', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-01 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('263', '1', 'testTask', 'test', 'dfjx', '0', null, '1055', '2018-08-01 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('264', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-02 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('265', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-02 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('266', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-02 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('267', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-02 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('268', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-02 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('269', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-02 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('270', '1', 'testTask', 'test', 'dfjx', '0', null, '1022', '2018-08-02 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('271', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-02 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('272', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-02 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('273', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-02 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('274', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-02 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('275', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-02 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('276', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-02 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('277', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-02 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('278', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-02 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('279', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-02 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('280', '1', 'testTask', 'test', 'dfjx', '0', null, '1041', '2018-08-02 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('281', '1', 'testTask', 'test', 'dfjx', '0', null, '1023', '2018-08-02 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('282', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-02 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('283', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-02 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('284', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-02 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('285', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-02 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('286', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-08-02 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('287', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-02 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('288', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-02 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('289', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-02 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('290', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-02 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('291', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-02 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('292', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-02 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('293', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-02 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('294', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-02 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('295', '1', 'testTask', 'test', 'dfjx', '0', null, '1027', '2018-08-03 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('296', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-03 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('297', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-08-03 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('298', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-03 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('299', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-03 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('300', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-03 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('301', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-03 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('302', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-03 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('303', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-08-03 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('304', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-03 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('305', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-03 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('306', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-03 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('307', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-03 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('308', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-03 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('309', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-03 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('310', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-03 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('311', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-03 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('312', '1', 'testTask', 'test', 'dfjx', '0', null, '1042', '2018-08-03 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('313', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-03 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('314', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-03 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('315', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-03 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('316', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-03 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('317', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-03 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('318', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-03 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('319', '1', 'testTask', 'test', 'dfjx', '0', null, '1057', '2018-08-03 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('320', '1', 'testTask', 'test', 'dfjx', '0', null, '1125', '2018-08-03 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('321', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-03 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('322', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-03 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('323', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-03 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('324', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-03 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('325', '1', 'testTask', 'test', 'dfjx', '0', null, '1024', '2018-08-03 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('326', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-03 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('327', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-03 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('328', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-08-03 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('329', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-03 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('330', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-08-03 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('331', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-03 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('332', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-03 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('333', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-03 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('334', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-03 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('335', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-03 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('336', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-03 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('337', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-03 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('338', '1', 'testTask', 'test', 'dfjx', '0', null, '1023', '2018-08-03 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('339', '1', 'testTask', 'test', 'dfjx', '0', null, '1023', '2018-08-03 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('340', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-03 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('341', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-08-03 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('342', '1', 'testTask', 'test', 'dfjx', '0', null, '1019', '2018-08-04 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('343', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-04 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('344', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-04 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('345', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-04 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('346', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-04 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('347', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-04 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('348', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-04 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('349', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-04 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('350', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-04 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('351', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-04 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('352', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-04 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('353', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-04 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('354', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-04 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('355', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-04 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('356', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-04 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('357', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-04 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('358', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-04 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('359', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-04 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('360', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-04 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('361', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-04 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('362', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-04 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('363', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-04 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('364', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-04 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('365', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-04 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('366', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-04 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('367', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-04 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('368', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-06 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('369', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-06 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('370', '1', 'testTask', 'test', 'dfjx', '0', null, '1061', '2018-08-06 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('371', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-06 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('372', '1', 'testTask', 'test', 'dfjx', '0', null, '1059', '2018-08-06 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('373', '1', 'testTask', 'test', 'dfjx', '0', null, '1062', '2018-08-06 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('374', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-08-06 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('375', '1', 'testTask', 'test', 'dfjx', '0', null, '1019', '2018-08-06 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('376', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-06 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('377', '1', 'testTask', 'test', 'dfjx', '0', null, '1022', '2018-08-06 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('378', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-08-06 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('379', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-06 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('380', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-08-06 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('381', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-06 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('382', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-06 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('383', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-06 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('384', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-06 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('385', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-06 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('386', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-06 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('387', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-06 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('388', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-06 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('389', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-06 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('390', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-06 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('391', '1', 'testTask', 'test', 'dfjx', '0', null, '1019', '2018-08-07 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('392', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('393', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('394', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-07 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('395', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-07 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('396', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-07 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('397', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-07 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('398', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-07 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('399', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-07 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('400', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-07 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('401', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-07 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('402', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('403', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-07 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('404', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-07 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('405', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-08-07 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('406', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('407', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('408', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('409', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-07 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('410', '1', 'testTask', 'test', 'dfjx', '0', null, '1045', '2018-08-07 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('411', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-07 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('412', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('413', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-07 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('414', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-07 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('415', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-08-07 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('416', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-08-07 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('417', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-07 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('418', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-07 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('419', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-07 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('420', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('421', '1', 'testTask', 'test', 'dfjx', '0', null, '1030', '2018-08-07 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('422', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-08-07 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('423', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-07 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('424', '1', 'testTask', 'test', 'dfjx', '0', null, '1024', '2018-08-07 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('425', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-07 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('426', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-07 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('427', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('428', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-07 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('429', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('430', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-07 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('431', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-07 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('432', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-07 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('433', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('434', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-07 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('435', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-07 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('436', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-07 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('437', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-07 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('438', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-07 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('439', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-08-08 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('440', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-08 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('441', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-08 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('442', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-08 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('443', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-08 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('444', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-08 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('445', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-08 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('446', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-08 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('447', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-08-08 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('448', '1', 'testTask', 'test', 'dfjx', '0', null, '1031', '2018-08-08 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('449', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-08 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('450', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-08 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('451', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-08 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('452', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-08 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('453', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-08 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('454', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-08 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('455', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-08 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('456', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-08 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('457', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-08 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('458', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-08 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('459', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-08 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('460', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-08 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('461', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-08 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('462', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-08-08 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('463', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-08 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('464', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-08 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('465', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-08 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('466', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-08 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('467', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-08 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('468', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-08 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('469', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-08-08 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('470', '1', 'testTask', 'test', 'dfjx', '0', null, '1027', '2018-08-08 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('471', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-08 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('472', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-08 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('473', '1', 'testTask', 'test', 'dfjx', '0', null, '1057', '2018-08-08 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('474', '1', 'testTask', 'test', 'dfjx', '0', null, '1041', '2018-08-08 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('475', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-08 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('476', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-08 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('477', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-08 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('478', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-08 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('479', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-08 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('480', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-08 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('481', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-08 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('482', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-08-08 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('483', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-08 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('484', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-08 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('485', '1', 'testTask', 'test', 'dfjx', '0', null, '1033', '2018-08-09 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('486', '1', 'testTask', 'test', 'dfjx', '0', null, '1019', '2018-08-09 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('487', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-09 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('488', '1', 'testTask', 'test', 'dfjx', '0', null, '1024', '2018-08-09 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('489', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-09 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('490', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-09 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('491', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-09 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('492', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-09 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('493', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-09 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('494', '1', 'testTask', 'test', 'dfjx', '0', null, '1018', '2018-08-09 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('495', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-09 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('496', '1', 'testTask', 'test', 'dfjx', '0', null, '1003', '2018-08-09 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('497', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-09 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('498', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-09 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('499', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-09 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('500', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-09 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('501', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-09 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('502', '1', 'testTask', 'test', 'dfjx', '0', null, '1017', '2018-08-09 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('503', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-09 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('504', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-09 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('505', '1', 'testTask', 'test', 'dfjx', '0', null, '1039', '2018-08-09 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('506', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-09 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('507', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-09 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('508', '1', 'testTask', 'test', 'dfjx', '0', null, '1058', '2018-08-09 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('509', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-09 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('510', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-09 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('511', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-09 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('512', '1', 'testTask', 'test', 'dfjx', '0', null, '1047', '2018-08-09 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('513', '1', 'testTask', 'test', 'dfjx', '0', null, '1022', '2018-08-09 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('514', '1', 'testTask', 'test', 'dfjx', '0', null, '1056', '2018-08-09 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('515', '1', 'testTask', 'test', 'dfjx', '0', null, '1056', '2018-08-09 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('516', '1', 'testTask', 'test', 'dfjx', '0', null, '1036', '2018-08-09 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('517', '1', 'testTask', 'test', 'dfjx', '0', null, '1047', '2018-08-09 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('518', '1', 'testTask', 'test', 'dfjx', '0', null, '1012', '2018-08-09 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('519', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-09 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('520', '1', 'testTask', 'test', 'dfjx', '0', null, '1023', '2018-08-10 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('521', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-10 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('522', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-10 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('523', '1', 'testTask', 'test', 'dfjx', '0', null, '1003', '2018-08-10 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('524', '1', 'testTask', 'test', 'dfjx', '0', null, '1057', '2018-08-10 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('525', '1', 'testTask', 'test', 'dfjx', '0', null, '1043', '2018-08-10 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('526', '1', 'testTask', 'test', 'dfjx', '0', null, '1055', '2018-08-10 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('527', '1', 'testTask', 'test', 'dfjx', '0', null, '1057', '2018-08-10 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('528', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-10 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('529', '1', 'testTask', 'test', 'dfjx', '0', null, '1034', '2018-08-10 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('530', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-10 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('531', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-10 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('532', '1', 'testTask', 'test', 'dfjx', '0', null, '1045', '2018-08-10 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('533', '1', 'testTask', 'test', 'dfjx', '0', null, '1031', '2018-08-10 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('534', '1', 'testTask', 'test', 'dfjx', '0', null, '1027', '2018-08-10 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('535', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-10 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('536', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-10 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('537', '1', 'testTask', 'test', 'dfjx', '0', null, '1058', '2018-08-10 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('538', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-10 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('539', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-10 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('540', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-10 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('541', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-10 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('542', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-10 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('543', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-10 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('544', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-10 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('545', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-10 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('546', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-10 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('547', '1', 'testTask', 'test', 'dfjx', '0', null, '1013', '2018-08-10 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('548', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-10 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('549', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-11 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('550', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-11 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('551', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-11 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('552', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-11 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('553', '1', 'testTask', 'test', 'dfjx', '0', null, '1028', '2018-08-11 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('554', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-11 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('555', '1', 'testTask', 'test', 'dfjx', '0', null, '1074', '2018-08-11 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('556', '1', 'testTask', 'test', 'dfjx', '0', null, '1074', '2018-08-11 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('557', '1', 'testTask', 'test', 'dfjx', '0', null, '1050', '2018-08-11 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('558', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-11 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('559', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-11 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('560', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-11 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('561', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-11 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('562', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-11 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('563', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-11 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('564', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-11 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('565', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-11 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('566', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-11 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('567', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-11 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('568', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-11 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('569', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-11 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('570', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-11 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('571', '1', 'testTask', 'test', 'dfjx', '0', null, '1009', '2018-08-11 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('572', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-11 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('573', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-11 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('574', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-11 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('575', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-11 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('576', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-11 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('577', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-12 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('578', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-12 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('579', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-12 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('580', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-12 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('581', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-12 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('582', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-12 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('583', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-12 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('584', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-12 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('585', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-12 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('586', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-12 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('587', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-12 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('588', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-12 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('589', '1', 'testTask', 'test', 'dfjx', '0', null, '1014', '2018-08-12 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('590', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-12 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('591', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-12 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('592', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-08-12 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('593', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-12 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('594', '1', 'testTask', 'test', 'dfjx', '0', null, '1007', '2018-08-12 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('595', '1', 'testTask', 'test', 'dfjx', '0', null, '1005', '2018-08-12 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('596', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-12 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('597', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-12 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('598', '1', 'testTask', 'test', 'dfjx', '0', null, '1010', '2018-08-12 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('599', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-12 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('600', '1', 'testTask', 'test', 'dfjx', '0', null, '1038', '2018-08-12 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('601', '1', 'testTask', 'test', 'dfjx', '0', null, '1098', '2018-08-12 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('602', '1', 'testTask', 'test', 'dfjx', '0', null, '1037', '2018-08-13 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('603', '1', 'testTask', 'test', 'dfjx', '0', null, '1046', '2018-08-13 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('604', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-08-13 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('605', '1', 'testTask', 'test', 'dfjx', '0', null, '1023', '2018-08-13 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('606', '1', 'testTask', 'test', 'dfjx', '0', null, '1016', '2018-08-13 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('607', '1', 'testTask', 'test', 'dfjx', '0', null, '1015', '2018-08-13 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('608', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-13 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('609', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-08-13 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('610', '1', 'testTask', 'test', 'dfjx', '0', null, '1024', '2018-08-13 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('611', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-08-13 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('612', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-13 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('613', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-13 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('614', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-08-13 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('615', '1', 'testTask', 'test', 'dfjx', '0', null, '1021', '2018-08-13 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('616', '1', 'testTask', 'test', 'dfjx', '0', null, '1006', '2018-08-13 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('617', '1', 'testTask', 'test', 'dfjx', '0', null, '1004', '2018-08-13 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('618', '1', 'testTask', 'test', 'dfjx', '0', null, '1008', '2018-08-13 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('619', '1', 'testTask', 'test', 'dfjx', '0', null, '1011', '2018-08-13 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('620', '1', 'testTask', 'test', 'dfjx', '0', null, '1092', '2018-08-13 20:30:00');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '北京东方金信科技有限公司', '0', '0');
INSERT INTO `sys_dept` VALUES ('2', '1', '海南分公司', '1', '0');
INSERT INTO `sys_dept` VALUES ('3', '1', '北京分公司', '2', '0');
INSERT INTO `sys_dept` VALUES ('4', '3', '技术部', '0', '0');
INSERT INTO `sys_dept` VALUES ('5', '3', '销售部', '1', '0');
INSERT INTO `sys_dept` VALUES ('6', '0', null, '0', '-1');

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '字典名称',
  `type` varchar(100) NOT NULL COMMENT '字典类型',
  `code` varchar(100) NOT NULL COMMENT '字典码',
  `value` varchar(1000) NOT NULL COMMENT '字典值',
  `order_num` int(11) DEFAULT '0' COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '性别', 'sex', '0', '女', '0', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '性别', 'sex', '1', '男', '1', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '性别', 'sex', '2', '未知', '3', null, '0');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '修改菜单', 'io.dfjx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"系统管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":1}', '16', '0:0:0:0:0:0:0:1', '2018-07-24 08:36:37');
INSERT INTO `sys_log` VALUES ('2', 'admin', '保存用户', 'io.dfjx.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"lwq\",\"password\":\"0fbdd9a6a8225b50e148529af1b39010666654f569af4d8b5487c1e543706794\",\"salt\":\"7juutNNDCbDnj4Xw5idh\",\"email\":\"lwq@126.com\",\"mobile\":\"18611061948\",\"status\":1,\"roleIdList\":[],\"createTime\":\"Jul 24, 2018 2:24:03 PM\",\"deptId\":2,\"deptName\":\"长沙分公司\"}', '55', '0:0:0:0:0:0:0:1', '2018-07-24 14:24:03');
INSERT INTO `sys_log` VALUES ('3', 'admin', '保存用户', 'io.dfjx.modules.sys.controller.SysUserController.save()', '{\"userId\":3,\"username\":\"lwq2\",\"password\":\"8210a4bde56fa1df65d85cee3701671ca0816598c708fb8daafe747a7eb79c3e\",\"salt\":\"2Y241X49aQFWfGME2Ehz\",\"email\":\"lwq@qq.com\",\"mobile\":\"18611071039\",\"status\":1,\"roleIdList\":[],\"createTime\":\"Jul 24, 2018 2:32:06 PM\",\"deptId\":4,\"deptName\":\"技术部\"}', '25', '0:0:0:0:0:0:0:1', '2018-07-24 14:32:06');
INSERT INTO `sys_log` VALUES ('4', 'admin', '保存配置', 'io.dfjx.modules.sys.controller.SysConfigController.save()', '{\"paramKey\":\"Ready\",\"paramValue\":\"已准备\",\"remark\":\"已准备\"}', '47', '0:0:0:0:0:0:0:1', '2018-07-24 22:04:52');
INSERT INTO `sys_log` VALUES ('5', 'admin', '保存配置', 'io.dfjx.modules.sys.controller.SysConfigController.save()', '{\"paramKey\":\"Pending\",\"paramValue\":\"待执行\",\"remark\":\"待执行\"}', '9', '0:0:0:0:0:0:0:1', '2018-07-24 22:05:30');
INSERT INTO `sys_log` VALUES ('6', 'admin', '保存配置', 'io.dfjx.modules.sys.controller.SysConfigController.save()', '{\"paramKey\":\"Running\",\"paramValue\":\"运行中\",\"remark\":\"运行中\"}', '7', '0:0:0:0:0:0:0:1', '2018-07-24 22:05:52');
INSERT INTO `sys_log` VALUES ('7', 'admin', '保存配置', 'io.dfjx.modules.sys.controller.SysConfigController.save()', '{\"paramKey\":\"Done\",\"paramValue\":\"已完成\",\"remark\":\"已完成\"}', '20', '0:0:0:0:0:0:0:1', '2018-07-24 22:06:10');
INSERT INTO `sys_log` VALUES ('8', 'admin', '修改配置', 'io.dfjx.modules.sys.controller.SysConfigController.update()', '{\"id\":3,\"paramKey\":\"Pending\",\"paramValue\":\"等待中\",\"remark\":\"等待中\"}', '23', '0:0:0:0:0:0:0:1', '2018-07-24 22:06:44');
INSERT INTO `sys_log` VALUES ('9', 'admin', '保存角色', 'io.dfjx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":1,\"roleName\":\"访问者\",\"deptId\":3,\"deptName\":\"北京分公司\",\"menuIdList\":[41,42,43,47,48,57,58,62,63],\"deptIdList\":[3],\"createTime\":\"Jul 30, 2018 11:29:04 AM\"}', '211', '0:0:0:0:0:0:0:1', '2018-07-30 11:29:04');
INSERT INTO `sys_log` VALUES ('10', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":2,\"username\":\"lwq\",\"salt\":\"7juutNNDCbDnj4Xw5idh\",\"email\":\"lwq@126.com\",\"mobile\":\"18611061948\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Jul 24, 2018 2:24:03 PM\",\"deptId\":2,\"deptName\":\"海南分公司\"}', '64', '0:0:0:0:0:0:0:1', '2018-07-30 11:29:34');
INSERT INTO `sys_log` VALUES ('11', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":2,\"username\":\"lwq\",\"password\":\"0fbdd9a6a8225b50e148529af1b39010666654f569af4d8b5487c1e543706794\",\"salt\":\"7juutNNDCbDnj4Xw5idh\",\"email\":\"lwq@126.com\",\"mobile\":\"18611061948\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Jul 24, 2018 2:24:03 PM\",\"deptId\":2,\"deptName\":\"海南分公司\"}', '35', '0:0:0:0:0:0:0:1', '2018-07-30 11:30:13');
INSERT INTO `sys_log` VALUES ('12', 'admin', '保存角色', 'io.dfjx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":2,\"roleName\":\"2\",\"remark\":\"调度管理员\",\"deptId\":4,\"deptName\":\"技术部\",\"menuIdList\":[41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64],\"deptIdList\":[4],\"createTime\":\"Jul 30, 2018 11:39:48 AM\"}', '177', '0:0:0:0:0:0:0:1', '2018-07-30 11:39:49');
INSERT INTO `sys_log` VALUES ('13', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"调度管理员\",\"remark\":\"调度管理员\",\"deptId\":4,\"deptName\":\"技术部\",\"menuIdList\":[41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64],\"deptIdList\":[4],\"createTime\":\"Jul 30, 2018 11:39:49 AM\"}', '108', '0:0:0:0:0:0:0:1', '2018-07-30 11:40:03');
INSERT INTO `sys_log` VALUES ('14', 'admin', '保存角色', 'io.dfjx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":3,\"roleName\":\"超级管理员\",\"deptId\":3,\"deptName\":\"北京分公司\",\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64],\"deptIdList\":[3],\"createTime\":\"Jul 30, 2018 11:40:39 AM\"}', '108', '0:0:0:0:0:0:0:1', '2018-07-30 11:40:39');
INSERT INTO `sys_log` VALUES ('15', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":3,\"username\":\"lwq2\",\"password\":\"8210a4bde56fa1df65d85cee3701671ca0816598c708fb8daafe747a7eb79c3e\",\"salt\":\"2Y241X49aQFWfGME2Ehz\",\"email\":\"lwq@qq.com\",\"mobile\":\"18611071039\",\"status\":1,\"roleIdList\":[2],\"createTime\":\"Jul 24, 2018 2:32:06 PM\",\"deptId\":4,\"deptName\":\"技术部\"}', '69', '0:0:0:0:0:0:0:1', '2018-07-30 11:41:20');
INSERT INTO `sys_log` VALUES ('16', 'admin', '删除配置', 'io.dfjx.modules.sys.controller.SysConfigController.delete()', '[5]', '18', '0:0:0:0:0:0:0:1', '2018-08-02 17:42:41');
INSERT INTO `sys_log` VALUES ('17', 'admin', '删除配置', 'io.dfjx.modules.sys.controller.SysConfigController.delete()', '[2,3,4]', '22', '0:0:0:0:0:0:0:1', '2018-08-02 17:42:46');
INSERT INTO `sys_log` VALUES ('18', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":3,\"roleName\":\"超级管理员\",\"deptId\":3,\"deptName\":\"北京分公司\",\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,66,68,57,58,59,60,61,62,63,64,69,70,65],\"deptIdList\":[3],\"createTime\":\"Jul 30, 2018 11:40:39 AM\"}', '203', '0:0:0:0:0:0:0:1', '2018-08-06 15:18:23');
INSERT INTO `sys_log` VALUES ('19', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"调度管理员\",\"remark\":\"调度管理员\",\"deptId\":4,\"deptName\":\"技术部\",\"menuIdList\":[41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,66,68,57,58,59,60,61,62,63,64,69,70],\"deptIdList\":[4],\"createTime\":\"Jul 30, 2018 11:39:49 AM\"}', '53', '0:0:0:0:0:0:0:1', '2018-08-06 15:18:50');
INSERT INTO `sys_log` VALUES ('20', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"root@dfjx.io\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[3],\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"北京东方金信科技有限公司\"}', '47', '0:0:0:0:0:0:0:1', '2018-08-06 15:20:39');
INSERT INTO `sys_log` VALUES ('21', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"root@dfjx.io\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[],\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"北京东方金信科技有限公司\"}', '16', '0:0:0:0:0:0:0:1', '2018-08-06 15:21:22');
INSERT INTO `sys_log` VALUES ('22', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":3,\"roleName\":\"超级管理员\",\"deptId\":3,\"deptName\":\"北京分公司\",\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,67,47,48,49,50,51,52,53,54,55,56,66,68,57,58,59,60,61,62,63,64,69,70,65],\"deptIdList\":[3],\"createTime\":\"Jul 30, 2018 11:40:39 AM\"}', '97', '0:0:0:0:0:0:0:1', '2018-08-06 15:22:13');
INSERT INTO `sys_log` VALUES ('23', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":3,\"roleName\":\"超级管理员\",\"deptId\":3,\"deptName\":\"北京分公司\",\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,67,47,48,49,50,51,52,53,54,55,56,66,68,57,58,59,60,61,62,63,64,69,70,65],\"deptIdList\":[1],\"createTime\":\"Jul 30, 2018 11:40:39 AM\"}', '86', '0:0:0:0:0:0:0:1', '2018-08-06 15:30:05');
INSERT INTO `sys_log` VALUES ('24', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":3,\"roleName\":\"超级管理员\",\"deptId\":1,\"deptName\":\"北京东方金信科技有限公司\",\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,67,47,48,49,50,51,52,53,54,55,56,66,68,57,58,59,60,61,62,63,64,69,70,65],\"deptIdList\":[1,2,3,4,5],\"createTime\":\"Jul 30, 2018 11:40:39 AM\"}', '98', '0:0:0:0:0:0:0:1', '2018-08-06 15:30:31');
INSERT INTO `sys_log` VALUES ('25', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"root@dfjx.io\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[3],\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"北京东方金信科技有限公司\"}', '29', '0:0:0:0:0:0:0:1', '2018-08-06 15:31:13');
INSERT INTO `sys_log` VALUES ('26', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"root@dfjx.io\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[],\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"北京东方金信科技有限公司\"}', '25', '0:0:0:0:0:0:0:1', '2018-08-06 15:31:37');
INSERT INTO `sys_log` VALUES ('27', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":3,\"roleName\":\"超级管理员\",\"deptId\":1,\"deptName\":\"北京东方金信科技有限公司\",\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,67,47,48,49,50,51,52,53,54,55,56,66,68,57,58,59,60,61,62,63,64,69,70,65,71,72,73],\"deptIdList\":[1,2,3,4,5],\"createTime\":\"Jul 30, 2018 11:40:39 AM\"}', '203', '0:0:0:0:0:0:0:1', '2018-08-07 14:40:36');
INSERT INTO `sys_log` VALUES ('28', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"调度管理员\",\"remark\":\"调度管理员\",\"deptId\":4,\"deptName\":\"技术部\",\"menuIdList\":[41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,66,68,57,58,59,60,61,62,63,64,69,70,71,72,73],\"deptIdList\":[4],\"createTime\":\"Jul 30, 2018 11:39:49 AM\"}', '73', '0:0:0:0:0:0:0:1', '2018-08-07 14:40:48');
INSERT INTO `sys_log` VALUES ('29', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":1,\"roleName\":\"访问者\",\"deptId\":3,\"deptName\":\"北京分公司\",\"menuIdList\":[41,42,43,47,48,57,58,62,63,71,72],\"deptIdList\":[3],\"createTime\":\"Jul 30, 2018 11:29:04 AM\"}', '38', '0:0:0:0:0:0:0:1', '2018-08-07 14:40:58');
INSERT INTO `sys_log` VALUES ('30', 'admin', '修改角色', 'io.dfjx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":1,\"roleName\":\"访问者\",\"deptId\":3,\"deptName\":\"北京分公司\",\"menuIdList\":[41,42,43,47,48,52,53,57,58,62,63,69,71,72],\"deptIdList\":[3],\"createTime\":\"Jul 30, 2018 11:29:04 AM\"}', '40', '0:0:0:0:0:0:0:1', '2018-08-07 14:41:18');
INSERT INTO `sys_log` VALUES ('31', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":2,\"username\":\"lwq\",\"password\":\"6ce99541eb6a850447247c7c73178600fcbdaf5882751b26d18a29078ca365bd\",\"salt\":\"7juutNNDCbDnj4Xw5idh\",\"email\":\"lwq@126.com\",\"mobile\":\"18611061948\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Jul 24, 2018 2:24:03 PM\",\"deptId\":2,\"deptName\":\"海南分公司\"}', '54', '0:0:0:0:0:0:0:1', '2018-08-07 16:01:27');
INSERT INTO `sys_log` VALUES ('32', 'admin', '修改用户', 'io.dfjx.modules.sys.controller.SysUserController.update()', '{\"userId\":3,\"username\":\"lwq2\",\"password\":\"94c62a971dc04f866aab0283da765733b77f373f1dedd67974265860ce7be18e\",\"salt\":\"2Y241X49aQFWfGME2Ehz\",\"email\":\"lwq@qq.com\",\"mobile\":\"18611071039\",\"status\":1,\"roleIdList\":[2],\"createTime\":\"Jul 24, 2018 2:32:06 PM\",\"deptId\":4,\"deptName\":\"技术部\"}', '27', '0:0:0:0:0:0:0:1', '2018-08-07 16:01:36');
INSERT INTO `sys_log` VALUES ('33', 'admin', '修改菜单', 'io.dfjx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":71,\"parentId\":41,\"parentName\":\"调度管理\",\"name\":\"ETL任务监控\",\"url\":\"modules/etl/jobrerun.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":9}', '31', '0:0:0:0:0:0:0:1', '2018-08-09 11:04:18');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '1');
INSERT INTO `sys_menu` VALUES ('2', '1', '管理员管理', 'modules/sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'modules/sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu` VALUES ('6', '1', '定时任务', 'modules/job/schedule.html', null, '1', 'fa fa-tasks', '5');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO `sys_menu` VALUES ('29', '1', '系统日志', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');
INSERT INTO `sys_menu` VALUES ('30', '1', '文件上传', 'modules/oss/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6');
INSERT INTO `sys_menu` VALUES ('31', '1', '部门管理', 'modules/sys/dept.html', null, '1', 'fa fa-file-code-o', '1');
INSERT INTO `sys_menu` VALUES ('32', '31', '查看', null, 'sys:dept:list,sys:dept:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('33', '31', '新增', null, 'sys:dept:save,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('34', '31', '修改', null, 'sys:dept:update,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('35', '31', '删除', null, 'sys:dept:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('36', '1', '字典管理', 'modules/sys/dict.html', null, '1', 'fa fa-bookmark-o', '6');
INSERT INTO `sys_menu` VALUES ('37', '36', '查看', null, 'sys:dict:list,sys:dict:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('38', '36', '新增', null, 'sys:dict:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('39', '36', '修改', null, 'sys:dict:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('40', '36', '删除', null, 'sys:dict:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('41', '0', '调度管理', null, null, '0', 'fa fa-tasks', '0');
INSERT INTO `sys_menu` VALUES ('42', '41', 'ETL服务器配置', 'modules/etl/server.html', null, '1', 'fa fa-server', '4');
INSERT INTO `sys_menu` VALUES ('43', '42', '查看', null, 'etl:server:list,etl:server:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('44', '42', '新增', null, 'etl:server:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('45', '42', '修改', null, 'etl:server:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('46', '42', '删除', null, 'etl:server:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('47', '41', '作业系统配置', 'modules/etl/sys.html', null, '1', 'fa fa-cogs', '5');
INSERT INTO `sys_menu` VALUES ('48', '47', '查看', null, 'etl:sys:list,etl:sys:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('49', '47', '新增', null, 'etl:sys:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('50', '47', '修改', null, 'etl:sys:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('51', '47', '删除', null, 'etl:sys:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('52', '41', '公共脚本配置', 'modules/etl/script.html', null, '1', 'fa fa-file-code-o', '7');
INSERT INTO `sys_menu` VALUES ('53', '52', '查看', null, 'etl:script:list,etl:script:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('54', '52', '新增', null, 'etl:script:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('55', '52', '修改', null, 'etl:script:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('56', '52', '删除', null, 'etl:script:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('57', '41', 'ETL任务管理', 'modules/etl/job.html', null, '1', 'fa fa-th-large', '8');
INSERT INTO `sys_menu` VALUES ('58', '57', '查看', null, 'etl:job:list,etl:job:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('59', '57', '新增', null, 'etl:job:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('60', '57', '修改', null, 'etl:job:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('61', '57', '删除', null, 'etl:job:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('62', '41', 'ETL任务日志', 'modules/etl/joblog.html', null, '1', 'fa fa-camera', '10');
INSERT INTO `sys_menu` VALUES ('63', '62', '查看', null, 'etl:joblog:list,etl:joblog:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('64', '62', '删除', null, 'etl:joblog:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('65', '41', '仪表盘', 'main.html', null, '1', 'fa fa-pie-chart', '0');
INSERT INTO `sys_menu` VALUES ('66', '52', '脚本上传', null, 'etl:script:upload', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('67', '42', '服务器列表', null, 'etl:server:getService', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('68', '52', '脚本键值对', null, 'etl:script:getScripts', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('69', '62', '查看日志详情', null, 'etl:joblog:loadlog', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('70', '62', '下载日志详情', null, 'etl:joblog:logdload', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('71', '41', 'ETL任务监控', 'modules/etl/jobrerun.html', null, '1', 'fa fa-tv', '9');
INSERT INTO `sys_menu` VALUES ('72', '71', '查看', null, 'etl:job:list,etl:job:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('73', '71', '重跑', null, 'etl:job:rerun', '2', null, '0');

-- ----------------------------
-- Table structure for `sys_menu_bak`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_bak`;
CREATE TABLE `sys_menu_bak` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu_bak
-- ----------------------------
INSERT INTO `sys_menu_bak` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '1');
INSERT INTO `sys_menu_bak` VALUES ('2', '1', '管理员管理', 'modules/sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu_bak` VALUES ('3', '1', '角色管理', 'modules/sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu_bak` VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu_bak` VALUES ('5', '1', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu_bak` VALUES ('6', '1', '定时任务', 'modules/job/schedule.html', null, '1', 'fa fa-tasks', '5');
INSERT INTO `sys_menu_bak` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('27', '1', '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO `sys_menu_bak` VALUES ('29', '1', '系统日志', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');
INSERT INTO `sys_menu_bak` VALUES ('30', '1', '文件上传', 'modules/oss/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6');
INSERT INTO `sys_menu_bak` VALUES ('31', '1', '部门管理', 'modules/sys/dept.html', null, '1', 'fa fa-file-code-o', '1');
INSERT INTO `sys_menu_bak` VALUES ('32', '31', '查看', null, 'sys:dept:list,sys:dept:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('33', '31', '新增', null, 'sys:dept:save,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('34', '31', '修改', null, 'sys:dept:update,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('35', '31', '删除', null, 'sys:dept:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('36', '1', '字典管理', 'modules/sys/dict.html', null, '1', 'fa fa-bookmark-o', '6');
INSERT INTO `sys_menu_bak` VALUES ('37', '36', '查看', null, 'sys:dict:list,sys:dict:info', '2', null, '6');
INSERT INTO `sys_menu_bak` VALUES ('38', '36', '新增', null, 'sys:dict:save', '2', null, '6');
INSERT INTO `sys_menu_bak` VALUES ('39', '36', '修改', null, 'sys:dict:update', '2', null, '6');
INSERT INTO `sys_menu_bak` VALUES ('40', '36', '删除', null, 'sys:dict:delete', '2', null, '6');
INSERT INTO `sys_menu_bak` VALUES ('41', '0', '调度管理', null, null, '0', 'fa fa-tasks', '0');
INSERT INTO `sys_menu_bak` VALUES ('42', '41', 'ETL服务器配置', 'modules/etl/server.html', null, '1', 'fa fa-sun-o', '0');
INSERT INTO `sys_menu_bak` VALUES ('43', '42', '查看', null, 'etl:server:list,etl:server:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('44', '42', '新增', null, 'etl:server:save', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('45', '42', '修改', null, 'etl:server:update', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('46', '42', '删除', null, 'etl:server:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('47', '41', '作业系统配置', 'modules/etl/sys.html', null, '1', 'fa fa-file-code-o', '1');
INSERT INTO `sys_menu_bak` VALUES ('48', '47', '查看', null, 'etl:sys:list,etl:sys:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('49', '47', '新增', null, 'etl:sys:save', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('50', '47', '修改', null, 'etl:sys:update', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('51', '47', '删除', null, 'etl:sys:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('52', '41', '公共脚本配置', 'modules/etl/script.html', null, '1', 'fa fa-file-code-o', '2');
INSERT INTO `sys_menu_bak` VALUES ('53', '52', '查看', null, 'etl:script:list,etl:script:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('54', '52', '新增', null, 'etl:script:save', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('55', '52', '修改', null, 'etl:script:update', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('56', '52', '删除', null, 'etl:script:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('57', '41', 'ETL任务管理', 'modules/etl/job.html', null, '1', 'fa fa-file-code-o', '3');
INSERT INTO `sys_menu_bak` VALUES ('58', '57', '查看', null, 'etl:job:list,etl:job:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('59', '57', '新增', null, 'etl:job:save', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('60', '57', '修改', null, 'etl:job:update', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('61', '57', '删除', null, 'etl:job:delete', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('62', '41', 'ETL任务日志', 'modules/etl/joblog.html', null, '1', 'fa fa-file-code-o', '4');
INSERT INTO `sys_menu_bak` VALUES ('63', '62', '查看', null, 'etl:joblog:list,etl:joblog:info', '2', null, '0');
INSERT INTO `sys_menu_bak` VALUES ('64', '62', '删除', null, 'etl:joblog:delete', '2', null, '0');

-- ----------------------------
-- Table structure for `sys_oss`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '访问者', null, '3', '2018-07-30 11:29:04');
INSERT INTO `sys_role` VALUES ('2', '调度管理员', '调度管理员', '4', '2018-07-30 11:39:49');
INSERT INTO `sys_role` VALUES ('3', '超级管理员', null, '1', '2018-07-30 11:40:39');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('14', '3', '1');
INSERT INTO `sys_role_dept` VALUES ('15', '3', '2');
INSERT INTO `sys_role_dept` VALUES ('16', '3', '3');
INSERT INTO `sys_role_dept` VALUES ('17', '3', '4');
INSERT INTO `sys_role_dept` VALUES ('18', '3', '5');
INSERT INTO `sys_role_dept` VALUES ('19', '2', '4');
INSERT INTO `sys_role_dept` VALUES ('21', '1', '3');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('424', '3', '1');
INSERT INTO `sys_role_menu` VALUES ('425', '3', '2');
INSERT INTO `sys_role_menu` VALUES ('426', '3', '15');
INSERT INTO `sys_role_menu` VALUES ('427', '3', '16');
INSERT INTO `sys_role_menu` VALUES ('428', '3', '17');
INSERT INTO `sys_role_menu` VALUES ('429', '3', '18');
INSERT INTO `sys_role_menu` VALUES ('430', '3', '3');
INSERT INTO `sys_role_menu` VALUES ('431', '3', '19');
INSERT INTO `sys_role_menu` VALUES ('432', '3', '20');
INSERT INTO `sys_role_menu` VALUES ('433', '3', '21');
INSERT INTO `sys_role_menu` VALUES ('434', '3', '22');
INSERT INTO `sys_role_menu` VALUES ('435', '3', '4');
INSERT INTO `sys_role_menu` VALUES ('436', '3', '23');
INSERT INTO `sys_role_menu` VALUES ('437', '3', '24');
INSERT INTO `sys_role_menu` VALUES ('438', '3', '25');
INSERT INTO `sys_role_menu` VALUES ('439', '3', '26');
INSERT INTO `sys_role_menu` VALUES ('440', '3', '5');
INSERT INTO `sys_role_menu` VALUES ('441', '3', '6');
INSERT INTO `sys_role_menu` VALUES ('442', '3', '7');
INSERT INTO `sys_role_menu` VALUES ('443', '3', '8');
INSERT INTO `sys_role_menu` VALUES ('444', '3', '9');
INSERT INTO `sys_role_menu` VALUES ('445', '3', '10');
INSERT INTO `sys_role_menu` VALUES ('446', '3', '11');
INSERT INTO `sys_role_menu` VALUES ('447', '3', '12');
INSERT INTO `sys_role_menu` VALUES ('448', '3', '13');
INSERT INTO `sys_role_menu` VALUES ('449', '3', '14');
INSERT INTO `sys_role_menu` VALUES ('450', '3', '27');
INSERT INTO `sys_role_menu` VALUES ('451', '3', '29');
INSERT INTO `sys_role_menu` VALUES ('452', '3', '30');
INSERT INTO `sys_role_menu` VALUES ('453', '3', '31');
INSERT INTO `sys_role_menu` VALUES ('454', '3', '32');
INSERT INTO `sys_role_menu` VALUES ('455', '3', '33');
INSERT INTO `sys_role_menu` VALUES ('456', '3', '34');
INSERT INTO `sys_role_menu` VALUES ('457', '3', '35');
INSERT INTO `sys_role_menu` VALUES ('458', '3', '36');
INSERT INTO `sys_role_menu` VALUES ('459', '3', '37');
INSERT INTO `sys_role_menu` VALUES ('460', '3', '38');
INSERT INTO `sys_role_menu` VALUES ('461', '3', '39');
INSERT INTO `sys_role_menu` VALUES ('462', '3', '40');
INSERT INTO `sys_role_menu` VALUES ('463', '3', '41');
INSERT INTO `sys_role_menu` VALUES ('464', '3', '42');
INSERT INTO `sys_role_menu` VALUES ('465', '3', '43');
INSERT INTO `sys_role_menu` VALUES ('466', '3', '44');
INSERT INTO `sys_role_menu` VALUES ('467', '3', '45');
INSERT INTO `sys_role_menu` VALUES ('468', '3', '46');
INSERT INTO `sys_role_menu` VALUES ('469', '3', '67');
INSERT INTO `sys_role_menu` VALUES ('470', '3', '47');
INSERT INTO `sys_role_menu` VALUES ('471', '3', '48');
INSERT INTO `sys_role_menu` VALUES ('472', '3', '49');
INSERT INTO `sys_role_menu` VALUES ('473', '3', '50');
INSERT INTO `sys_role_menu` VALUES ('474', '3', '51');
INSERT INTO `sys_role_menu` VALUES ('475', '3', '52');
INSERT INTO `sys_role_menu` VALUES ('476', '3', '53');
INSERT INTO `sys_role_menu` VALUES ('477', '3', '54');
INSERT INTO `sys_role_menu` VALUES ('478', '3', '55');
INSERT INTO `sys_role_menu` VALUES ('479', '3', '56');
INSERT INTO `sys_role_menu` VALUES ('480', '3', '66');
INSERT INTO `sys_role_menu` VALUES ('481', '3', '68');
INSERT INTO `sys_role_menu` VALUES ('482', '3', '57');
INSERT INTO `sys_role_menu` VALUES ('483', '3', '58');
INSERT INTO `sys_role_menu` VALUES ('484', '3', '59');
INSERT INTO `sys_role_menu` VALUES ('485', '3', '60');
INSERT INTO `sys_role_menu` VALUES ('486', '3', '61');
INSERT INTO `sys_role_menu` VALUES ('487', '3', '62');
INSERT INTO `sys_role_menu` VALUES ('488', '3', '63');
INSERT INTO `sys_role_menu` VALUES ('489', '3', '64');
INSERT INTO `sys_role_menu` VALUES ('490', '3', '69');
INSERT INTO `sys_role_menu` VALUES ('491', '3', '70');
INSERT INTO `sys_role_menu` VALUES ('492', '3', '65');
INSERT INTO `sys_role_menu` VALUES ('493', '3', '71');
INSERT INTO `sys_role_menu` VALUES ('494', '3', '72');
INSERT INTO `sys_role_menu` VALUES ('495', '3', '73');
INSERT INTO `sys_role_menu` VALUES ('496', '2', '41');
INSERT INTO `sys_role_menu` VALUES ('497', '2', '42');
INSERT INTO `sys_role_menu` VALUES ('498', '2', '43');
INSERT INTO `sys_role_menu` VALUES ('499', '2', '44');
INSERT INTO `sys_role_menu` VALUES ('500', '2', '45');
INSERT INTO `sys_role_menu` VALUES ('501', '2', '46');
INSERT INTO `sys_role_menu` VALUES ('502', '2', '47');
INSERT INTO `sys_role_menu` VALUES ('503', '2', '48');
INSERT INTO `sys_role_menu` VALUES ('504', '2', '49');
INSERT INTO `sys_role_menu` VALUES ('505', '2', '50');
INSERT INTO `sys_role_menu` VALUES ('506', '2', '51');
INSERT INTO `sys_role_menu` VALUES ('507', '2', '52');
INSERT INTO `sys_role_menu` VALUES ('508', '2', '53');
INSERT INTO `sys_role_menu` VALUES ('509', '2', '54');
INSERT INTO `sys_role_menu` VALUES ('510', '2', '55');
INSERT INTO `sys_role_menu` VALUES ('511', '2', '56');
INSERT INTO `sys_role_menu` VALUES ('512', '2', '66');
INSERT INTO `sys_role_menu` VALUES ('513', '2', '68');
INSERT INTO `sys_role_menu` VALUES ('514', '2', '57');
INSERT INTO `sys_role_menu` VALUES ('515', '2', '58');
INSERT INTO `sys_role_menu` VALUES ('516', '2', '59');
INSERT INTO `sys_role_menu` VALUES ('517', '2', '60');
INSERT INTO `sys_role_menu` VALUES ('518', '2', '61');
INSERT INTO `sys_role_menu` VALUES ('519', '2', '62');
INSERT INTO `sys_role_menu` VALUES ('520', '2', '63');
INSERT INTO `sys_role_menu` VALUES ('521', '2', '64');
INSERT INTO `sys_role_menu` VALUES ('522', '2', '69');
INSERT INTO `sys_role_menu` VALUES ('523', '2', '70');
INSERT INTO `sys_role_menu` VALUES ('524', '2', '71');
INSERT INTO `sys_role_menu` VALUES ('525', '2', '72');
INSERT INTO `sys_role_menu` VALUES ('526', '2', '73');
INSERT INTO `sys_role_menu` VALUES ('538', '1', '41');
INSERT INTO `sys_role_menu` VALUES ('539', '1', '42');
INSERT INTO `sys_role_menu` VALUES ('540', '1', '43');
INSERT INTO `sys_role_menu` VALUES ('541', '1', '47');
INSERT INTO `sys_role_menu` VALUES ('542', '1', '48');
INSERT INTO `sys_role_menu` VALUES ('543', '1', '52');
INSERT INTO `sys_role_menu` VALUES ('544', '1', '53');
INSERT INTO `sys_role_menu` VALUES ('545', '1', '57');
INSERT INTO `sys_role_menu` VALUES ('546', '1', '58');
INSERT INTO `sys_role_menu` VALUES ('547', '1', '62');
INSERT INTO `sys_role_menu` VALUES ('548', '1', '63');
INSERT INTO `sys_role_menu` VALUES ('549', '1', '69');
INSERT INTO `sys_role_menu` VALUES ('550', '1', '71');
INSERT INTO `sys_role_menu` VALUES ('551', '1', '72');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', 'YzcmCZNvbXocrsz9dm8e', 'root@dfjx.io', '13612345678', '1', '1', '2016-11-11 11:11:11');
INSERT INTO `sys_user` VALUES ('2', 'lwq', '6ce99541eb6a850447247c7c73178600fcbdaf5882751b26d18a29078ca365bd', '7juutNNDCbDnj4Xw5idh', 'lwq@126.com', '18611061948', '1', '2', '2018-07-24 14:24:03');
INSERT INTO `sys_user` VALUES ('3', 'lwq2', '94c62a971dc04f866aab0283da765733b77f373f1dedd67974265860ce7be18e', '2Y241X49aQFWfGME2Ehz', 'lwq@qq.com', '18611071039', '1', '4', '2018-07-24 14:32:06');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('6', '2', '1');
INSERT INTO `sys_user_role` VALUES ('7', '3', '2');
