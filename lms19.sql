
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2017 at 03:55 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



--
-- Database: `lms19`

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
`id` int(11) NOT NULL,
  `e_deviceid` varchar(50) NOT NULL,
  `e_model` varchar(50) NOT NULL,
  `e_category` varchar(50) NOT NULL,
  `e_brand` varchar(50) NOT NULL,
  `e_description` text NOT NULL,
  `e_stock` int(11) NOT NULL,
  `e_stockleft` int(11) NOT NULL,
  `e_type` varchar(50) NOT NULL,
  `e_status` varchar(50) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipment_inventory`
--

CREATE TABLE IF NOT EXISTS `equipment_inventory` (
`id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_logs`
--

CREATE TABLE IF NOT EXISTS `history_logs` (
`id` int(11) NOT NULL,
  `description` text NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `status_name` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_logs`
--

INSERT INTO `history_logs` (`id`, `description`, `table_name`, `status_name`, `user_id`, `user_type`, `date_created`) VALUES
(49, 'add new equipmentSM-922 , Mouse', 'equipment', '', 1, 1, '2017-02-17 13:28:52'),
(50, 'add 2items toSM-922quantity', 'equipment', '', 1, 1, '2017-02-17 13:46:29'),
(51, 'add 2items toSM-9221quantity', 'equipment', '', 1, 1, '2017-02-17 14:15:46'),
(52, 'add new equipment---- , AVR', 'equipment', '', 1, 1, '2017-02-21 11:20:20'),
(53, 'add new equipmentH328C , Projector', 'equipment', '', 1, 1, '2017-02-21 11:24:12'),
(54, 'add new equipmentOM-130006A/K , Keyboard', 'equipment', '', 1, 1, '2017-02-21 11:28:04'),
(55, 'add new equipment---- , Remote', 'equipment', '', 1, 1, '2017-02-21 11:31:19'),
(56, 'add new equipment58E510 , TV', 'equipment', '', 1, 1, '2017-02-21 11:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`id` int(5) NOT NULL,
  `i_deviceID` varchar(50) NOT NULL,
  `i_model` varchar(50) NOT NULL,
  `i_category` varchar(50) NOT NULL,
  `i_brand` varchar(50) NOT NULL,
  `i_description` text NOT NULL,
  `i_type` varchar(50) NOT NULL,
  `item_rawstock` int(11) NOT NULL,
  `i_status` int(11) NOT NULL DEFAULT '1',
  `i_mr` varchar(50) NOT NULL,
  `i_price` decimal(10,2) NOT NULL,
  `i_photo` varchar(100) NOT NULL,

) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `i_deviceID`, `i_model`, `i_category`, `i_brand`, `i_description`, `i_type`, `item_rawstock`, `i_status`, `i_mr`, `i_price`, `i_photo`) VALUES
(16, '2009991', 'SM-9221', 'Mouse', 'Acer', 'Black', 'Usable', 13, 1, 'Dhyey Patel', '599.00', '1487646917.jpg'),
(17, '4103500582', '----', 'AVR', 'Monster', '220v, black', 'Usable', 16, 1, 'Dhyey Patel', '1500.00', '1487647220.jpg'),
(18, '----', 'H328C', 'Projector', 'epson', 'white', 'Usable', 3, 1, 'Tejas Pathak', '2500.00', '1487647452.jpg'),
(19, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Usable', 60, 1, 'Hrugved Parab', '250.00', '1487647676.png'),
(20, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Usable', 60, 1, 'Hrugved Parab', '250.00', '1487647678.png'),
(21, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Usable', 60, 1, 'Hrugved Parab', '250.00', '1487647679.png'),
(22, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Usable', 60, 1, 'Hrugved Parab', '250.00', '1487647680.png'),
(23, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Usable', 60, 1, 'Hrugved Parab', '250.00', '1487647681.png'),
(24, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Usable', 60, 1, 'Hrugved Parab', '250.00', '1487647684.png'),
(25, '----', '----', 'Remote', 'Haier', 'Slim Remote, white', 'Usable', 10, 1, 'Sir Shinde', '100.00', '1487647878.jpg'),
(26, '37784471777', '58E510', 'TV', 'Skyworth', '58" Smart Full HD, HDMI x3, VGA X1, LAN X2, USB X2, AV X3, Component in x2, Wifi, MHL Function, 1920x1080 screen resolution, 8w+8w audio output power, 100-240v~ 50/0Hz, 25.9 kg58" Smart Full HD, HDMI x3, VGA X1, LAN X2, USB X2', 'Usable', 5, 1, 'Madhur Shinde', '8000.00', '1487648107.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventory`
--

CREATE TABLE IF NOT EXISTS `item_inventory` (
`id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `inventory_itemstock` int(11) NOT NULL,
  `inventory_status` int(11) NOT NULL,
  `item_remarks` text NOT NULL,
  `date_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_inventory`
--

INSERT INTO `item_inventory` (`id`, `item_id`, `inventory_itemstock`, `inventory_status`, `item_remarks`, `date_change`) VALUES
(8, 16, 2, 2, '', '2017-02-17 06:13:59'),
(9, 16, 2, 2, 'test', '2017-02-17 06:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE IF NOT EXISTS `item_stock` (
`id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `items_stock` int(11) NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_stock`
--

INSERT INTO `item_stock` (`id`, `item_id`, `room_id`, `items_stock`, `item_status`, `status`) VALUES
(18, 16, 14, 9, 1, 1),
(19, 16, 14, 3, 2, 1),
(20, 17, 14, 15, 1, 1),
(21, 18, 14, 2, 1, 1),
(22, 24, 14, 59, 1, 1),
(23, 25, 14, 10, 1, 1),
(24, 26, 14, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_transfer`
--

CREATE TABLE IF NOT EXISTS `item_transfer` (
`id` int(11) NOT NULL,
  `t_itemID` int(11) NOT NULL,
  `t_roomID` int(11) NOT NULL,
  `t_stockID` int(11) NOT NULL,
  `t_quantity` int(11) NOT NULL,
  `date_transfer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `t_status` int(11) NOT NULL DEFAULT '1',
  `personincharge` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
`id` int(11) NOT NULL,
  `rm_name` varchar(50) NOT NULL,
  `rm_date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rm_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `rm_name`, `rm_date_added`, `rm_status`) VALUES
(1, 'room 312', '2016-11-16 21:21:42', 1),
(2, 'room 403', '2016-11-16 21:21:47', 1),
(3, 'room 311', '2016-11-16 21:21:53', 1),
(4, 'room 313', '2016-11-17 18:45:03', 1),
(5, 'room 402', '2016-11-17 20:51:30', 1),
(6, 'room 301', '2016-11-17 20:51:43', 1),
(7, 'room 302', '2016-11-17 20:51:54', 1),
(8, 'room 303', '2016-11-17 20:52:04', 1),
(9, 'room 304', '2016-11-17 20:52:20', 1),
(10, 'room 305', '2016-11-17 20:52:56', 1),
(11, 'room 306', '2016-11-17 20:53:20', 1),
(14, 'room 310', '2017-01-08 13:17:18', 1);


-- Table structure for table `room_equipment`
--

CREATE TABLE IF NOT EXISTS `room_equipment` (
`id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `re_quantity` int(11) NOT NULL,
  `stats` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_equipment`
--

INSERT INTO `room_equipment` (`id`, `equipment_id`, `room_id`, `re_quantity`, `stats`) VALUES
(1, 1, 14, 12, 1),
(2, 2, 14, 12, 1),
(3, 3, 14, 12, 1),
(4, 4, 14, 12, 1),
(5, 5, 14, 12, 1),
(6, 6, 14, 12, 1),
(7, 7, 14, 12, 1),
(8, 8, 14, 12, 1),
(9, 1, 14, 10, 1),
(10, 2, 14, 10, 1),
(11, 1, 14, 12, 1),
(12, 2, 14, 12, 1),
(13, 3, 14, 2, 1),
(14, 1, 14, 12, 1),
(15, 2, 14, 10, 1),
(16, 3, 14, 10, 1),
(17, 1, 14, 10, 1);

ALTER TABLE `room`
 ADD PRIMARY KEY (`room_name`);
--
--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
 ADD PRIMARY KEY (`id`), ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `equipment_inventory`
--
ALTER TABLE `equipment_inventory`
 ADD PRIMARY KEY (`id`), ADD KEY `equipment_id` (`equipment_id`);

--
-- Indexes for table `history_logs`
--
ALTER TABLE `history_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`id`), ADD KEY 'room_name' ('room_name');

--
-- Indexes for table `item_inventory`
--
ALTER TABLE `item_inventory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_transfer`
--
ALTER TABLE `item_transfer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--


-- Indexes for table `room`
--
ALTER TABLE `room`
 ADD PRIMARY KEY (`id`) ;

--
-- Indexes for table `room_equipment`
--
ALTER TABLE `room_equipment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipment_inventory`
--
ALTER TABLE `equipment_inventory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `history_logs`
--
ALTER TABLE `history_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `item_inventory`
--
ALTER TABLE `item_inventory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `item_transfer`
--
ALTER TABLE `item_transfer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--


--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `room_equipment`
--
ALTER TABLE `room_equipment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
