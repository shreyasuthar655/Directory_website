-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 11:26 AM
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
-- Database: `mini_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `Cat_Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `Cat_Name`) VALUES
(1, 'Restaurant'),
(2, 'Hotel'),
(3, 'Repair'),
(4, 'Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_details`
--

CREATE TABLE `hospital_details` (
  `Hos_Id` int(11) NOT NULL,
  `Hos_Name` varchar(40) NOT NULL,
  `Hos_Address` varchar(100) NOT NULL,
  `Hos_Location` varchar(20) NOT NULL,
  `Hos_Rating` float(2,1) NOT NULL,
  `Hos_Image` varchar(80) NOT NULL,
  `category` varchar(255) NOT NULL,
  `Hos_Contact` bigint(20) DEFAULT NULL,
  `Hos_Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_details`
--

INSERT INTO `hospital_details` (`Hos_Id`, `Hos_Name`, `Hos_Address`, `Hos_Location`, `Hos_Rating`, `Hos_Image`, `category`, `Hos_Contact`, `Hos_Description`) VALUES
(1, 'Zydus Hospitals, Anand', 'HW8X+RJJ, Anand-Lambhvel Road, Zydus Rd, Nanikhodiyar, Anand, Gujarat 388001', 'Anand', 4.6, '../Images/Hospitals/Zydus.jpeg', 'Private', 2692619501, 'We offer world-class medical care in a luxurious and comfortable environment.'),
(2, 'Shalby Hospital, Surat', 'Nr. Navyug College, Rander Rd, Adajan, Surat, Gujarat 395009', 'Surat', 4.9, 'shalby_surat.jpeg', 'Private', 2617190000, 'At our private hospital, we are committed to providing a high level of personalized care to each of our patients.'),
(4, 'Shree Krishna Hospital', 'Anand - Sojitra Rd, Gokul Nagar, Karamsad, Anand, Gujarat 388325', 'Anand', 4.0, '../Images/Hospitals/Shree_Krishna_Hospital.jpeg', 'Public', 2692228411, 'we are committed to providing high-quality medical care to all members of our community.'),
(5, 'Jethwa Eye Hospital Private Limited,', 'Beside Naya Padkar Press, Desai Lane, Off, Krishna Rd, Anand, Gujarat 388001', 'Anand', 4.9, '../Images/Hospitals/jethwa_eye_hospital.jpeg', 'Private', 2692252287, 'we are dedicated to providing the best possible eye care to our patients. '),
(6, 'IRIS HOSPITAL', 'Lambhvel Rd, Patel Chokdi, Purushottam Nagar, Anand, Gujarat 388120', 'Anand', 4.7, '../Images/Hospitals/Iris.jpeg', 'Private', 2692288200, 'Our hospital is staffed by top doctors and healthcare professionals who are dedicated to providing personalized care to each of our patients.'),
(7, 'Zydus Hospitals', 'Zydus Hospitals Road, Sarkhej - Gandhinagar Hwy, nr. Sola Bridge, Ahmedabad, Gujarat 380054', 'Ahmedabad', 4.3, '../Images/Hospitals/Zydus_Ahmedabad.jpeg', 'Private', 7966190201, 'We offer a range of medical services, including general surgery, cardiology, neurology, orthopedics, obstetrics and gynecology, and more.'),
(8, 'Shalby Multi-Specialty Hospitals', ' Sarkhej - Gandhinagar Hwy, opp. Karnavati Club, Ramdev Nagar, Ahmedabad, Gujarat 380015', '', 4.8, '../Images/Hospitals/shalby.jpeg', 'Private', 7940203000, 'Our hospital is equipped with the latest medical technology and equipment, and we use evidence-based medical practices to ensure the best possible outcomes for our patients.'),
(9, 'Shardaben General Hospital', '2JM6+483, Bhagwati Nagar, Road, Saraspur, Ahmedabad, Gujarat 380018', 'Ahmedabad', 3.8, '../Images/Hospitals/shardaben.jpeg', 'Public', 7922924261, 'Our hospital is staffed by experienced doctors, nurses, and healthcare professionals who are dedicated to providing the best possible care to our patients.'),
(10, 'Tricolour Hospitals - Multispeciality Ho', 'Dr. Vikram Sarabhai Road, Genda Cir, Vadiwadi, Vadodara, Gujarat 390007', 'Vadodara', 4.1, '../Images/Hospitals/tricolor.jpeg', 'Private', 2652477777, 'Our hospital is equipped with the latest medical technology and equipment, and we use evidence-based medical practices to ensure the best possible outcomes for our patients.'),
(11, 'Panchayat Hospital', 'HW4J+6C7, Nagarpalika Compond, Nana Bazaar, Vallabh Vidyanagar, Anand, Gujarat 388120', 'Anand', 4.0, '../Images/Hospitals/Panchayat.png', 'Public', NULL, 'We are committed to providing access to quality medical care for all members of our community, regardless of their ability to pay. ');

-- --------------------------------------------------------

--
-- Table structure for table `hos_cat`
--

CREATE TABLE `hos_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hos_cat`
--

INSERT INTO `hos_cat` (`cat_id`, `cat_name`) VALUES
(1, 'Cardiology'),
(2, 'Dentistry '),
(3, 'Eye Specialist\r\n'),
(4, 'Gynecology '),
(5, 'Neurology '),
(6, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `hos_cat_link`
--

CREATE TABLE `hos_cat_link` (
  `hos_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `host_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hos_cat_link`
--

INSERT INTO `hos_cat_link` (`hos_id`, `cat_id`, `host_cat_id`) VALUES
(1, 4, 1),
(1, 4, 2),
(1, 4, 3),
(1, 4, 4),
(1, 4, 5),
(4, 4, 1),
(4, 4, 2),
(4, 4, 3),
(4, 4, 4),
(4, 4, 5),
(5, 4, 3),
(6, 4, 2),
(7, 4, 1),
(7, 4, 2),
(7, 4, 3),
(7, 4, 4),
(7, 4, 5),
(8, 4, 2),
(8, 4, 5),
(9, 4, 1),
(9, 4, 2),
(9, 4, 3),
(9, 4, 4),
(9, 4, 5),
(10, 4, 1),
(10, 4, 2),
(10, 4, 5),
(2, 4, 1),
(2, 4, 2),
(2, 4, 3),
(2, 4, 4),
(2, 4, 5),
(11, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_Id` int(11) NOT NULL,
  `Hotel_Name` varchar(40) NOT NULL,
  `Hotel_Address` varchar(100) NOT NULL,
  `Hotel_Location` varchar(20) NOT NULL,
  `Hotel_Rating` float(2,1) NOT NULL,
  `Hotel_StarRating` varchar(6) NOT NULL,
  `Hotel_Image` varchar(80) NOT NULL,
  `Hotel_Contact` bigint(12) DEFAULT NULL,
  `Hotel_PricePerNight` int(11) NOT NULL,
  `Hotel_Description` text NOT NULL,
  `HotelCat_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_Id`, `Hotel_Name`, `Hotel_Address`, `Hotel_Location`, `Hotel_Rating`, `Hotel_StarRating`, `Hotel_Image`, `Hotel_Contact`, `Hotel_PricePerNight`, `Hotel_Description`, `HotelCat_Id`) VALUES
(2, 'Hotel Blueivy', 'Hotel Blueivy, 80 Feet Rd, opposite Patcon House, Rajiv Nagar, Patel Chokdi, Vivekanand Wadi, Anand', 'Anand', 4.7, '', '../Images/Hotel/Hotel_Blueivy.jpeg', 0, 2300, '', 0),
(3, 'Hotel H', 'Hotel H, Anand - Vidyanagar Rd, Vivekanand Wadi, Anand', 'Anand', 4.4, '3-star', '../Images/Hotel/Hotel_H.jpg', 7984015064, 4700, '', 0),
(4, ' WelcomHeritage Mani', 'Shantikunj Society, Parimal Cross Rd, near paldi, behind Mehdi Nawaz J', 'Ahmedabad', 4.4, '4', '../Images/Hotel/Welcome_Heritage.jpeg', 7926578520, 0, '', 0),
(5, 'Hotel Ashish', 'Mirzapur Rd, nr. Dinbai Tower, opp. Sarabhai Compund, Old City, Khanpu', 'Ahmedabad', 4.0, '3', '../Images/Hotel/Hotel_Ashish.png', 9978975015, 0, '', 0),
(6, 'Courtyard by Marriot', 'Block B Sarabhai Campus, Near Genda Circle, Alembic Rd, Vadodara, Gujarat 390023', 'Vadodara', 4.5, '5-star', '../Images/Hotel/Courtyard_by_Marriott.jpg', NULL, 7200, 'Welcome to our hotel, where we offer the perfect combination of comfort, luxury, and convenience.', 2),
(7, 'De Glance Hotel', 'Railway Station Rd, opp. Sufi Baug, Lal Darwaja, Varachha, Surat, Gujarat 395003', 'Surat', 4.7, '', '../Images/Hotel/De_Glance_Hotel.JPG\r\n', NULL, 2700, 'Our hotel is designed to cater to the needs of every type of traveler, whether you\'re here for business or leisure.', 2),
(8, 'Regenta Inn Vadodara', 'Ved Transcube Plaza, Central Bus Terminal, Maharaja Sayajirao University, Sayajiganj, Vadodara, Guja', 'Vadodara', 4.0, '3-star', '../Images/Hotel/Regenta.jpg', NULL, 1800, '', 2),
(9, 'Madhubhan Resort & Spa', 'Anand - Sojitra Rd, Vithal Udyognagar, Vallabh Vidyanagar, Anand, Gujarat 388120', 'Anand', 4.6, '5-star', '../Images/Hotel/Madhuban_resort.jpg', NULL, 9400, 'Our spacious and elegantly furnished guest rooms are designed with your comfort in mind. ', 2),
(10, 'THE HILLOCK ', 'THE HILLOCK AHMEDABAD, Opp. The CBD, 200 ft, Ring Road, nr. Vaishnodevi Circle, Ahmedabad, Gujarat 3', 'Ahmedabad', 4.7, '', '../Images/Hotel/THE_HILLOCK.jpeg', NULL, 6700, 'Each room features modern amenities like free Wi-Fi, flat-screen TVs, comfortable bedding, and more. ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `repair_cat`
--

CREATE TABLE `repair_cat` (
  `Rep_Cat_Id` int(11) NOT NULL,
  `Rep_Cat_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repair_cat`
--

INSERT INTO `repair_cat` (`Rep_Cat_Id`, `Rep_Cat_Name`) VALUES
(1, 'Plumbing'),
(2, 'Carpentary'),
(3, 'Automobiles'),
(4, 'Electric Appliances'),
(5, 'Electronic Appliances');

-- --------------------------------------------------------

--
-- Table structure for table `repair_cat_link`
--

CREATE TABLE `repair_cat_link` (
  `Rep_Id` int(11) NOT NULL,
  `Cat_Id` int(11) NOT NULL,
  `Rep_Cat_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repair_cat_link`
--

INSERT INTO `repair_cat_link` (`Rep_Id`, `Cat_Id`, `Rep_Cat_Id`) VALUES
(1, 3, 3),
(1, 3, 4),
(1, 3, 5),
(2, 3, 1),
(3, 3, 3),
(4, 3, 3),
(5, 3, 3),
(6, 3, 3),
(7, 3, 3),
(8, 3, 3),
(9, 3, 3),
(10, 3, 3),
(11, 3, 2),
(11, 3, 1),
(12, 3, 2),
(12, 3, 5),
(12, 3, 4),
(12, 3, 1),
(13, 3, 1),
(13, 3, 2),
(13, 3, 4),
(13, 3, 5),
(14, 3, 1),
(14, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `repair_details`
--

CREATE TABLE `repair_details` (
  `Rep_Id` int(11) NOT NULL,
  `Rep_Name` varchar(40) NOT NULL,
  `Rep_Address` varchar(100) NOT NULL,
  `Rep_Location` varchar(20) NOT NULL,
  `Rep_Rating` float(2,1) NOT NULL,
  `Rep_Img` varchar(80) NOT NULL,
  `Rep_Contact` bigint(10) DEFAULT NULL,
  `Rep_Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repair_details`
--

INSERT INTO `repair_details` (`Rep_Id`, `Rep_Name`, `Rep_Address`, `Rep_Location`, `Rep_Rating`, `Rep_Img`, `Rep_Contact`, `Rep_Description`) VALUES
(1, 'Kapro Services, Any Car Servic', 'Laxminarayan Compound, Anand - Sojitra Rd, near Uma Bhavan, opposite Amin Auto, Anand, Gujarat 38800', 'Anand', 4.3, '../Images/Repairs/kapro.jpeg\"', 9377133442, 'From our friendly and knowledgeable staff to our comfortable waiting area, we strive to make your experience with us as pleasant as possible. '),
(2, 'Easy To Fix Services Private L', '715 Iscon Emporio, Satellite Rd, near Star Bazar, Satellite, Ahmedabad', 'Ahmedabad', 4.9, '../Images/Repairs/easytofix.jpeg', 0, 'We\'ll keep you informed throughout the repair process and answer any questions you may have, so you can feel confident that your vehicle or appliance is in good hands.'),
(3, 'GoMechanic', 'Shree Krishna Centre, B3, Bsquare Managed Office, 7th Floor, Mithakhali Cir, near Crossword, Ahmedab', 'Ahmedabad', 4.8, '../Images/Repairs/gomechnic.jpeg\r\n', 8398970970, 'Welcome to our repair and services shop, where we provide a wide range of expert services to help keep your vehicles and appliances in top condition.'),
(4, 'SPEED CAR SERVICE', 'Dabhoi - Waghodia Ring Rd, near Bank Of Baroda, Goverdhan Twp, Kendranagar, Vadodara, Gujarat 390025', 'Vadodara', 4.6, '../Images/Repairs/speedcar_service.j', NULL, 'Our team of skilled technicians is trained to diagnose and repair a variety of issues, from minor repairs to major overhauls.'),
(5, 'Shree Gajanand Motors', 'Near Shastri Bridge, Old Chhani Rd, Vadodara, Gujarat 390002', 'Vadodara', 4.8, '../Images/Repairs/gajanand.jpeg', NULL, 'Whether you need routine maintenance like oil changes and tire rotations, or more complex repairs like engine rebuilds and transmission work, we have the knowledge and experience to get the job done right.'),
(6, 'DEV MULTICAR REPAIR & SERVICE', 'near GYM HOUSE, opp. naginawadi society, New Pushpakunj Society, Katargam, Surat, Gujarat 395004', 'Surat', 4.9, '../Images/Repairs/dev_repairs.jpeg', NULL, 'We use state-of-the-art diagnostic equipment and only the highest quality replacement parts to ensure that your vehicle or appliance is running at its best.'),
(7, 'Tarun Motors Car Workshop ', 'G2 , G3, Siddhachal Avenue, Galleria St, near Pratham circle , Pal, Adajan, Surat, Gujarat 395009', 'Surat', 4.7, '../Images/Repairs/tarun_motor.jpeg', NULL, 'In addition to our repair services, we also offer a variety of other services to help make your life easier.'),
(8, 'Welltech Motors ', 'Puna Kumbhariya Rd, opp. New Sardar Market, near Orchid Tower, Parvat Patiya, Surat, Gujarat 395010', 'Surat', 4.9, '../Images/Repairs/welltech_motors.jpeg', NULL, 'Our convenient drop-off and pick-up services mean that you can get your repairs done on your schedule, without having to worry about transportation. '),
(9, 'Royal Enfield Service Center', 'Phase 4, Plot No 111 to 113, GIDC, Anand, Gujarat 388121', 'Anand', 4.0, '../Images/Repairs/royal_enfield_service.jpeg', 9619037906, 'We also offer loaner vehicles and appliance rentals to help you stay on the go while your repairs are being completed.'),
(10, 'DOWNTOWN HYUNDAI', 'Plot No, 46, A18 Rd, Vithal Udyognagar, GIDC, Anand, Gujarat 388121', 'Anand', 4.6, '../Images/Repairs/downtown_hyundai.jpeg', 9033002253, 'At our shop, we believe in providing exceptional customer service. '),
(11, 'Shiv Shakti Hardware & Plumber Service', 'Shop No. C/3, Anadbhoomi Society, Opp. Naxtra Mall, IOC Rd, Chandkheda, Ahmedabad, Gujarat 382424', 'Ahmedabad', 4.7, '../Images/Repairs/shivshakti.jpeg', NULL, 'Welcome to our plumbing and carpentry services combined, where we offer a comprehensive range of expert services to keep your home or business running smoothly. '),
(12, 'Premend Services', '314 Vihav Trade Center Nr. Waves Club, Vasna - Bhayli Main Rd, Vadodara, Gujarat 391410', 'Vadodara', 4.8, '../Images/Repairs/premend.png', NULL, 'Welcome to our home services, where we offer a comprehensive range of expert services to help you maintain and improve your home.'),
(13, 'Home Hancer Services', '7, Kashinath Joshi ni chali, Daxini Society, Maninagar, Ahmedabad, Gujarat 380008', 'Ahmedabad', 4.8, '../Images/Repairs/homehancer_service.jpeg', NULL, 'Our team of skilled technicians includes experts in plumbing, electrical work, carpentry, painting, cleaning, and more.'),
(14, 'Choudhary Carpenter And Plumber', 'plot no 91 Atlanta Shoppers, Nr.Reliance Market, Vesu, Surat, Gujarat 395007', 'Surat', 4.6, '../Images/Repairs/choudhry_carpenter_plumber.jpeg', NULL, 'Our team of skilled technicians includes licensed plumbers and carpenters who can handle any job, big or small.');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_cat`
--

CREATE TABLE `restaurant_cat` (
  `RCat_Id` int(11) NOT NULL,
  `RCat_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_cat`
--

INSERT INTO `restaurant_cat` (`RCat_Id`, `RCat_Name`) VALUES
(1, 'Chinese'),
(2, 'Mexican'),
(3, 'Italian'),
(4, 'South Indian'),
(5, 'Gujarati '),
(6, 'Punjabi');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_details`
--

CREATE TABLE `restaurant_details` (
  `Rest_Id` int(11) NOT NULL,
  `Rest_Name` varchar(40) NOT NULL,
  `Rest_Address` varchar(100) NOT NULL,
  `Rest_Location` varchar(20) NOT NULL,
  `Rest_Rating` float(2,1) NOT NULL,
  `Rest_Image` text NOT NULL,
  `Rest_Contact` bigint(12) DEFAULT NULL,
  `Rest_Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_details`
--

INSERT INTO `restaurant_details` (`Rest_Id`, `Rest_Name`, `Rest_Address`, `Rest_Location`, `Rest_Rating`, `Rest_Image`, `Rest_Contact`, `Rest_Description`) VALUES
(1, 'Sarovar Kathiyawadi Hotel', 'NH 8, near deep mangal society, Kabilpore, Navsari', 'Navsari', 4.1, '../Images/Restaurants/sarovar.jpeg\"', 2637239786, 'Attractive outside sitting, surrounded by garden with good kathiuawadi food.'),
(2, 'Dolphin Restaurant', 'Anand-Vidhyanagar, Road, near Panchal Hall, Anand\r\n', 'Anand', 4.2, '../Images/Restaurants/dolphin.jpeg', 0, 'Decent place to come with family and friends. Multi cuisine are available. Our Mexican & Chinese food are most popular among all.'),
(3, 'Vangi Dining Hall', 'Meera Complex, Comfort World, Petlad Rd, nr. Kidney Hospital, Nadiad', 'Anand', 4.2, '../Images/Restaurants/vangi.jpeg', 9409309594, 'We\'re proud to support local farmers and producers by sourcing our ingredients from within a 50-mile radius.'),
(4, 'Rajwadu', 'Nr. Jivraj Tolnaka, Behind Ambaji Temple, Malav Talav, Ahmedabad\r\n', 'Ahmedabad', 4.4, '../Images/Restaurants/rajwadu.jpeg', 7926603030, 'Our chefs use traditional recipes and fresh, locally sourced ingredients to create dishes that are bursting with flavor.'),
(5, '24 Carats Multi Cuisine Restaurant', 'RC Dutt Rd, Aradhana Society, Vishwas Colony, Alkapuri, Vadodara', 'Vadodara', 4.1, '../Images/Restaurants/24carats.jpeg', 9227881060, 'At our restaurant, we specialize in authentic Mexican cuisine with a modern twist'),
(6, 'Spice Terrace Restaurant', 'Marriott Hotel, Surat Marriot Rd, Umra Gam, Athwa, Surat', 'Surat', 4.7, '../Images/Restaurants/spice_terrace.jpeg', 7942685333, ''),
(7, 'Shree Nityanand Dosa', 'H.M.Patel Shopping Center, Opp. APC, Anand Vvnagar Road', 'Anand', 3.9, '../Images/Restaurants/nityanand.jpeg', 7942685464, ''),
(8, 'Tapas - The Mexican Bar', 'Madhubhan Resort & Spa, Anand - Sojitra Rd, Vithal Udyognagar, Vallabh', 'Anand', 4.5, '../Images/Restaurants/tapas.jpeg', 2692239268, 'Come experience the true taste of Mexico at our restaurant.'),
(9, '@Mango', '309-310, Sindhu Bhavan Marg, opp. Mango Cafe, PRL Colony, Bodakdev, Ah', 'Ahmedabad', 4.4, '../Images/Restaurants/@mango.jpeg', 9925238230, 'Step into our restaurant and you\'ll be transported to a cozy, intimate space that\'s perfect for date night or a special occasion.'),
(10, 'Little Italy Restaurant', '75H3+MCH, Patel Travels Rd, Pramukh Swami nagar, Tandalja, Vadodara', 'Vadodara', 4.2, '../Images/Restaurants/little_italy.jpeg', NULL, 'Our warm lighting, soft music, and rustic decor create an atmosphere that\'s both inviting and romantic.'),
(11, 'The Green House', 'The House of MG, Bha lmdra Rd, opposite Sidi Saiyed Jali, Near, Relief', 'Ahmedabad', 4.2, '../Images/Restaurants/green_house.jpeg', 7925506946, 'Our commitment to using fresh, sustainable ingredients means that our dishes are not only delicious, but also better for the environment.'),
(12, 'Gujarat Club', 'near baroda bank, Nana Bazaar, Vallabh Vidyanagar, Anand, Gujarat 388120', 'Anand', 4.4, '../Images/Restaurants/gujarat_club.jpeg', NULL, 'Our knowledgeable waitstaff is trained to anticipate your every need and provide a dining experience that\'s unforgettable'),
(13, 'Barbeque Nation', '3rd Floor Cinemall, Near Natubhai Circle, Race Course Rd, Vadodara, Gujarat 390007', 'Vadodara', 4.4, '../Images/Restaurants/barbeque_nation.jpeg', 8069028772, 'Come see why our restaurant has won multiple awards for service.'),
(20, 'Premvati Restaurant', 'HX33+86C, Opposite Ranchhodji Temple, Shastri St, near Goya Talav, Mathiya Chora, Anand', 'Anand', 4.5, '../Images/Restaurants/premvati.jpeg', 9998990108, 'At our restaurant, we believe that exceptional service is just as important as delicious food.'),
(21, 'Agashiye Take Away', 'The house of MG sidi saiyyed mosque, Old City, Gheekanta, Lal Darwaja, Ahmedabad', 'Ahmedabad', 4.5, '../Images/Restaurants/agashiye.jpeg', 9876543210, 'Our knowledgeable waitstaff is trained to anticipate your every need and provide a dining experience that\'s unforgettable.');

-- --------------------------------------------------------

--
-- Table structure for table `rest_cat_link`
--

CREATE TABLE `rest_cat_link` (
  `Rest_Id` int(11) NOT NULL,
  `Cat_Id` int(11) NOT NULL,
  `Res_Cat_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rest_cat_link`
--

INSERT INTO `rest_cat_link` (`Rest_Id`, `Cat_Id`, `Res_Cat_Id`) VALUES
(1, 1, 5),
(2, 1, 1),
(2, 1, 3),
(4, 1, 5),
(5, 1, 1),
(5, 1, 2),
(5, 1, 3),
(6, 1, 4),
(6, 1, 5),
(6, 1, 6),
(7, 1, 4),
(8, 1, 2),
(9, 1, 1),
(9, 1, 2),
(9, 1, 3),
(10, 1, 3),
(3, 1, 5),
(11, 1, 4),
(11, 1, 5),
(11, 1, 6),
(20, 1, 5),
(21, 1, 5),
(21, 1, 4),
(21, 1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `hospital_details`
--
ALTER TABLE `hospital_details`
  ADD PRIMARY KEY (`Hos_Id`);

--
-- Indexes for table `hos_cat`
--
ALTER TABLE `hos_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `hos_cat_link`
--
ALTER TABLE `hos_cat_link`
  ADD KEY `hospital_details to host_cat_link` (`hos_id`),
  ADD KEY `host_cat to host_cat_link` (`host_cat_id`),
  ADD KEY `category to host_cat_link` (`cat_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_Id`),
  ADD UNIQUE KEY `Hotel_Contact` (`Hotel_Contact`),
  ADD KEY `HotelCat_Id` (`HotelCat_Id`);

--
-- Indexes for table `repair_cat`
--
ALTER TABLE `repair_cat`
  ADD PRIMARY KEY (`Rep_Cat_Id`);

--
-- Indexes for table `repair_cat_link`
--
ALTER TABLE `repair_cat_link`
  ADD KEY `Rep_Id` (`Rep_Id`),
  ADD KEY `Cat_Id` (`Cat_Id`),
  ADD KEY `Rep_Cat_Id` (`Rep_Cat_Id`);

--
-- Indexes for table `repair_details`
--
ALTER TABLE `repair_details`
  ADD PRIMARY KEY (`Rep_Id`),
  ADD UNIQUE KEY `Rep_Contact` (`Rep_Contact`);

--
-- Indexes for table `restaurant_cat`
--
ALTER TABLE `restaurant_cat`
  ADD PRIMARY KEY (`RCat_Id`);

--
-- Indexes for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  ADD PRIMARY KEY (`Rest_Id`),
  ADD UNIQUE KEY `Rest_Contact` (`Rest_Contact`);

--
-- Indexes for table `rest_cat_link`
--
ALTER TABLE `rest_cat_link`
  ADD KEY `Cat_Id` (`Cat_Id`),
  ADD KEY `Rest_Id` (`Rest_Id`),
  ADD KEY `Res_Cat_Id` (`Res_Cat_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hospital_details`
--
ALTER TABLE `hospital_details`
  MODIFY `Hos_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hos_cat`
--
ALTER TABLE `hos_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Hotel_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `repair_cat`
--
ALTER TABLE `repair_cat`
  MODIFY `Rep_Cat_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `repair_details`
--
ALTER TABLE `repair_details`
  MODIFY `Rep_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `restaurant_cat`
--
ALTER TABLE `restaurant_cat`
  MODIFY `RCat_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  MODIFY `Rest_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hos_cat_link`
--
ALTER TABLE `hos_cat_link`
  ADD CONSTRAINT `category to host_cat_link` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cid`),
  ADD CONSTRAINT `hospital_details to host_cat_link` FOREIGN KEY (`hos_id`) REFERENCES `hospital_details` (`Hos_Id`),
  ADD CONSTRAINT `host_cat to host_cat_link` FOREIGN KEY (`host_cat_id`) REFERENCES `hos_cat` (`cat_id`);

--
-- Constraints for table `repair_cat_link`
--
ALTER TABLE `repair_cat_link`
  ADD CONSTRAINT `repair_cat_link_ibfk_1` FOREIGN KEY (`Rep_Id`) REFERENCES `repair_details` (`Rep_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `repair_cat_link_ibfk_2` FOREIGN KEY (`Cat_Id`) REFERENCES `category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `repair_cat_link_ibfk_3` FOREIGN KEY (`Rep_Cat_Id`) REFERENCES `repair_cat` (`Rep_Cat_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rest_cat_link`
--
ALTER TABLE `rest_cat_link`
  ADD CONSTRAINT `rest_cat_link_ibfk_1` FOREIGN KEY (`Cat_Id`) REFERENCES `category` (`cid`),
  ADD CONSTRAINT `rest_cat_link_ibfk_2` FOREIGN KEY (`Rest_Id`) REFERENCES `restaurant_details` (`Rest_Id`),
  ADD CONSTRAINT `rest_cat_link_ibfk_3` FOREIGN KEY (`Res_Cat_Id`) REFERENCES `restaurant_cat` (`RCat_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
