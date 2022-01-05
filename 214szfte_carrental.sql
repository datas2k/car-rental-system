-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 02:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `214szfte_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_number` mediumint(9) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `id_number`, `address`) VALUES
(1, 'Gary Benjamin', 8388607, 'Ap #214-6244 Sollicitudin Rd.'),
(2, 'Blake Burks', 8388607, '711-3296 Commodo St.'),
(3, 'Peter Barlow', 8388607, 'Ap #730-6648 Ut, Ave'),
(4, 'Byron Farmer', 8388607, '8879 Cursus. Road'),
(5, 'Dana Avery', 8388607, 'Ap #917-8536 Vel, Rd.'),
(6, 'Leo Newton', 8388607, 'Ap #461-5508 Maecenas Rd.'),
(7, 'Leo Rosa', 8388607, 'P.O. Box 706, 9407 Nunc St.'),
(8, 'Angela Allen', 8388607, 'P.O. Box 574, 4949 Non, Ave'),
(9, 'Bethany Myers', 8388607, '248-9161 Rutrum, Rd.'),
(10, 'Rhiannon O\'brien', 8388607, 'Ap #494-3778 Egestas. Rd.'),
(11, 'Luke Christian', 8388607, '149-3511 Egestas Av.'),
(12, 'Solomon Miles', 8388607, '839-5242 Eu, Road'),
(13, 'Renee Blankenship', 8388607, '694-3496 Dictum. Rd.'),
(14, 'Wilma Kline', 8388607, 'Ap #157-2482 At Street'),
(15, 'Sopoline Blackwell', 8388607, '729-6549 Maecenas Avenue'),
(16, 'Destiny Duran', 8388607, 'P.O. Box 362, 7599 In Avenue'),
(17, 'Zelenia Fletcher', 8388607, 'P.O. Box 516, 7938 Vivamus St.'),
(18, 'Callie Tate', 8388607, 'P.O. Box 247, 404 Lacinia. Ave'),
(19, 'Luke Marquez', 8388607, '426-1195 Montes, St.'),
(20, 'Wesley Anderson', 8388607, 'P.O. Box 954, 8559 Netus Av.'),
(21, 'Olivia Hensley', 8388607, '5306 Sed Street'),
(22, 'Richard Hatfield', 8388607, 'Ap #491-2507 Tempus St.'),
(23, 'Latifah Goodwin', 8388607, '9217 Eget St.'),
(24, 'Ainsley Forbes', 8388607, 'Ap #181-9534 Elementum, Road'),
(25, 'Devin Jennings', 8388607, '5762 Et Road'),
(26, 'Martha Petty', 8388607, '1025 Arcu. Rd.'),
(27, 'Kellie Chase', 8388607, '288-1983 Luctus Av.'),
(28, 'Bertha Lindsey', 8388607, 'Ap #711-5329 Ullamcorper Road'),
(29, 'Summer Christian', 8388607, 'Ap #483-4061 Taciti Avenue'),
(30, 'Raphael Love', 8388607, 'P.O. Box 272, 6039 Egestas Ave'),
(31, 'Isaac Warner', 8388607, '359-6218 A St.'),
(32, 'Ivan Vargas', 8388607, '885-2612 Varius Ave'),
(33, 'Ruth Poole', 8388607, '440-6510 Mauris Rd.'),
(34, 'Jin Maynard', 8388607, '4972 Faucibus. Ave'),
(35, 'Vanna Mendoza', 8388607, 'Ap #578-5361 Sed Av.'),
(36, 'Shafira Short', 8388607, '9768 Libero St.'),
(37, 'Joelle Collins', 8388607, 'Ap #447-5648 Auctor Rd.'),
(38, 'Aileen Morales', 8388607, 'P.O. Box 648, 9816 Curabitur Avenue'),
(39, 'Barclay Strickland', 8388607, 'P.O. Box 871, 249 Fusce Road'),
(40, 'Clark Kerr', 8388607, 'Ap #920-1357 Dis Avenue'),
(41, 'Xyla Rutledge', 8388607, 'Ap #777-2655 Vitae Street'),
(42, 'Astra Shields', 8388607, 'Ap #918-1149 Gravida St.'),
(43, 'Paul Mendoza', 8388607, 'Ap #499-2033 Aenean St.'),
(44, 'Hilda Gardner', 8388607, 'Ap #441-8180 Vel, St.'),
(45, 'Zia Saunders', 8388607, 'Ap #607-3911 Praesent Ave'),
(46, 'Prescott Burnett', 8388607, '3937 In Road'),
(47, 'Leo Barnett', 8388607, '7663 Non, Road'),
(48, 'Nadine Weber', 8388607, '735-2175 Lorem Street'),
(49, 'Deborah Hampton', 8388607, '444-7556 Montes, Road'),
(50, 'Mary Mcpherson', 8388607, '352-3712 Id Av.'),
(51, 'Bernard Wagner', 8388607, 'Ap #634-9093 A, Rd.'),
(52, 'Akeem Hardin', 8388607, 'Ap #282-6662 Egestas. Street'),
(53, 'Lara Acosta', 8388607, '837 Posuere St.'),
(54, 'Bo Aguilar', 8388607, 'Ap #401-6420 Ac Avenue'),
(55, 'Claudia Yang', 8388607, 'Ap #262-2601 Mauris St.'),
(56, 'Tobias Johnston', 8388607, '402-7098 Velit. Ave'),
(57, 'Ainsley Jacobs', 8388607, 'P.O. Box 971, 1305 Eget St.'),
(58, 'Charles Knapp', 8388607, '7684 Eu, Road'),
(59, 'Kelly Padilla', 8388607, 'Ap #622-8909 Hendrerit. Rd.'),
(60, 'Rajah Rogers', 8388607, '5724 Non Road'),
(61, 'Plato Deleon', 8388607, '9121 Montes, Rd.'),
(62, 'Lance Salas', 8388607, 'P.O. Box 704, 9907 Sit Road'),
(63, 'Britanni Williamson', 8388607, '424-9649 Faucibus Avenue'),
(64, 'Amy Cooley', 8388607, 'Ap #382-3918 Purus Street'),
(65, 'Eric Goodman', 8388607, 'Ap #699-6907 A, Rd.'),
(66, 'Frances Pacheco', 8388607, '860-725 Feugiat Rd.'),
(67, 'Basil Chang', 8388607, 'Ap #202-1137 Nunc Avenue'),
(68, 'Odysseus Vargas', 8388607, 'Ap #727-6776 Id, St.'),
(69, 'Jolene Wilkins', 8388607, 'P.O. Box 274, 2434 Pellentesque. St.'),
(70, 'Sheila Yang', 8388607, '513-4683 Etiam Rd.'),
(71, 'Nero Britt', 8388607, 'Ap #835-101 Mauris Avenue'),
(72, 'Lucas Joseph', 8388607, 'P.O. Box 139, 2850 Ullamcorper, Road'),
(73, 'Chaim Rodgers', 8388607, 'Ap #196-2255 Ante Ave'),
(74, 'Nicholas Smith', 8388607, 'Ap #407-803 Mauris Road'),
(75, 'Yardley Weiss', 8388607, '339-2115 Velit St.'),
(76, 'Clarke Rodriguez', 8388607, '424 Etiam Rd.'),
(77, 'Hadley Copeland', 8388607, 'Ap #741-3788 Nam St.'),
(78, 'Genevieve Fitzpatrick', 8388607, '8971 Nostra, Street'),
(79, 'Signe Mann', 8388607, '503-3647 Tempus Avenue'),
(80, 'Brendan Patel', 8388607, '8268 Elementum, Ave'),
(81, 'Indira Richardson', 8388607, '4354 Sagittis Rd.'),
(82, 'MacKenzie Garcia', 8388607, 'Ap #831-6574 Lorem St.'),
(83, 'Teagan Wiley', 8388607, 'Ap #158-5737 Luctus Road'),
(84, 'Stacy Ramos', 8388607, '379-4761 Parturient St.'),
(85, 'Elton Pickett', 8388607, '224-7072 Ultricies Ave'),
(86, 'Elijah Boyer', 8388607, '366-3054 Id, St.'),
(87, 'Jarrod Kent', 8388607, 'Ap #714-8493 Vulputate, Av.'),
(88, 'Imelda Long', 8388607, '520-7853 Commodo Street'),
(89, 'Grady Ward', 8388607, '241-4134 Sodales. St.'),
(90, 'Lewis Salas', 8388607, 'P.O. Box 962, 4490 Tempor Avenue'),
(91, 'Cullen Dillon', 8388607, 'P.O. Box 974, 8718 Nec Street'),
(92, 'Graiden Hurley', 8388607, 'Ap #640-8182 Dolor Street'),
(93, 'Gay Cantu', 8388607, 'Ap #541-8048 Donec St.'),
(94, 'Gabriel Holcomb', 8388607, 'P.O. Box 111, 3473 Sodales Street'),
(95, 'Sonya Dixon', 8388607, 'Ap #775-8800 Fringilla Road'),
(96, 'Jonas Matthews', 8388607, '394-6108 Eleifend Street'),
(97, 'Scarlett Gilmore', 8388607, 'Ap #307-913 Lorem, St.'),
(98, 'Steven Spears', 8388607, 'Ap #588-9927 In St.'),
(99, 'Ashton Hale', 8388607, 'Ap #242-2460 Consequat Rd.'),
(100, 'Ginger Scott', 8388607, 'Ap #603-5633 Cursus, Ave'),
(101, 'Kasimir Powers', 8388607, '458 Eget, Ave'),
(102, 'Porter Knight', 8388607, '6204 Sapien Ave'),
(103, 'Alvin Case', 8388607, 'P.O. Box 845, 9915 Diam Rd.'),
(104, 'Dacey Schroeder', 8388607, '171-3331 Hendrerit St.'),
(105, 'Jayme Puckett', 8388607, '136-3490 Semper Rd.'),
(106, 'Lacey Burnett', 8388607, 'P.O. Box 645, 7444 At, St.'),
(107, 'Ishmael Poole', 8388607, '460-3533 Vestibulum. Rd.'),
(108, 'Nerea Larsen', 8388607, 'Ap #531-1623 Tristique Rd.'),
(109, 'Walker Sosa', 8388607, 'P.O. Box 796, 9084 Ornare. Rd.'),
(110, 'Celeste Mills', 8388607, '131-5283 Cras Street'),
(111, 'Benjamin Lott', 8388607, '157-3064 In Street'),
(112, 'Timon Bradshaw', 8388607, '1890 Aliquam Rd.'),
(113, 'Davis Vinson', 8388607, '587-3365 Nam Av.'),
(114, 'Wanda Perry', 8388607, 'P.O. Box 956, 5701 Magnis Road'),
(115, 'Graham Lowe', 8388607, 'P.O. Box 351, 1785 Elit Street'),
(116, 'Hall Foley', 8388607, '5248 Velit. Street'),
(117, 'Sandra Kaufman', 8388607, 'Ap #876-4906 Et Av.'),
(118, 'Ira Carney', 8388607, 'P.O. Box 434, 5446 Aliquam Street'),
(119, 'Alfreda Clark', 8388607, '308-8229 Lobortis. St.'),
(120, 'Beverly Craig', 8388607, '9921 Ipsum. Av.'),
(121, 'Isadora Carter', 8388607, '341-8684 Tincidunt, Rd.'),
(122, 'Suki Burke', 8388607, '967-2729 Non Avenue'),
(123, 'Tarik Pitts', 8388607, 'Ap #129-1165 Montes, Avenue'),
(124, 'Mannix Owen', 8388607, 'P.O. Box 743, 3758 Auctor Road'),
(125, 'Ifeoma Terry', 8388607, '932-7709 Dis St.'),
(126, 'Eric Mendoza', 8388607, '3035 At Avenue'),
(127, 'Maile Orr', 8388607, 'P.O. Box 242, 9551 Curae Road'),
(128, 'Summer Rosa', 8388607, 'Ap #522-8918 Pellentesque, Avenue'),
(129, 'Samson Zamora', 8388607, 'P.O. Box 893, 4985 Vitae, Road'),
(130, 'Frances Greene', 8388607, '5283 Elit St.'),
(131, 'Drew Chase', 8388607, '1579 Augue Rd.'),
(132, 'Reece Wiley', 8388607, 'P.O. Box 639, 9564 Urna Avenue'),
(133, 'Jasmine Holloway', 8388607, 'P.O. Box 219, 2320 Non St.'),
(134, 'Jordan Pittman', 8388607, '756-661 Luctus Ave'),
(135, 'Abdul Ashley', 8388607, '329-7399 Ipsum Av.'),
(136, 'Mufutau Cash', 8388607, '223-7934 Lacus. Av.'),
(137, 'Ulysses Compton', 8388607, 'Ap #807-7946 Cras Av.'),
(138, 'Hakeem Short', 8388607, '426-3039 Mauris St.'),
(139, 'Venus Reid', 8388607, 'Ap #153-5118 Tempus Road'),
(140, 'Jescie May', 8388607, '462-1510 Ornare, Avenue'),
(141, 'Axel Cross', 8388607, 'P.O. Box 332, 143 Sapien, Avenue'),
(142, 'Gray Turner', 8388607, '1040 Arcu Road'),
(143, 'Nissim Woods', 8388607, '541-2919 Aliquam St.'),
(144, 'Charity Sanders', 8388607, 'Ap #527-8041 Ipsum St.'),
(145, 'Priscilla Craft', 8388607, 'P.O. Box 679, 8338 Justo St.'),
(146, 'Rosalyn Hayes', 8388607, '358-6348 Scelerisque Rd.'),
(147, 'Lester Vazquez', 8388607, 'Ap #561-9662 Sapien. Street'),
(148, 'Caleb Harrell', 8388607, '136-3949 Velit Av.'),
(149, 'Vaughan Hinton', 8388607, 'P.O. Box 366, 5165 Habitant St.'),
(150, 'Fatima Greene', 8388607, '787-4431 Odio, Road'),
(151, 'Brandon Levy', 8388607, '137-9017 Blandit Av.'),
(152, 'Derek Stein', 8388607, 'Ap #762-3753 Tellus St.'),
(153, 'Cole Mercado', 8388607, 'Ap #945-7073 Fermentum Road'),
(154, 'Brenna Mooney', 8388607, 'Ap #501-8107 Dui, Street'),
(155, 'Grace Wolfe', 8388607, 'Ap #812-1634 Faucibus Rd.'),
(156, 'Aladdin Douglas', 8388607, '318-1095 Metus. Av.'),
(157, 'Phyllis Sanders', 8388607, '668-819 Mauris Avenue'),
(158, 'Hiram Carey', 8388607, '3824 Et Rd.'),
(159, 'Jocelyn Franco', 8388607, '153-4553 Eget, St.'),
(160, 'Jessica Brock', 8388607, '419-6639 Ligula. Av.'),
(161, 'Camille Perez', 8388607, '153-7753 Nunc Street'),
(162, 'Uta Reid', 8388607, '387-4720 Enim. Av.'),
(163, 'Gannon Kemp', 8388607, 'P.O. Box 129, 2980 Lorem, Street'),
(164, 'Linda Beck', 8388607, 'P.O. Box 600, 5656 Nunc Street'),
(165, 'Shafira Odom', 8388607, 'Ap #320-3878 Pellentesque Road'),
(166, 'Cassandra Anthony', 8388607, 'Ap #762-8883 Orci. Avenue'),
(167, 'Phillip Frederick', 8388607, '8263 Eu Avenue'),
(168, 'Erica England', 8388607, '7947 Vulputate Rd.'),
(169, 'Erica Hudson', 8388607, '737-3446 Donec Rd.'),
(170, 'Nicholas Glenn', 8388607, '884-1784 Mauris Rd.'),
(171, 'Quinlan Campbell', 8388607, '684-5136 Mauris Road'),
(172, 'Gretchen Stanton', 8388607, 'Ap #512-1412 Sit Av.'),
(173, 'Zia Murray', 8388607, 'Ap #325-4601 Mus. Ave'),
(174, 'Kareem Cooper', 8388607, '8368 Lectus. Street'),
(175, 'Kessie Velazquez', 8388607, 'Ap #444-4172 Sodales. St.'),
(176, 'Hunter Austin', 8388607, '6509 Augue St.'),
(177, 'Danielle Goff', 8388607, '680-3379 Ligula. Rd.'),
(178, 'Noelle Livingston', 8388607, '739-4556 Ultrices Av.'),
(179, 'Montana Bernard', 8388607, 'P.O. Box 580, 9550 Non, St.'),
(180, 'Leonard Jenkins', 8388607, '5962 Lectus Av.'),
(181, 'Lila Riggs', 8388607, 'Ap #755-287 Eleifend Rd.'),
(182, 'Ebony Acosta', 8388607, 'P.O. Box 958, 960 Tempor Ave'),
(183, 'Kiona Hatfield', 8388607, 'Ap #534-1077 Quis, Rd.'),
(184, 'Avram Cohen', 8388607, 'Ap #579-1878 Nunc Road'),
(185, 'Victor Guzman', 8388607, 'P.O. Box 268, 3370 Sollicitudin Ave'),
(186, 'MacKensie Mueller', 8388607, '5898 Mauris Avenue'),
(187, 'Lucas Rush', 8388607, '861 Convallis Avenue'),
(188, 'Mechelle Patton', 8388607, 'P.O. Box 164, 4344 Odio Ave'),
(189, 'Chancellor Walsh', 8388607, '658-5259 Nisl Ave'),
(190, 'Damian Conway', 8388607, 'Ap #620-9638 Quam Rd.'),
(191, 'Hector Mckee', 8388607, 'Ap #197-3627 Velit. Av.'),
(192, 'Donovan Abbott', 8388607, 'Ap #304-7843 Nunc St.'),
(193, 'Davis Bates', 8388607, 'Ap #505-5983 Molestie St.'),
(194, 'Yetta Torres', 8388607, 'P.O. Box 942, 5693 Eu Street'),
(195, 'Hayes Schultz', 8388607, '995-284 Ut, St.'),
(196, 'Wesley Brewer', 8388607, 'P.O. Box 627, 9903 Cum Avenue'),
(197, 'Tanisha Miller', 8388607, '579-6598 Amet Rd.'),
(198, 'Jael Mcgee', 8388607, '567-4652 Egestas. Av.'),
(199, 'Nora Wheeler', 8388607, 'Ap #742-6022 Donec St.'),
(200, 'Eric Hancock', 8388607, '6407 Nulla St.');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `vehicle_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `release_date` date NOT NULL,
  `retrieval_date` date NOT NULL,
  `mileage_start` int(11) NOT NULL,
  `mileage_end` int(11) NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `mileage_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(6, 'dani', 'dani@gmail.com', '1'),
(7, 'jani', 'jani@gmail.com', 'jani');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `ID` int(11) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `mileage` int(11) NOT NULL,
  `service_fee` int(11) NOT NULL,
  `charge_per_day` int(11) NOT NULL,
  `kilometer_charge` int(11) NOT NULL,
  `service_per_day` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
