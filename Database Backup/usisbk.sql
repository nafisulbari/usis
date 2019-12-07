-- --------------------------------------------------------
-- Host:                         103.232.101.83
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for usis
CREATE DATABASE IF NOT EXISTS `usis` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `usis`;

-- Dumping structure for table usis.advising
CREATE TABLE IF NOT EXISTS `advising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table usis.advising: ~1 rows (approximately)
/*!40000 ALTER TABLE `advising` DISABLE KEYS */;
INSERT IGNORE INTO `advising` (`id`, `std_id`, `course_id`) VALUES
	(529, 2, 2249),
	(530, 2, 2250),
	(536, 2, 2280),
	(537, 2, 2281);
/*!40000 ALTER TABLE `advising` ENABLE KEYS */;

-- Dumping structure for table usis.course
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(50) NOT NULL DEFAULT '0',
  `course_title` varchar(100) NOT NULL DEFAULT '0',
  `section` int(11) NOT NULL DEFAULT 0,
  `seat` int(11) NOT NULL DEFAULT 0,
  `faculty` varchar(50) NOT NULL DEFAULT '0',
  `exam_time` varchar(50) NOT NULL DEFAULT '0',
  `lab` int(11) NOT NULL DEFAULT 0,
  `saturday` varchar(50) NOT NULL DEFAULT '0',
  `sunday` varchar(50) NOT NULL DEFAULT '0',
  `monday` varchar(50) NOT NULL DEFAULT '0',
  `tuesday` varchar(50) NOT NULL DEFAULT '0',
  `wednesday` varchar(50) NOT NULL DEFAULT '0',
  `thursday` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2616 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table usis.course: ~394 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT IGNORE INTO `course` (`id`, `course_code`, `course_title`, `section`, `seat`, `faculty`, `exam_time`, `lab`, `saturday`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`) VALUES
	(2249, 'CSE101', 'UB71003', 1, 1, 'NOR', '', 0, '08:00', '', '', '', '', '08:00'),
	(2250, 'CSE101', 'UB60804', 1, 1, 'ESF,SSK', '', 1, '11:00,12:30', '', '', '', '', ''),
	(2251, 'CSE101', 'UB71003', 2, 0, 'MIH', '', 0, '09:30', '', '', '', '', '09:30'),
	(2252, 'CSE101', 'UB60806', 2, 0, 'AKH,ASA', '', 1, '11:00,12:30', '', '', '', '', ''),
	(2253, 'CSE101', 'UB71003', 3, 0, 'NOR', '', 0, '11:00', '', '', '', '', '11:00'),
	(2254, 'CSE101', 'UB60806', 3, 0, 'ARR,NOR', '', 1, '14:00,15:30', '', '', '', '', ''),
	(2255, 'CSE101', 'UB71003', 4, 0, 'ISH', '', 0, '12:30', '', '', '', '', '12:30'),
	(2256, 'CSE101', 'UB60806', 4, 0, 'SSY,SSK', '', 1, '08:00,09:30', '', '', '', '', ''),
	(2257, 'CSE101', 'UB71003', 5, 0, 'MSI', '', 0, '14:00', '', '', '', '', '14:00'),
	(2258, 'CSE101', 'UB60804', 5, 0, 'AMT,RYB', '', 1, '', '', '08:00,09:30', '', '', ''),
	(2259, 'CSE101', 'UB71003', 6, 0, 'MSI', '', 0, '15:30', '', '', '', '', '15:30'),
	(2260, 'CSE101', 'UB71103', 6, 0, 'SEJ,MRN', '', 1, '11:00,12:30', '', '', '', '', ''),
	(2261, 'CSE101', 'UB71003', 7, 0, 'ASA', '', 0, '', '17:00', '', '17:00', '', ''),
	(2262, 'CSE101', 'UB60804', 7, 0, 'MFT,MSI', '', 1, '08:00,09:30', '', '', '', '', ''),
	(2263, 'CSE101', 'UB71003', 8, 0, 'ASA', '', 0, '', '', '17:00', '', '17:00', ''),
	(2264, 'CSE101', 'UB60804', 8, 0, 'NNC,ASA', '', 1, '14:00,15:30', '', '', '', '', ''),
	(2265, 'CSE103', 'UB40802', 1, 0, 'TNR,NOR', '', 0, '', '14:00,15:30', '', '', '', ''),
	(2266, 'CSE110', 'UB81302', 1, 0, 'SZN', '', 0, '', '', '11:00', '', '11:00', ''),
	(2267, 'CSE110', 'UB40101', 1, 0, 'SZN,SEJ', '', 1, '', '', '', '', '', '11:00,12:30'),
	(2268, 'CSE110', 'UB70402', 2, 0, 'NZN', '', 0, '', '', '08:00', '', '08:00', ''),
	(2269, 'CSE110', 'UB40403', 2, 0, 'TRD,NNC', '', 1, '', '', '', '', '', '08:00,09:30'),
	(2270, 'CSE110', 'UB71002', 3, 0, 'FSH', '', 0, '', '', '09:30', '', '09:30', ''),
	(2271, 'CSE110', 'UB40101', 3, 0, 'ISH,ARF', '', 1, '', '', '', '', '', '14:00,15:30'),
	(2272, 'CSE110', 'UB50302', 4, 0, 'JNM', '', 0, '', '09:30', '', '09:30', '', ''),
	(2273, 'CSE110', 'UB71102', 4, 0, 'SZN,RAA', '', 1, '', '', '', '', '', '08:00,09:30'),
	(2274, 'CSE110', 'UB71002', 6, 0, 'ISH', '', 0, '', '', '12:30', '', '12:30', ''),
	(2275, 'CSE110', 'UB71102', 6, 0, 'SSY,RYB', '', 1, '', '', '', '', '', '11:00,12:30'),
	(2276, 'CSE110', 'UB70401', 7, 0, 'AAR', '', 0, '', '', '14:00', '', '14:00', ''),
	(2277, 'CSE110', 'UB40403', 7, 0, 'RSA,AAR', '', 1, '', '', '', '', '', '14:00,15:30'),
	(2278, 'CSE110', 'UB70401', 8, 0, 'AAR', '', 0, '', '', '15:30', '', '15:30', ''),
	(2279, 'CSE110', 'UB40403', 8, 0, 'MRN,AAR', '', 1, '', '', '', '', '', '11:00,12:30'),
	(2280, 'CSE111', 'UB71003', 1, 1, 'RYB', '', 0, '', '08:00', '', '08:00', '', ''),
	(2281, 'CSE111', 'UB71103', 1, 1, 'TMA,SZH', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2282, 'CSE111', 'UB81301', 2, 0, 'ARF', '', 0, '12:30', '', '', '', '', '12:30'),
	(2283, 'CSE111', 'UB71102', 2, 0, 'TNR,NZN', '', 1, '', '', '', '', '14:00,15:30', ''),
	(2284, 'CSE111', 'UB81302', 3, 0, 'RAK', '', 0, '', '09:30', '', '09:30', '', ''),
	(2285, 'CSE111', 'UB40403', 3, 0, 'FYA,SZH', '', 1, '', '', '', '', '14:00,15:30', ''),
	(2286, 'CSE111', 'UB81301', 4, 0, 'WAR', '', 0, '', '08:00', '', '08:00', '', ''),
	(2287, 'CSE111', 'UB40203', 4, 0, 'RSA,WAR', '', 1, '', '', '', '', '14:00,15:30', ''),
	(2288, 'CSE111', 'UB50302', 5, 0, 'WAR', '', 0, '', '', '12:30', '', '12:30', ''),
	(2289, 'CSE111', 'UB40101', 5, 0, 'AMT,THD', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2290, 'CSE111', 'UB71002', 6, 0, 'THD', '', 0, '', '', '11:00', '', '11:00', ''),
	(2291, 'CSE111', 'UB40103', 6, 0, 'SSY,SAF', '', 1, '', '', '', '', '14:00,15:30', ''),
	(2292, 'CSE111', 'UB50302', 7, 0, 'SEJ', '', 0, '', '12:30', '', '12:30', '', ''),
	(2293, 'CSE111', 'UB40101', 7, 0, 'AKH,SSK', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2294, 'CSE111', 'UB70402', 8, 0, 'SSK', '', 0, '', '09:30', '', '09:30', '', ''),
	(2295, 'CSE111', 'UB71101', 8, 0, 'SSY,ARF', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2296, 'CSE111', 'UB50302', 9, 0, 'JNM', '', 0, '', '', '09:30', '', '09:30', ''),
	(2297, 'CSE111', 'UB71102', 9, 0, 'JNM,AKO', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2298, 'CSE111', 'UB71002', 10, 0, 'SRO', '', 0, '', '15:30', '', '15:30', '', ''),
	(2299, 'CSE111', 'UB40101', 10, 0, 'TRD,MSI', '', 1, '', '', '', '', '14:00,15:30', ''),
	(2300, 'CSE111', 'UB70402', 11, 0, 'SLI', '', 0, '', '11:00', '', '11:00', '', ''),
	(2301, 'CSE111', 'UB71101', 11, 0, 'SZI,SLI', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2302, 'CSE111', 'UB70401', 12, 0, 'AAR', '', 0, '', '', '09:30', '', '09:30', ''),
	(2303, 'CSE111', 'UB40403', 12, 0, 'AAR,NZN', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2304, 'CSE111', 'UB81301', 13, 0, 'TNR', '', 0, '', '11:00', '', '11:00', '', ''),
	(2305, 'CSE111', 'UB40103', 13, 0, 'SHK,TNR', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2306, 'CSE111', 'UB81301', 14, 0, 'THD', '', 0, '', '', '15:30', '', '15:30', ''),
	(2307, 'CSE111', 'UB40203', 14, 0, 'SZH,MSI', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2308, 'CSE111', 'UB30401', 15, 0, 'RYB', '', 0, '', '', '12:30', '', '12:30', ''),
	(2309, 'CSE111', 'UB40203', 15, 0, 'PSH,SAF', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2310, 'CSE111', 'UB71002', 16, 0, 'SEJ', '', 0, '', '14:00', '', '14:00', '', ''),
	(2311, 'CSE111', 'UB60804', 16, 0, 'AKH,FBA', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2312, 'CSE111', 'UB71001', 17, 0, 'SLI', '', 0, '', '09:30', '', '09:30', '', ''),
	(2313, 'CSE111', 'UB40403', 17, 0, 'ISH,SLI', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2314, 'CSE161', 'UB70701,UB81303', 1, 0, 'MSI', '', 0, '11:00', '', '', '', '', '11:00'),
	(2315, 'CSE161', 'UB70402', 2, 0, 'TRD', '', 0, '', '14:00', '', '14:00', '', ''),
	(2316, 'CSE162', 'UB71103', 1, 0, 'THD,NZN', '', 0, '08:00,09:30', '', '', '', '', ''),
	(2317, 'CSE162', 'UB40203', 2, 0, 'WAR,RAA', '', 0, '', '', '', '', '', '11:00,12:30'),
	(2318, 'CSE220', 'UB50302', 1, 0, 'MMM', '', 0, '', '11:00', '', '11:00', '', ''),
	(2319, 'CSE220', 'UB71101', 1, 0, 'NOR,SLI', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2320, 'CSE220', 'UB81302', 2, 0, 'MZH', '', 0, '', '', '15:30', '', '15:30', ''),
	(2321, 'CSE220', 'UB40203', 2, 0, 'NZN,EHK', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2322, 'CSE220', 'UB81302', 3, 0, 'MZH', '', 0, '', '', '12:30', '', '12:30', ''),
	(2323, 'CSE220', 'UB40203', 3, 0, 'BHS,EHK', '', 1, '', '', '08:00,09:30', '', '', ''),
	(2324, 'CSE220', 'UB81303', 4, 0, 'MZH', '', 0, '', '15:30', '', '15:30', '', ''),
	(2325, 'CSE220', 'UB40101', 4, 0, 'TMA,THD', '', 1, '', '', '08:00,09:30', '', '', ''),
	(2326, 'CSE220', 'UB50302', 5, 0, 'JNM', '', 0, '', '', '08:00', '', '08:00', ''),
	(2327, 'CSE220', 'UB71102', 5, 0, 'JNM,AKO', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2328, 'CSE220', 'UB70402', 6, 0, 'SLI', '', 0, '', '08:00', '', '08:00', '', ''),
	(2329, 'CSE220', 'UB71102', 6, 0, 'ISH,SLI', '', 1, '', '', '08:00,09:30', '', '', ''),
	(2330, 'CSE220', 'UB70401', 7, 0, 'RAK', '', 0, '', '11:00', '', '11:00', '', ''),
	(2331, 'CSE220', 'UB40101', 7, 0, 'SEJ,RAK', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2332, 'CSE220', 'UB70401', 8, 0, 'RAK', '', 0, '', '12:30', '', '12:30', '', ''),
	(2333, 'CSE220', 'UB40101', 8, 0, 'WAR,SEJ', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2334, 'CSE220', 'UB70401', 9, 0, 'MZH', '', 0, '', '09:30', '', '09:30', '', ''),
	(2335, 'CSE220', 'UB40103', 9, 0, 'RSA,SZI', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2336, 'CSE220', 'UB50301', 10, 0, 'AHR', '', 0, '', '08:00', '', '08:00', '', ''),
	(2337, 'CSE220', 'UB40103', 10, 0, 'RSA,AKO', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2338, 'CSE220', 'UB50302', 11, 0, 'SLI', '', 0, '', '15:30', '', '15:30', '', ''),
	(2339, 'CSE220', 'UB40203', 11, 0, 'TNR,RAK', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2340, 'CSE221', 'UB50302', 1, 0, 'MMM', '', 0, '', '08:00', '', '08:00', '', ''),
	(2341, 'CSE221', 'UB71103', 1, 0, 'SSA,ISH', '', 1, '', '', '', '', '14:00,15:30', ''),
	(2342, 'CSE221', 'UB50301', 2, 0, 'MMM', '', 0, '', '', '08:00', '', '08:00', ''),
	(2343, 'CSE221', 'UB71103', 2, 0, 'BHS,RAK', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2344, 'CSE221', 'UB70402', 3, 0, 'NNC', '', 0, '', '', '11:00', '', '11:00', ''),
	(2345, 'CSE221', 'UB40103', 3, 0, 'SSY,WAR', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2346, 'CSE221', 'UB70402', 4, 0, 'NNC', '', 0, '', '', '14:00', '', '14:00', ''),
	(2347, 'CSE221', 'UB40103', 4, 0, 'ARR,RAK', '', 1, '', '', '', '14:00,15:30', '', ''),
	(2348, 'CSE221', 'UB70401', 5, 0, 'FFS', '', 0, '', '', '11:00', '', '11:00', ''),
	(2349, 'CSE221', 'UB71101', 5, 0, 'MRA,AAI', '', 1, '', '', '', '', '14:00,15:30', ''),
	(2350, 'CSE221', 'UB81302', 6, 0, 'FFS', '', 0, '', '12:30', '', '12:30', '', ''),
	(2351, 'CSE221', 'UB40101', 6, 0, 'TMA,AKO', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2352, 'CSE221', 'UB81302', 7, 0, 'FFS', '', 0, '', '11:00', '', '11:00', '', ''),
	(2353, 'CSE221', 'UB40301', 7, 0, 'EHK,AAI', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2354, 'CSE221', 'UB71002', 8, 0, 'AKO', '', 0, '', '11:00', '', '11:00', '', ''),
	(2355, 'CSE221', 'UB71102', 8, 0, 'SSA,SRO', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2356, 'CSE221', 'UB30401', 9, 0, 'FFS', '', 0, '', '', '09:30', '', '09:30', ''),
	(2357, 'CSE221', 'UB40301', 9, 0, 'EHK,AAI', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2358, 'CSE221', 'UB70402', 10, 0, 'TRD', '', 0, '', '12:30', '', '12:30', '', ''),
	(2359, 'CSE221', 'UB40103', 10, 0, 'BHS,ARR', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2360, 'CSE230', 'UB30201', 1, 0, 'SSN', '', 0, '', '15:30', '', '15:30', '', ''),
	(2361, 'CSE230', 'UB81304', 2, 0, 'RAA', '', 0, '', '17:00', '', '17:00', '', ''),
	(2362, 'CSE230', 'UB81301', 3, 0, 'RAA', '', 0, '', '', '12:30', '', '12:30', ''),
	(2363, 'CSE230', 'UB50302', 4, 0, 'SRJ', '', 0, '12:30', '', '', '', '', '12:30'),
	(2364, 'CSE230', 'UB71003', 5, 0, 'SSK', '', 0, '', '', '08:00', '', '08:00', ''),
	(2365, 'CSE230', 'UB81302', 6, 0, 'FBA', '', 0, '08:00', '', '', '', '', '08:00'),
	(2366, 'CSE230', 'UB50301', 7, 0, 'SSN', '', 0, '', '', '12:30', '', '12:30', ''),
	(2367, 'CSE230', 'UB50301', 8, 0, 'SMU', '', 0, '', '12:30', '', '12:30', '', ''),
	(2368, 'CSE230', 'UB71002', 9, 0, 'SSN', '', 0, '', '', '15:30', '', '15:30', ''),
	(2369, 'CSE230', 'UB81301', 10, 0, 'SSN', '', 0, '', '', '17:00', '', '17:00', ''),
	(2370, 'CSE230', 'UB81301', 11, 0, 'SMU', '', 0, '', '', '14:00', '', '14:00', ''),
	(2371, 'CSE230', 'UB70402', 12, 0, 'SMU', '', 0, '', '15:30', '', '15:30', '', ''),
	(2372, 'CSE230', 'UB70701', 13, 0, 'SMU', '', 0, '', '11:00', '', '11:00', '', ''),
	(2373, 'CSE250', 'UB70701', 11, 0, 'MIF', '', 0, '', '09:30', '', '09:30', '', ''),
	(2374, 'CSE250', 'UB50203', 11, 0, 'SOD,MIF', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2375, 'CSE250', 'UB70701', 12, 0, 'SHS', '', 0, '', '12:30', '', '12:30', '', ''),
	(2376, 'CSE250', 'UB50202', 12, 0, 'SHS,MIF', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2377, 'CSE250', 'UB70701', 13, 0, 'MIF', '', 0, '', '15:30', '', '15:30', '', ''),
	(2378, 'CSE250', 'UB50202', 13, 0, 'MIF', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2379, 'CSE250', 'UB70701', 14, 0, 'SHS', '', 0, '', '', '14:00', '', '14:00', ''),
	(2380, 'CSE250', 'UB50202', 14, 0, 'AAY,SHS', '', 1, '', '', '', '', '', '08:00,09:30'),
	(2381, 'CSE251', 'UB70701', 11, 0, 'SOD', '', 0, '', '', '15:30', '', '15:30', ''),
	(2382, 'CSE251', 'UB50203', 11, 0, 'SOD', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2383, 'CSE251', 'UB70701', 12, 0, 'SOD', '', 0, '', '14:00', '', '14:00', '', ''),
	(2384, 'CSE251', 'UB50203', 12, 0, 'SHS,SOD', '', 1, '', '', '', '', '08:00,09:30', ''),
	(2385, 'CSE260', 'UB81304', 1, 0, 'MAB', '', 0, '', '', '11:00', '', '11:00', ''),
	(2386, 'CSE260', 'UB50201', 1, 0, 'BHS,SRJ', '', 1, '', '11:00,12:30', '', '', '', ''),
	(2387, 'CSE260', 'UB81304', 2, 0, 'MAB', '', 0, '', '', '15:30', '', '15:30', ''),
	(2388, 'CSE260', 'UB50201', 2, 0, 'SHK,AKO', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2389, 'CSE260', 'UB70401', 3, 0, 'MRN', '', 0, '14:00', '', '', '', '', '14:00'),
	(2390, 'CSE260', 'UB50201', 3, 0, 'RYB,DZK', '', 1, '', '', '', '14:00,15:30', '', ''),
	(2391, 'CSE260', 'UB70402', 4, 0, 'AHR', '', 0, '11:00', '', '', '', '', '11:00'),
	(2392, 'CSE260', 'UB50201', 4, 0, 'AMT,PSH', '', 1, '08:00,09:30', '', '', '', '', ''),
	(2393, 'CSE260', 'UB70402', 5, 0, 'AHR', '', 0, '15:30', '', '', '', '', '15:30'),
	(2394, 'CSE260', 'UB50201', 5, 0, 'PSH,FSH', '', 1, '11:00,12:30', '', '', '', '', ''),
	(2395, 'CSE260', 'UB71002', 6, 0, 'DZK', '', 0, '11:00', '', '', '', '', '11:00'),
	(2396, 'CSE260', 'UB50201', 6, 0, 'PSH,ISH', '', 1, '14:00,15:30', '', '', '', '', ''),
	(2397, 'CSE260', 'UB71002', 7, 0, 'DZK', '', 0, '09:30', '', '', '', '', '09:30'),
	(2398, 'CSE260', 'UB50201', 7, 0, 'RYB,DZK', '', 1, '', '', '', '', '', '14:00,15:30'),
	(2399, 'CSE260', 'UB81303', 8, 0, 'RYB', '', 0, '', '11:00', '', '11:00', '', ''),
	(2400, 'CSE260', 'UB50201', 8, 0, 'SSY,DZK', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2401, 'CSE260', 'UB71002', 9, 0, 'TRD', '', 0, '', '08:00', '', '08:00', '', ''),
	(2402, 'CSE260', 'UB50201', 9, 0, 'DZK,SRJ', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2403, 'CSE260', 'UB81302', 10, 0, 'MRN', '', 0, '', '', '08:00', '', '08:00', ''),
	(2404, 'CSE260', 'UB50201', 10, 0, 'SRO,THD', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2405, 'CSE260', 'UB81301', 11, 0, 'RSA', '', 0, '', '17:00', '', '17:00', '', ''),
	(2406, 'CSE260', 'UB50201', 11, 0, 'SSA,RSA', '', 1, '', '', '', '', '11:00,12:30', ''),
	(2407, 'CSE260', 'UB81304', 12, 0, 'MAB', '', 0, '', '', '17:00', '', '17:00', ''),
	(2408, 'CSE260', 'UB50201', 12, 0, 'BHS,AMT', '', 1, '', '', '', '', '', '08:00,09:30'),
	(2409, 'CSE310', 'UB40401', 1, 0, 'ADR', '', 0, '', '11:00', '', '11:00', '', ''),
	(2410, 'CSE310', 'UB40101', 1, 0, 'FSH,AAR', '', 1, '', '', '', '14:00,15:30', '', ''),
	(2411, 'CSE320', 'UB81301', 1, 0, 'SAF', '', 0, '', '09:30', '', '09:30', '', ''),
	(2412, 'CSE320', 'UB81304', 2, 0, 'ARK', '', 0, '', '', '14:00', '', '14:00', ''),
	(2413, 'CSE320', 'UB30401', 3, 0, 'MMI', '', 0, '', '', '15:30', '', '15:30', ''),
	(2414, 'CSE320', 'UB81302', 4, 0, 'SEJ', '', 0, '14:00', '', '', '', '', '14:00'),
	(2415, 'CSE320', 'UB50301', 5, 0, 'FSI', '', 0, '', '', '', '11:00', '', '11:00'),
	(2416, 'CSE320', 'UB50301', 6, 0, 'ARK', '', 0, '', '', '09:30', '', '09:30', ''),
	(2417, 'CSE320', 'UB81301', 7, 0, 'RAA', '', 0, '', '', '09:30', '', '09:30', ''),
	(2418, 'CSE320', 'UB81302', 8, 0, 'ASA', '', 0, '', '15:30', '', '15:30', '', ''),
	(2419, 'CSE320', 'UB81303', 9, 0, 'SZN', '', 0, '', '08:00', '', '08:00', '', ''),
	(2420, 'CSE320', 'UB70401', 10, 0, 'DZK', '', 0, '', '', '12:30', '', '12:30', ''),
	(2421, 'CSE320', 'UB81304,UB30101', 11, 0, 'SSK', '', 0, '', '17:00', '', '14:00', '', ''),
	(2422, 'CSE321', 'UB81301', 1, 0, 'MRA', '', 0, '', '', '11:00', '', '11:00', ''),
	(2423, 'CSE321', 'UB71101', 1, 0, 'JNM,MRA', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2424, 'CSE321', 'UB30103', 2, 0, 'NAT', '', 0, '11:00', '', '', '', '', '11:00'),
	(2425, 'CSE321', 'UB40301', 2, 0, 'ARK,SZN', '', 1, '', '', '', '', '', '14:00,15:30'),
	(2426, 'CSE321', 'UB30203', 3, 0, 'NAT', '', 0, '', '14:00', '', '14:00', '', ''),
	(2427, 'CSE321', 'UB40301', 3, 0, 'AKH,ARK', '', 1, '', '', '', '', '', '11:00,12:30'),
	(2428, 'CSE321', 'UB70401', 4, 0, 'SZN', '', 0, '', '', '08:00', '', '08:00', ''),
	(2429, 'CSE321', 'UB40403', 4, 0, 'JNM,SZN', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2430, 'CSE321', 'UB81302', 5, 0, 'AKH', '', 0, '', '', '14:00', '', '14:00', ''),
	(2431, 'CSE321', 'UB40301', 5, 0, 'SAR,FYA', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2432, 'CSE321', 'UB81302', 6, 0, 'FBA', '', 0, '12:30', '', '', '', '', '12:30'),
	(2433, 'CSE321', 'UB40203', 6, 0, 'BHS,FBA', '', 1, '', '', '', '', '', '14:00,15:30'),
	(2434, 'CSE330', 'UB81304', 1, 0, 'WAA', '', 0, '', '09:30', '', '09:30', '', ''),
	(2435, 'CSE330', 'UB70701', 2, 0, 'AMK', '', 0, '', '', '08:00', '', '08:00', ''),
	(2436, 'CSE330', 'UB81304', 3, 0, 'SRF', '', 0, '', '15:30', '', '15:30', '', ''),
	(2437, 'CSE330', 'UB81304', 4, 0, 'SRF', '', 0, '', '12:30', '', '12:30', '', ''),
	(2438, 'CSE330', 'UB70401', 5, 0, 'AMK', '', 0, '', '08:00', '', '08:00', '', ''),
	(2439, 'CSE330', 'UB81302', 6, 0, 'WAA', '', 0, '', '17:00', '', '17:00', '', ''),
	(2440, 'CSE330', 'UB70401', 7, 0, 'ISH', '', 0, '09:30', '', '', '', '', '09:30'),
	(2441, 'CSE330', 'UB81302,UB50301', 8, 0, 'AMK', '', 0, '', '17:00', '', '14:00', '', ''),
	(2442, 'CSE330', 'UB81301', 9, 0, 'WAA', '', 0, '', '14:00', '', '14:00', '', ''),
	(2443, 'CSE330', 'UB70701', 10, 0, 'WAA', '', 0, '', '', '09:30', '', '09:30', ''),
	(2444, 'CSE331', 'UB70401', 1, 0, 'AAI', '', 0, '08:00', '', '', '', '', '08:00'),
	(2445, 'CSE331', 'UB70401', 2, 0, 'AAI', '', 0, '11:00', '', '', '', '', '11:00'),
	(2446, 'CSE331', 'UB70402', 3, 0, 'RSA', '', 0, '', '', '17:00', '', '17:00', ''),
	(2447, 'CSE331', 'UB81303', 4, 0, 'MRN', '', 0, '', '', '', '14:00', '', '08:00'),
	(2448, 'CSE331', 'UB81301', 5, 0, 'WAR', '', 0, '', '', '08:00', '', '08:00', ''),
	(2449, 'CSE331', 'UB81302', 6, 0, 'AKO', '', 0, '', '', '09:30', '', '09:30', ''),
	(2450, 'CSE331', 'UB81302', 7, 0, 'TNR', '', 0, '', '08:00', '', '08:00', '', ''),
	(2451, 'CSE331', 'UB71002', 8, 0, 'SZI', '', 0, '', '', '14:00', '', '14:00', ''),
	(2452, 'CSE331', 'UB30101', 9, 0, 'TNR', '', 0, '', '', '17:00', '', '17:00', ''),
	(2453, 'CSE340', 'UB81303', 1, 0, 'ACH', '', 0, '', '09:30', '', '09:30', '', ''),
	(2454, 'CSE340', 'UB81303', 2, 0, 'ACH', '', 0, '', '12:30', '', '12:30', '', ''),
	(2455, 'CSE340', 'UB50302', 3, 0, 'ACH', '', 0, '', '', '15:30', '', '15:30', ''),
	(2456, 'CSE340', 'UB81301', 4, 0, 'JIU', '', 0, '', '12:30', '', '12:30', '', ''),
	(2457, 'CSE340', 'UB70701', 5, 0, 'ACH', '', 0, '', '', '11:00', '', '11:00', ''),
	(2458, 'CSE340', 'UB81303', 6, 0, 'JIU', '', 0, '', '', '15:30', '', '15:30', ''),
	(2459, 'CSE340', 'UB30401', 7, 0, 'MFT', '', 0, '', '12:30', '', '12:30', '', ''),
	(2460, 'CSE340', 'UB70403', 8, 0, 'JIU', '', 0, '', '11:00', '', '11:00', '', ''),
	(2461, 'CSE341', 'UB71002', 1, 0, 'MMI', '', 0, '', '09:30', '', '09:30', '', ''),
	(2462, 'CSE341', 'UB60804', 1, 0, 'AAY,AHR', '', 1, '', '11:00,12:30', '', '', '', ''),
	(2463, 'CSE341', 'UB71002', 2, 0, 'MMI', '', 0, '', '12:30', '', '12:30', '', ''),
	(2464, 'CSE341', 'UB60804', 2, 0, 'ARR,MFT', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2465, 'CSE341', 'UB81303', 3, 0, 'MMI', '', 0, '', '', '12:30', '', '12:30', ''),
	(2466, 'CSE341', 'UB71103', 3, 0, 'ARR,AAI', '', 1, '', '', '08:00,09:30', '', '', ''),
	(2467, 'CSE341', 'UB81303', 4, 0, 'JIU', '', 0, '', '', '14:00', '', '14:00', ''),
	(2468, 'CSE341', 'UB60804', 4, 0, 'SAF,AHR', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2469, 'CSE341', 'UB71002', 5, 0, 'SZI', '', 0, '08:00', '', '', '', '', '08:00'),
	(2470, 'CSE341', 'UB60804', 5, 0, 'NSK,SAF', '', 1, '', '', '', '', '', '11:00,12:30'),
	(2471, 'CSE341', 'UB71002', 6, 0, 'MFT', '', 0, '12:30', '', '', '', '', '12:30'),
	(2472, 'CSE341', 'UB60804', 6, 0, 'SHK,AHR', '', 1, '', '', '', '', '', '08:00,09:30'),
	(2473, 'CSE341', 'UB81304', 7, 0, 'SAF', '', 0, '', '08:00', '', '08:00', '', ''),
	(2474, 'CSE341', 'UB60804', 7, 0, 'SZI,AHR', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2475, 'CSE350', 'UB50302', 11, 0, 'SHA', '', 0, '', '14:00', '', '14:00', '', ''),
	(2476, 'CSE350', 'UB50202', 11, 0, 'SHS', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2477, 'CSE360', 'UB81304', 1, 0, 'NSK', '', 0, '', '', '09:30', '', '09:30', ''),
	(2478, 'CSE360', 'UB71102', 1, 0, 'MFT,RSA', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2479, 'CSE360', 'UB50302', 2, 0, 'NSK', '', 0, '', '', '11:00', '', '11:00', ''),
	(2480, 'CSE360', 'UB71102', 2, 0, 'MFT,RSA', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2481, 'CSE360', 'UB81304', 3, 0, 'KHR', '', 0, '', '', '12:30', '', '12:30', ''),
	(2482, 'CSE360', 'UB71102', 3, 0, 'SSA,SZH', '', 1, '', '11:00,12:30', '', '', '', ''),
	(2483, 'CSE370', 'UB70402', 1, 0, 'HOS', '', 0, '', '', '09:30', '', '09:30', ''),
	(2484, 'CSE370', 'UB71101', 1, 0, 'NNC,MIH', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2485, 'CSE370', 'UB70402', 2, 0, 'HOS', '', 0, '', '', '12:30', '', '12:30', ''),
	(2486, 'CSE370', 'UB40101', 2, 0, 'SSK,ARK,NNC', '', 1, '', '11:00,12:30', '', '', '', ''),
	(2487, 'CSE370', 'UB70402', 3, 0, 'HOS', '', 0, '', '', '15:30', '', '15:30', ''),
	(2488, 'CSE370', 'UB71101', 3, 0, 'SAR,ARK', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2489, 'CSE370', 'UB30401', 4, 0, 'RAF', '', 0, '', '08:00', '', '08:00', '', ''),
	(2490, 'CSE370', 'UB71101', 4, 0, 'FYA,MIH', '', 1, '', '', '08:00,09:30', '', '', ''),
	(2491, 'CSE370', 'UB81302', 5, 0, 'FBA', '', 0, '11:00', '', '', '', '', '11:00'),
	(2492, 'CSE370', 'UB71101', 5, 0, 'TMA,ARF,FBA', '', 1, '14:00,15:30', '', '', '', '', ''),
	(2493, 'CSE370', 'UB81303', 6, 0, 'NNC', '', 0, '12:30', '', '', '', '', '12:30'),
	(2494, 'CSE370', 'UB71102', 6, 0, 'NSK,FBA', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2495, 'CSE370', 'UB30103', 7, 0, 'RAF', '', 0, '', '09:30', '', '09:30', '', ''),
	(2496, 'CSE370', 'UB71103', 7, 0, 'SAR,SHK,NSK', '', 1, '', '', '', '', '', '14:00,15:30'),
	(2497, 'CSE391', 'UB40401', 1, 0, 'ADR', '', 0, '', '08:00', '', '08:00', '', ''),
	(2500, 'CSE420', 'UB70701', 1, 0, 'MGR', '', 0, '12:30', '', '', '', '', '12:30'),
	(2501, 'CSE420', 'UB71103', 1, 0, 'SSA,SHK', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2502, 'CSE420', 'UB81304', 2, 0, 'MGR', '', 0, '', '11:00', '', '11:00', '', ''),
	(2503, 'CSE420', 'UB40103', 2, 0, 'SSA,SHK', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2504, 'CSE420', 'UB71002', 3, 0, 'MGR', '', 0, '', '', '', '', '', '14:00,15:30'),
	(2505, 'CSE420', 'UB40301', 3, 0, 'SZH,TNR,ESF', '', 1, '', '', '08:00,09:30', '', '', ''),
	(2506, 'CSE420', 'UB81303', 4, 0, 'SRF', '', 0, '', '', '17:00', '', '17:00', ''),
	(2507, 'CSE420', 'UB40301', 4, 0, 'SRF,FSH', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2508, 'CSE420', 'UB70401', 5, 0, 'ESF', '', 0, '15:30', '', '', '', '', '15:30'),
	(2509, 'CSE420', 'UB40203', 5, 0, 'SZH,ESF', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2510, 'CSE421', 'UB50302', 1, 0, 'ARF', '', 0, '08:00', '', '', '', '', '08:00'),
	(2511, 'CSE421', 'UB40301', 1, 0, 'SZH,AKH', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2512, 'CSE421', 'UB50301', 2, 0, 'FSI', '', 0, '', '', '', '09:30', '', '09:30'),
	(2513, 'CSE421', 'UB40101', 2, 0, 'ARF,SKZ', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2514, 'CSE421', 'UB50301', 3, 0, 'SKZ', '', 0, '', '', '11:00', '', '11:00', ''),
	(2515, 'CSE421', 'UB40101', 3, 0, 'ARF,SKZ', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2516, 'CSE421', 'UB50301', 4, 0, 'SKZ', '', 0, '', '', '14:00', '', '14:00', ''),
	(2517, 'CSE421', 'UB40301', 4, 0, 'ARF,SKZ', '', 1, '', '', '', '14:00,15:30', '', ''),
	(2518, 'CSE421', 'UB50301', 5, 0, 'ARF', '', 0, '', '', '15:30', '', '15:30', ''),
	(2519, 'CSE421', 'UB40301', 5, 0, 'ARF,SKZ', '', 1, '', '', '', '14:00,15:30', '', ''),
	(2520, 'CSE421', 'UB50301', 6, 0, 'SAF', '', 0, '15:30', '', '', '', '', '15:30'),
	(2521, 'CSE421', 'UB40301', 6, 0, 'SZH,AKH', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2522, 'CSE421', 'UB81303', 7, 0, 'SRJ', '', 0, '14:00', '', '', '', '', '14:00'),
	(2523, 'CSE421', 'UB40101', 7, 0, 'SZI,SRJ', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2524, 'CSE421', 'UB81303', 8, 0, 'SRJ', '', 0, '09:30', '', '', '', '', '09:30'),
	(2525, 'CSE421', 'UB40101', 8, 0, 'SZI,SRJ', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2526, 'CSE422', 'UB50301', 1, 0, 'ZAR', '', 0, '09:30,11:00', '', '', '', '', ''),
	(2527, 'CSE422', 'UB71101', 1, 0, 'FBA,RAA', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2528, 'CSE422', 'UB81304', 2, 0, 'MZP', '', 0, '15:30', '', '', '', '', '15:30'),
	(2529, 'CSE422', 'UB71103', 2, 0, 'MFT,RAA', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2530, 'CSE422', 'UB81304,UB70701', 3, 0, 'MZP', '', 0, '11:00', '', '', '', '', '11:00'),
	(2531, 'CSE422', 'UB71103', 3, 0, 'MFT,IBU', '', 1, '', '', '11:00,12:30', '', '', ''),
	(2532, 'CSE422', 'UB81301', 4, 0, 'FSH', '', 0, '08:00', '', '', '', '', '08:00'),
	(2533, 'CSE422', 'UB40203', 4, 0, 'SZH,MZP', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2534, 'CSE422', 'UB81304', 5, 0, 'IBU', '', 0, '', '', '08:00', '', '08:00', ''),
	(2535, 'CSE422', 'UB71101', 5, 0, 'FSH,AKO', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2536, 'CSE423', 'UB70701', 1, 0, 'DMH', '', 0, '08:00', '', '', '', '', '08:00'),
	(2537, 'CSE423', 'UB40403', 1, 0, 'SAR,NSK', '', 1, '', '11:00,12:30', '', '', '', ''),
	(2538, 'CSE423', 'UB70701', 2, 0, 'DMH', '', 0, '09:30', '', '', '', '', '09:30'),
	(2539, 'CSE423', 'UB40403', 2, 0, 'SAR,NSK', '', 1, '', '11:00,12:30', '', '', '', ''),
	(2540, 'CSE423', 'UB81302', 3, 0, 'EHK', '', 0, '15:30', '', '', '', '', '15:30'),
	(2541, 'CSE423', 'UB40403', 3, 0, 'NSK,SRF', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2542, 'CSE423', 'UB50302', 4, 0, 'EHK', '', 0, '', '', '', '', '', '09:30,11:00'),
	(2543, 'CSE423', 'UB40403', 4, 0, 'NSK,SRF', '', 1, '', '08:00,09:30', '', '', '', ''),
	(2544, 'CSE423', 'UB50302', 5, 0, 'FSH', '', 0, '', '', '', '', '', '14:00,15:30'),
	(2545, 'CSE423', 'UB40403', 5, 0, 'SRF,FSH', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2546, 'CSE425', 'UB50301', 1, 0, 'MMM', '', 0, '', '14:00', '', '14:00', '', ''),
	(2547, 'CSE427', 'UB50301', 1, 0, 'MAM', '', 0, '', '15:30', '', '15:30', '', ''),
	(2548, 'CSE428', 'UB81301', 1, 0, 'HAK', '', 0, '09:30,11:00', '', '', '', '', ''),
	(2549, 'CSE430', 'UB81304,UB81301', 1, 0, 'MZP', '', 0, '12:30', '15:30', '', '', '', ''),
	(2550, 'CSE430', 'UB40203', 1, 0, 'TMA,MZP', '', 1, '', '11:00,12:30', '', '', '', ''),
	(2551, 'CSE460', 'UB70701', 11, 0, 'SHA', '', 0, '', '', '12:30', '', '12:30', ''),
	(2552, 'CSE460', 'UB40103', 11, 0, 'SHA,SOD', '', 1, '', '', '', '08:00,09:30', '', ''),
	(2553, 'CSE460', 'UB70401', 12, 0, 'SHA', '', 0, '', '14:00', '', '14:00', '', ''),
	(2554, 'CSE460', 'UB71103', 12, 0, 'SHA', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2555, 'CSE461', 'UB70701', 1, 0, 'KHR', '', 0, '', '', '17:00', '', '17:00', ''),
	(2556, 'CSE461', 'UB71102', 1, 0, 'AAN,NSK,ASA', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2557, 'CSE461', 'UB70701', 2, 0, 'KHR', '', 0, '14:00', '', '', '', '', '14:00'),
	(2558, 'CSE461', 'UB71102', 2, 0, 'AHF,ASA', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2559, 'CSE461', 'UB70701', 3, 0, 'KHR', '', 0, '15:30', '', '', '', '', '15:30'),
	(2560, 'CSE461', 'UB71102', 3, 0, 'FYA,MFT,NSK', '', 1, '', '', '', '14:00,15:30', '', ''),
	(2561, 'CSE470', 'UB50301', 1, 0, 'ZAR', '', 0, '12:30,14:00', '', '', '', '', ''),
	(2562, 'CSE470', 'UB81301', 2, 0, 'SZI', '', 0, '14:00', '', '', '', '', '14:00'),
	(2563, 'CSE470', 'UB81301', 3, 0, 'AKH', '', 0, '15:30', '', '', '', '', '15:30'),
	(2564, 'CSE470', 'UB50301', 4, 0, 'AKH', '', 0, '08:00', '', '', '', '', '08:00'),
	(2565, 'CSE470', 'UB70701', 5, 0, 'NOR', '', 0, '', '17:00', '', '17:00', '', ''),
	(2566, 'CSE470', 'UB71002', 6, 0, 'NZN', '', 0, '', '', '17:00', '', '17:00', ''),
	(2567, 'CSE471', 'UB81303', 1, 0, 'MIH', '', 0, '15:30', '', '', '', '', '15:30'),
	(2568, 'CSE471', 'UB71101', 1, 0, 'MIH,HOS', '', 1, '', '11:00,12:30', '', '', '', ''),
	(2569, 'CSE471', 'UB81304', 2, 0, 'MIH', '', 0, '08:00', '', '', '', '', '08:00'),
	(2570, 'CSE471', 'UB40203', 2, 0, 'TMA,MRA', '', 1, '', '', '', '11:00,12:30', '', ''),
	(2571, 'CSE471', 'UB81304', 3, 0, 'ESF', '', 0, '', '', '', '', '', '09:30,11:00'),
	(2572, 'CSE471', 'UB71103', 3, 0, 'ESF,NOR', '', 1, '', '', '14:00,15:30', '', '', ''),
	(2573, 'CSE471', 'UB81302', 4, 0, 'MRA', '', 0, '', '', '17:00', '', '17:00', ''),
	(2574, 'CSE471', 'UB71103', 4, 0, 'MRA,HOS', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2575, 'CSE471', 'UB81303', 5, 0, 'ESF', '', 0, '', '17:00', '', '17:00', '', ''),
	(2576, 'CSE471', 'UB40203', 5, 0, 'ESF,MIH', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2577, 'CSE471', 'UB71002', 6, 0, 'MRA', '', 0, '', '17:00', '', '17:00', '', ''),
	(2578, 'CSE471', 'UB40101', 6, 0, 'ARR,SRJ', '', 1, '', '14:00,15:30', '', '', '', ''),
	(2579, 'CSE474', 'UB71201', 1, 0, 'IBU', '', 0, '', '', '14:00', '', '14:00', ''),
	(2580, 'CSE474', 'UB71201', 1, 0, 'STS,IBU', '', 1, '', '', '15:30,16:30', '', '15:30,16:30', ''),
	(2582, 'CSE490', 'UB81303', 1, 0, 'MHL', '', 0, '', '', '09:30,11:00', '', '', ''),
	(2583, 'CSE490', 'UB50301', 2, 0, 'MHL', '', 0, '', '09:30,11:00', '', '', '', ''),
	(2584, 'CSE491', 'UB40401', 1, 0, 'ADR', '', 0, '', '09:30', '', '09:30', '', ''),
	(2585, 'EEE361', 'UB81301', 1, 0, 'SAF', '', 0, '', '09:30', '', '09:30', '', ''),
	(2586, 'EEE361', 'UB81304', 2, 0, 'ARK', '', 0, '', '', '14:00', '', '14:00', ''),
	(2587, 'EEE361', 'UB30401', 3, 0, 'MMI', '', 0, '', '', '15:30', '', '15:30', ''),
	(2588, 'EEE361', 'UB81302', 4, 0, 'SEJ', '', 0, '14:00', '', '', '', '', '14:00'),
	(2589, 'EEE361', 'UB50301', 5, 0, 'FSI', '', 0, '', '', '', '11:00', '', '11:00'),
	(2590, 'EEE361', 'UB50301', 6, 0, 'ARK', '', 0, '', '', '09:30', '', '09:30', ''),
	(2591, 'EEE361', 'UB81301', 7, 0, 'RAA', '', 0, '', '', '09:30', '', '09:30', ''),
	(2592, 'EEE361', 'UB81302', 8, 0, 'ASA', '', 0, '', '15:30', '', '15:30', '', ''),
	(2593, 'EEE361', 'UB81303', 9, 0, 'SZN', '', 0, '', '08:00', '', '08:00', '', ''),
	(2594, 'EEE361', 'UB70401', 10, 0, 'DZK', '', 0, '', '', '12:30', '', '12:30', ''),
	(2595, 'EEE361', 'UB81304,UB30101', 11, 0, 'SSK', '', 0, '', '17:00', '', '14:00', '', ''),
	(2596, 'EEE362', 'UB71103', 1, 0, 'SSK,DZK', '', 0, '14:00,15:30', '', '', '', '', ''),
	(2597, 'EEE465', 'UB50302', 1, 0, 'ARF', '', 0, '08:00', '', '', '', '', '08:00'),
	(2598, 'EEE465', 'UB50301', 2, 0, 'FSI', '', 0, '', '', '', '09:30', '', '09:30'),
	(2599, 'EEE465', 'UB50301', 3, 0, 'SKZ', '', 0, '', '', '11:00', '', '11:00', ''),
	(2600, 'EEE465', 'UB50301', 4, 0, 'SKZ', '', 0, '', '', '14:00', '', '14:00', ''),
	(2601, 'EEE465', 'UB50301', 5, 0, 'ARF', '', 0, '', '', '15:30', '', '15:30', ''),
	(2602, 'EEE465', 'UB50301', 6, 0, 'SAF', '', 0, '15:30', '', '', '', '', '15:30'),
	(2603, 'EEE465', 'UB81303', 7, 0, 'SRJ', '', 0, '14:00', '', '', '', '', '14:00'),
	(2604, 'EEE465', 'UB81303', 8, 0, 'SRJ', '', 0, '09:30', '', '', '', '', '09:30'),
	(2605, 'EEE466', 'UB40301', 1, 0, 'SZH,AKH', '', 0, '', '', '11:00,12:30', '', '', ''),
	(2606, 'EEE466', 'UB40101', 2, 0, 'ARF,SKZ', '', 0, '', '', '', '11:00,12:30', '', ''),
	(2607, 'EEE466', 'UB40101', 3, 0, 'ARF,SKZ', '', 0, '', '', '', '11:00,12:30', '', ''),
	(2608, 'EEE466', 'UB40301', 4, 0, 'ARF,SKZ', '', 0, '', '', '', '14:00,15:30', '', ''),
	(2609, 'EEE466', 'UB40301', 5, 0, 'ARF,SKZ', '', 0, '', '', '', '14:00,15:30', '', ''),
	(2610, 'EEE466', 'UB40301', 6, 0, 'SZH,AKH', '', 0, '', '', '11:00,12:30', '', '', ''),
	(2611, 'EEE466', 'UB40101', 7, 0, 'SZI,SRJ', '', 0, '', '', '', '08:00,09:30', '', ''),
	(2612, 'EEE466', 'UB40101', 8, 0, 'SZI,SRJ', '', 0, '', '', '', '08:00,09:30', '', ''),
	(2614, 'CSE419', 'UB71102,UB71101', 1, 0, 'SRO', 'Day 1', 0, '11:00', '', '', '', '', '11:00'),
	(2615, 'CSE419', 'UB60806,UB71102', 1, 0, 'SRO', 'Day 1', 1, '08:00', '', '', '', '14:00', '');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- Dumping structure for table usis.password_request
CREATE TABLE IF NOT EXISTS `password_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table usis.password_request: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_request` ENABLE KEYS */;

-- Dumping structure for table usis.previous_password
CREATE TABLE IF NOT EXISTS `previous_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table usis.previous_password: ~13 rows (approximately)
/*!40000 ALTER TABLE `previous_password` DISABLE KEYS */;
INSERT IGNORE INTO `previous_password` (`id`, `email`, `password`) VALUES
	(1, 'std1@gmail.com', '$2a$10$zVxOJ0OuNApjbcyuBOdTMeH3nZTkrrw8m7Zn9EQSEwmI1II5vY9p2'),
	(2, 'std2@gmail.com', '$2a$10$B9J8.sXexw1oXbjmpWjX7.S6G7wDCPk4CVt9547RRwcy4UB6s3iom'),
	(3, 'std3@gmail.com', '$2a$10$W0kx6XBmIx8mZl30nk/uUe7TWqZZ7bOTKHF3af3fncq7X2niBbo56'),
	(4, 'teach1@bracu.ac.bd', '$2a$10$YJ7Ln0Mhu/3EzijGelO69.kbWloOyZ/zc8zUz.RGUxUD1Ci3Y0dYa'),
	(5, 'teach2@bracu.ac.bd', '$2a$10$IyGY3A1rBRh/hbuO8LQc2uXZUSzmXDDZ2GRkLVKJ63tGJjC0PVeR2'),
	(6, 'std1@gmail.com', '$2a$10$zVxOJ0OuNApjbcyuBOdTMeH3nZTkrrw8m7Zn9EQSEwmI1II5vY9p2'),
	(8, 'std1@gmail.com', '$2a$10$CjiDo1mDOjq0OGG4Z7b67uEtblLGXAJsgI.ABleDN9/Ts1T6NC70S'),
	(9, 'std1@gmail.com', '000'),
	(10, 'std1@gmail.com', '$2a$10$B9J8.sXexw1oXbjmpWjX7.S6G7wDCPk4CVt9547RRwcy4UB6s3iom'),
	(11, 'std1@gmail.com', '$2a$10$B9J8.sXexw1oXbjmpWjX7.S6G7wDCPk4CVt9547RRwcy4UB6s3iom'),
	(12, 'std4@gmail.com', '$2a$10$psNNNfX9y6MTZ6NrqVtf0unu9d28yE.sWrNC7bE.d6KnBOgN/CMFK'),
	(13, 'std5@gmail.com', '$2a$10$NNx72/OJh8WUdVNq4Lar.ORkEMO3tJDgI7KdJAZRQTJWyC/HESWHy'),
	(14, 'std6@gmail.com', '$2a$10$4B2m1BAaJSV2evzWuuAGvO2.IHhow1KxYy6.WmOwAHuNqNVXiTtaG');
/*!40000 ALTER TABLE `previous_password` ENABLE KEYS */;

-- Dumping structure for table usis.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(500) NOT NULL DEFAULT '0',
  `mobile` varchar(50) DEFAULT '0',
  `dept` varchar(50) DEFAULT '0',
  `credit` varchar(50) NOT NULL DEFAULT '0',
  `course_limit` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 0,
  `role` varchar(50) NOT NULL DEFAULT '0',
  `permissions` varchar(50) NOT NULL DEFAULT '0',
  `routine` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table usis.user: ~5 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT IGNORE INTO `user` (`id`, `name`, `email`, `password`, `mobile`, `dept`, `credit`, `course_limit`, `active`, `role`, `permissions`, `routine`) VALUES
	(1, 'reg', 'reg@bracu.ac.bd', '$2a$10$T3HqYbIfikAE2HqObdzlBui1rf3l2z9Mf2PR.Vfxm.NM6vz/vWy6W', '000', '""', '0', 0, 1, 'ADMIN', '""', '""'),
	(2, 'Student 1', 'std1@gmail.com', '$2a$10$B9J8.sXexw1oXbjmpWjX7.S6G7wDCPk4CVt9547RRwcy4UB6s3iom', '01843771138', 'CSE', '15', 3, 1, 'STUDENT', '', ''),
	(3, 'Student 2', 'std2@gmail.com', '$2a$10$B9J8.sXexw1oXbjmpWjX7.S6G7wDCPk4CVt9547RRwcy4UB6s3iom', '01843771138', 'EEE', '90', 3, 1, 'STUDENT', '', ''),
	(4, 'Student 3', 'std3@gmail.com', '$2a$10$W0kx6XBmIx8mZl30nk/uUe7TWqZZ7bOTKHF3af3fncq7X2niBbo56', '01843771138', 'CSE', '100', 3, 1, 'STUDENT', '', ''),
	(5, 'Teacher 1', 'teach1@bracu.ac.bd', '$2a$10$YJ7Ln0Mhu/3EzijGelO69.kbWloOyZ/zc8zUz.RGUxUD1Ci3Y0dYa', '01843771138', 'EEE', '0', 0, 1, 'TEACHER', '', ''),
	(6, 'Teacher 2', 'teach2@bracu.ac.bd', '$2a$10$IyGY3A1rBRh/hbuO8LQc2uXZUSzmXDDZ2GRkLVKJ63tGJjC0PVeR2', '01843771138', 'CSE', '0', 0, 1, 'TEACHER', '', ''),
	(7, 'Student 4', 'std4@gmail.com', '$2a$10$psNNNfX9y6MTZ6NrqVtf0unu9d28yE.sWrNC7bE.d6KnBOgN/CMFK', '01843771138', 'CSE', '9', 3, 1, 'STUDENT', '', ''),
	(8, 'Student 5', 'std5@gmail.com', '$2a$10$NNx72/OJh8WUdVNq4Lar.ORkEMO3tJDgI7KdJAZRQTJWyC/HESWHy', '01843771138', 'CSE', '10', 3, 1, 'STUDENT', '', ''),
	(9, 'Student 6', 'std6@gmail.com', '$2a$10$4B2m1BAaJSV2evzWuuAGvO2.IHhow1KxYy6.WmOwAHuNqNVXiTtaG', '01843771138', 'CSE', '10', 3, 1, 'STUDENT', '', '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;