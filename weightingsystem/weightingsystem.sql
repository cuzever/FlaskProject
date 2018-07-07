-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2018-04-25 19:03:13
-- 服务器版本： 5.6.36
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weightingsystem`
--

-- --------------------------------------------------------

--
-- 表的结构 `countstate`
--

CREATE TABLE `countstate` (
  `id` int(11) NOT NULL,
  `EqpID` varchar(20) DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `fault` int(11) DEFAULT NULL,
  `alarm` int(11) DEFAULT NULL,
  `nromal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `eqpinfo`
--

CREATE TABLE `eqpinfo` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `SencerNum` int(11) DEFAULT NULL,
  `SencerName` varchar(125) DEFAULT NULL,
  `NoLoad_set` varchar(100) DEFAULT NULL,
  `EmptyLoad_set` varchar(100) DEFAULT NULL,
  `Temp` float DEFAULT NULL,
  `Wet` float DEFAULT NULL,
  `ExcV` float DEFAULT NULL,
  `Sensitivity` float DEFAULT NULL,
  `Resistance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `equipment`
--

CREATE TABLE `equipment` (
  `id` varchar(20) NOT NULL,
  `place` varchar(20) DEFAULT NULL,
  `supplier` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `factory`
--

CREATE TABLE `factory` (
  `id` varchar(20) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `responsor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `factory`
--

INSERT INTO `factory` (`id`, `address`, `responsor`) VALUES
('factory01', '上海', 'ECUST');

-- --------------------------------------------------------

--
-- 表的结构 `factory01countstate`
--

CREATE TABLE `factory01countstate` (
  `id` int(11) NOT NULL,
  `EqpID` varchar(20) DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `fault` int(11) DEFAULT NULL,
  `alarm` int(11) DEFAULT NULL,
  `nromal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `factory01countstate`
--

INSERT INTO `factory01countstate` (`id`, `EqpID`, `Timestamp`, `fault`, `alarm`, `nromal`) VALUES
(1, 'scale001', '2018-04-10 00:00:00', 0, 0, 0),
(2, 'scale001', '2018-04-19 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `factory01eqp`
--

CREATE TABLE `factory01eqp` (
  `id` varchar(20) NOT NULL,
  `place` varchar(20) DEFAULT NULL,
  `supplier` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `factory01eqp`
--

INSERT INTO `factory01eqp` (`id`, `place`, `supplier`) VALUES
('scale001', 'place1', 'Siemens');

-- --------------------------------------------------------

--
-- 表的结构 `factory01scale001faultlist`
--

CREATE TABLE `factory01scale001faultlist` (
  `id` int(11) NOT NULL,
  `FaultTime` datetime DEFAULT NULL,
  `RecoverTime` datetime DEFAULT NULL,
  `PeriodSecond` int(11) DEFAULT NULL,
  `FaultSencer` varchar(20) DEFAULT NULL,
  `FaultCode` int(11) DEFAULT NULL,
  `FaultState` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `factory01scale001faultmsg2018-04-19`
--

CREATE TABLE `factory01scale001faultmsg2018-04-19` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `Partial` int(11) DEFAULT NULL,
  `Forced` int(11) DEFAULT NULL,
  `Loss` int(11) DEFAULT NULL,
  `Over` int(11) DEFAULT NULL,
  `eqpState` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `factory01scale001info`
--

CREATE TABLE `factory01scale001info` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `SencerNum` int(11) DEFAULT NULL,
  `SencerName` varchar(125) DEFAULT NULL,
  `NoLoad_set` varchar(100) DEFAULT NULL,
  `EmptyLoad_set` varchar(100) DEFAULT NULL,
  `Temp` float DEFAULT NULL,
  `Wet` float DEFAULT NULL,
  `ExcV` float DEFAULT NULL,
  `Sensitivity` float DEFAULT NULL,
  `Resistance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `factory01scale001info`
--

INSERT INTO `factory01scale001info` (`id`, `Timestamp`, `SencerNum`, `SencerName`, `NoLoad_set`, `EmptyLoad_set`, `Temp`, `Wet`, `ExcV`, `Sensitivity`, `Resistance`) VALUES
(1, '2018-04-19 00:00:00', 4, '1', '1', '1', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `factory01scale001newval2018-04-19`
--

CREATE TABLE `factory01scale001newval2018-04-19` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `WeightTag1` float DEFAULT NULL,
  `WeightTag2` float DEFAULT NULL,
  `WeightTag3` float DEFAULT NULL,
  `WeightTag4` float DEFAULT NULL,
  `Weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `factory01scale001operation`
--

CREATE TABLE `factory01scale001operation` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `record` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `factory01scale001thread`
--

CREATE TABLE `factory01scale001thread` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `standard` float DEFAULT NULL,
  `zeropoint` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `factory01scale001thread`
--

INSERT INTO `factory01scale001thread` (`id`, `Timestamp`, `standard`, `zeropoint`) VALUES
(1, '2018-04-19 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `factory01sup`
--

CREATE TABLE `factory01sup` (
  `id` varchar(20) NOT NULL,
  `info` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `factory01sup`
--

INSERT INTO `factory01sup` (`id`, `info`, `contact`) VALUES
('Siemens', 'Shanghai', '11111111111');

-- --------------------------------------------------------

--
-- 表的结构 `faultlist`
--

CREATE TABLE `faultlist` (
  `id` int(11) NOT NULL,
  `FaultTime` datetime DEFAULT NULL,
  `RecoverTime` datetime DEFAULT NULL,
  `PeriodSecond` int(11) DEFAULT NULL,
  `FaultSencer` varchar(20) DEFAULT NULL,
  `FaultCode` int(11) DEFAULT NULL,
  `FaultState` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `faultmsg`
--

CREATE TABLE `faultmsg` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `Partial` int(11) DEFAULT NULL,
  `Forced` int(11) DEFAULT NULL,
  `Loss` int(11) DEFAULT NULL,
  `Over` int(11) DEFAULT NULL,
  `eqpState` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `newval`
--

CREATE TABLE `newval` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `WeightTag1` float DEFAULT NULL,
  `WeightTag2` float DEFAULT NULL,
  `WeightTag3` float DEFAULT NULL,
  `WeightTag4` float DEFAULT NULL,
  `Weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `record` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(2, '工程师'),
(3, '工程经理'),
(1, '操作员');

-- --------------------------------------------------------

--
-- 表的结构 `supplier`
--

CREATE TABLE `supplier` (
  `id` varchar(20) NOT NULL,
  `info` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `thread`
--

CREATE TABLE `thread` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `standard` float DEFAULT NULL,
  `zeropoint` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password_hash` varchar(128) DEFAULT NULL,
  `factoryID` varchar(128) DEFAULT NULL,
  `EqpID` varchar(128) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `role_id`, `password_hash`, `factoryID`, `EqpID`, `confirmed`) VALUES
(1, '1', 2, 'pbkdf2:sha256:50000$ub5qK9wM$f03747fd2a9fc0e589e222ce59a01deb9358c330479995e658f220e27c6a4f27', 'factory01', 'scale001', 1),
(2, '0', 3, 'pbkdf2:sha256:50000$VyoUb2XF$0b709771cdc91a7d1433b9dfd50a7106684ef52ea576d83a82c67f7b9fc9e4c3', 'factory01', 'scale001', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countstate`
--
ALTER TABLE `countstate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EqpID` (`EqpID`),
  ADD KEY `ix_CountState_Timestamp` (`Timestamp`);

--
-- Indexes for table `eqpinfo`
--
ALTER TABLE `eqpinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_Eqpinfo_Timestamp` (`Timestamp`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier` (`supplier`),
  ADD KEY `ix_Equipment_place` (`place`);

--
-- Indexes for table `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory01countstate`
--
ALTER TABLE `factory01countstate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EqpID` (`EqpID`),
  ADD KEY `ix_countState_Timestamp` (`Timestamp`);

--
-- Indexes for table `factory01eqp`
--
ALTER TABLE `factory01eqp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier` (`supplier`),
  ADD KEY `ix_Equipment_place` (`place`);

--
-- Indexes for table `factory01scale001faultlist`
--
ALTER TABLE `factory01scale001faultlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_Faultlist_FaultCode` (`FaultCode`),
  ADD KEY `ix_Faultlist_FaultSencer` (`FaultSencer`),
  ADD KEY `ix_Faultlist_FaultTime` (`FaultTime`);

--
-- Indexes for table `factory01scale001faultmsg2018-04-19`
--
ALTER TABLE `factory01scale001faultmsg2018-04-19`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_FaultMsg_Timestamp` (`Timestamp`);

--
-- Indexes for table `factory01scale001info`
--
ALTER TABLE `factory01scale001info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_Eqpinfo_Timestamp` (`Timestamp`);

--
-- Indexes for table `factory01scale001newval2018-04-19`
--
ALTER TABLE `factory01scale001newval2018-04-19`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_NewVal_Timestamp` (`Timestamp`);

--
-- Indexes for table `factory01scale001operation`
--
ALTER TABLE `factory01scale001operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_Operation_Timestamp` (`Timestamp`);

--
-- Indexes for table `factory01scale001thread`
--
ALTER TABLE `factory01scale001thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_Thread_Timestamp` (`Timestamp`);

--
-- Indexes for table `factory01sup`
--
ALTER TABLE `factory01sup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faultlist`
--
ALTER TABLE `faultlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_Faultlist_FaultCode` (`FaultCode`),
  ADD KEY `ix_Faultlist_FaultSencer` (`FaultSencer`),
  ADD KEY `ix_Faultlist_FaultTime` (`FaultTime`);

--
-- Indexes for table `faultmsg`
--
ALTER TABLE `faultmsg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_FaultMsg_Timestamp` (`Timestamp`);

--
-- Indexes for table `newval`
--
ALTER TABLE `newval`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_NewVal_Timestamp` (`Timestamp`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_Operation_Timestamp` (`Timestamp`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_Thread_Timestamp` (`Timestamp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_users_username` (`username`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `factoryID` (`factoryID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `countstate`
--
ALTER TABLE `countstate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `eqpinfo`
--
ALTER TABLE `eqpinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `factory01countstate`
--
ALTER TABLE `factory01countstate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `factory01scale001faultlist`
--
ALTER TABLE `factory01scale001faultlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `factory01scale001faultmsg2018-04-19`
--
ALTER TABLE `factory01scale001faultmsg2018-04-19`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `factory01scale001info`
--
ALTER TABLE `factory01scale001info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `factory01scale001newval2018-04-19`
--
ALTER TABLE `factory01scale001newval2018-04-19`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `factory01scale001operation`
--
ALTER TABLE `factory01scale001operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `factory01scale001thread`
--
ALTER TABLE `factory01scale001thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `faultlist`
--
ALTER TABLE `faultlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `faultmsg`
--
ALTER TABLE `faultmsg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `newval`
--
ALTER TABLE `newval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `countstate`
--
ALTER TABLE `countstate`
  ADD CONSTRAINT `countstate_ibfk_1` FOREIGN KEY (`EqpID`) REFERENCES `equipment` (`id`);

--
-- 限制表 `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`id`);

--
-- 限制表 `factory01countstate`
--
ALTER TABLE `factory01countstate`
  ADD CONSTRAINT `countstate_ibfk_factory01` FOREIGN KEY (`EqpID`) REFERENCES `factory01eqp` (`id`);

--
-- 限制表 `factory01eqp`
--
ALTER TABLE `factory01eqp`
  ADD CONSTRAINT `equipment_ibfk_factory01` FOREIGN KEY (`supplier`) REFERENCES `factory01sup` (`id`);

--
-- 限制表 `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`factoryID`) REFERENCES `factory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
