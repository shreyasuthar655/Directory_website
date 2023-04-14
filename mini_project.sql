-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 08:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_Id` varchar(5) NOT NULL,
  `Cat_Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_Id`, `Cat_Name`) VALUES
('C1', 'Restaurant'),
('C2', 'Hotel'),
('C3', 'Repair'),
('C4', 'Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hospital_Id` varchar(5) NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_Id`, `Category`) VALUES
('HOS1', 'Public'),
('HOS2', 'Private');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_details`
--

CREATE TABLE `hospital_details` (
  `Hos_Id` varchar(5) NOT NULL,
  `Hos_Name` varchar(30) NOT NULL,
  `Hos_Location` varchar(50) NOT NULL,
  `Hos_Rating` float(2,1) NOT NULL,
  `Hos_Image` varchar(80) NOT NULL,
  `Hos_Contact` int(10) NOT NULL,
  `Hos_Description` text NOT NULL,
  `HosCat_Id` varchar(5) NOT NULL,
  `PHos_Cat_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_Id` varchar(5) NOT NULL,
  `Hotel_Name` varchar(20) NOT NULL,
  `Hotel_Location` varchar(70) NOT NULL,
  `Hotel_Rating` float(2,1) NOT NULL,
  `Hotel_StarRating` int(1) NOT NULL,
  `Hotel_Image` varchar(80) NOT NULL,
  `Hotel_Contact` bigint(12) DEFAULT NULL,
  `Hotel_Description` text NOT NULL,
  `HotelCat_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_Id`, `Hotel_Name`, `Hotel_Location`, `Hotel_Rating`, `Hotel_StarRating`, `Hotel_Image`, `Hotel_Contact`, `Hotel_Description`, `HotelCat_Id`) VALUES
('HT1', 'Hotel Blueivy', 'Hotel Blueivy, 80 Feet Rd, opposite Patcon House, Rajiv Nagar, Patel C', 4.7, 0, '', 0, '', 'C2'),
('HT2', 'Hotel H', 'Hotel H, Anand - Vidyanagar Rd, Vivekanand Wadi, Anand', 4.4, 3, '', 7984015064, '', 'C2'),
('HT3', ' WelcomHeritage Mani', 'Shantikunj Society, Parimal Cross Rd, near paldi, behind Mehdi Nawaz J', 4.4, 4, '', 7926578520, '', 'C2'),
('HT4', 'Hotel Ashish', 'Mirzapur Rd, nr. Dinbai Tower, opp. Sarabhai Compund, Old City, Khanpu', 4.0, 3, '', 9978975015, '', 'C2');

-- --------------------------------------------------------

--
-- Table structure for table `private_hospital_cat`
--

CREATE TABLE `private_hospital_cat` (
  `Hos_Id` varchar(5) NOT NULL,
  `Hos_Cat` varchar(20) NOT NULL,
  `Cat_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `private_hospital_cat`
--

INSERT INTO `private_hospital_cat` (`Hos_Id`, `Hos_Cat`, `Cat_Id`) VALUES
('PH1', 'Cardiologist', 'C4'),
('PH2', 'Dentist', 'C4'),
('PH3', 'Eye Specialist', 'C4'),
('PH4', 'Gynecologist ', 'C4'),
('PH5', 'Neurologist ', 'C4'),
('PH6', 'Psychiatrist ', 'C4');

-- --------------------------------------------------------

--
-- Table structure for table `repair_cat`
--

CREATE TABLE `repair_cat` (
  `Rep_Id` varchar(5) NOT NULL,
  `Rep_Category` varchar(20) NOT NULL,
  `Cat_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repair_cat`
--

INSERT INTO `repair_cat` (`Rep_Id`, `Rep_Category`, `Cat_Id`) VALUES
('R1', 'Plumbing', 'C3'),
('R2', 'Carpentry', 'C3'),
('R3', 'Automobiles', 'C3'),
('R4', 'Electric Appliances', 'C3'),
('R5', 'Electronic Appliance', 'C3');

-- --------------------------------------------------------

--
-- Table structure for table `repair_details`
--

CREATE TABLE `repair_details` (
  `Rep_Id` varchar(5) NOT NULL,
  `Rep_Name` varchar(30) NOT NULL,
  `Rep_Location` varchar(70) NOT NULL,
  `Rep_Rating` float(2,1) NOT NULL,
  `Rep_Img` varchar(80) NOT NULL,
  `Rep_Contact` bigint(10) DEFAULT NULL,
  `Rep_Description` text NOT NULL,
  `RepCat_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repair_details`
--

INSERT INTO `repair_details` (`Rep_Id`, `Rep_Name`, `Rep_Location`, `Rep_Rating`, `Rep_Img`, `Rep_Contact`, `Rep_Description`, `RepCat_Id`) VALUES
('RE1', 'Kapro Services, Any Car Servic', 'Laxminarayan Compound, Anand - Sojitra Rd, near Uma Bhavan, opposite A', 4.3, '', 9377133442, '', 'R3'),
('RE2', 'Easy To Fix Services Private L', '715 Iscon Emporio, Satellite Rd, near Star Bazar, Satellite, Ahmedabad', 4.9, '', 0, '', 'R1');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_cat`
--

CREATE TABLE `restaurant_cat` (
  `RCat_Id` varchar(5) NOT NULL,
  `RCat_Name` varchar(20) NOT NULL,
  `Cat_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_cat`
--

INSERT INTO `restaurant_cat` (`RCat_Id`, `RCat_Name`, `Cat_Id`) VALUES
('RC1', 'Chinese', 'C1'),
('RC2', 'Mexican', 'C1'),
('RC3', 'Italian', 'C1'),
('RC4', 'South Indian', 'C1'),
('RC5', 'Gujarati ', 'C1'),
('RC6', 'Punjabi', 'C1');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_details`
--

CREATE TABLE `restaurant_details` (
  `Rest_Id` varchar(5) NOT NULL,
  `Rest_Name` varchar(40) NOT NULL,
  `Rest_Location` varchar(70) NOT NULL,
  `Rest_Rating` float(2,1) NOT NULL,
  `Rest_Image` varchar(20) NOT NULL,
  `Rest_Contact` bigint(12) DEFAULT NULL,
  `Rest_Description` text NOT NULL,
  `RCat_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_details`
--

INSERT INTO `restaurant_details` (`Rest_Id`, `Rest_Name`, `Rest_Location`, `Rest_Rating`, `Rest_Image`, `Rest_Contact`, `Rest_Description`, `RCat_Id`) VALUES
('RES1', 'Sarovar Kathiyawadi Hotel', 'NH 8, near deep mangal society, Kabilpore, Navsari', 4.1, 'shorturl.at/rsLPV', 2637239786, 'Attractive outside sitting, surrounded by garden with good kathiuawadi food.', 'RC5'),
('RES2', 'Dolphin Restaurant', 'Anand-Vidhyanagar, Road, near Panchal Hall, Anand', 4.2, 'shorturl.at/cisFS', 0, 'Decent place to come with family and friends. Multi cuisine are available. Our Mexican & Chinese food are most popular among all.', 'RC1'),
('RES3', 'Dolphin Restaurant', 'Anand-Vidhyanagar, Road, near Panchal Hall, Anand', 4.2, '', 7942684930, '', 'RC2'),
('RES4', 'Rajwadu', 'Nr. Jivraj Tolnaka, Behind Ambaji Temple, Malav Talav, Ahmedabad\r\n', 4.4, '', 7926603030, '', 'RC5'),
('RES5', '24 Carats Multi Cuisine Restaurant', 'RC Dutt Rd, Aradhana Society, Vishwas Colony, Alkapuri, Vadodara', 4.1, '', 9227881060, '', 'RC1'),
('RES6', 'Spice Terrace Restaurant', 'Marriott Hotel, Surat Marriot Rd, Umra Gam, Athwa, Surat', 4.7, '', 7942685333, '', 'RC4'),
('RES7', 'Shree Nityanand Dosa', 'H.M.Patel Shopping Center, Opp. APC, Anand Vvnagar Road', 3.9, '', 7942685464, '', 'RC4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_Id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hospital_Id`);

--
-- Indexes for table `hospital_details`
--
ALTER TABLE `hospital_details`
  ADD PRIMARY KEY (`Hos_Id`),
  ADD UNIQUE KEY `Hos_Contact` (`Hos_Contact`),
  ADD KEY `hospital_details_ibfk_1` (`HosCat_Id`),
  ADD KEY `hospital_details_ibfk_2` (`PHos_Cat_Id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_Id`),
  ADD UNIQUE KEY `Hotel_Contact` (`Hotel_Contact`),
  ADD KEY `HotelCat_Id` (`HotelCat_Id`);

--
-- Indexes for table `private_hospital_cat`
--
ALTER TABLE `private_hospital_cat`
  ADD PRIMARY KEY (`Hos_Id`),
  ADD KEY `Cat_Id` (`Cat_Id`);

--
-- Indexes for table `repair_cat`
--
ALTER TABLE `repair_cat`
  ADD PRIMARY KEY (`Rep_Id`),
  ADD KEY `repair_cat_ibfk_1` (`Cat_Id`);

--
-- Indexes for table `repair_details`
--
ALTER TABLE `repair_details`
  ADD PRIMARY KEY (`Rep_Id`),
  ADD UNIQUE KEY `Rep_Contact` (`Rep_Contact`),
  ADD KEY `RepCat_Id` (`RepCat_Id`);

--
-- Indexes for table `restaurant_cat`
--
ALTER TABLE `restaurant_cat`
  ADD PRIMARY KEY (`RCat_Id`),
  ADD KEY `Cat_Id` (`Cat_Id`);

--
-- Indexes for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  ADD PRIMARY KEY (`Rest_Id`),
  ADD UNIQUE KEY `Rest_Contact` (`Rest_Contact`),
  ADD KEY `RCat_Id` (`RCat_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hospital_details`
--
ALTER TABLE `hospital_details`
  ADD CONSTRAINT `hospital_details_ibfk_1` FOREIGN KEY (`HosCat_Id`) REFERENCES `hospital` (`Hospital_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `hospital_details_ibfk_2` FOREIGN KEY (`PHos_Cat_Id`) REFERENCES `private_hospital_cat` (`Hos_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`HotelCat_Id`) REFERENCES `category` (`Cat_Id`);

--
-- Constraints for table `private_hospital_cat`
--
ALTER TABLE `private_hospital_cat`
  ADD CONSTRAINT `private_hospital_cat_ibfk_1` FOREIGN KEY (`Cat_Id`) REFERENCES `category` (`Cat_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `repair_cat`
--
ALTER TABLE `repair_cat`
  ADD CONSTRAINT `repair_cat_ibfk_1` FOREIGN KEY (`Cat_Id`) REFERENCES `category` (`Cat_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `repair_details`
--
ALTER TABLE `repair_details`
  ADD CONSTRAINT `repair_details_ibfk_1` FOREIGN KEY (`RepCat_Id`) REFERENCES `repair_cat` (`Rep_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_cat`
--
ALTER TABLE `restaurant_cat`
  ADD CONSTRAINT `restaurant_cat_ibfk_1` FOREIGN KEY (`Cat_Id`) REFERENCES `category` (`Cat_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  ADD CONSTRAINT `restaurant_details_ibfk_1` FOREIGN KEY (`RCat_Id`) REFERENCES `restaurant_cat` (`RCat_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
